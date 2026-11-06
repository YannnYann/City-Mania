###### Class com.google.crypto.tink.signature.Ed25519Parameters (com.google.crypto.tink.signature.Ed25519Parameters)
.class public final Lcom/google/crypto/tink/signature/Ed25519Parameters;
.super Lcom/google/crypto/tink/signature/SignatureParameters;
.source "Ed25519Parameters.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/crypto/tink/signature/Ed25519Parameters$Variant;
    }
.end annotation


# instance fields
.field public final variant:Lcom/google/crypto/tink/signature/Ed25519Parameters$Variant;


# direct methods
.method public constructor <init>(Lcom/google/crypto/tink/signature/Ed25519Parameters$Variant;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "variant"
        }
    .end annotation

    .line 61
    invoke-direct {p0}, Lcom/google/crypto/tink/signature/SignatureParameters;-><init>()V

    .line 62
    iput-object p1, p0, Lcom/google/crypto/tink/signature/Ed25519Parameters;->variant:Lcom/google/crypto/tink/signature/Ed25519Parameters$Variant;

    return-void
.end method

.method public static create(Lcom/google/crypto/tink/signature/Ed25519Parameters$Variant;)Lcom/google/crypto/tink/signature/Ed25519Parameters;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "variant"
        }
    .end annotation

    .line 56
    new-instance v0, Lcom/google/crypto/tink/signature/Ed25519Parameters;

    invoke-direct {v0, p0}, Lcom/google/crypto/tink/signature/Ed25519Parameters;-><init>(Lcom/google/crypto/tink/signature/Ed25519Parameters$Variant;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "o"
        }
    .end annotation

    .line 72
    instance-of v0, p1, Lcom/google/crypto/tink/signature/Ed25519Parameters;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 75
    :cond_6
    check-cast p1, Lcom/google/crypto/tink/signature/Ed25519Parameters;

    .line 76
    invoke-virtual {p1}, Lcom/google/crypto/tink/signature/Ed25519Parameters;->getVariant()Lcom/google/crypto/tink/signature/Ed25519Parameters$Variant;

    move-result-object p1

    invoke-virtual {p0}, Lcom/google/crypto/tink/signature/Ed25519Parameters;->getVariant()Lcom/google/crypto/tink/signature/Ed25519Parameters$Variant;

    move-result-object v0

    if-ne p1, v0, :cond_14

    const/4 p1, 0x1

    return p1

    :cond_14
    return v1
.end method

.method public getVariant()Lcom/google/crypto/tink/signature/Ed25519Parameters$Variant;
    .registers 2

    .line 67
    iget-object v0, p0, Lcom/google/crypto/tink/signature/Ed25519Parameters;->variant:Lcom/google/crypto/tink/signature/Ed25519Parameters$Variant;

    return-object v0
.end method

.method public hasIdRequirement()Z
    .registers 3

    .line 86
    iget-object v0, p0, Lcom/google/crypto/tink/signature/Ed25519Parameters;->variant:Lcom/google/crypto/tink/signature/Ed25519Parameters$Variant;

    sget-object v1, Lcom/google/crypto/tink/signature/Ed25519Parameters$Variant;->NO_PREFIX:Lcom/google/crypto/tink/signature/Ed25519Parameters$Variant;

    if-eq v0, v1, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method public hashCode()I
    .registers 3

    .line 81
    const-class v0, Lcom/google/crypto/tink/signature/Ed25519Parameters;

    iget-object v1, p0, Lcom/google/crypto/tink/signature/Ed25519Parameters;->variant:Lcom/google/crypto/tink/signature/Ed25519Parameters$Variant;

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Ed25519 Parameters (variant: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/crypto/tink/signature/Ed25519Parameters;->variant:Lcom/google/crypto/tink/signature/Ed25519Parameters$Variant;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class com.google.crypto.tink.signature.Ed25519Parameters.Variant (com.google.crypto.tink.signature.Ed25519Parameters$Variant)
.class public final Lcom/google/crypto/tink/signature/Ed25519Parameters$Variant;
.super Ljava/lang/Object;
.source "Ed25519Parameters.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/crypto/tink/signature/Ed25519Parameters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Variant"
.end annotation


# static fields
.field public static final CRUNCHY:Lcom/google/crypto/tink/signature/Ed25519Parameters$Variant;

.field public static final LEGACY:Lcom/google/crypto/tink/signature/Ed25519Parameters$Variant;

.field public static final NO_PREFIX:Lcom/google/crypto/tink/signature/Ed25519Parameters$Variant;

.field public static final TINK:Lcom/google/crypto/tink/signature/Ed25519Parameters$Variant;


# instance fields
.field public final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 32
    new-instance v0, Lcom/google/crypto/tink/signature/Ed25519Parameters$Variant;

    const-string v1, "TINK"

    invoke-direct {v0, v1}, Lcom/google/crypto/tink/signature/Ed25519Parameters$Variant;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/crypto/tink/signature/Ed25519Parameters$Variant;->TINK:Lcom/google/crypto/tink/signature/Ed25519Parameters$Variant;

    .line 33
    new-instance v0, Lcom/google/crypto/tink/signature/Ed25519Parameters$Variant;

    const-string v1, "CRUNCHY"

    invoke-direct {v0, v1}, Lcom/google/crypto/tink/signature/Ed25519Parameters$Variant;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/crypto/tink/signature/Ed25519Parameters$Variant;->CRUNCHY:Lcom/google/crypto/tink/signature/Ed25519Parameters$Variant;

    .line 34
    new-instance v0, Lcom/google/crypto/tink/signature/Ed25519Parameters$Variant;

    const-string v1, "LEGACY"

    invoke-direct {v0, v1}, Lcom/google/crypto/tink/signature/Ed25519Parameters$Variant;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/crypto/tink/signature/Ed25519Parameters$Variant;->LEGACY:Lcom/google/crypto/tink/signature/Ed25519Parameters$Variant;

    .line 35
    new-instance v0, Lcom/google/crypto/tink/signature/Ed25519Parameters$Variant;

    const-string v1, "NO_PREFIX"

    invoke-direct {v0, v1}, Lcom/google/crypto/tink/signature/Ed25519Parameters$Variant;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/crypto/tink/signature/Ed25519Parameters$Variant;->NO_PREFIX:Lcom/google/crypto/tink/signature/Ed25519Parameters$Variant;

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

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/google/crypto/tink/signature/Ed25519Parameters$Variant;->name:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 2

    .line 45
    iget-object v0, p0, Lcom/google/crypto/tink/signature/Ed25519Parameters$Variant;->name:Ljava/lang/String;

    return-object v0
.end method
