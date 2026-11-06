###### Class com.google.crypto.tink.mac.AesCmacParameters (com.google.crypto.tink.mac.AesCmacParameters)
.class public final Lcom/google/crypto/tink/mac/AesCmacParameters;
.super Lcom/google/crypto/tink/mac/MacParameters;
.source "AesCmacParameters.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/crypto/tink/mac/AesCmacParameters$Variant;,
        Lcom/google/crypto/tink/mac/AesCmacParameters$Builder;
    }
.end annotation


# instance fields
.field public final keySizeBytes:I

.field public final tagSizeBytes:I

.field public final variant:Lcom/google/crypto/tink/mac/AesCmacParameters$Variant;


# direct methods
.method public constructor <init>(IILcom/google/crypto/tink/mac/AesCmacParameters$Variant;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "keySizeBytes",
            "tagSizeBytes",
            "variant"
        }
    .end annotation

    .line 109
    invoke-direct {p0}, Lcom/google/crypto/tink/mac/MacParameters;-><init>()V

    .line 110
    iput p1, p0, Lcom/google/crypto/tink/mac/AesCmacParameters;->keySizeBytes:I

    .line 111
    iput p2, p0, Lcom/google/crypto/tink/mac/AesCmacParameters;->tagSizeBytes:I

    .line 112
    iput-object p3, p0, Lcom/google/crypto/tink/mac/AesCmacParameters;->variant:Lcom/google/crypto/tink/mac/AesCmacParameters$Variant;

    return-void
.end method

.method public synthetic constructor <init>(IILcom/google/crypto/tink/mac/AesCmacParameters$Variant;Lcom/google/crypto/tink/mac/AesCmacParameters$1;)V
    .registers 5

    .line 27
    invoke-direct {p0, p1, p2, p3}, Lcom/google/crypto/tink/mac/AesCmacParameters;-><init>(IILcom/google/crypto/tink/mac/AesCmacParameters$Variant;)V

    return-void
.end method

.method public static builder()Lcom/google/crypto/tink/mac/AesCmacParameters$Builder;
    .registers 2

    .line 116
    new-instance v0, Lcom/google/crypto/tink/mac/AesCmacParameters$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/crypto/tink/mac/AesCmacParameters$Builder;-><init>(Lcom/google/crypto/tink/mac/AesCmacParameters$1;)V

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

    .line 160
    instance-of v0, p1, Lcom/google/crypto/tink/mac/AesCmacParameters;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 163
    :cond_6
    check-cast p1, Lcom/google/crypto/tink/mac/AesCmacParameters;

    .line 164
    invoke-virtual {p1}, Lcom/google/crypto/tink/mac/AesCmacParameters;->getKeySizeBytes()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/crypto/tink/mac/AesCmacParameters;->getKeySizeBytes()I

    move-result v2

    if-ne v0, v2, :cond_28

    .line 165
    invoke-virtual {p1}, Lcom/google/crypto/tink/mac/AesCmacParameters;->getTotalTagSizeBytes()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/crypto/tink/mac/AesCmacParameters;->getTotalTagSizeBytes()I

    move-result v2

    if-ne v0, v2, :cond_28

    .line 166
    invoke-virtual {p1}, Lcom/google/crypto/tink/mac/AesCmacParameters;->getVariant()Lcom/google/crypto/tink/mac/AesCmacParameters$Variant;

    move-result-object p1

    invoke-virtual {p0}, Lcom/google/crypto/tink/mac/AesCmacParameters;->getVariant()Lcom/google/crypto/tink/mac/AesCmacParameters$Variant;

    move-result-object v0

    if-ne p1, v0, :cond_28

    const/4 p1, 0x1

    return p1

    :cond_28
    return v1
.end method

.method public getCryptographicTagSizeBytes()I
    .registers 2

    .line 130
    iget v0, p0, Lcom/google/crypto/tink/mac/AesCmacParameters;->tagSizeBytes:I

    return v0
.end method

.method public getKeySizeBytes()I
    .registers 2

    .line 120
    iget v0, p0, Lcom/google/crypto/tink/mac/AesCmacParameters;->keySizeBytes:I

    return v0
.end method

.method public getTotalTagSizeBytes()I
    .registers 3

    .line 138
    iget-object v0, p0, Lcom/google/crypto/tink/mac/AesCmacParameters;->variant:Lcom/google/crypto/tink/mac/AesCmacParameters$Variant;

    sget-object v1, Lcom/google/crypto/tink/mac/AesCmacParameters$Variant;->NO_PREFIX:Lcom/google/crypto/tink/mac/AesCmacParameters$Variant;

    if-ne v0, v1, :cond_b

    .line 139
    invoke-virtual {p0}, Lcom/google/crypto/tink/mac/AesCmacParameters;->getCryptographicTagSizeBytes()I

    move-result v0

    return v0

    .line 141
    :cond_b
    sget-object v1, Lcom/google/crypto/tink/mac/AesCmacParameters$Variant;->TINK:Lcom/google/crypto/tink/mac/AesCmacParameters$Variant;

    if-ne v0, v1, :cond_16

    .line 142
    invoke-virtual {p0}, Lcom/google/crypto/tink/mac/AesCmacParameters;->getCryptographicTagSizeBytes()I

    move-result v0

    :goto_13
    add-int/lit8 v0, v0, 0x5

    return v0

    .line 144
    :cond_16
    sget-object v1, Lcom/google/crypto/tink/mac/AesCmacParameters$Variant;->CRUNCHY:Lcom/google/crypto/tink/mac/AesCmacParameters$Variant;

    if-ne v0, v1, :cond_1f

    .line 145
    invoke-virtual {p0}, Lcom/google/crypto/tink/mac/AesCmacParameters;->getCryptographicTagSizeBytes()I

    move-result v0

    goto :goto_13

    .line 147
    :cond_1f
    sget-object v1, Lcom/google/crypto/tink/mac/AesCmacParameters$Variant;->LEGACY:Lcom/google/crypto/tink/mac/AesCmacParameters$Variant;

    if-ne v0, v1, :cond_28

    .line 148
    invoke-virtual {p0}, Lcom/google/crypto/tink/mac/AesCmacParameters;->getCryptographicTagSizeBytes()I

    move-result v0

    goto :goto_13

    .line 150
    :cond_28
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unknown variant"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getVariant()Lcom/google/crypto/tink/mac/AesCmacParameters$Variant;
    .registers 2

    .line 155
    iget-object v0, p0, Lcom/google/crypto/tink/mac/AesCmacParameters;->variant:Lcom/google/crypto/tink/mac/AesCmacParameters$Variant;

    return-object v0
.end method

.method public hasIdRequirement()Z
    .registers 3

    .line 176
    iget-object v0, p0, Lcom/google/crypto/tink/mac/AesCmacParameters;->variant:Lcom/google/crypto/tink/mac/AesCmacParameters$Variant;

    sget-object v1, Lcom/google/crypto/tink/mac/AesCmacParameters$Variant;->NO_PREFIX:Lcom/google/crypto/tink/mac/AesCmacParameters$Variant;

    if-eq v0, v1, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method public hashCode()I
    .registers 5

    .line 171
    iget v0, p0, Lcom/google/crypto/tink/mac/AesCmacParameters;->keySizeBytes:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Lcom/google/crypto/tink/mac/AesCmacParameters;->tagSizeBytes:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/google/crypto/tink/mac/AesCmacParameters;->variant:Lcom/google/crypto/tink/mac/AesCmacParameters$Variant;

    const-class v3, Lcom/google/crypto/tink/mac/AesCmacParameters;

    filled-new-array {v3, v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 181
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AES-CMAC Parameters (variant: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/crypto/tink/mac/AesCmacParameters;->variant:Lcom/google/crypto/tink/mac/AesCmacParameters$Variant;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/google/crypto/tink/mac/AesCmacParameters;->tagSizeBytes:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "-byte tags, and "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/google/crypto/tink/mac/AesCmacParameters;->keySizeBytes:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "-byte key)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class com.google.crypto.tink.mac.AesCmacParameters.AnonymousClass1 (com.google.crypto.tink.mac.AesCmacParameters$1)
.class public synthetic Lcom/google/crypto/tink/mac/AesCmacParameters$1;
.super Ljava/lang/Object;
.source "AesCmacParameters.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/crypto/tink/mac/AesCmacParameters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation

###### Class com.google.crypto.tink.mac.AesCmacParameters.Builder (com.google.crypto.tink.mac.AesCmacParameters$Builder)
.class public final Lcom/google/crypto/tink/mac/AesCmacParameters$Builder;
.super Ljava/lang/Object;
.source "AesCmacParameters.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/crypto/tink/mac/AesCmacParameters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field public keySizeBytes:Ljava/lang/Integer;

.field public tagSizeBytes:Ljava/lang/Integer;

.field public variant:Lcom/google/crypto/tink/mac/AesCmacParameters$Variant;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 57
    iput-object v0, p0, Lcom/google/crypto/tink/mac/AesCmacParameters$Builder;->keySizeBytes:Ljava/lang/Integer;

    .line 58
    iput-object v0, p0, Lcom/google/crypto/tink/mac/AesCmacParameters$Builder;->tagSizeBytes:Ljava/lang/Integer;

    .line 59
    sget-object v0, Lcom/google/crypto/tink/mac/AesCmacParameters$Variant;->NO_PREFIX:Lcom/google/crypto/tink/mac/AesCmacParameters$Variant;

    iput-object v0, p0, Lcom/google/crypto/tink/mac/AesCmacParameters$Builder;->variant:Lcom/google/crypto/tink/mac/AesCmacParameters$Variant;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/crypto/tink/mac/AesCmacParameters$1;)V
    .registers 2

    .line 56
    invoke-direct {p0}, Lcom/google/crypto/tink/mac/AesCmacParameters$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/google/crypto/tink/mac/AesCmacParameters;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 92
    iget-object v0, p0, Lcom/google/crypto/tink/mac/AesCmacParameters$Builder;->keySizeBytes:Ljava/lang/Integer;

    if-eqz v0, :cond_2f

    .line 95
    iget-object v1, p0, Lcom/google/crypto/tink/mac/AesCmacParameters$Builder;->tagSizeBytes:Ljava/lang/Integer;

    if-eqz v1, :cond_27

    .line 98
    iget-object v1, p0, Lcom/google/crypto/tink/mac/AesCmacParameters$Builder;->variant:Lcom/google/crypto/tink/mac/AesCmacParameters$Variant;

    if-eqz v1, :cond_1f

    .line 101
    new-instance v1, Lcom/google/crypto/tink/mac/AesCmacParameters;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v2, p0, Lcom/google/crypto/tink/mac/AesCmacParameters$Builder;->tagSizeBytes:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, p0, Lcom/google/crypto/tink/mac/AesCmacParameters$Builder;->variant:Lcom/google/crypto/tink/mac/AesCmacParameters$Variant;

    const/4 v4, 0x0

    invoke-direct {v1, v0, v2, v3, v4}, Lcom/google/crypto/tink/mac/AesCmacParameters;-><init>(IILcom/google/crypto/tink/mac/AesCmacParameters$Variant;Lcom/google/crypto/tink/mac/AesCmacParameters$1;)V

    return-object v1

    .line 99
    :cond_1f
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "variant not set"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 96
    :cond_27
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "tag size not set"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 93
    :cond_2f
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "key size not set"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setKeySizeBytes(I)Lcom/google/crypto/tink/mac/AesCmacParameters$Builder;
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

    if-eq p1, v0, :cond_1f

    const/16 v0, 0x20

    if-ne p1, v0, :cond_9

    goto :goto_1f

    .line 66
    :cond_9
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    mul-int/lit8 p1, p1, 0x8

    .line 69
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    .line 67
    const-string v1, "Invalid key size %d; only 128-bit and 256-bit AES keys are supported"

    invoke-static {v1, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 71
    :cond_1f
    :goto_1f
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/google/crypto/tink/mac/AesCmacParameters$Builder;->keySizeBytes:Ljava/lang/Integer;

    return-object p0
.end method

.method public setTagSizeBytes(I)Lcom/google/crypto/tink/mac/AesCmacParameters$Builder;
    .registers 5
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

    if-lt p1, v0, :cond_f

    const/16 v0, 0x10

    if-lt v0, p1, :cond_f

    .line 81
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/google/crypto/tink/mac/AesCmacParameters$Builder;->tagSizeBytes:Ljava/lang/Integer;

    return-object p0

    .line 78
    :cond_f
    new-instance v0, Ljava/security/GeneralSecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid tag size for AesCmacParameters: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setVariant(Lcom/google/crypto/tink/mac/AesCmacParameters$Variant;)Lcom/google/crypto/tink/mac/AesCmacParameters$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "variant"
        }
    .end annotation

    .line 87
    iput-object p1, p0, Lcom/google/crypto/tink/mac/AesCmacParameters$Builder;->variant:Lcom/google/crypto/tink/mac/AesCmacParameters$Variant;

    return-object p0
.end method

###### Class com.google.crypto.tink.mac.AesCmacParameters.Variant (com.google.crypto.tink.mac.AesCmacParameters$Variant)
.class public final Lcom/google/crypto/tink/mac/AesCmacParameters$Variant;
.super Ljava/lang/Object;
.source "AesCmacParameters.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/crypto/tink/mac/AesCmacParameters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Variant"
.end annotation


# static fields
.field public static final CRUNCHY:Lcom/google/crypto/tink/mac/AesCmacParameters$Variant;

.field public static final LEGACY:Lcom/google/crypto/tink/mac/AesCmacParameters$Variant;

.field public static final NO_PREFIX:Lcom/google/crypto/tink/mac/AesCmacParameters$Variant;

.field public static final TINK:Lcom/google/crypto/tink/mac/AesCmacParameters$Variant;


# instance fields
.field public final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 36
    new-instance v0, Lcom/google/crypto/tink/mac/AesCmacParameters$Variant;

    const-string v1, "TINK"

    invoke-direct {v0, v1}, Lcom/google/crypto/tink/mac/AesCmacParameters$Variant;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/crypto/tink/mac/AesCmacParameters$Variant;->TINK:Lcom/google/crypto/tink/mac/AesCmacParameters$Variant;

    .line 37
    new-instance v0, Lcom/google/crypto/tink/mac/AesCmacParameters$Variant;

    const-string v1, "CRUNCHY"

    invoke-direct {v0, v1}, Lcom/google/crypto/tink/mac/AesCmacParameters$Variant;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/crypto/tink/mac/AesCmacParameters$Variant;->CRUNCHY:Lcom/google/crypto/tink/mac/AesCmacParameters$Variant;

    .line 38
    new-instance v0, Lcom/google/crypto/tink/mac/AesCmacParameters$Variant;

    const-string v1, "LEGACY"

    invoke-direct {v0, v1}, Lcom/google/crypto/tink/mac/AesCmacParameters$Variant;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/crypto/tink/mac/AesCmacParameters$Variant;->LEGACY:Lcom/google/crypto/tink/mac/AesCmacParameters$Variant;

    .line 39
    new-instance v0, Lcom/google/crypto/tink/mac/AesCmacParameters$Variant;

    const-string v1, "NO_PREFIX"

    invoke-direct {v0, v1}, Lcom/google/crypto/tink/mac/AesCmacParameters$Variant;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/crypto/tink/mac/AesCmacParameters$Variant;->NO_PREFIX:Lcom/google/crypto/tink/mac/AesCmacParameters$Variant;

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
    iput-object p1, p0, Lcom/google/crypto/tink/mac/AesCmacParameters$Variant;->name:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 2

    .line 49
    iget-object v0, p0, Lcom/google/crypto/tink/mac/AesCmacParameters$Variant;->name:Ljava/lang/String;

    return-object v0
.end method
