###### Class com.google.crypto.tink.aead.AesCtrHmacAeadParameters (com.google.crypto.tink.aead.AesCtrHmacAeadParameters)
.class public final Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters;
.super Lcom/google/crypto/tink/aead/AeadParameters;
.source "AesCtrHmacAeadParameters.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$Variant;,
        Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$HashType;,
        Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$Builder;
    }
.end annotation


# instance fields
.field public final aesKeySizeBytes:I

.field public final hashType:Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$HashType;

.field public final hmacKeySizeBytes:I

.field public final ivSizeBytes:I

.field public final tagSizeBytes:I

.field public final variant:Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$Variant;


# direct methods
.method public constructor <init>(IIIILcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$Variant;Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$HashType;)V
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
            "aesKeySizeBytes",
            "hmacKeySizeBytes",
            "ivSizeBytes",
            "tagSizeBytes",
            "variant",
            "hashType"
        }
    .end annotation

    .line 234
    invoke-direct {p0}, Lcom/google/crypto/tink/aead/AeadParameters;-><init>()V

    .line 235
    iput p1, p0, Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters;->aesKeySizeBytes:I

    .line 236
    iput p2, p0, Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters;->hmacKeySizeBytes:I

    .line 237
    iput p3, p0, Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters;->ivSizeBytes:I

    .line 238
    iput p4, p0, Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters;->tagSizeBytes:I

    .line 239
    iput-object p5, p0, Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters;->variant:Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$Variant;

    .line 240
    iput-object p6, p0, Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters;->hashType:Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$HashType;

    return-void
.end method

.method public synthetic constructor <init>(IIIILcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$Variant;Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$HashType;Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$1;)V
    .registers 8

    .line 27
    invoke-direct/range {p0 .. p6}, Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters;-><init>(IIIILcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$Variant;Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$HashType;)V

    return-void
.end method

.method public static builder()Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$Builder;
    .registers 2

    .line 244
    new-instance v0, Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$Builder;-><init>(Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$1;)V

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

    .line 290
    instance-of v0, p1, Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 293
    :cond_6
    check-cast p1, Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters;

    .line 294
    invoke-virtual {p1}, Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters;->getAesKeySizeBytes()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters;->getAesKeySizeBytes()I

    move-result v2

    if-ne v0, v2, :cond_46

    .line 295
    invoke-virtual {p1}, Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters;->getHmacKeySizeBytes()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters;->getHmacKeySizeBytes()I

    move-result v2

    if-ne v0, v2, :cond_46

    .line 296
    invoke-virtual {p1}, Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters;->getIvSizeBytes()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters;->getIvSizeBytes()I

    move-result v2

    if-ne v0, v2, :cond_46

    .line 297
    invoke-virtual {p1}, Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters;->getTagSizeBytes()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters;->getTagSizeBytes()I

    move-result v2

    if-ne v0, v2, :cond_46

    .line 298
    invoke-virtual {p1}, Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters;->getVariant()Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$Variant;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters;->getVariant()Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$Variant;

    move-result-object v2

    if-ne v0, v2, :cond_46

    .line 299
    invoke-virtual {p1}, Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters;->getHashType()Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$HashType;

    move-result-object p1

    invoke-virtual {p0}, Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters;->getHashType()Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$HashType;

    move-result-object v0

    if-ne p1, v0, :cond_46

    const/4 p1, 0x1

    return p1

    :cond_46
    return v1
.end method

.method public getAesKeySizeBytes()I
    .registers 2

    .line 248
    iget v0, p0, Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters;->aesKeySizeBytes:I

    return v0
.end method

.method public getHashType()Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$HashType;
    .registers 2

    .line 285
    iget-object v0, p0, Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters;->hashType:Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$HashType;

    return-object v0
.end method

.method public getHmacKeySizeBytes()I
    .registers 2

    .line 252
    iget v0, p0, Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters;->hmacKeySizeBytes:I

    return v0
.end method

.method public getIvSizeBytes()I
    .registers 2

    .line 260
    iget v0, p0, Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters;->ivSizeBytes:I

    return v0
.end method

.method public getTagSizeBytes()I
    .registers 2

    .line 256
    iget v0, p0, Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters;->tagSizeBytes:I

    return v0
.end method

.method public getVariant()Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$Variant;
    .registers 2

    .line 280
    iget-object v0, p0, Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters;->variant:Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$Variant;

    return-object v0
.end method

.method public hasIdRequirement()Z
    .registers 3

    .line 316
    iget-object v0, p0, Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters;->variant:Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$Variant;

    sget-object v1, Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$Variant;->NO_PREFIX:Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$Variant;

    if-eq v0, v1, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method public hashCode()I
    .registers 9

    .line 304
    iget v0, p0, Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters;->aesKeySizeBytes:I

    .line 306
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v0, p0, Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters;->hmacKeySizeBytes:I

    .line 307
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v0, p0, Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters;->ivSizeBytes:I

    .line 308
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v0, p0, Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters;->tagSizeBytes:I

    .line 309
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-object v6, p0, Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters;->variant:Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$Variant;

    iget-object v7, p0, Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters;->hashType:Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$HashType;

    const-class v1, Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters;

    filled-new-array/range {v1 .. v7}, [Ljava/lang/Object;

    move-result-object v0

    .line 304
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 321
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AesCtrHmacAead Parameters (variant: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters;->variant:Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$Variant;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", hashType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters;->hashType:Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$HashType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters;->ivSizeBytes:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "-byte IV, and "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters;->tagSizeBytes:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "-byte tags, and "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters;->aesKeySizeBytes:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "-byte AES key, and "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters;->hmacKeySizeBytes:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "-byte HMAC key)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class com.google.crypto.tink.aead.AesCtrHmacAeadParameters.AnonymousClass1 (com.google.crypto.tink.aead.AesCtrHmacAeadParameters$1)
.class public synthetic Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$1;
.super Ljava/lang/Object;
.source "AesCtrHmacAeadParameters.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation

###### Class com.google.crypto.tink.aead.AesCtrHmacAeadParameters.Builder (com.google.crypto.tink.aead.AesCtrHmacAeadParameters$Builder)
.class public final Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$Builder;
.super Ljava/lang/Object;
.source "AesCtrHmacAeadParameters.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field public aesKeySizeBytes:Ljava/lang/Integer;

.field public hashType:Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$HashType;

.field public hmacKeySizeBytes:Ljava/lang/Integer;

.field public ivSizeBytes:Ljava/lang/Integer;

.field public tagSizeBytes:Ljava/lang/Integer;

.field public variant:Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$Variant;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 76
    iput-object v0, p0, Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$Builder;->aesKeySizeBytes:Ljava/lang/Integer;

    .line 77
    iput-object v0, p0, Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$Builder;->hmacKeySizeBytes:Ljava/lang/Integer;

    .line 78
    iput-object v0, p0, Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$Builder;->ivSizeBytes:Ljava/lang/Integer;

    .line 79
    iput-object v0, p0, Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$Builder;->tagSizeBytes:Ljava/lang/Integer;

    .line 80
    iput-object v0, p0, Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$Builder;->hashType:Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$HashType;

    .line 81
    sget-object v0, Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$Variant;->NO_PREFIX:Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$Variant;

    iput-object v0, p0, Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$Builder;->variant:Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$Variant;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$1;)V
    .registers 2

    .line 75
    invoke-direct {p0}, Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$Builder;-><init>()V

    return-void
.end method

.method public static validateTagSizeBytes(ILcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$HashType;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "tagSizeBytes",
            "hashType"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 148
    sget-object v0, Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$HashType;->SHA1:Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$HashType;

    if-ne p1, v0, :cond_1e

    const/16 p1, 0x14

    if-gt p0, p1, :cond_a

    goto/16 :goto_7d

    .line 150
    :cond_a
    new-instance p1, Ljava/security/GeneralSecurityException;

    .line 152
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    .line 151
    const-string v0, "Invalid tag size in bytes %d; can be at most 20 bytes for SHA1"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 156
    :cond_1e
    sget-object v0, Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$HashType;->SHA224:Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$HashType;

    if-ne p1, v0, :cond_3b

    const/16 p1, 0x1c

    if-gt p0, p1, :cond_27

    goto :goto_7d

    .line 158
    :cond_27
    new-instance p1, Ljava/security/GeneralSecurityException;

    .line 161
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    .line 159
    const-string v0, "Invalid tag size in bytes %d; can be at most 28 bytes for SHA224"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 165
    :cond_3b
    sget-object v0, Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$HashType;->SHA256:Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$HashType;

    if-ne p1, v0, :cond_58

    const/16 p1, 0x20

    if-gt p0, p1, :cond_44

    goto :goto_7d

    .line 167
    :cond_44
    new-instance p1, Ljava/security/GeneralSecurityException;

    .line 170
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    .line 168
    const-string v0, "Invalid tag size in bytes %d; can be at most 32 bytes for SHA256"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 174
    :cond_58
    sget-object v0, Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$HashType;->SHA384:Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$HashType;

    if-ne p1, v0, :cond_75

    const/16 p1, 0x30

    if-gt p0, p1, :cond_61

    goto :goto_7d

    .line 176
    :cond_61
    new-instance p1, Ljava/security/GeneralSecurityException;

    .line 179
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    .line 177
    const-string v0, "Invalid tag size in bytes %d; can be at most 48 bytes for SHA384"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 183
    :cond_75
    sget-object v0, Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$HashType;->SHA512:Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$HashType;

    if-ne p1, v0, :cond_92

    const/16 p1, 0x40

    if-gt p0, p1, :cond_7e

    :goto_7d
    return-void

    .line 185
    :cond_7e
    new-instance p1, Ljava/security/GeneralSecurityException;

    .line 188
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    .line 186
    const-string v0, "Invalid tag size in bytes %d; can be at most 64 bytes for SHA512"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 192
    :cond_92
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string p1, "unknown hash type; must be SHA1, SHA224, SHA256, SHA384 or SHA512"

    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public build()Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 197
    iget-object v0, p0, Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$Builder;->aesKeySizeBytes:Ljava/lang/Integer;

    if-eqz v0, :cond_6c

    .line 200
    iget-object v0, p0, Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$Builder;->hmacKeySizeBytes:Ljava/lang/Integer;

    if-eqz v0, :cond_64

    .line 203
    iget-object v0, p0, Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$Builder;->ivSizeBytes:Ljava/lang/Integer;

    if-eqz v0, :cond_5c

    .line 206
    iget-object v0, p0, Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$Builder;->tagSizeBytes:Ljava/lang/Integer;

    if-eqz v0, :cond_54

    .line 209
    iget-object v1, p0, Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$Builder;->hashType:Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$HashType;

    if-eqz v1, :cond_4c

    .line 212
    iget-object v1, p0, Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$Builder;->variant:Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$Variant;

    if-eqz v1, :cond_44

    .line 215
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$Builder;->hashType:Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$HashType;

    invoke-static {v0, v1}, Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$Builder;->validateTagSizeBytes(ILcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$HashType;)V

    .line 216
    new-instance v2, Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters;

    iget-object v0, p0, Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$Builder;->aesKeySizeBytes:Ljava/lang/Integer;

    .line 217
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v0, p0, Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$Builder;->hmacKeySizeBytes:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v0, p0, Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$Builder;->ivSizeBytes:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget-object v0, p0, Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$Builder;->tagSizeBytes:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iget-object v7, p0, Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$Builder;->variant:Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$Variant;

    iget-object v8, p0, Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$Builder;->hashType:Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$HashType;

    const/4 v9, 0x0

    invoke-direct/range {v2 .. v9}, Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters;-><init>(IIIILcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$Variant;Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$HashType;Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$1;)V

    return-object v2

    .line 213
    :cond_44
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "variant is not set"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 210
    :cond_4c
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "hash type is not set"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 207
    :cond_54
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "tag size is not set"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 204
    :cond_5c
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "iv size is not set"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 201
    :cond_64
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "HMAC key size is not set"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 198
    :cond_6c
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "AES key size is not set"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setAesKeySizeBytes(I)Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$Builder;
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "aesKeySizeBytes"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    const/16 v0, 0x10

    if-eq p1, v0, :cond_21

    const/16 v0, 0x18

    if-eq p1, v0, :cond_21

    const/16 v0, 0x20

    if-ne p1, v0, :cond_d

    goto :goto_21

    .line 89
    :cond_d
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    .line 92
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    .line 90
    const-string v1, "Invalid key size %d; only 16-byte, 24-byte and 32-byte AES keys are supported"

    invoke-static {v1, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 94
    :cond_21
    :goto_21
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$Builder;->aesKeySizeBytes:Ljava/lang/Integer;

    return-object p0
.end method

.method public setHashType(Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$HashType;)Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "hashType"
        }
    .end annotation

    .line 142
    iput-object p1, p0, Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$Builder;->hashType:Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$HashType;

    return-object p0
.end method

.method public setHmacKeySizeBytes(I)Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$Builder;
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "hmacKeySizeBytes"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    const/16 v0, 0x10

    if-lt p1, v0, :cond_b

    .line 107
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$Builder;->hmacKeySizeBytes:Ljava/lang/Integer;

    return-object p0

    .line 102
    :cond_b
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    .line 105
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    .line 103
    const-string v1, "Invalid key size in bytes %d; HMAC key must be at least 16 bytes"

    invoke-static {v1, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setIvSizeBytes(I)Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$Builder;
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ivSizeBytes"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    const/16 v0, 0xc

    if-lt p1, v0, :cond_f

    const/16 v0, 0x10

    if-gt p1, v0, :cond_f

    .line 120
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$Builder;->ivSizeBytes:Ljava/lang/Integer;

    return-object p0

    .line 115
    :cond_f
    new-instance v0, Ljava/security/GeneralSecurityException;

    .line 118
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    .line 116
    const-string v1, "Invalid IV size in bytes %d; IV size must be between 12 and 16 bytes"

    invoke-static {v1, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setTagSizeBytes(I)Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$Builder;
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tagSizeBytes"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    const/16 v0, 0xa

    if-lt p1, v0, :cond_b

    .line 130
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$Builder;->tagSizeBytes:Ljava/lang/Integer;

    return-object p0

    .line 127
    :cond_b
    new-instance v0, Ljava/security/GeneralSecurityException;

    .line 128
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v1, "Invalid tag size in bytes %d; must be at least 10 bytes"

    invoke-static {v1, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setVariant(Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$Variant;)Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "variant"
        }
    .end annotation

    .line 136
    iput-object p1, p0, Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$Builder;->variant:Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$Variant;

    return-object p0
.end method

###### Class com.google.crypto.tink.aead.AesCtrHmacAeadParameters.HashType (com.google.crypto.tink.aead.AesCtrHmacAeadParameters$HashType)
.class public final Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$HashType;
.super Ljava/lang/Object;
.source "AesCtrHmacAeadParameters.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "HashType"
.end annotation


# static fields
.field public static final SHA1:Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$HashType;

.field public static final SHA224:Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$HashType;

.field public static final SHA256:Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$HashType;

.field public static final SHA384:Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$HashType;

.field public static final SHA512:Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$HashType;


# instance fields
.field public final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 56
    new-instance v0, Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$HashType;

    const-string v1, "SHA1"

    invoke-direct {v0, v1}, Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$HashType;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$HashType;->SHA1:Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$HashType;

    .line 57
    new-instance v0, Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$HashType;

    const-string v1, "SHA224"

    invoke-direct {v0, v1}, Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$HashType;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$HashType;->SHA224:Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$HashType;

    .line 58
    new-instance v0, Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$HashType;

    const-string v1, "SHA256"

    invoke-direct {v0, v1}, Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$HashType;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$HashType;->SHA256:Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$HashType;

    .line 59
    new-instance v0, Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$HashType;

    const-string v1, "SHA384"

    invoke-direct {v0, v1}, Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$HashType;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$HashType;->SHA384:Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$HashType;

    .line 60
    new-instance v0, Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$HashType;

    const-string v1, "SHA512"

    invoke-direct {v0, v1}, Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$HashType;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$HashType;->SHA512:Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$HashType;

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

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object p1, p0, Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$HashType;->name:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 2

    .line 70
    iget-object v0, p0, Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$HashType;->name:Ljava/lang/String;

    return-object v0
.end method

###### Class com.google.crypto.tink.aead.AesCtrHmacAeadParameters.Variant (com.google.crypto.tink.aead.AesCtrHmacAeadParameters$Variant)
.class public final Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$Variant;
.super Ljava/lang/Object;
.source "AesCtrHmacAeadParameters.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Variant"
.end annotation


# static fields
.field public static final CRUNCHY:Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$Variant;

.field public static final NO_PREFIX:Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$Variant;

.field public static final TINK:Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$Variant;


# instance fields
.field public final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 37
    new-instance v0, Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$Variant;

    const-string v1, "TINK"

    invoke-direct {v0, v1}, Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$Variant;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$Variant;->TINK:Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$Variant;

    .line 38
    new-instance v0, Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$Variant;

    const-string v1, "CRUNCHY"

    invoke-direct {v0, v1}, Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$Variant;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$Variant;->CRUNCHY:Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$Variant;

    .line 39
    new-instance v0, Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$Variant;

    const-string v1, "NO_PREFIX"

    invoke-direct {v0, v1}, Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$Variant;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$Variant;->NO_PREFIX:Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$Variant;

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
    iput-object p1, p0, Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$Variant;->name:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 2

    .line 49
    iget-object v0, p0, Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$Variant;->name:Ljava/lang/String;

    return-object v0
.end method
