###### Class com.google.crypto.tink.signature.MlDsaParameters (com.google.crypto.tink.signature.MlDsaParameters)
.class public final Lcom/google/crypto/tink/signature/MlDsaParameters;
.super Lcom/google/crypto/tink/signature/SignatureParameters;
.source "MlDsaParameters.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/crypto/tink/signature/MlDsaParameters$MlDsaInstance;,
        Lcom/google/crypto/tink/signature/MlDsaParameters$Variant;
    }
.end annotation


# instance fields
.field public final mlDsaInstance:Lcom/google/crypto/tink/signature/MlDsaParameters$MlDsaInstance;

.field public final variant:Lcom/google/crypto/tink/signature/MlDsaParameters$Variant;


# direct methods
.method public constructor <init>(Lcom/google/crypto/tink/signature/MlDsaParameters$MlDsaInstance;Lcom/google/crypto/tink/signature/MlDsaParameters$Variant;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "mlDsaInstance",
            "variant"
        }
    .end annotation

    .line 79
    invoke-direct {p0}, Lcom/google/crypto/tink/signature/SignatureParameters;-><init>()V

    .line 80
    iput-object p1, p0, Lcom/google/crypto/tink/signature/MlDsaParameters;->mlDsaInstance:Lcom/google/crypto/tink/signature/MlDsaParameters$MlDsaInstance;

    .line 81
    iput-object p2, p0, Lcom/google/crypto/tink/signature/MlDsaParameters;->variant:Lcom/google/crypto/tink/signature/MlDsaParameters$Variant;

    return-void
.end method

.method public static create(Lcom/google/crypto/tink/signature/MlDsaParameters$MlDsaInstance;Lcom/google/crypto/tink/signature/MlDsaParameters$Variant;)Lcom/google/crypto/tink/signature/MlDsaParameters;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "mlDsaInstance",
            "variant"
        }
    .end annotation

    .line 76
    new-instance v0, Lcom/google/crypto/tink/signature/MlDsaParameters;

    invoke-direct {v0, p0, p1}, Lcom/google/crypto/tink/signature/MlDsaParameters;-><init>(Lcom/google/crypto/tink/signature/MlDsaParameters$MlDsaInstance;Lcom/google/crypto/tink/signature/MlDsaParameters$Variant;)V

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

    .line 94
    instance-of v0, p1, Lcom/google/crypto/tink/signature/MlDsaParameters;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 97
    :cond_6
    check-cast p1, Lcom/google/crypto/tink/signature/MlDsaParameters;

    .line 98
    invoke-virtual {p1}, Lcom/google/crypto/tink/signature/MlDsaParameters;->getMlDsaInstance()Lcom/google/crypto/tink/signature/MlDsaParameters$MlDsaInstance;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/crypto/tink/signature/MlDsaParameters;->getMlDsaInstance()Lcom/google/crypto/tink/signature/MlDsaParameters$MlDsaInstance;

    move-result-object v2

    if-ne v0, v2, :cond_1e

    invoke-virtual {p1}, Lcom/google/crypto/tink/signature/MlDsaParameters;->getVariant()Lcom/google/crypto/tink/signature/MlDsaParameters$Variant;

    move-result-object p1

    invoke-virtual {p0}, Lcom/google/crypto/tink/signature/MlDsaParameters;->getVariant()Lcom/google/crypto/tink/signature/MlDsaParameters$Variant;

    move-result-object v0

    if-ne p1, v0, :cond_1e

    const/4 p1, 0x1

    return p1

    :cond_1e
    return v1
.end method

.method public getMlDsaInstance()Lcom/google/crypto/tink/signature/MlDsaParameters$MlDsaInstance;
    .registers 2

    .line 85
    iget-object v0, p0, Lcom/google/crypto/tink/signature/MlDsaParameters;->mlDsaInstance:Lcom/google/crypto/tink/signature/MlDsaParameters$MlDsaInstance;

    return-object v0
.end method

.method public getVariant()Lcom/google/crypto/tink/signature/MlDsaParameters$Variant;
    .registers 2

    .line 89
    iget-object v0, p0, Lcom/google/crypto/tink/signature/MlDsaParameters;->variant:Lcom/google/crypto/tink/signature/MlDsaParameters$Variant;

    return-object v0
.end method

.method public hasIdRequirement()Z
    .registers 3

    .line 108
    iget-object v0, p0, Lcom/google/crypto/tink/signature/MlDsaParameters;->variant:Lcom/google/crypto/tink/signature/MlDsaParameters$Variant;

    sget-object v1, Lcom/google/crypto/tink/signature/MlDsaParameters$Variant;->NO_PREFIX:Lcom/google/crypto/tink/signature/MlDsaParameters$Variant;

    if-eq v0, v1, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method public hashCode()I
    .registers 4

    .line 103
    iget-object v0, p0, Lcom/google/crypto/tink/signature/MlDsaParameters;->mlDsaInstance:Lcom/google/crypto/tink/signature/MlDsaParameters$MlDsaInstance;

    iget-object v1, p0, Lcom/google/crypto/tink/signature/MlDsaParameters;->variant:Lcom/google/crypto/tink/signature/MlDsaParameters$Variant;

    const-class v2, Lcom/google/crypto/tink/signature/MlDsaParameters;

    filled-new-array {v2, v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 113
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ML-DSA Parameters (ML-DSA instance: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/crypto/tink/signature/MlDsaParameters;->mlDsaInstance:Lcom/google/crypto/tink/signature/MlDsaParameters$MlDsaInstance;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", variant: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/crypto/tink/signature/MlDsaParameters;->variant:Lcom/google/crypto/tink/signature/MlDsaParameters$Variant;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class com.google.crypto.tink.signature.MlDsaParameters.MlDsaInstance (com.google.crypto.tink.signature.MlDsaParameters$MlDsaInstance)
.class public final Lcom/google/crypto/tink/signature/MlDsaParameters$MlDsaInstance;
.super Ljava/lang/Object;
.source "MlDsaParameters.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/crypto/tink/signature/MlDsaParameters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MlDsaInstance"
.end annotation


# static fields
.field public static final ML_DSA_65:Lcom/google/crypto/tink/signature/MlDsaParameters$MlDsaInstance;

.field public static final ML_DSA_87:Lcom/google/crypto/tink/signature/MlDsaParameters$MlDsaInstance;


# instance fields
.field public final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 56
    new-instance v0, Lcom/google/crypto/tink/signature/MlDsaParameters$MlDsaInstance;

    const-string v1, "ML_DSA_65"

    invoke-direct {v0, v1}, Lcom/google/crypto/tink/signature/MlDsaParameters$MlDsaInstance;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/crypto/tink/signature/MlDsaParameters$MlDsaInstance;->ML_DSA_65:Lcom/google/crypto/tink/signature/MlDsaParameters$MlDsaInstance;

    .line 57
    new-instance v0, Lcom/google/crypto/tink/signature/MlDsaParameters$MlDsaInstance;

    const-string v1, "ML_DSA_87"

    invoke-direct {v0, v1}, Lcom/google/crypto/tink/signature/MlDsaParameters$MlDsaInstance;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/crypto/tink/signature/MlDsaParameters$MlDsaInstance;->ML_DSA_87:Lcom/google/crypto/tink/signature/MlDsaParameters$MlDsaInstance;

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
    iput-object p1, p0, Lcom/google/crypto/tink/signature/MlDsaParameters$MlDsaInstance;->name:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 2

    .line 67
    iget-object v0, p0, Lcom/google/crypto/tink/signature/MlDsaParameters$MlDsaInstance;->name:Ljava/lang/String;

    return-object v0
.end method

###### Class com.google.crypto.tink.signature.MlDsaParameters.Variant (com.google.crypto.tink.signature.MlDsaParameters$Variant)
.class public final Lcom/google/crypto/tink/signature/MlDsaParameters$Variant;
.super Ljava/lang/Object;
.source "MlDsaParameters.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/crypto/tink/signature/MlDsaParameters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Variant"
.end annotation


# static fields
.field public static final NO_PREFIX:Lcom/google/crypto/tink/signature/MlDsaParameters$Variant;

.field public static final TINK:Lcom/google/crypto/tink/signature/MlDsaParameters$Variant;


# instance fields
.field public final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 32
    new-instance v0, Lcom/google/crypto/tink/signature/MlDsaParameters$Variant;

    const-string v1, "TINK"

    invoke-direct {v0, v1}, Lcom/google/crypto/tink/signature/MlDsaParameters$Variant;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/crypto/tink/signature/MlDsaParameters$Variant;->TINK:Lcom/google/crypto/tink/signature/MlDsaParameters$Variant;

    .line 33
    new-instance v0, Lcom/google/crypto/tink/signature/MlDsaParameters$Variant;

    const-string v1, "NO_PREFIX"

    invoke-direct {v0, v1}, Lcom/google/crypto/tink/signature/MlDsaParameters$Variant;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/crypto/tink/signature/MlDsaParameters$Variant;->NO_PREFIX:Lcom/google/crypto/tink/signature/MlDsaParameters$Variant;

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

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/google/crypto/tink/signature/MlDsaParameters$Variant;->name:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 2

    .line 43
    iget-object v0, p0, Lcom/google/crypto/tink/signature/MlDsaParameters$Variant;->name:Ljava/lang/String;

    return-object v0
.end method
