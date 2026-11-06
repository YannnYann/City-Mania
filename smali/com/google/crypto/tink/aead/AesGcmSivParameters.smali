###### Class com.google.crypto.tink.aead.AesGcmSivParameters (com.google.crypto.tink.aead.AesGcmSivParameters)
.class public final Lcom/google/crypto/tink/aead/AesGcmSivParameters;
.super Lcom/google/crypto/tink/aead/AeadParameters;
.source "AesGcmSivParameters.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/crypto/tink/aead/AesGcmSivParameters$Variant;,
        Lcom/google/crypto/tink/aead/AesGcmSivParameters$Builder;
    }
.end annotation


# instance fields
.field public final keySizeBytes:I

.field public final variant:Lcom/google/crypto/tink/aead/AesGcmSivParameters$Variant;


# direct methods
.method public constructor <init>(ILcom/google/crypto/tink/aead/AesGcmSivParameters$Variant;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "keySizeBytes",
            "variant"
        }
    .end annotation

    .line 92
    invoke-direct {p0}, Lcom/google/crypto/tink/aead/AeadParameters;-><init>()V

    .line 93
    iput p1, p0, Lcom/google/crypto/tink/aead/AesGcmSivParameters;->keySizeBytes:I

    .line 94
    iput-object p2, p0, Lcom/google/crypto/tink/aead/AesGcmSivParameters;->variant:Lcom/google/crypto/tink/aead/AesGcmSivParameters$Variant;

    return-void
.end method

.method public synthetic constructor <init>(ILcom/google/crypto/tink/aead/AesGcmSivParameters$Variant;Lcom/google/crypto/tink/aead/AesGcmSivParameters$1;)V
    .registers 4

    .line 27
    invoke-direct {p0, p1, p2}, Lcom/google/crypto/tink/aead/AesGcmSivParameters;-><init>(ILcom/google/crypto/tink/aead/AesGcmSivParameters$Variant;)V

    return-void
.end method

.method public static builder()Lcom/google/crypto/tink/aead/AesGcmSivParameters$Builder;
    .registers 2

    .line 98
    new-instance v0, Lcom/google/crypto/tink/aead/AesGcmSivParameters$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/crypto/tink/aead/AesGcmSivParameters$Builder;-><init>(Lcom/google/crypto/tink/aead/AesGcmSivParameters$1;)V

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

    .line 112
    instance-of v0, p1, Lcom/google/crypto/tink/aead/AesGcmSivParameters;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 115
    :cond_6
    check-cast p1, Lcom/google/crypto/tink/aead/AesGcmSivParameters;

    .line 116
    invoke-virtual {p1}, Lcom/google/crypto/tink/aead/AesGcmSivParameters;->getKeySizeBytes()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/crypto/tink/aead/AesGcmSivParameters;->getKeySizeBytes()I

    move-result v2

    if-ne v0, v2, :cond_1e

    invoke-virtual {p1}, Lcom/google/crypto/tink/aead/AesGcmSivParameters;->getVariant()Lcom/google/crypto/tink/aead/AesGcmSivParameters$Variant;

    move-result-object p1

    invoke-virtual {p0}, Lcom/google/crypto/tink/aead/AesGcmSivParameters;->getVariant()Lcom/google/crypto/tink/aead/AesGcmSivParameters$Variant;

    move-result-object v0

    if-ne p1, v0, :cond_1e

    const/4 p1, 0x1

    return p1

    :cond_1e
    return v1
.end method

.method public getKeySizeBytes()I
    .registers 2

    .line 102
    iget v0, p0, Lcom/google/crypto/tink/aead/AesGcmSivParameters;->keySizeBytes:I

    return v0
.end method

.method public getVariant()Lcom/google/crypto/tink/aead/AesGcmSivParameters$Variant;
    .registers 2

    .line 107
    iget-object v0, p0, Lcom/google/crypto/tink/aead/AesGcmSivParameters;->variant:Lcom/google/crypto/tink/aead/AesGcmSivParameters$Variant;

    return-object v0
.end method

.method public hasIdRequirement()Z
    .registers 3

    .line 126
    iget-object v0, p0, Lcom/google/crypto/tink/aead/AesGcmSivParameters;->variant:Lcom/google/crypto/tink/aead/AesGcmSivParameters$Variant;

    sget-object v1, Lcom/google/crypto/tink/aead/AesGcmSivParameters$Variant;->NO_PREFIX:Lcom/google/crypto/tink/aead/AesGcmSivParameters$Variant;

    if-eq v0, v1, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method public hashCode()I
    .registers 4

    .line 121
    iget v0, p0, Lcom/google/crypto/tink/aead/AesGcmSivParameters;->keySizeBytes:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lcom/google/crypto/tink/aead/AesGcmSivParameters;->variant:Lcom/google/crypto/tink/aead/AesGcmSivParameters$Variant;

    const-class v2, Lcom/google/crypto/tink/aead/AesGcmSivParameters;

    filled-new-array {v2, v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 131
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AesGcmSiv Parameters (variant: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/crypto/tink/aead/AesGcmSivParameters;->variant:Lcom/google/crypto/tink/aead/AesGcmSivParameters$Variant;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/google/crypto/tink/aead/AesGcmSivParameters;->keySizeBytes:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "-byte key)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class com.google.crypto.tink.aead.AesGcmSivParameters.AnonymousClass1 (com.google.crypto.tink.aead.AesGcmSivParameters$1)
.class public synthetic Lcom/google/crypto/tink/aead/AesGcmSivParameters$1;
.super Ljava/lang/Object;
.source "AesGcmSivParameters.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/crypto/tink/aead/AesGcmSivParameters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation

###### Class com.google.crypto.tink.aead.AesGcmSivParameters.Builder (com.google.crypto.tink.aead.AesGcmSivParameters$Builder)
.class public final Lcom/google/crypto/tink/aead/AesGcmSivParameters$Builder;
.super Ljava/lang/Object;
.source "AesGcmSivParameters.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/crypto/tink/aead/AesGcmSivParameters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field public keySizeBytes:Ljava/lang/Integer;

.field public variant:Lcom/google/crypto/tink/aead/AesGcmSivParameters$Variant;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 54
    iput-object v0, p0, Lcom/google/crypto/tink/aead/AesGcmSivParameters$Builder;->keySizeBytes:Ljava/lang/Integer;

    .line 55
    sget-object v0, Lcom/google/crypto/tink/aead/AesGcmSivParameters$Variant;->NO_PREFIX:Lcom/google/crypto/tink/aead/AesGcmSivParameters$Variant;

    iput-object v0, p0, Lcom/google/crypto/tink/aead/AesGcmSivParameters$Builder;->variant:Lcom/google/crypto/tink/aead/AesGcmSivParameters$Variant;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/crypto/tink/aead/AesGcmSivParameters$1;)V
    .registers 2

    .line 53
    invoke-direct {p0}, Lcom/google/crypto/tink/aead/AesGcmSivParameters$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/google/crypto/tink/aead/AesGcmSivParameters;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 79
    iget-object v0, p0, Lcom/google/crypto/tink/aead/AesGcmSivParameters$Builder;->keySizeBytes:Ljava/lang/Integer;

    if-eqz v0, :cond_1d

    .line 82
    iget-object v1, p0, Lcom/google/crypto/tink/aead/AesGcmSivParameters$Builder;->variant:Lcom/google/crypto/tink/aead/AesGcmSivParameters$Variant;

    if-eqz v1, :cond_15

    .line 85
    new-instance v1, Lcom/google/crypto/tink/aead/AesGcmSivParameters;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v2, p0, Lcom/google/crypto/tink/aead/AesGcmSivParameters$Builder;->variant:Lcom/google/crypto/tink/aead/AesGcmSivParameters$Variant;

    const/4 v3, 0x0

    invoke-direct {v1, v0, v2, v3}, Lcom/google/crypto/tink/aead/AesGcmSivParameters;-><init>(ILcom/google/crypto/tink/aead/AesGcmSivParameters$Variant;Lcom/google/crypto/tink/aead/AesGcmSivParameters$1;)V

    return-object v1

    .line 83
    :cond_15
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "Variant is not set"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 80
    :cond_1d
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "Key size is not set"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setKeySizeBytes(I)Lcom/google/crypto/tink/aead/AesGcmSivParameters$Builder;
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

    if-eq p1, v0, :cond_1d

    const/16 v0, 0x20

    if-ne p1, v0, :cond_9

    goto :goto_1d

    .line 63
    :cond_9
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    .line 66
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    .line 64
    const-string v1, "Invalid key size %d; only 16-byte and 32-byte AES keys are supported"

    invoke-static {v1, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 68
    :cond_1d
    :goto_1d
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/google/crypto/tink/aead/AesGcmSivParameters$Builder;->keySizeBytes:Ljava/lang/Integer;

    return-object p0
.end method

.method public setVariant(Lcom/google/crypto/tink/aead/AesGcmSivParameters$Variant;)Lcom/google/crypto/tink/aead/AesGcmSivParameters$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "variant"
        }
    .end annotation

    .line 74
    iput-object p1, p0, Lcom/google/crypto/tink/aead/AesGcmSivParameters$Builder;->variant:Lcom/google/crypto/tink/aead/AesGcmSivParameters$Variant;

    return-object p0
.end method

###### Class com.google.crypto.tink.aead.AesGcmSivParameters.Variant (com.google.crypto.tink.aead.AesGcmSivParameters$Variant)
.class public final Lcom/google/crypto/tink/aead/AesGcmSivParameters$Variant;
.super Ljava/lang/Object;
.source "AesGcmSivParameters.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/crypto/tink/aead/AesGcmSivParameters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Variant"
.end annotation


# static fields
.field public static final CRUNCHY:Lcom/google/crypto/tink/aead/AesGcmSivParameters$Variant;

.field public static final NO_PREFIX:Lcom/google/crypto/tink/aead/AesGcmSivParameters$Variant;

.field public static final TINK:Lcom/google/crypto/tink/aead/AesGcmSivParameters$Variant;


# instance fields
.field public final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 36
    new-instance v0, Lcom/google/crypto/tink/aead/AesGcmSivParameters$Variant;

    const-string v1, "TINK"

    invoke-direct {v0, v1}, Lcom/google/crypto/tink/aead/AesGcmSivParameters$Variant;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/crypto/tink/aead/AesGcmSivParameters$Variant;->TINK:Lcom/google/crypto/tink/aead/AesGcmSivParameters$Variant;

    .line 37
    new-instance v0, Lcom/google/crypto/tink/aead/AesGcmSivParameters$Variant;

    const-string v1, "CRUNCHY"

    invoke-direct {v0, v1}, Lcom/google/crypto/tink/aead/AesGcmSivParameters$Variant;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/crypto/tink/aead/AesGcmSivParameters$Variant;->CRUNCHY:Lcom/google/crypto/tink/aead/AesGcmSivParameters$Variant;

    .line 38
    new-instance v0, Lcom/google/crypto/tink/aead/AesGcmSivParameters$Variant;

    const-string v1, "NO_PREFIX"

    invoke-direct {v0, v1}, Lcom/google/crypto/tink/aead/AesGcmSivParameters$Variant;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/crypto/tink/aead/AesGcmSivParameters$Variant;->NO_PREFIX:Lcom/google/crypto/tink/aead/AesGcmSivParameters$Variant;

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
    iput-object p1, p0, Lcom/google/crypto/tink/aead/AesGcmSivParameters$Variant;->name:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 2

    .line 48
    iget-object v0, p0, Lcom/google/crypto/tink/aead/AesGcmSivParameters$Variant;->name:Ljava/lang/String;

    return-object v0
.end method
