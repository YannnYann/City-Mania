###### Class com.google.crypto.tink.signature.RsaSsaPkcs1PrivateKey (com.google.crypto.tink.signature.RsaSsaPkcs1PrivateKey)
.class public final Lcom/google/crypto/tink/signature/RsaSsaPkcs1PrivateKey;
.super Lcom/google/crypto/tink/signature/SignaturePrivateKey;
.source "RsaSsaPkcs1PrivateKey.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/crypto/tink/signature/RsaSsaPkcs1PrivateKey$Builder;
    }
.end annotation


# instance fields
.field public final d:Lcom/google/crypto/tink/util/SecretBigInteger;

.field public final dP:Lcom/google/crypto/tink/util/SecretBigInteger;

.field public final dQ:Lcom/google/crypto/tink/util/SecretBigInteger;

.field public final p:Lcom/google/crypto/tink/util/SecretBigInteger;

.field public final publicKey:Lcom/google/crypto/tink/signature/RsaSsaPkcs1PublicKey;

.field public final q:Lcom/google/crypto/tink/util/SecretBigInteger;

.field public final qInv:Lcom/google/crypto/tink/util/SecretBigInteger;


# direct methods
.method public constructor <init>(Lcom/google/crypto/tink/signature/RsaSsaPkcs1PublicKey;Lcom/google/crypto/tink/util/SecretBigInteger;Lcom/google/crypto/tink/util/SecretBigInteger;Lcom/google/crypto/tink/util/SecretBigInteger;Lcom/google/crypto/tink/util/SecretBigInteger;Lcom/google/crypto/tink/util/SecretBigInteger;Lcom/google/crypto/tink/util/SecretBigInteger;)V
    .registers 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "publicKey",
            "p",
            "q",
            "d",
            "dP",
            "dQ",
            "qInv"
        }
    .end annotation

    .line 182
    invoke-direct {p0}, Lcom/google/crypto/tink/signature/SignaturePrivateKey;-><init>()V

    .line 183
    iput-object p1, p0, Lcom/google/crypto/tink/signature/RsaSsaPkcs1PrivateKey;->publicKey:Lcom/google/crypto/tink/signature/RsaSsaPkcs1PublicKey;

    .line 184
    iput-object p2, p0, Lcom/google/crypto/tink/signature/RsaSsaPkcs1PrivateKey;->p:Lcom/google/crypto/tink/util/SecretBigInteger;

    .line 185
    iput-object p3, p0, Lcom/google/crypto/tink/signature/RsaSsaPkcs1PrivateKey;->q:Lcom/google/crypto/tink/util/SecretBigInteger;

    .line 186
    iput-object p4, p0, Lcom/google/crypto/tink/signature/RsaSsaPkcs1PrivateKey;->d:Lcom/google/crypto/tink/util/SecretBigInteger;

    .line 187
    iput-object p5, p0, Lcom/google/crypto/tink/signature/RsaSsaPkcs1PrivateKey;->dP:Lcom/google/crypto/tink/util/SecretBigInteger;

    .line 188
    iput-object p6, p0, Lcom/google/crypto/tink/signature/RsaSsaPkcs1PrivateKey;->dQ:Lcom/google/crypto/tink/util/SecretBigInteger;

    .line 189
    iput-object p7, p0, Lcom/google/crypto/tink/signature/RsaSsaPkcs1PrivateKey;->qInv:Lcom/google/crypto/tink/util/SecretBigInteger;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/crypto/tink/signature/RsaSsaPkcs1PublicKey;Lcom/google/crypto/tink/util/SecretBigInteger;Lcom/google/crypto/tink/util/SecretBigInteger;Lcom/google/crypto/tink/util/SecretBigInteger;Lcom/google/crypto/tink/util/SecretBigInteger;Lcom/google/crypto/tink/util/SecretBigInteger;Lcom/google/crypto/tink/util/SecretBigInteger;Lcom/google/crypto/tink/signature/RsaSsaPkcs1PrivateKey$1;)V
    .registers 9

    .line 34
    invoke-direct/range {p0 .. p7}, Lcom/google/crypto/tink/signature/RsaSsaPkcs1PrivateKey;-><init>(Lcom/google/crypto/tink/signature/RsaSsaPkcs1PublicKey;Lcom/google/crypto/tink/util/SecretBigInteger;Lcom/google/crypto/tink/util/SecretBigInteger;Lcom/google/crypto/tink/util/SecretBigInteger;Lcom/google/crypto/tink/util/SecretBigInteger;Lcom/google/crypto/tink/util/SecretBigInteger;Lcom/google/crypto/tink/util/SecretBigInteger;)V

    return-void
.end method

.method public static builder()Lcom/google/crypto/tink/signature/RsaSsaPkcs1PrivateKey$Builder;
    .registers 2

    .line 198
    new-instance v0, Lcom/google/crypto/tink/signature/RsaSsaPkcs1PrivateKey$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/crypto/tink/signature/RsaSsaPkcs1PrivateKey$Builder;-><init>(Lcom/google/crypto/tink/signature/RsaSsaPkcs1PrivateKey$1;)V

    return-object v0
.end method


# virtual methods
.method public getCrtCoefficient()Lcom/google/crypto/tink/util/SecretBigInteger;
    .registers 2

    .line 250
    iget-object v0, p0, Lcom/google/crypto/tink/signature/RsaSsaPkcs1PrivateKey;->qInv:Lcom/google/crypto/tink/util/SecretBigInteger;

    return-object v0
.end method

.method public bridge synthetic getParameters()Lcom/google/crypto/tink/Parameters;
    .registers 2

    .line 34
    invoke-virtual {p0}, Lcom/google/crypto/tink/signature/RsaSsaPkcs1PrivateKey;->getParameters()Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters;

    move-result-object v0

    return-object v0
.end method

.method public getParameters()Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters;
    .registers 2

    .line 204
    iget-object v0, p0, Lcom/google/crypto/tink/signature/RsaSsaPkcs1PrivateKey;->publicKey:Lcom/google/crypto/tink/signature/RsaSsaPkcs1PublicKey;

    invoke-virtual {v0}, Lcom/google/crypto/tink/signature/RsaSsaPkcs1PublicKey;->getParameters()Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters;

    move-result-object v0

    return-object v0
.end method

.method public getPrimeExponentP()Lcom/google/crypto/tink/util/SecretBigInteger;
    .registers 2

    .line 240
    iget-object v0, p0, Lcom/google/crypto/tink/signature/RsaSsaPkcs1PrivateKey;->dP:Lcom/google/crypto/tink/util/SecretBigInteger;

    return-object v0
.end method

.method public getPrimeExponentQ()Lcom/google/crypto/tink/util/SecretBigInteger;
    .registers 2

    .line 245
    iget-object v0, p0, Lcom/google/crypto/tink/signature/RsaSsaPkcs1PrivateKey;->dQ:Lcom/google/crypto/tink/util/SecretBigInteger;

    return-object v0
.end method

.method public getPrimeP()Lcom/google/crypto/tink/util/SecretBigInteger;
    .registers 2

    .line 220
    iget-object v0, p0, Lcom/google/crypto/tink/signature/RsaSsaPkcs1PrivateKey;->p:Lcom/google/crypto/tink/util/SecretBigInteger;

    return-object v0
.end method

.method public getPrimeQ()Lcom/google/crypto/tink/util/SecretBigInteger;
    .registers 2

    .line 230
    iget-object v0, p0, Lcom/google/crypto/tink/signature/RsaSsaPkcs1PrivateKey;->q:Lcom/google/crypto/tink/util/SecretBigInteger;

    return-object v0
.end method

.method public getPrivateExponent()Lcom/google/crypto/tink/util/SecretBigInteger;
    .registers 2

    .line 235
    iget-object v0, p0, Lcom/google/crypto/tink/signature/RsaSsaPkcs1PrivateKey;->d:Lcom/google/crypto/tink/util/SecretBigInteger;

    return-object v0
.end method

.method public getPublicKey()Lcom/google/crypto/tink/signature/RsaSsaPkcs1PublicKey;
    .registers 2

    .line 210
    iget-object v0, p0, Lcom/google/crypto/tink/signature/RsaSsaPkcs1PrivateKey;->publicKey:Lcom/google/crypto/tink/signature/RsaSsaPkcs1PublicKey;

    return-object v0
.end method

.method public bridge synthetic getPublicKey()Lcom/google/crypto/tink/signature/SignaturePublicKey;
    .registers 2

    .line 34
    invoke-virtual {p0}, Lcom/google/crypto/tink/signature/RsaSsaPkcs1PrivateKey;->getPublicKey()Lcom/google/crypto/tink/signature/RsaSsaPkcs1PublicKey;

    move-result-object v0

    return-object v0
.end method

###### Class com.google.crypto.tink.signature.RsaSsaPkcs1PrivateKey.AnonymousClass1 (com.google.crypto.tink.signature.RsaSsaPkcs1PrivateKey$1)
.class public synthetic Lcom/google/crypto/tink/signature/RsaSsaPkcs1PrivateKey$1;
.super Ljava/lang/Object;
.source "RsaSsaPkcs1PrivateKey.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/crypto/tink/signature/RsaSsaPkcs1PrivateKey;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation

###### Class com.google.crypto.tink.signature.RsaSsaPkcs1PrivateKey.Builder (com.google.crypto.tink.signature.RsaSsaPkcs1PrivateKey$Builder)
.class public Lcom/google/crypto/tink/signature/RsaSsaPkcs1PrivateKey$Builder;
.super Ljava/lang/Object;
.source "RsaSsaPkcs1PrivateKey.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/crypto/tink/signature/RsaSsaPkcs1PrivateKey;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field public d:Lcom/google/crypto/tink/util/SecretBigInteger;

.field public dP:Lcom/google/crypto/tink/util/SecretBigInteger;

.field public dQ:Lcom/google/crypto/tink/util/SecretBigInteger;

.field public p:Lcom/google/crypto/tink/util/SecretBigInteger;

.field public publicKey:Lcom/google/crypto/tink/signature/RsaSsaPkcs1PublicKey;

.field public q:Lcom/google/crypto/tink/util/SecretBigInteger;

.field public qInv:Lcom/google/crypto/tink/util/SecretBigInteger;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 45
    iput-object v0, p0, Lcom/google/crypto/tink/signature/RsaSsaPkcs1PrivateKey$Builder;->publicKey:Lcom/google/crypto/tink/signature/RsaSsaPkcs1PublicKey;

    .line 46
    iput-object v0, p0, Lcom/google/crypto/tink/signature/RsaSsaPkcs1PrivateKey$Builder;->d:Lcom/google/crypto/tink/util/SecretBigInteger;

    .line 47
    iput-object v0, p0, Lcom/google/crypto/tink/signature/RsaSsaPkcs1PrivateKey$Builder;->p:Lcom/google/crypto/tink/util/SecretBigInteger;

    .line 48
    iput-object v0, p0, Lcom/google/crypto/tink/signature/RsaSsaPkcs1PrivateKey$Builder;->q:Lcom/google/crypto/tink/util/SecretBigInteger;

    .line 49
    iput-object v0, p0, Lcom/google/crypto/tink/signature/RsaSsaPkcs1PrivateKey$Builder;->dP:Lcom/google/crypto/tink/util/SecretBigInteger;

    .line 50
    iput-object v0, p0, Lcom/google/crypto/tink/signature/RsaSsaPkcs1PrivateKey$Builder;->dQ:Lcom/google/crypto/tink/util/SecretBigInteger;

    .line 51
    iput-object v0, p0, Lcom/google/crypto/tink/signature/RsaSsaPkcs1PrivateKey$Builder;->qInv:Lcom/google/crypto/tink/util/SecretBigInteger;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/crypto/tink/signature/RsaSsaPkcs1PrivateKey$1;)V
    .registers 2

    .line 44
    invoke-direct {p0}, Lcom/google/crypto/tink/signature/RsaSsaPkcs1PrivateKey$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/google/crypto/tink/signature/RsaSsaPkcs1PrivateKey;
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 120
    iget-object v0, p0, Lcom/google/crypto/tink/signature/RsaSsaPkcs1PrivateKey$Builder;->publicKey:Lcom/google/crypto/tink/signature/RsaSsaPkcs1PublicKey;

    if-eqz v0, :cond_139

    .line 123
    iget-object v1, p0, Lcom/google/crypto/tink/signature/RsaSsaPkcs1PrivateKey$Builder;->p:Lcom/google/crypto/tink/util/SecretBigInteger;

    if-eqz v1, :cond_131

    iget-object v1, p0, Lcom/google/crypto/tink/signature/RsaSsaPkcs1PrivateKey$Builder;->q:Lcom/google/crypto/tink/util/SecretBigInteger;

    if-eqz v1, :cond_131

    .line 126
    iget-object v1, p0, Lcom/google/crypto/tink/signature/RsaSsaPkcs1PrivateKey$Builder;->d:Lcom/google/crypto/tink/util/SecretBigInteger;

    if-eqz v1, :cond_129

    .line 129
    iget-object v1, p0, Lcom/google/crypto/tink/signature/RsaSsaPkcs1PrivateKey$Builder;->dP:Lcom/google/crypto/tink/util/SecretBigInteger;

    if-eqz v1, :cond_121

    iget-object v1, p0, Lcom/google/crypto/tink/signature/RsaSsaPkcs1PrivateKey$Builder;->dQ:Lcom/google/crypto/tink/util/SecretBigInteger;

    if-eqz v1, :cond_121

    .line 132
    iget-object v1, p0, Lcom/google/crypto/tink/signature/RsaSsaPkcs1PrivateKey$Builder;->qInv:Lcom/google/crypto/tink/util/SecretBigInteger;

    if-eqz v1, :cond_119

    .line 135
    invoke-virtual {v0}, Lcom/google/crypto/tink/signature/RsaSsaPkcs1PublicKey;->getParameters()Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object v0

    .line 136
    iget-object v1, p0, Lcom/google/crypto/tink/signature/RsaSsaPkcs1PrivateKey$Builder;->publicKey:Lcom/google/crypto/tink/signature/RsaSsaPkcs1PublicKey;

    invoke-virtual {v1}, Lcom/google/crypto/tink/signature/RsaSsaPkcs1PublicKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v1

    .line 138
    iget-object v2, p0, Lcom/google/crypto/tink/signature/RsaSsaPkcs1PrivateKey$Builder;->p:Lcom/google/crypto/tink/util/SecretBigInteger;

    invoke-static {}, Lcom/google/crypto/tink/InsecureSecretKeyAccess;->get()Lcom/google/crypto/tink/SecretKeyAccess;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/crypto/tink/util/SecretBigInteger;->getBigInteger(Lcom/google/crypto/tink/SecretKeyAccess;)Ljava/math/BigInteger;

    move-result-object v2

    .line 139
    iget-object v3, p0, Lcom/google/crypto/tink/signature/RsaSsaPkcs1PrivateKey$Builder;->q:Lcom/google/crypto/tink/util/SecretBigInteger;

    invoke-static {}, Lcom/google/crypto/tink/InsecureSecretKeyAccess;->get()Lcom/google/crypto/tink/SecretKeyAccess;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/crypto/tink/util/SecretBigInteger;->getBigInteger(Lcom/google/crypto/tink/SecretKeyAccess;)Ljava/math/BigInteger;

    move-result-object v3

    .line 140
    iget-object v4, p0, Lcom/google/crypto/tink/signature/RsaSsaPkcs1PrivateKey$Builder;->d:Lcom/google/crypto/tink/util/SecretBigInteger;

    invoke-static {}, Lcom/google/crypto/tink/InsecureSecretKeyAccess;->get()Lcom/google/crypto/tink/SecretKeyAccess;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/crypto/tink/util/SecretBigInteger;->getBigInteger(Lcom/google/crypto/tink/SecretKeyAccess;)Ljava/math/BigInteger;

    move-result-object v4

    .line 141
    iget-object v5, p0, Lcom/google/crypto/tink/signature/RsaSsaPkcs1PrivateKey$Builder;->dP:Lcom/google/crypto/tink/util/SecretBigInteger;

    invoke-static {}, Lcom/google/crypto/tink/InsecureSecretKeyAccess;->get()Lcom/google/crypto/tink/SecretKeyAccess;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/google/crypto/tink/util/SecretBigInteger;->getBigInteger(Lcom/google/crypto/tink/SecretKeyAccess;)Ljava/math/BigInteger;

    move-result-object v5

    .line 142
    iget-object v6, p0, Lcom/google/crypto/tink/signature/RsaSsaPkcs1PrivateKey$Builder;->dQ:Lcom/google/crypto/tink/util/SecretBigInteger;

    invoke-static {}, Lcom/google/crypto/tink/InsecureSecretKeyAccess;->get()Lcom/google/crypto/tink/SecretKeyAccess;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/google/crypto/tink/util/SecretBigInteger;->getBigInteger(Lcom/google/crypto/tink/SecretKeyAccess;)Ljava/math/BigInteger;

    move-result-object v6

    .line 143
    iget-object v7, p0, Lcom/google/crypto/tink/signature/RsaSsaPkcs1PrivateKey$Builder;->qInv:Lcom/google/crypto/tink/util/SecretBigInteger;

    invoke-static {}, Lcom/google/crypto/tink/InsecureSecretKeyAccess;->get()Lcom/google/crypto/tink/SecretKeyAccess;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/google/crypto/tink/util/SecretBigInteger;->getBigInteger(Lcom/google/crypto/tink/SecretKeyAccess;)Ljava/math/BigInteger;

    move-result-object v7

    const/16 v8, 0xa

    .line 145
    invoke-virtual {v2, v8}, Ljava/math/BigInteger;->isProbablePrime(I)Z

    move-result v9

    if-eqz v9, :cond_111

    .line 148
    invoke-virtual {v3, v8}, Ljava/math/BigInteger;->isProbablePrime(I)Z

    move-result v8

    if-eqz v8, :cond_109

    .line 151
    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_101

    .line 156
    sget-object v1, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v2, v1}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v8

    .line 157
    invoke-virtual {v3, v1}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v9

    .line 158
    invoke-virtual {v8, v9}, Ljava/math/BigInteger;->gcd(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v10

    .line 159
    invoke-virtual {v0, v4}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f9

    .line 162
    invoke-virtual {v0, v5}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f1

    .line 165
    invoke-virtual {v0, v6}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e9

    .line 168
    invoke-virtual {v3, v7}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e1

    .line 171
    new-instance v1, Lcom/google/crypto/tink/signature/RsaSsaPkcs1PrivateKey;

    iget-object v2, p0, Lcom/google/crypto/tink/signature/RsaSsaPkcs1PrivateKey$Builder;->publicKey:Lcom/google/crypto/tink/signature/RsaSsaPkcs1PublicKey;

    iget-object v3, p0, Lcom/google/crypto/tink/signature/RsaSsaPkcs1PrivateKey$Builder;->p:Lcom/google/crypto/tink/util/SecretBigInteger;

    iget-object v4, p0, Lcom/google/crypto/tink/signature/RsaSsaPkcs1PrivateKey$Builder;->q:Lcom/google/crypto/tink/util/SecretBigInteger;

    iget-object v5, p0, Lcom/google/crypto/tink/signature/RsaSsaPkcs1PrivateKey$Builder;->d:Lcom/google/crypto/tink/util/SecretBigInteger;

    iget-object v6, p0, Lcom/google/crypto/tink/signature/RsaSsaPkcs1PrivateKey$Builder;->dP:Lcom/google/crypto/tink/util/SecretBigInteger;

    iget-object v7, p0, Lcom/google/crypto/tink/signature/RsaSsaPkcs1PrivateKey$Builder;->dQ:Lcom/google/crypto/tink/util/SecretBigInteger;

    iget-object v8, p0, Lcom/google/crypto/tink/signature/RsaSsaPkcs1PrivateKey$Builder;->qInv:Lcom/google/crypto/tink/util/SecretBigInteger;

    const/4 v9, 0x0

    invoke-direct/range {v1 .. v9}, Lcom/google/crypto/tink/signature/RsaSsaPkcs1PrivateKey;-><init>(Lcom/google/crypto/tink/signature/RsaSsaPkcs1PublicKey;Lcom/google/crypto/tink/util/SecretBigInteger;Lcom/google/crypto/tink/util/SecretBigInteger;Lcom/google/crypto/tink/util/SecretBigInteger;Lcom/google/crypto/tink/util/SecretBigInteger;Lcom/google/crypto/tink/util/SecretBigInteger;Lcom/google/crypto/tink/util/SecretBigInteger;Lcom/google/crypto/tink/signature/RsaSsaPkcs1PrivateKey$1;)V

    return-object v1

    .line 169
    :cond_e1
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "qInv is invalid."

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 166
    :cond_e9
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "dQ is invalid."

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 163
    :cond_f1
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "dP is invalid."

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 160
    :cond_f9
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "D is invalid."

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 152
    :cond_101
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "Prime p times prime q is not equal to the public key\'s modulus"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 149
    :cond_109
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "q is not a prime"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 146
    :cond_111
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "p is not a prime"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 133
    :cond_119
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "Cannot build without CRT coefficient"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 130
    :cond_121
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "Cannot build without prime exponents"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 127
    :cond_129
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "Cannot build without private exponent"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 124
    :cond_131
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "Cannot build without prime factors"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 121
    :cond_139
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "Cannot build without a RSA SSA PKCS1 public key"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setCrtCoefficient(Lcom/google/crypto/tink/util/SecretBigInteger;)Lcom/google/crypto/tink/signature/RsaSsaPkcs1PrivateKey$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "qInv"
        }
    .end annotation

    .line 112
    iput-object p1, p0, Lcom/google/crypto/tink/signature/RsaSsaPkcs1PrivateKey$Builder;->qInv:Lcom/google/crypto/tink/util/SecretBigInteger;

    return-object p0
.end method

.method public setPrimeExponents(Lcom/google/crypto/tink/util/SecretBigInteger;Lcom/google/crypto/tink/util/SecretBigInteger;)Lcom/google/crypto/tink/signature/RsaSsaPkcs1PrivateKey$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "dP",
            "dQ"
        }
    .end annotation

    .line 98
    iput-object p1, p0, Lcom/google/crypto/tink/signature/RsaSsaPkcs1PrivateKey$Builder;->dP:Lcom/google/crypto/tink/util/SecretBigInteger;

    .line 99
    iput-object p2, p0, Lcom/google/crypto/tink/signature/RsaSsaPkcs1PrivateKey$Builder;->dQ:Lcom/google/crypto/tink/util/SecretBigInteger;

    return-object p0
.end method

.method public setPrimes(Lcom/google/crypto/tink/util/SecretBigInteger;Lcom/google/crypto/tink/util/SecretBigInteger;)Lcom/google/crypto/tink/signature/RsaSsaPkcs1PrivateKey$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "p",
            "q"
        }
    .end annotation

    .line 73
    iput-object p1, p0, Lcom/google/crypto/tink/signature/RsaSsaPkcs1PrivateKey$Builder;->p:Lcom/google/crypto/tink/util/SecretBigInteger;

    .line 74
    iput-object p2, p0, Lcom/google/crypto/tink/signature/RsaSsaPkcs1PrivateKey$Builder;->q:Lcom/google/crypto/tink/util/SecretBigInteger;

    return-object p0
.end method

.method public setPrivateExponent(Lcom/google/crypto/tink/util/SecretBigInteger;)Lcom/google/crypto/tink/signature/RsaSsaPkcs1PrivateKey$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "d"
        }
    .end annotation

    .line 85
    iput-object p1, p0, Lcom/google/crypto/tink/signature/RsaSsaPkcs1PrivateKey$Builder;->d:Lcom/google/crypto/tink/util/SecretBigInteger;

    return-object p0
.end method

.method public setPublicKey(Lcom/google/crypto/tink/signature/RsaSsaPkcs1PublicKey;)Lcom/google/crypto/tink/signature/RsaSsaPkcs1PrivateKey$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "publicKey"
        }
    .end annotation

    .line 62
    iput-object p1, p0, Lcom/google/crypto/tink/signature/RsaSsaPkcs1PrivateKey$Builder;->publicKey:Lcom/google/crypto/tink/signature/RsaSsaPkcs1PublicKey;

    return-object p0
.end method
