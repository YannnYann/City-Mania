###### Class com.google.crypto.tink.mac.PredefinedMacParameters (com.google.crypto.tink.mac.PredefinedMacParameters)
.class public final Lcom/google/crypto/tink/mac/PredefinedMacParameters;
.super Ljava/lang/Object;
.source "PredefinedMacParameters.java"


# static fields
.field public static final AES_CMAC:Lcom/google/crypto/tink/mac/AesCmacParameters;

.field public static final HMAC_SHA256_128BITTAG:Lcom/google/crypto/tink/mac/HmacParameters;

.field public static final HMAC_SHA256_256BITTAG:Lcom/google/crypto/tink/mac/HmacParameters;

.field public static final HMAC_SHA512_256BITTAG:Lcom/google/crypto/tink/mac/HmacParameters;

.field public static final HMAC_SHA512_512BITTAG:Lcom/google/crypto/tink/mac/HmacParameters;


# direct methods
.method public static synthetic $r8$lambda$1-h0PS-OuVjDr1Lhibtg2ptyf0U()Lcom/google/crypto/tink/mac/AesCmacParameters;
    .registers 2

    .line 124
    invoke-static {}, Lcom/google/crypto/tink/mac/AesCmacParameters;->builder()Lcom/google/crypto/tink/mac/AesCmacParameters$Builder;

    move-result-object v0

    const/16 v1, 0x20

    .line 125
    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/mac/AesCmacParameters$Builder;->setKeySizeBytes(I)Lcom/google/crypto/tink/mac/AesCmacParameters$Builder;

    move-result-object v0

    const/16 v1, 0x10

    .line 126
    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/mac/AesCmacParameters$Builder;->setTagSizeBytes(I)Lcom/google/crypto/tink/mac/AesCmacParameters$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/crypto/tink/mac/AesCmacParameters$Variant;->TINK:Lcom/google/crypto/tink/mac/AesCmacParameters$Variant;

    .line 127
    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/mac/AesCmacParameters$Builder;->setVariant(Lcom/google/crypto/tink/mac/AesCmacParameters$Variant;)Lcom/google/crypto/tink/mac/AesCmacParameters$Builder;

    move-result-object v0

    .line 128
    invoke-virtual {v0}, Lcom/google/crypto/tink/mac/AesCmacParameters$Builder;->build()Lcom/google/crypto/tink/mac/AesCmacParameters;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic $r8$lambda$6LaaYoYHtbhdo-Dl6sLtswzHlVY()Lcom/google/crypto/tink/mac/HmacParameters;
    .registers 2

    .line 83
    invoke-static {}, Lcom/google/crypto/tink/mac/HmacParameters;->builder()Lcom/google/crypto/tink/mac/HmacParameters$Builder;

    move-result-object v0

    const/16 v1, 0x40

    .line 84
    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/mac/HmacParameters$Builder;->setKeySizeBytes(I)Lcom/google/crypto/tink/mac/HmacParameters$Builder;

    move-result-object v0

    const/16 v1, 0x20

    .line 85
    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/mac/HmacParameters$Builder;->setTagSizeBytes(I)Lcom/google/crypto/tink/mac/HmacParameters$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/crypto/tink/mac/HmacParameters$Variant;->TINK:Lcom/google/crypto/tink/mac/HmacParameters$Variant;

    .line 86
    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/mac/HmacParameters$Builder;->setVariant(Lcom/google/crypto/tink/mac/HmacParameters$Variant;)Lcom/google/crypto/tink/mac/HmacParameters$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/crypto/tink/mac/HmacParameters$HashType;->SHA512:Lcom/google/crypto/tink/mac/HmacParameters$HashType;

    .line 87
    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/mac/HmacParameters$Builder;->setHashType(Lcom/google/crypto/tink/mac/HmacParameters$HashType;)Lcom/google/crypto/tink/mac/HmacParameters$Builder;

    move-result-object v0

    .line 88
    invoke-virtual {v0}, Lcom/google/crypto/tink/mac/HmacParameters$Builder;->build()Lcom/google/crypto/tink/mac/HmacParameters;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic $r8$lambda$6oQa717BjLBPj-L-pTw7JySQM2E()Lcom/google/crypto/tink/mac/HmacParameters;
    .registers 2

    .line 41
    invoke-static {}, Lcom/google/crypto/tink/mac/HmacParameters;->builder()Lcom/google/crypto/tink/mac/HmacParameters$Builder;

    move-result-object v0

    const/16 v1, 0x20

    .line 42
    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/mac/HmacParameters$Builder;->setKeySizeBytes(I)Lcom/google/crypto/tink/mac/HmacParameters$Builder;

    move-result-object v0

    const/16 v1, 0x10

    .line 43
    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/mac/HmacParameters$Builder;->setTagSizeBytes(I)Lcom/google/crypto/tink/mac/HmacParameters$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/crypto/tink/mac/HmacParameters$Variant;->TINK:Lcom/google/crypto/tink/mac/HmacParameters$Variant;

    .line 44
    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/mac/HmacParameters$Builder;->setVariant(Lcom/google/crypto/tink/mac/HmacParameters$Variant;)Lcom/google/crypto/tink/mac/HmacParameters$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/crypto/tink/mac/HmacParameters$HashType;->SHA256:Lcom/google/crypto/tink/mac/HmacParameters$HashType;

    .line 45
    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/mac/HmacParameters$Builder;->setHashType(Lcom/google/crypto/tink/mac/HmacParameters$HashType;)Lcom/google/crypto/tink/mac/HmacParameters$Builder;

    move-result-object v0

    .line 46
    invoke-virtual {v0}, Lcom/google/crypto/tink/mac/HmacParameters$Builder;->build()Lcom/google/crypto/tink/mac/HmacParameters;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic $r8$lambda$U370x7AD9g5_RMGHePuzEEKS0qg()Lcom/google/crypto/tink/mac/HmacParameters;
    .registers 2

    .line 62
    invoke-static {}, Lcom/google/crypto/tink/mac/HmacParameters;->builder()Lcom/google/crypto/tink/mac/HmacParameters$Builder;

    move-result-object v0

    const/16 v1, 0x20

    .line 63
    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/mac/HmacParameters$Builder;->setKeySizeBytes(I)Lcom/google/crypto/tink/mac/HmacParameters$Builder;

    move-result-object v0

    .line 64
    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/mac/HmacParameters$Builder;->setTagSizeBytes(I)Lcom/google/crypto/tink/mac/HmacParameters$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/crypto/tink/mac/HmacParameters$Variant;->TINK:Lcom/google/crypto/tink/mac/HmacParameters$Variant;

    .line 65
    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/mac/HmacParameters$Builder;->setVariant(Lcom/google/crypto/tink/mac/HmacParameters$Variant;)Lcom/google/crypto/tink/mac/HmacParameters$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/crypto/tink/mac/HmacParameters$HashType;->SHA256:Lcom/google/crypto/tink/mac/HmacParameters$HashType;

    .line 66
    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/mac/HmacParameters$Builder;->setHashType(Lcom/google/crypto/tink/mac/HmacParameters$HashType;)Lcom/google/crypto/tink/mac/HmacParameters$Builder;

    move-result-object v0

    .line 67
    invoke-virtual {v0}, Lcom/google/crypto/tink/mac/HmacParameters$Builder;->build()Lcom/google/crypto/tink/mac/HmacParameters;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic $r8$lambda$cHQf-S6wGun9zThS5JHxp6UbQPE()Lcom/google/crypto/tink/mac/HmacParameters;
    .registers 2

    .line 104
    invoke-static {}, Lcom/google/crypto/tink/mac/HmacParameters;->builder()Lcom/google/crypto/tink/mac/HmacParameters$Builder;

    move-result-object v0

    const/16 v1, 0x40

    .line 105
    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/mac/HmacParameters$Builder;->setKeySizeBytes(I)Lcom/google/crypto/tink/mac/HmacParameters$Builder;

    move-result-object v0

    .line 106
    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/mac/HmacParameters$Builder;->setTagSizeBytes(I)Lcom/google/crypto/tink/mac/HmacParameters$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/crypto/tink/mac/HmacParameters$Variant;->TINK:Lcom/google/crypto/tink/mac/HmacParameters$Variant;

    .line 107
    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/mac/HmacParameters$Builder;->setVariant(Lcom/google/crypto/tink/mac/HmacParameters$Variant;)Lcom/google/crypto/tink/mac/HmacParameters$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/crypto/tink/mac/HmacParameters$HashType;->SHA512:Lcom/google/crypto/tink/mac/HmacParameters$HashType;

    .line 108
    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/mac/HmacParameters$Builder;->setHashType(Lcom/google/crypto/tink/mac/HmacParameters$HashType;)Lcom/google/crypto/tink/mac/HmacParameters$Builder;

    move-result-object v0

    .line 109
    invoke-virtual {v0}, Lcom/google/crypto/tink/mac/HmacParameters$Builder;->build()Lcom/google/crypto/tink/mac/HmacParameters;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 38
    new-instance v0, Lcom/google/crypto/tink/mac/PredefinedMacParameters$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/google/crypto/tink/mac/PredefinedMacParameters$$ExternalSyntheticLambda0;-><init>()V

    .line 39
    invoke-static {v0}, Lcom/google/crypto/tink/internal/TinkBugException;->exceptionIsBug(Lcom/google/crypto/tink/internal/TinkBugException$ThrowingSupplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/mac/HmacParameters;

    sput-object v0, Lcom/google/crypto/tink/mac/PredefinedMacParameters;->HMAC_SHA256_128BITTAG:Lcom/google/crypto/tink/mac/HmacParameters;

    .line 59
    new-instance v0, Lcom/google/crypto/tink/mac/PredefinedMacParameters$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/google/crypto/tink/mac/PredefinedMacParameters$$ExternalSyntheticLambda1;-><init>()V

    .line 60
    invoke-static {v0}, Lcom/google/crypto/tink/internal/TinkBugException;->exceptionIsBug(Lcom/google/crypto/tink/internal/TinkBugException$ThrowingSupplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/mac/HmacParameters;

    sput-object v0, Lcom/google/crypto/tink/mac/PredefinedMacParameters;->HMAC_SHA256_256BITTAG:Lcom/google/crypto/tink/mac/HmacParameters;

    .line 80
    new-instance v0, Lcom/google/crypto/tink/mac/PredefinedMacParameters$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/google/crypto/tink/mac/PredefinedMacParameters$$ExternalSyntheticLambda2;-><init>()V

    .line 81
    invoke-static {v0}, Lcom/google/crypto/tink/internal/TinkBugException;->exceptionIsBug(Lcom/google/crypto/tink/internal/TinkBugException$ThrowingSupplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/mac/HmacParameters;

    sput-object v0, Lcom/google/crypto/tink/mac/PredefinedMacParameters;->HMAC_SHA512_256BITTAG:Lcom/google/crypto/tink/mac/HmacParameters;

    .line 101
    new-instance v0, Lcom/google/crypto/tink/mac/PredefinedMacParameters$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Lcom/google/crypto/tink/mac/PredefinedMacParameters$$ExternalSyntheticLambda3;-><init>()V

    .line 102
    invoke-static {v0}, Lcom/google/crypto/tink/internal/TinkBugException;->exceptionIsBug(Lcom/google/crypto/tink/internal/TinkBugException$ThrowingSupplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/mac/HmacParameters;

    sput-object v0, Lcom/google/crypto/tink/mac/PredefinedMacParameters;->HMAC_SHA512_512BITTAG:Lcom/google/crypto/tink/mac/HmacParameters;

    .line 121
    new-instance v0, Lcom/google/crypto/tink/mac/PredefinedMacParameters$$ExternalSyntheticLambda4;

    invoke-direct {v0}, Lcom/google/crypto/tink/mac/PredefinedMacParameters$$ExternalSyntheticLambda4;-><init>()V

    .line 122
    invoke-static {v0}, Lcom/google/crypto/tink/internal/TinkBugException;->exceptionIsBug(Lcom/google/crypto/tink/internal/TinkBugException$ThrowingSupplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/mac/AesCmacParameters;

    sput-object v0, Lcom/google/crypto/tink/mac/PredefinedMacParameters;->AES_CMAC:Lcom/google/crypto/tink/mac/AesCmacParameters;

    return-void
.end method

###### Class com.google.crypto.tink.mac.PredefinedMacParameters$$ExternalSyntheticLambda0 (com.google.crypto.tink.mac.PredefinedMacParameters$$ExternalSyntheticLambda0)
.class public final synthetic Lcom/google/crypto/tink/mac/PredefinedMacParameters$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/google/crypto/tink/internal/TinkBugException$ThrowingSupplier;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 2

    .line 0
    invoke-static {}, Lcom/google/crypto/tink/mac/PredefinedMacParameters;->$r8$lambda$6oQa717BjLBPj-L-pTw7JySQM2E()Lcom/google/crypto/tink/mac/HmacParameters;

    move-result-object v0

    return-object v0
.end method

###### Class com.google.crypto.tink.mac.PredefinedMacParameters$$ExternalSyntheticLambda1 (com.google.crypto.tink.mac.PredefinedMacParameters$$ExternalSyntheticLambda1)
.class public final synthetic Lcom/google/crypto/tink/mac/PredefinedMacParameters$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/google/crypto/tink/internal/TinkBugException$ThrowingSupplier;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 2

    .line 0
    invoke-static {}, Lcom/google/crypto/tink/mac/PredefinedMacParameters;->$r8$lambda$U370x7AD9g5_RMGHePuzEEKS0qg()Lcom/google/crypto/tink/mac/HmacParameters;

    move-result-object v0

    return-object v0
.end method

###### Class com.google.crypto.tink.mac.PredefinedMacParameters$$ExternalSyntheticLambda2 (com.google.crypto.tink.mac.PredefinedMacParameters$$ExternalSyntheticLambda2)
.class public final synthetic Lcom/google/crypto/tink/mac/PredefinedMacParameters$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/google/crypto/tink/internal/TinkBugException$ThrowingSupplier;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 2

    .line 0
    invoke-static {}, Lcom/google/crypto/tink/mac/PredefinedMacParameters;->$r8$lambda$6LaaYoYHtbhdo-Dl6sLtswzHlVY()Lcom/google/crypto/tink/mac/HmacParameters;

    move-result-object v0

    return-object v0
.end method

###### Class com.google.crypto.tink.mac.PredefinedMacParameters$$ExternalSyntheticLambda3 (com.google.crypto.tink.mac.PredefinedMacParameters$$ExternalSyntheticLambda3)
.class public final synthetic Lcom/google/crypto/tink/mac/PredefinedMacParameters$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/google/crypto/tink/internal/TinkBugException$ThrowingSupplier;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 2

    .line 0
    invoke-static {}, Lcom/google/crypto/tink/mac/PredefinedMacParameters;->$r8$lambda$cHQf-S6wGun9zThS5JHxp6UbQPE()Lcom/google/crypto/tink/mac/HmacParameters;

    move-result-object v0

    return-object v0
.end method

###### Class com.google.crypto.tink.mac.PredefinedMacParameters$$ExternalSyntheticLambda4 (com.google.crypto.tink.mac.PredefinedMacParameters$$ExternalSyntheticLambda4)
.class public final synthetic Lcom/google/crypto/tink/mac/PredefinedMacParameters$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/google/crypto/tink/internal/TinkBugException$ThrowingSupplier;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 2

    .line 0
    invoke-static {}, Lcom/google/crypto/tink/mac/PredefinedMacParameters;->$r8$lambda$1-h0PS-OuVjDr1Lhibtg2ptyf0U()Lcom/google/crypto/tink/mac/AesCmacParameters;

    move-result-object v0

    return-object v0
.end method
