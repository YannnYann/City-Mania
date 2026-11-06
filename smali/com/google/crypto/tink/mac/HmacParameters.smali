###### Class com.google.crypto.tink.mac.HmacParameters (com.google.crypto.tink.mac.HmacParameters)
.class public final Lcom/google/crypto/tink/mac/HmacParameters;
.super Lcom/google/crypto/tink/mac/MacParameters;
.source "HmacParameters.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/crypto/tink/mac/HmacParameters$Variant;,
        Lcom/google/crypto/tink/mac/HmacParameters$HashType;,
        Lcom/google/crypto/tink/mac/HmacParameters$Builder;
    }
.end annotation


# instance fields
.field public final hashType:Lcom/google/crypto/tink/mac/HmacParameters$HashType;

.field public final keySizeBytes:I

.field public final tagSizeBytes:I

.field public final variant:Lcom/google/crypto/tink/mac/HmacParameters$Variant;


# direct methods
.method public constructor <init>(IILcom/google/crypto/tink/mac/HmacParameters$Variant;Lcom/google/crypto/tink/mac/HmacParameters$HashType;)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "keySizeBytes",
            "tagSizeBytes",
            "variant",
            "hashType"
        }
    .end annotation

    .line 187
    invoke-direct {p0}, Lcom/google/crypto/tink/mac/MacParameters;-><init>()V

    .line 188
    iput p1, p0, Lcom/google/crypto/tink/mac/HmacParameters;->keySizeBytes:I

    .line 189
    iput p2, p0, Lcom/google/crypto/tink/mac/HmacParameters;->tagSizeBytes:I

    .line 190
    iput-object p3, p0, Lcom/google/crypto/tink/mac/HmacParameters;->variant:Lcom/google/crypto/tink/mac/HmacParameters$Variant;

    .line 191
    iput-object p4, p0, Lcom/google/crypto/tink/mac/HmacParameters;->hashType:Lcom/google/crypto/tink/mac/HmacParameters$HashType;

    return-void
.end method

.method public synthetic constructor <init>(IILcom/google/crypto/tink/mac/HmacParameters$Variant;Lcom/google/crypto/tink/mac/HmacParameters$HashType;Lcom/google/crypto/tink/mac/HmacParameters$1;)V
    .registers 6

    .line 27
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/crypto/tink/mac/HmacParameters;-><init>(IILcom/google/crypto/tink/mac/HmacParameters$Variant;Lcom/google/crypto/tink/mac/HmacParameters$HashType;)V

    return-void
.end method

.method public static builder()Lcom/google/crypto/tink/mac/HmacParameters$Builder;
    .registers 2

    .line 195
    new-instance v0, Lcom/google/crypto/tink/mac/HmacParameters$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/crypto/tink/mac/HmacParameters$Builder;-><init>(Lcom/google/crypto/tink/mac/HmacParameters$1;)V

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

    .line 244
    instance-of v0, p1, Lcom/google/crypto/tink/mac/HmacParameters;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 247
    :cond_6
    check-cast p1, Lcom/google/crypto/tink/mac/HmacParameters;

    .line 248
    invoke-virtual {p1}, Lcom/google/crypto/tink/mac/HmacParameters;->getKeySizeBytes()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/crypto/tink/mac/HmacParameters;->getKeySizeBytes()I

    move-result v2

    if-ne v0, v2, :cond_32

    .line 249
    invoke-virtual {p1}, Lcom/google/crypto/tink/mac/HmacParameters;->getTotalTagSizeBytes()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/crypto/tink/mac/HmacParameters;->getTotalTagSizeBytes()I

    move-result v2

    if-ne v0, v2, :cond_32

    .line 250
    invoke-virtual {p1}, Lcom/google/crypto/tink/mac/HmacParameters;->getVariant()Lcom/google/crypto/tink/mac/HmacParameters$Variant;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/crypto/tink/mac/HmacParameters;->getVariant()Lcom/google/crypto/tink/mac/HmacParameters$Variant;

    move-result-object v2

    if-ne v0, v2, :cond_32

    .line 251
    invoke-virtual {p1}, Lcom/google/crypto/tink/mac/HmacParameters;->getHashType()Lcom/google/crypto/tink/mac/HmacParameters$HashType;

    move-result-object p1

    invoke-virtual {p0}, Lcom/google/crypto/tink/mac/HmacParameters;->getHashType()Lcom/google/crypto/tink/mac/HmacParameters$HashType;

    move-result-object v0

    if-ne p1, v0, :cond_32

    const/4 p1, 0x1

    return p1

    :cond_32
    return v1
.end method

.method public getCryptographicTagSizeBytes()I
    .registers 2

    .line 209
    iget v0, p0, Lcom/google/crypto/tink/mac/HmacParameters;->tagSizeBytes:I

    return v0
.end method

.method public getHashType()Lcom/google/crypto/tink/mac/HmacParameters$HashType;
    .registers 2

    .line 239
    iget-object v0, p0, Lcom/google/crypto/tink/mac/HmacParameters;->hashType:Lcom/google/crypto/tink/mac/HmacParameters$HashType;

    return-object v0
.end method

.method public getKeySizeBytes()I
    .registers 2

    .line 199
    iget v0, p0, Lcom/google/crypto/tink/mac/HmacParameters;->keySizeBytes:I

    return v0
.end method

.method public getTotalTagSizeBytes()I
    .registers 3

    .line 217
    iget-object v0, p0, Lcom/google/crypto/tink/mac/HmacParameters;->variant:Lcom/google/crypto/tink/mac/HmacParameters$Variant;

    sget-object v1, Lcom/google/crypto/tink/mac/HmacParameters$Variant;->NO_PREFIX:Lcom/google/crypto/tink/mac/HmacParameters$Variant;

    if-ne v0, v1, :cond_b

    .line 218
    invoke-virtual {p0}, Lcom/google/crypto/tink/mac/HmacParameters;->getCryptographicTagSizeBytes()I

    move-result v0

    return v0

    .line 220
    :cond_b
    sget-object v1, Lcom/google/crypto/tink/mac/HmacParameters$Variant;->TINK:Lcom/google/crypto/tink/mac/HmacParameters$Variant;

    if-ne v0, v1, :cond_16

    .line 221
    invoke-virtual {p0}, Lcom/google/crypto/tink/mac/HmacParameters;->getCryptographicTagSizeBytes()I

    move-result v0

    :goto_13
    add-int/lit8 v0, v0, 0x5

    return v0

    .line 223
    :cond_16
    sget-object v1, Lcom/google/crypto/tink/mac/HmacParameters$Variant;->CRUNCHY:Lcom/google/crypto/tink/mac/HmacParameters$Variant;

    if-ne v0, v1, :cond_1f

    .line 224
    invoke-virtual {p0}, Lcom/google/crypto/tink/mac/HmacParameters;->getCryptographicTagSizeBytes()I

    move-result v0

    goto :goto_13

    .line 226
    :cond_1f
    sget-object v1, Lcom/google/crypto/tink/mac/HmacParameters$Variant;->LEGACY:Lcom/google/crypto/tink/mac/HmacParameters$Variant;

    if-ne v0, v1, :cond_28

    .line 227
    invoke-virtual {p0}, Lcom/google/crypto/tink/mac/HmacParameters;->getCryptographicTagSizeBytes()I

    move-result v0

    goto :goto_13

    .line 229
    :cond_28
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unknown variant"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getVariant()Lcom/google/crypto/tink/mac/HmacParameters$Variant;
    .registers 2

    .line 234
    iget-object v0, p0, Lcom/google/crypto/tink/mac/HmacParameters;->variant:Lcom/google/crypto/tink/mac/HmacParameters$Variant;

    return-object v0
.end method

.method public hasIdRequirement()Z
    .registers 3

    .line 261
    iget-object v0, p0, Lcom/google/crypto/tink/mac/HmacParameters;->variant:Lcom/google/crypto/tink/mac/HmacParameters$Variant;

    sget-object v1, Lcom/google/crypto/tink/mac/HmacParameters$Variant;->NO_PREFIX:Lcom/google/crypto/tink/mac/HmacParameters$Variant;

    if-eq v0, v1, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method public hashCode()I
    .registers 6

    .line 256
    iget v0, p0, Lcom/google/crypto/tink/mac/HmacParameters;->keySizeBytes:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Lcom/google/crypto/tink/mac/HmacParameters;->tagSizeBytes:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/google/crypto/tink/mac/HmacParameters;->variant:Lcom/google/crypto/tink/mac/HmacParameters$Variant;

    iget-object v3, p0, Lcom/google/crypto/tink/mac/HmacParameters;->hashType:Lcom/google/crypto/tink/mac/HmacParameters$HashType;

    const-class v4, Lcom/google/crypto/tink/mac/HmacParameters;

    filled-new-array {v4, v0, v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 266
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HMAC Parameters (variant: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/crypto/tink/mac/HmacParameters;->variant:Lcom/google/crypto/tink/mac/HmacParameters$Variant;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", hashType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/crypto/tink/mac/HmacParameters;->hashType:Lcom/google/crypto/tink/mac/HmacParameters$HashType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/google/crypto/tink/mac/HmacParameters;->tagSizeBytes:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "-byte tags, and "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/google/crypto/tink/mac/HmacParameters;->keySizeBytes:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "-byte key)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class com.google.crypto.tink.mac.HmacParameters.AnonymousClass1 (com.google.crypto.tink.mac.HmacParameters$1)
.class public synthetic Lcom/google/crypto/tink/mac/HmacParameters$1;
.super Ljava/lang/Object;
.source "HmacParameters.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/crypto/tink/mac/HmacParameters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation

###### Class com.google.crypto.tink.mac.HmacParameters.Builder (com.google.crypto.tink.mac.HmacParameters$Builder)
.class public final Lcom/google/crypto/tink/mac/HmacParameters$Builder;
.super Ljava/lang/Object;
.source "HmacParameters.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/crypto/tink/mac/HmacParameters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field public hashType:Lcom/google/crypto/tink/mac/HmacParameters$HashType;

.field public keySizeBytes:Ljava/lang/Integer;

.field public tagSizeBytes:Ljava/lang/Integer;

.field public variant:Lcom/google/crypto/tink/mac/HmacParameters$Variant;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 76
    iput-object v0, p0, Lcom/google/crypto/tink/mac/HmacParameters$Builder;->keySizeBytes:Ljava/lang/Integer;

    .line 77
    iput-object v0, p0, Lcom/google/crypto/tink/mac/HmacParameters$Builder;->tagSizeBytes:Ljava/lang/Integer;

    .line 78
    iput-object v0, p0, Lcom/google/crypto/tink/mac/HmacParameters$Builder;->hashType:Lcom/google/crypto/tink/mac/HmacParameters$HashType;

    .line 79
    sget-object v0, Lcom/google/crypto/tink/mac/HmacParameters$Variant;->NO_PREFIX:Lcom/google/crypto/tink/mac/HmacParameters$Variant;

    iput-object v0, p0, Lcom/google/crypto/tink/mac/HmacParameters$Builder;->variant:Lcom/google/crypto/tink/mac/HmacParameters$Variant;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/crypto/tink/mac/HmacParameters$1;)V
    .registers 2

    .line 75
    invoke-direct {p0}, Lcom/google/crypto/tink/mac/HmacParameters$Builder;-><init>()V

    return-void
.end method

.method public static validateTagSizeBytes(ILcom/google/crypto/tink/mac/HmacParameters$HashType;)V
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

    const/16 v0, 0xa

    if-lt p0, v0, :cond_9e

    .line 113
    sget-object v0, Lcom/google/crypto/tink/mac/HmacParameters$HashType;->SHA1:Lcom/google/crypto/tink/mac/HmacParameters$HashType;

    if-ne p1, v0, :cond_22

    const/16 p1, 0x14

    if-gt p0, p1, :cond_e

    goto/16 :goto_81

    .line 115
    :cond_e
    new-instance p1, Ljava/security/GeneralSecurityException;

    .line 117
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    .line 116
    const-string v0, "Invalid tag size in bytes %d; can be at most 20 bytes for SHA1"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 121
    :cond_22
    sget-object v0, Lcom/google/crypto/tink/mac/HmacParameters$HashType;->SHA224:Lcom/google/crypto/tink/mac/HmacParameters$HashType;

    if-ne p1, v0, :cond_3f

    const/16 p1, 0x1c

    if-gt p0, p1, :cond_2b

    goto :goto_81

    .line 123
    :cond_2b
    new-instance p1, Ljava/security/GeneralSecurityException;

    .line 126
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    .line 124
    const-string v0, "Invalid tag size in bytes %d; can be at most 28 bytes for SHA224"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 130
    :cond_3f
    sget-object v0, Lcom/google/crypto/tink/mac/HmacParameters$HashType;->SHA256:Lcom/google/crypto/tink/mac/HmacParameters$HashType;

    if-ne p1, v0, :cond_5c

    const/16 p1, 0x20

    if-gt p0, p1, :cond_48

    goto :goto_81

    .line 132
    :cond_48
    new-instance p1, Ljava/security/GeneralSecurityException;

    .line 135
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    .line 133
    const-string v0, "Invalid tag size in bytes %d; can be at most 32 bytes for SHA256"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 139
    :cond_5c
    sget-object v0, Lcom/google/crypto/tink/mac/HmacParameters$HashType;->SHA384:Lcom/google/crypto/tink/mac/HmacParameters$HashType;

    if-ne p1, v0, :cond_79

    const/16 p1, 0x30

    if-gt p0, p1, :cond_65

    goto :goto_81

    .line 141
    :cond_65
    new-instance p1, Ljava/security/GeneralSecurityException;

    .line 144
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    .line 142
    const-string v0, "Invalid tag size in bytes %d; can be at most 48 bytes for SHA384"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 148
    :cond_79
    sget-object v0, Lcom/google/crypto/tink/mac/HmacParameters$HashType;->SHA512:Lcom/google/crypto/tink/mac/HmacParameters$HashType;

    if-ne p1, v0, :cond_96

    const/16 p1, 0x40

    if-gt p0, p1, :cond_82

    :goto_81
    return-void

    .line 150
    :cond_82
    new-instance p1, Ljava/security/GeneralSecurityException;

    .line 153
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    .line 151
    const-string v0, "Invalid tag size in bytes %d; can be at most 64 bytes for SHA512"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 157
    :cond_96
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string p1, "unknown hash type; must be SHA256, SHA384 or SHA512"

    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 110
    :cond_9e
    new-instance p1, Ljava/security/GeneralSecurityException;

    .line 111
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "Invalid tag size in bytes %d; must be at least 10 bytes"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public build()Lcom/google/crypto/tink/mac/HmacParameters;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 161
    iget-object v0, p0, Lcom/google/crypto/tink/mac/HmacParameters$Builder;->keySizeBytes:Ljava/lang/Integer;

    if-eqz v0, :cond_64

    .line 164
    iget-object v1, p0, Lcom/google/crypto/tink/mac/HmacParameters$Builder;->tagSizeBytes:Ljava/lang/Integer;

    if-eqz v1, :cond_5c

    .line 167
    iget-object v1, p0, Lcom/google/crypto/tink/mac/HmacParameters$Builder;->hashType:Lcom/google/crypto/tink/mac/HmacParameters$HashType;

    if-eqz v1, :cond_54

    .line 170
    iget-object v1, p0, Lcom/google/crypto/tink/mac/HmacParameters$Builder;->variant:Lcom/google/crypto/tink/mac/HmacParameters$Variant;

    if-eqz v1, :cond_4c

    .line 173
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x10

    if-lt v0, v1, :cond_3a

    .line 177
    iget-object v0, p0, Lcom/google/crypto/tink/mac/HmacParameters$Builder;->tagSizeBytes:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/google/crypto/tink/mac/HmacParameters$Builder;->hashType:Lcom/google/crypto/tink/mac/HmacParameters$HashType;

    invoke-static {v0, v1}, Lcom/google/crypto/tink/mac/HmacParameters$Builder;->validateTagSizeBytes(ILcom/google/crypto/tink/mac/HmacParameters$HashType;)V

    .line 178
    new-instance v2, Lcom/google/crypto/tink/mac/HmacParameters;

    iget-object v0, p0, Lcom/google/crypto/tink/mac/HmacParameters$Builder;->keySizeBytes:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v0, p0, Lcom/google/crypto/tink/mac/HmacParameters$Builder;->tagSizeBytes:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v5, p0, Lcom/google/crypto/tink/mac/HmacParameters$Builder;->variant:Lcom/google/crypto/tink/mac/HmacParameters$Variant;

    iget-object v6, p0, Lcom/google/crypto/tink/mac/HmacParameters$Builder;->hashType:Lcom/google/crypto/tink/mac/HmacParameters$HashType;

    const/4 v7, 0x0

    invoke-direct/range {v2 .. v7}, Lcom/google/crypto/tink/mac/HmacParameters;-><init>(IILcom/google/crypto/tink/mac/HmacParameters$Variant;Lcom/google/crypto/tink/mac/HmacParameters$HashType;Lcom/google/crypto/tink/mac/HmacParameters$1;)V

    return-object v2

    .line 174
    :cond_3a
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    iget-object v1, p0, Lcom/google/crypto/tink/mac/HmacParameters$Builder;->keySizeBytes:Ljava/lang/Integer;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    .line 175
    const-string v2, "Invalid key size in bytes %d; must be at least 16 bytes"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 171
    :cond_4c
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "variant is not set"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 168
    :cond_54
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "hash type is not set"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 165
    :cond_5c
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "tag size is not set"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 162
    :cond_64
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "key size is not set"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setHashType(Lcom/google/crypto/tink/mac/HmacParameters$HashType;)Lcom/google/crypto/tink/mac/HmacParameters$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "hashType"
        }
    .end annotation

    .line 103
    iput-object p1, p0, Lcom/google/crypto/tink/mac/HmacParameters$Builder;->hashType:Lcom/google/crypto/tink/mac/HmacParameters$HashType;

    return-object p0
.end method

.method public setKeySizeBytes(I)Lcom/google/crypto/tink/mac/HmacParameters$Builder;
    .registers 2
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

    .line 85
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/google/crypto/tink/mac/HmacParameters$Builder;->keySizeBytes:Ljava/lang/Integer;

    return-object p0
.end method

.method public setTagSizeBytes(I)Lcom/google/crypto/tink/mac/HmacParameters$Builder;
    .registers 2
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

    .line 91
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/google/crypto/tink/mac/HmacParameters$Builder;->tagSizeBytes:Ljava/lang/Integer;

    return-object p0
.end method

.method public setVariant(Lcom/google/crypto/tink/mac/HmacParameters$Variant;)Lcom/google/crypto/tink/mac/HmacParameters$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "variant"
        }
    .end annotation

    .line 97
    iput-object p1, p0, Lcom/google/crypto/tink/mac/HmacParameters$Builder;->variant:Lcom/google/crypto/tink/mac/HmacParameters$Variant;

    return-object p0
.end method

###### Class com.google.crypto.tink.mac.HmacParameters.HashType (com.google.crypto.tink.mac.HmacParameters$HashType)
.class public final Lcom/google/crypto/tink/mac/HmacParameters$HashType;
.super Ljava/lang/Object;
.source "HmacParameters.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/crypto/tink/mac/HmacParameters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "HashType"
.end annotation


# static fields
.field public static final SHA1:Lcom/google/crypto/tink/mac/HmacParameters$HashType;

.field public static final SHA224:Lcom/google/crypto/tink/mac/HmacParameters$HashType;

.field public static final SHA256:Lcom/google/crypto/tink/mac/HmacParameters$HashType;

.field public static final SHA384:Lcom/google/crypto/tink/mac/HmacParameters$HashType;

.field public static final SHA512:Lcom/google/crypto/tink/mac/HmacParameters$HashType;


# instance fields
.field public final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 56
    new-instance v0, Lcom/google/crypto/tink/mac/HmacParameters$HashType;

    const-string v1, "SHA1"

    invoke-direct {v0, v1}, Lcom/google/crypto/tink/mac/HmacParameters$HashType;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/crypto/tink/mac/HmacParameters$HashType;->SHA1:Lcom/google/crypto/tink/mac/HmacParameters$HashType;

    .line 57
    new-instance v0, Lcom/google/crypto/tink/mac/HmacParameters$HashType;

    const-string v1, "SHA224"

    invoke-direct {v0, v1}, Lcom/google/crypto/tink/mac/HmacParameters$HashType;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/crypto/tink/mac/HmacParameters$HashType;->SHA224:Lcom/google/crypto/tink/mac/HmacParameters$HashType;

    .line 58
    new-instance v0, Lcom/google/crypto/tink/mac/HmacParameters$HashType;

    const-string v1, "SHA256"

    invoke-direct {v0, v1}, Lcom/google/crypto/tink/mac/HmacParameters$HashType;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/crypto/tink/mac/HmacParameters$HashType;->SHA256:Lcom/google/crypto/tink/mac/HmacParameters$HashType;

    .line 59
    new-instance v0, Lcom/google/crypto/tink/mac/HmacParameters$HashType;

    const-string v1, "SHA384"

    invoke-direct {v0, v1}, Lcom/google/crypto/tink/mac/HmacParameters$HashType;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/crypto/tink/mac/HmacParameters$HashType;->SHA384:Lcom/google/crypto/tink/mac/HmacParameters$HashType;

    .line 60
    new-instance v0, Lcom/google/crypto/tink/mac/HmacParameters$HashType;

    const-string v1, "SHA512"

    invoke-direct {v0, v1}, Lcom/google/crypto/tink/mac/HmacParameters$HashType;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/crypto/tink/mac/HmacParameters$HashType;->SHA512:Lcom/google/crypto/tink/mac/HmacParameters$HashType;

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
    iput-object p1, p0, Lcom/google/crypto/tink/mac/HmacParameters$HashType;->name:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 2

    .line 70
    iget-object v0, p0, Lcom/google/crypto/tink/mac/HmacParameters$HashType;->name:Ljava/lang/String;

    return-object v0
.end method

###### Class com.google.crypto.tink.mac.HmacParameters.Variant (com.google.crypto.tink.mac.HmacParameters$Variant)
.class public final Lcom/google/crypto/tink/mac/HmacParameters$Variant;
.super Ljava/lang/Object;
.source "HmacParameters.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/crypto/tink/mac/HmacParameters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Variant"
.end annotation


# static fields
.field public static final CRUNCHY:Lcom/google/crypto/tink/mac/HmacParameters$Variant;

.field public static final LEGACY:Lcom/google/crypto/tink/mac/HmacParameters$Variant;

.field public static final NO_PREFIX:Lcom/google/crypto/tink/mac/HmacParameters$Variant;

.field public static final TINK:Lcom/google/crypto/tink/mac/HmacParameters$Variant;


# instance fields
.field public final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 36
    new-instance v0, Lcom/google/crypto/tink/mac/HmacParameters$Variant;

    const-string v1, "TINK"

    invoke-direct {v0, v1}, Lcom/google/crypto/tink/mac/HmacParameters$Variant;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/crypto/tink/mac/HmacParameters$Variant;->TINK:Lcom/google/crypto/tink/mac/HmacParameters$Variant;

    .line 37
    new-instance v0, Lcom/google/crypto/tink/mac/HmacParameters$Variant;

    const-string v1, "CRUNCHY"

    invoke-direct {v0, v1}, Lcom/google/crypto/tink/mac/HmacParameters$Variant;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/crypto/tink/mac/HmacParameters$Variant;->CRUNCHY:Lcom/google/crypto/tink/mac/HmacParameters$Variant;

    .line 38
    new-instance v0, Lcom/google/crypto/tink/mac/HmacParameters$Variant;

    const-string v1, "LEGACY"

    invoke-direct {v0, v1}, Lcom/google/crypto/tink/mac/HmacParameters$Variant;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/crypto/tink/mac/HmacParameters$Variant;->LEGACY:Lcom/google/crypto/tink/mac/HmacParameters$Variant;

    .line 39
    new-instance v0, Lcom/google/crypto/tink/mac/HmacParameters$Variant;

    const-string v1, "NO_PREFIX"

    invoke-direct {v0, v1}, Lcom/google/crypto/tink/mac/HmacParameters$Variant;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/crypto/tink/mac/HmacParameters$Variant;->NO_PREFIX:Lcom/google/crypto/tink/mac/HmacParameters$Variant;

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
    iput-object p1, p0, Lcom/google/crypto/tink/mac/HmacParameters$Variant;->name:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 2

    .line 49
    iget-object v0, p0, Lcom/google/crypto/tink/mac/HmacParameters$Variant;->name:Ljava/lang/String;

    return-object v0
.end method
