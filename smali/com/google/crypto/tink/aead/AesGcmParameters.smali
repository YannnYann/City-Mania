###### Class com.google.crypto.tink.aead.AesGcmParameters (com.google.crypto.tink.aead.AesGcmParameters)
.class public final Lcom/google/crypto/tink/aead/AesGcmParameters;
.super Lcom/google/crypto/tink/aead/AeadParameters;
.source "AesGcmParameters.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/crypto/tink/aead/AesGcmParameters$Variant;,
        Lcom/google/crypto/tink/aead/AesGcmParameters$Builder;
    }
.end annotation


# instance fields
.field public final ivSizeBytes:I

.field public final keySizeBytes:I

.field public final tagSizeBytes:I

.field public final variant:Lcom/google/crypto/tink/aead/AesGcmParameters$Variant;


# direct methods
.method public constructor <init>(IIILcom/google/crypto/tink/aead/AesGcmParameters$Variant;)V
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
            "ivSizeBytes",
            "tagSizeBytes",
            "variant"
        }
    .end annotation

    .line 132
    invoke-direct {p0}, Lcom/google/crypto/tink/aead/AeadParameters;-><init>()V

    .line 133
    iput p1, p0, Lcom/google/crypto/tink/aead/AesGcmParameters;->keySizeBytes:I

    .line 134
    iput p2, p0, Lcom/google/crypto/tink/aead/AesGcmParameters;->ivSizeBytes:I

    .line 135
    iput p3, p0, Lcom/google/crypto/tink/aead/AesGcmParameters;->tagSizeBytes:I

    .line 136
    iput-object p4, p0, Lcom/google/crypto/tink/aead/AesGcmParameters;->variant:Lcom/google/crypto/tink/aead/AesGcmParameters$Variant;

    return-void
.end method

.method public synthetic constructor <init>(IIILcom/google/crypto/tink/aead/AesGcmParameters$Variant;Lcom/google/crypto/tink/aead/AesGcmParameters$1;)V
    .registers 6

    .line 27
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/crypto/tink/aead/AesGcmParameters;-><init>(IIILcom/google/crypto/tink/aead/AesGcmParameters$Variant;)V

    return-void
.end method

.method public static builder()Lcom/google/crypto/tink/aead/AesGcmParameters$Builder;
    .registers 2

    .line 140
    new-instance v0, Lcom/google/crypto/tink/aead/AesGcmParameters$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/crypto/tink/aead/AesGcmParameters$Builder;-><init>(Lcom/google/crypto/tink/aead/AesGcmParameters$1;)V

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

    .line 162
    instance-of v0, p1, Lcom/google/crypto/tink/aead/AesGcmParameters;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 165
    :cond_6
    check-cast p1, Lcom/google/crypto/tink/aead/AesGcmParameters;

    .line 166
    invoke-virtual {p1}, Lcom/google/crypto/tink/aead/AesGcmParameters;->getKeySizeBytes()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/crypto/tink/aead/AesGcmParameters;->getKeySizeBytes()I

    move-result v2

    if-ne v0, v2, :cond_32

    .line 167
    invoke-virtual {p1}, Lcom/google/crypto/tink/aead/AesGcmParameters;->getIvSizeBytes()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/crypto/tink/aead/AesGcmParameters;->getIvSizeBytes()I

    move-result v2

    if-ne v0, v2, :cond_32

    .line 168
    invoke-virtual {p1}, Lcom/google/crypto/tink/aead/AesGcmParameters;->getTagSizeBytes()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/crypto/tink/aead/AesGcmParameters;->getTagSizeBytes()I

    move-result v2

    if-ne v0, v2, :cond_32

    .line 169
    invoke-virtual {p1}, Lcom/google/crypto/tink/aead/AesGcmParameters;->getVariant()Lcom/google/crypto/tink/aead/AesGcmParameters$Variant;

    move-result-object p1

    invoke-virtual {p0}, Lcom/google/crypto/tink/aead/AesGcmParameters;->getVariant()Lcom/google/crypto/tink/aead/AesGcmParameters$Variant;

    move-result-object v0

    if-ne p1, v0, :cond_32

    const/4 p1, 0x1

    return p1

    :cond_32
    return v1
.end method

.method public getIvSizeBytes()I
    .registers 2

    .line 148
    iget v0, p0, Lcom/google/crypto/tink/aead/AesGcmParameters;->ivSizeBytes:I

    return v0
.end method

.method public getKeySizeBytes()I
    .registers 2

    .line 144
    iget v0, p0, Lcom/google/crypto/tink/aead/AesGcmParameters;->keySizeBytes:I

    return v0
.end method

.method public getTagSizeBytes()I
    .registers 2

    .line 152
    iget v0, p0, Lcom/google/crypto/tink/aead/AesGcmParameters;->tagSizeBytes:I

    return v0
.end method

.method public getVariant()Lcom/google/crypto/tink/aead/AesGcmParameters$Variant;
    .registers 2

    .line 157
    iget-object v0, p0, Lcom/google/crypto/tink/aead/AesGcmParameters;->variant:Lcom/google/crypto/tink/aead/AesGcmParameters$Variant;

    return-object v0
.end method

.method public hasIdRequirement()Z
    .registers 3

    .line 179
    iget-object v0, p0, Lcom/google/crypto/tink/aead/AesGcmParameters;->variant:Lcom/google/crypto/tink/aead/AesGcmParameters$Variant;

    sget-object v1, Lcom/google/crypto/tink/aead/AesGcmParameters$Variant;->NO_PREFIX:Lcom/google/crypto/tink/aead/AesGcmParameters$Variant;

    if-eq v0, v1, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method public hashCode()I
    .registers 6

    .line 174
    iget v0, p0, Lcom/google/crypto/tink/aead/AesGcmParameters;->keySizeBytes:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Lcom/google/crypto/tink/aead/AesGcmParameters;->ivSizeBytes:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Lcom/google/crypto/tink/aead/AesGcmParameters;->tagSizeBytes:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lcom/google/crypto/tink/aead/AesGcmParameters;->variant:Lcom/google/crypto/tink/aead/AesGcmParameters$Variant;

    const-class v4, Lcom/google/crypto/tink/aead/AesGcmParameters;

    filled-new-array {v4, v0, v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 184
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AesGcm Parameters (variant: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/crypto/tink/aead/AesGcmParameters;->variant:Lcom/google/crypto/tink/aead/AesGcmParameters$Variant;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/google/crypto/tink/aead/AesGcmParameters;->ivSizeBytes:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "-byte IV, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/google/crypto/tink/aead/AesGcmParameters;->tagSizeBytes:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "-byte tag, and "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/google/crypto/tink/aead/AesGcmParameters;->keySizeBytes:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "-byte key)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class com.google.crypto.tink.aead.AesGcmParameters.AnonymousClass1 (com.google.crypto.tink.aead.AesGcmParameters$1)
.class public synthetic Lcom/google/crypto/tink/aead/AesGcmParameters$1;
.super Ljava/lang/Object;
.source "AesGcmParameters.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/crypto/tink/aead/AesGcmParameters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation

###### Class com.google.crypto.tink.aead.AesGcmParameters.Builder (com.google.crypto.tink.aead.AesGcmParameters$Builder)
.class public final Lcom/google/crypto/tink/aead/AesGcmParameters$Builder;
.super Ljava/lang/Object;
.source "AesGcmParameters.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/crypto/tink/aead/AesGcmParameters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field public ivSizeBytes:Ljava/lang/Integer;

.field public keySizeBytes:Ljava/lang/Integer;

.field public tagSizeBytes:Ljava/lang/Integer;

.field public variant:Lcom/google/crypto/tink/aead/AesGcmParameters$Variant;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 59
    iput-object v0, p0, Lcom/google/crypto/tink/aead/AesGcmParameters$Builder;->keySizeBytes:Ljava/lang/Integer;

    .line 60
    iput-object v0, p0, Lcom/google/crypto/tink/aead/AesGcmParameters$Builder;->ivSizeBytes:Ljava/lang/Integer;

    .line 61
    iput-object v0, p0, Lcom/google/crypto/tink/aead/AesGcmParameters$Builder;->tagSizeBytes:Ljava/lang/Integer;

    .line 62
    sget-object v0, Lcom/google/crypto/tink/aead/AesGcmParameters$Variant;->NO_PREFIX:Lcom/google/crypto/tink/aead/AesGcmParameters$Variant;

    iput-object v0, p0, Lcom/google/crypto/tink/aead/AesGcmParameters$Builder;->variant:Lcom/google/crypto/tink/aead/AesGcmParameters$Variant;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/crypto/tink/aead/AesGcmParameters$1;)V
    .registers 2

    .line 58
    invoke-direct {p0}, Lcom/google/crypto/tink/aead/AesGcmParameters$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/google/crypto/tink/aead/AesGcmParameters;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 109
    iget-object v0, p0, Lcom/google/crypto/tink/aead/AesGcmParameters$Builder;->keySizeBytes:Ljava/lang/Integer;

    if-eqz v0, :cond_41

    .line 112
    iget-object v1, p0, Lcom/google/crypto/tink/aead/AesGcmParameters$Builder;->variant:Lcom/google/crypto/tink/aead/AesGcmParameters$Variant;

    if-eqz v1, :cond_39

    .line 115
    iget-object v1, p0, Lcom/google/crypto/tink/aead/AesGcmParameters$Builder;->ivSizeBytes:Ljava/lang/Integer;

    if-eqz v1, :cond_31

    .line 119
    iget-object v1, p0, Lcom/google/crypto/tink/aead/AesGcmParameters$Builder;->tagSizeBytes:Ljava/lang/Integer;

    if-eqz v1, :cond_29

    .line 123
    new-instance v2, Lcom/google/crypto/tink/aead/AesGcmParameters;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v0, p0, Lcom/google/crypto/tink/aead/AesGcmParameters$Builder;->ivSizeBytes:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v0, p0, Lcom/google/crypto/tink/aead/AesGcmParameters$Builder;->tagSizeBytes:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget-object v6, p0, Lcom/google/crypto/tink/aead/AesGcmParameters$Builder;->variant:Lcom/google/crypto/tink/aead/AesGcmParameters$Variant;

    const/4 v7, 0x0

    invoke-direct/range {v2 .. v7}, Lcom/google/crypto/tink/aead/AesGcmParameters;-><init>(IIILcom/google/crypto/tink/aead/AesGcmParameters$Variant;Lcom/google/crypto/tink/aead/AesGcmParameters$1;)V

    return-object v2

    .line 120
    :cond_29
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "Tag size is not set"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 116
    :cond_31
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "IV size is not set"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 113
    :cond_39
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "Variant is not set"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 110
    :cond_41
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "Key size is not set"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setIvSizeBytes(I)Lcom/google/crypto/tink/aead/AesGcmParameters$Builder;
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

    if-lez p1, :cond_9

    .line 86
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/google/crypto/tink/aead/AesGcmParameters$Builder;->ivSizeBytes:Ljava/lang/Integer;

    return-object p0

    .line 83
    :cond_9
    new-instance v0, Ljava/security/GeneralSecurityException;

    .line 84
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v1, "Invalid IV size in bytes %d; IV size must be positive"

    invoke-static {v1, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setKeySizeBytes(I)Lcom/google/crypto/tink/aead/AesGcmParameters$Builder;
    .registers 4
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

    const/16 v0, 0x10

    if-eq p1, v0, :cond_21

    const/16 v0, 0x18

    if-eq p1, v0, :cond_21

    const/16 v0, 0x20

    if-ne p1, v0, :cond_d

    goto :goto_21

    .line 70
    :cond_d
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    .line 73
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    .line 71
    const-string v1, "Invalid key size %d; only 16-byte, 24-byte and 32-byte AES keys are supported"

    invoke-static {v1, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 75
    :cond_21
    :goto_21
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/google/crypto/tink/aead/AesGcmParameters$Builder;->keySizeBytes:Ljava/lang/Integer;

    return-object p0
.end method

.method public setTagSizeBytes(I)Lcom/google/crypto/tink/aead/AesGcmParameters$Builder;
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

    const/16 v0, 0xc

    if-lt p1, v0, :cond_f

    const/16 v0, 0x10

    if-gt p1, v0, :cond_f

    .line 98
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/google/crypto/tink/aead/AesGcmParameters$Builder;->tagSizeBytes:Ljava/lang/Integer;

    return-object p0

    .line 93
    :cond_f
    new-instance v0, Ljava/security/GeneralSecurityException;

    .line 96
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    .line 94
    const-string v1, "Invalid tag size in bytes %d; value must be between 12 and 16 bytes"

    invoke-static {v1, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setVariant(Lcom/google/crypto/tink/aead/AesGcmParameters$Variant;)Lcom/google/crypto/tink/aead/AesGcmParameters$Builder;
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
    iput-object p1, p0, Lcom/google/crypto/tink/aead/AesGcmParameters$Builder;->variant:Lcom/google/crypto/tink/aead/AesGcmParameters$Variant;

    return-object p0
.end method

###### Class com.google.crypto.tink.aead.AesGcmParameters.Variant (com.google.crypto.tink.aead.AesGcmParameters$Variant)
.class public final Lcom/google/crypto/tink/aead/AesGcmParameters$Variant;
.super Ljava/lang/Object;
.source "AesGcmParameters.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/crypto/tink/aead/AesGcmParameters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Variant"
.end annotation


# static fields
.field public static final CRUNCHY:Lcom/google/crypto/tink/aead/AesGcmParameters$Variant;

.field public static final NO_PREFIX:Lcom/google/crypto/tink/aead/AesGcmParameters$Variant;

.field public static final TINK:Lcom/google/crypto/tink/aead/AesGcmParameters$Variant;


# instance fields
.field public final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 36
    new-instance v0, Lcom/google/crypto/tink/aead/AesGcmParameters$Variant;

    const-string v1, "TINK"

    invoke-direct {v0, v1}, Lcom/google/crypto/tink/aead/AesGcmParameters$Variant;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/crypto/tink/aead/AesGcmParameters$Variant;->TINK:Lcom/google/crypto/tink/aead/AesGcmParameters$Variant;

    .line 37
    new-instance v0, Lcom/google/crypto/tink/aead/AesGcmParameters$Variant;

    const-string v1, "CRUNCHY"

    invoke-direct {v0, v1}, Lcom/google/crypto/tink/aead/AesGcmParameters$Variant;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/crypto/tink/aead/AesGcmParameters$Variant;->CRUNCHY:Lcom/google/crypto/tink/aead/AesGcmParameters$Variant;

    .line 38
    new-instance v0, Lcom/google/crypto/tink/aead/AesGcmParameters$Variant;

    const-string v1, "NO_PREFIX"

    invoke-direct {v0, v1}, Lcom/google/crypto/tink/aead/AesGcmParameters$Variant;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/crypto/tink/aead/AesGcmParameters$Variant;->NO_PREFIX:Lcom/google/crypto/tink/aead/AesGcmParameters$Variant;

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

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/google/crypto/tink/aead/AesGcmParameters$Variant;->name:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 2

    .line 48
    iget-object v0, p0, Lcom/google/crypto/tink/aead/AesGcmParameters$Variant;->name:Ljava/lang/String;

    return-object v0
.end method
