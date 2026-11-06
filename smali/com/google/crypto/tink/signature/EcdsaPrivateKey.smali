###### Class com.google.crypto.tink.signature.EcdsaPrivateKey (com.google.crypto.tink.signature.EcdsaPrivateKey)
.class public final Lcom/google/crypto/tink/signature/EcdsaPrivateKey;
.super Lcom/google/crypto/tink/signature/SignaturePrivateKey;
.source "EcdsaPrivateKey.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/crypto/tink/signature/EcdsaPrivateKey$Builder;
    }
.end annotation


# instance fields
.field public final privateValue:Lcom/google/crypto/tink/util/SecretBigInteger;

.field public final publicKey:Lcom/google/crypto/tink/signature/EcdsaPublicKey;


# direct methods
.method public constructor <init>(Lcom/google/crypto/tink/signature/EcdsaPublicKey;Lcom/google/crypto/tink/util/SecretBigInteger;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "publicKey",
            "privateValue"
        }
    .end annotation

    .line 89
    invoke-direct {p0}, Lcom/google/crypto/tink/signature/SignaturePrivateKey;-><init>()V

    .line 90
    iput-object p1, p0, Lcom/google/crypto/tink/signature/EcdsaPrivateKey;->publicKey:Lcom/google/crypto/tink/signature/EcdsaPublicKey;

    .line 91
    iput-object p2, p0, Lcom/google/crypto/tink/signature/EcdsaPrivateKey;->privateValue:Lcom/google/crypto/tink/util/SecretBigInteger;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/crypto/tink/signature/EcdsaPublicKey;Lcom/google/crypto/tink/util/SecretBigInteger;Lcom/google/crypto/tink/signature/EcdsaPrivateKey$1;)V
    .registers 4

    .line 37
    invoke-direct {p0, p1, p2}, Lcom/google/crypto/tink/signature/EcdsaPrivateKey;-><init>(Lcom/google/crypto/tink/signature/EcdsaPublicKey;Lcom/google/crypto/tink/util/SecretBigInteger;)V

    return-void
.end method

.method public static builder()Lcom/google/crypto/tink/signature/EcdsaPrivateKey$Builder;
    .registers 2

    .line 100
    new-instance v0, Lcom/google/crypto/tink/signature/EcdsaPrivateKey$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/crypto/tink/signature/EcdsaPrivateKey$Builder;-><init>(Lcom/google/crypto/tink/signature/EcdsaPrivateKey$1;)V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getParameters()Lcom/google/crypto/tink/Parameters;
    .registers 2

    .line 36
    invoke-virtual {p0}, Lcom/google/crypto/tink/signature/EcdsaPrivateKey;->getParameters()Lcom/google/crypto/tink/signature/EcdsaParameters;

    move-result-object v0

    return-object v0
.end method

.method public getParameters()Lcom/google/crypto/tink/signature/EcdsaParameters;
    .registers 2

    .line 105
    iget-object v0, p0, Lcom/google/crypto/tink/signature/EcdsaPrivateKey;->publicKey:Lcom/google/crypto/tink/signature/EcdsaPublicKey;

    invoke-virtual {v0}, Lcom/google/crypto/tink/signature/EcdsaPublicKey;->getParameters()Lcom/google/crypto/tink/signature/EcdsaParameters;

    move-result-object v0

    return-object v0
.end method

.method public getPrivateValue()Lcom/google/crypto/tink/util/SecretBigInteger;
    .registers 2

    .line 119
    iget-object v0, p0, Lcom/google/crypto/tink/signature/EcdsaPrivateKey;->privateValue:Lcom/google/crypto/tink/util/SecretBigInteger;

    return-object v0
.end method

.method public getPublicKey()Lcom/google/crypto/tink/signature/EcdsaPublicKey;
    .registers 2

    .line 110
    iget-object v0, p0, Lcom/google/crypto/tink/signature/EcdsaPrivateKey;->publicKey:Lcom/google/crypto/tink/signature/EcdsaPublicKey;

    return-object v0
.end method

.method public bridge synthetic getPublicKey()Lcom/google/crypto/tink/signature/SignaturePublicKey;
    .registers 2

    .line 36
    invoke-virtual {p0}, Lcom/google/crypto/tink/signature/EcdsaPrivateKey;->getPublicKey()Lcom/google/crypto/tink/signature/EcdsaPublicKey;

    move-result-object v0

    return-object v0
.end method

###### Class com.google.crypto.tink.signature.EcdsaPrivateKey.AnonymousClass1 (com.google.crypto.tink.signature.EcdsaPrivateKey$1)
.class public synthetic Lcom/google/crypto/tink/signature/EcdsaPrivateKey$1;
.super Ljava/lang/Object;
.source "EcdsaPrivateKey.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/crypto/tink/signature/EcdsaPrivateKey;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation

###### Class com.google.crypto.tink.signature.EcdsaPrivateKey.Builder (com.google.crypto.tink.signature.EcdsaPrivateKey$Builder)
.class public Lcom/google/crypto/tink/signature/EcdsaPrivateKey$Builder;
.super Ljava/lang/Object;
.source "EcdsaPrivateKey.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/crypto/tink/signature/EcdsaPrivateKey;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field public privateValue:Lcom/google/crypto/tink/util/SecretBigInteger;

.field public publicKey:Lcom/google/crypto/tink/signature/EcdsaPublicKey;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 43
    iput-object v0, p0, Lcom/google/crypto/tink/signature/EcdsaPrivateKey$Builder;->publicKey:Lcom/google/crypto/tink/signature/EcdsaPublicKey;

    .line 44
    iput-object v0, p0, Lcom/google/crypto/tink/signature/EcdsaPrivateKey$Builder;->privateValue:Lcom/google/crypto/tink/util/SecretBigInteger;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/crypto/tink/signature/EcdsaPrivateKey$1;)V
    .registers 2

    .line 42
    invoke-direct {p0}, Lcom/google/crypto/tink/signature/EcdsaPrivateKey$Builder;-><init>()V

    return-void
.end method

.method public static validatePrivateValue(Ljava/math/BigInteger;Ljava/security/spec/ECPoint;Lcom/google/crypto/tink/signature/EcdsaParameters$CurveType;)V
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "privateValue",
            "publicPoint",
            "curveType"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 63
    invoke-virtual {p2}, Lcom/google/crypto/tink/signature/EcdsaParameters$CurveType;->toParameterSpec()Ljava/security/spec/ECParameterSpec;

    move-result-object v0

    invoke-virtual {v0}, Ljava/security/spec/ECParameterSpec;->getOrder()Ljava/math/BigInteger;

    move-result-object v0

    .line 64
    invoke-virtual {p0}, Ljava/math/BigInteger;->signum()I

    move-result v1

    const-string v2, "Invalid private value"

    if-lez v1, :cond_2b

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-gez v0, :cond_2b

    .line 67
    invoke-virtual {p2}, Lcom/google/crypto/tink/signature/EcdsaParameters$CurveType;->toParameterSpec()Ljava/security/spec/ECParameterSpec;

    move-result-object p2

    invoke-static {p0, p2}, Lcom/google/crypto/tink/internal/EllipticCurvesUtil;->multiplyByGenerator(Ljava/math/BigInteger;Ljava/security/spec/ECParameterSpec;)Ljava/security/spec/ECPoint;

    move-result-object p0

    .line 68
    invoke-virtual {p0, p1}, Ljava/security/spec/ECPoint;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_25

    return-void

    .line 69
    :cond_25
    new-instance p0, Ljava/security/GeneralSecurityException;

    invoke-direct {p0, v2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 65
    :cond_2b
    new-instance p0, Ljava/security/GeneralSecurityException;

    invoke-direct {p0, v2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public build()Lcom/google/crypto/tink/signature/EcdsaPrivateKey;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 75
    iget-object v0, p0, Lcom/google/crypto/tink/signature/EcdsaPrivateKey$Builder;->publicKey:Lcom/google/crypto/tink/signature/EcdsaPublicKey;

    if-eqz v0, :cond_36

    .line 78
    iget-object v0, p0, Lcom/google/crypto/tink/signature/EcdsaPrivateKey$Builder;->privateValue:Lcom/google/crypto/tink/util/SecretBigInteger;

    if-eqz v0, :cond_2e

    .line 82
    invoke-static {}, Lcom/google/crypto/tink/InsecureSecretKeyAccess;->get()Lcom/google/crypto/tink/SecretKeyAccess;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/util/SecretBigInteger;->getBigInteger(Lcom/google/crypto/tink/SecretKeyAccess;)Ljava/math/BigInteger;

    move-result-object v0

    iget-object v1, p0, Lcom/google/crypto/tink/signature/EcdsaPrivateKey$Builder;->publicKey:Lcom/google/crypto/tink/signature/EcdsaPublicKey;

    .line 83
    invoke-virtual {v1}, Lcom/google/crypto/tink/signature/EcdsaPublicKey;->getPublicPoint()Ljava/security/spec/ECPoint;

    move-result-object v1

    iget-object v2, p0, Lcom/google/crypto/tink/signature/EcdsaPrivateKey$Builder;->publicKey:Lcom/google/crypto/tink/signature/EcdsaPublicKey;

    .line 84
    invoke-virtual {v2}, Lcom/google/crypto/tink/signature/EcdsaPublicKey;->getParameters()Lcom/google/crypto/tink/signature/EcdsaParameters;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/crypto/tink/signature/EcdsaParameters;->getCurveType()Lcom/google/crypto/tink/signature/EcdsaParameters$CurveType;

    move-result-object v2

    .line 81
    invoke-static {v0, v1, v2}, Lcom/google/crypto/tink/signature/EcdsaPrivateKey$Builder;->validatePrivateValue(Ljava/math/BigInteger;Ljava/security/spec/ECPoint;Lcom/google/crypto/tink/signature/EcdsaParameters$CurveType;)V

    .line 85
    new-instance v0, Lcom/google/crypto/tink/signature/EcdsaPrivateKey;

    iget-object v1, p0, Lcom/google/crypto/tink/signature/EcdsaPrivateKey$Builder;->publicKey:Lcom/google/crypto/tink/signature/EcdsaPublicKey;

    iget-object v2, p0, Lcom/google/crypto/tink/signature/EcdsaPrivateKey$Builder;->privateValue:Lcom/google/crypto/tink/util/SecretBigInteger;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/google/crypto/tink/signature/EcdsaPrivateKey;-><init>(Lcom/google/crypto/tink/signature/EcdsaPublicKey;Lcom/google/crypto/tink/util/SecretBigInteger;Lcom/google/crypto/tink/signature/EcdsaPrivateKey$1;)V

    return-object v0

    .line 79
    :cond_2e
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "Cannot build without a private value"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 76
    :cond_36
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "Cannot build without a ecdsa public key"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setPrivateValue(Lcom/google/crypto/tink/util/SecretBigInteger;)Lcom/google/crypto/tink/signature/EcdsaPrivateKey$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "privateValue"
        }
    .end annotation

    .line 56
    iput-object p1, p0, Lcom/google/crypto/tink/signature/EcdsaPrivateKey$Builder;->privateValue:Lcom/google/crypto/tink/util/SecretBigInteger;

    return-object p0
.end method

.method public setPublicKey(Lcom/google/crypto/tink/signature/EcdsaPublicKey;)Lcom/google/crypto/tink/signature/EcdsaPrivateKey$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "publicKey"
        }
    .end annotation

    .line 50
    iput-object p1, p0, Lcom/google/crypto/tink/signature/EcdsaPrivateKey$Builder;->publicKey:Lcom/google/crypto/tink/signature/EcdsaPublicKey;

    return-object p0
.end method
