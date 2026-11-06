###### Class com.google.crypto.tink.subtle.EllipticCurves (com.google.crypto.tink.subtle.EllipticCurves)
.class public final Lcom/google/crypto/tink/subtle/EllipticCurves;
.super Ljava/lang/Object;
.source "EllipticCurves.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/crypto/tink/subtle/EllipticCurves$CurveType;,
        Lcom/google/crypto/tink/subtle/EllipticCurves$EcdsaEncoding;
    }
.end annotation


# direct methods
.method public static ecdsaDer2Ieee([BI)[B
    .registers 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "der",
            "ieeeLength"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 389
    invoke-static {p0}, Lcom/google/crypto/tink/subtle/EllipticCurves;->isValidDerEncoding([B)Z

    move-result v0

    if-eqz v0, :cond_41

    .line 392
    new-array v0, p1, [B

    const/4 v1, 0x1

    .line 393
    aget-byte v2, p0, v1

    and-int/lit16 v2, v2, 0xff

    const/16 v3, 0x80

    const/4 v4, 0x2

    if-lt v2, v3, :cond_14

    const/4 v2, 0x3

    goto :goto_15

    :cond_14
    move v2, v4

    :goto_15
    add-int/lit8 v3, v2, 0x1

    add-int/2addr v2, v4

    .line 399
    aget-byte v3, p0, v3

    .line 401
    aget-byte v4, p0, v2

    const/4 v5, 0x0

    if-nez v4, :cond_21

    move v4, v1

    goto :goto_22

    :cond_21
    move v4, v5

    :goto_22
    add-int v6, v2, v4

    .line 404
    div-int/lit8 v7, p1, 0x2

    sub-int/2addr v7, v3

    add-int/2addr v7, v4

    sub-int v4, v3, v4

    invoke-static {p0, v6, v0, v7, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v3, v1

    add-int/2addr v2, v3

    add-int/lit8 v3, v2, 0x1

    .line 407
    aget-byte v2, p0, v2

    .line 409
    aget-byte v4, p0, v3

    if-nez v4, :cond_38

    goto :goto_39

    :cond_38
    move v1, v5

    :goto_39
    add-int/2addr v3, v1

    sub-int/2addr p1, v2

    add-int/2addr p1, v1

    sub-int/2addr v2, v1

    .line 412
    invoke-static {p0, v3, v0, p1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0

    .line 390
    :cond_41
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string p1, "Invalid DER encoding"

    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static ecdsaIeee2Der([B)[B
    .registers 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ieee"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 342
    array-length v0, p0

    const/4 v1, 0x2

    rem-int/2addr v0, v1

    if-nez v0, :cond_65

    array-length v0, p0

    if-eqz v0, :cond_65

    array-length v0, p0

    const/16 v2, 0x84

    if-gt v0, v2, :cond_65

    .line 345
    array-length v0, p0

    div-int/2addr v0, v1

    invoke-static {p0, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    invoke-static {v0}, Lcom/google/crypto/tink/subtle/EllipticCurves;->toMinimalSignedNumber([B)[B

    move-result-object v0

    .line 346
    array-length v2, p0

    div-int/2addr v2, v1

    array-length v3, p0

    invoke-static {p0, v2, v3}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    invoke-static {p0}, Lcom/google/crypto/tink/subtle/EllipticCurves;->toMinimalSignedNumber([B)[B

    move-result-object p0

    .line 349
    array-length v2, v0

    add-int/lit8 v2, v2, 0x4

    array-length v3, p0

    add-int/2addr v2, v3

    const/16 v3, 0x80

    const/16 v4, 0x30

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-lt v2, v3, :cond_3e

    add-int/lit8 v3, v2, 0x3

    .line 352
    new-array v3, v3, [B

    .line 353
    aput-byte v4, v3, v5

    const/16 v4, -0x7f

    .line 354
    aput-byte v4, v3, v6

    int-to-byte v2, v2

    .line 355
    aput-byte v2, v3, v1

    const/4 v2, 0x3

    goto :goto_48

    :cond_3e
    add-int/lit8 v3, v2, 0x2

    .line 357
    new-array v3, v3, [B

    .line 358
    aput-byte v4, v3, v5

    int-to-byte v2, v2

    .line 359
    aput-byte v2, v3, v6

    move v2, v1

    :goto_48
    add-int/lit8 v4, v2, 0x1

    .line 361
    aput-byte v1, v3, v2

    add-int/2addr v2, v1

    .line 362
    array-length v6, v0

    int-to-byte v6, v6

    aput-byte v6, v3, v4

    .line 363
    array-length v4, v0

    invoke-static {v0, v5, v3, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 364
    array-length v0, v0

    add-int/2addr v2, v0

    add-int/lit8 v0, v2, 0x1

    .line 365
    aput-byte v1, v3, v2

    add-int/2addr v2, v1

    .line 366
    array-length v1, p0

    int-to-byte v1, v1

    aput-byte v1, v3, v0

    .line 367
    array-length v0, p0

    invoke-static {p0, v5, v3, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v3

    .line 343
    :cond_65
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string v0, "Invalid IEEE_P1363 encoding"

    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static fieldSizeInBits(Ljava/security/spec/EllipticCurve;)I
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "curve"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 159
    invoke-static {p0}, Lcom/google/crypto/tink/subtle/EllipticCurves;->getModulus(Ljava/security/spec/EllipticCurve;)Ljava/math/BigInteger;

    move-result-object p0

    sget-object v0, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result p0

    return p0
.end method

.method public static fieldSizeInBytes(Ljava/security/spec/EllipticCurve;)I
    .registers 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "curve"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 169
    invoke-static {p0}, Lcom/google/crypto/tink/subtle/EllipticCurves;->fieldSizeInBits(Ljava/security/spec/EllipticCurve;)I

    move-result p0

    add-int/lit8 p0, p0, 0x7

    div-int/lit8 p0, p0, 0x8

    return p0
.end method

.method public static generateKeyPair(Ljava/security/spec/ECParameterSpec;)Ljava/security/KeyPair;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "spec"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 832
    sget-object v0, Lcom/google/crypto/tink/subtle/EngineFactory;->KEY_PAIR_GENERATOR:Lcom/google/crypto/tink/subtle/EngineFactory;

    const-string v1, "EC"

    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/subtle/EngineFactory;->getInstance(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/KeyPairGenerator;

    .line 833
    invoke-virtual {v0, p0}, Ljava/security/KeyPairGenerator;->initialize(Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 834
    invoke-virtual {v0}, Ljava/security/KeyPairGenerator;->generateKeyPair()Ljava/security/KeyPair;

    move-result-object p0

    return-object p0
.end method

.method public static getCurveSpec(Lcom/google/crypto/tink/subtle/EllipticCurves$CurveType;)Ljava/security/spec/ECParameterSpec;
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "curve"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 740
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eqz v0, :cond_2d

    const/4 v1, 0x1

    if-eq v0, v1, :cond_28

    const/4 v1, 0x2

    if-ne v0, v1, :cond_11

    .line 746
    invoke-static {}, Lcom/google/crypto/tink/subtle/EllipticCurves;->getNistP521Params()Ljava/security/spec/ECParameterSpec;

    move-result-object p0

    return-object p0

    .line 748
    :cond_11
    new-instance v0, Ljava/security/NoSuchAlgorithmException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "curve not implemented:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 744
    :cond_28
    invoke-static {}, Lcom/google/crypto/tink/subtle/EllipticCurves;->getNistP384Params()Ljava/security/spec/ECParameterSpec;

    move-result-object p0

    return-object p0

    .line 742
    :cond_2d
    invoke-static {}, Lcom/google/crypto/tink/subtle/EllipticCurves;->getNistP256Params()Ljava/security/spec/ECParameterSpec;

    move-result-object p0

    return-object p0
.end method

.method public static getModulus(Ljava/security/spec/EllipticCurve;)Ljava/math/BigInteger;
    .registers 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "curve"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 149
    invoke-static {p0}, Lcom/google/crypto/tink/internal/EllipticCurvesUtil;->getModulus(Ljava/security/spec/EllipticCurve;)Ljava/math/BigInteger;

    move-result-object p0

    return-object p0
.end method

.method public static getNistP256Params()Ljava/security/spec/ECParameterSpec;
    .registers 1

    .line 74
    sget-object v0, Lcom/google/crypto/tink/internal/EllipticCurvesUtil;->NIST_P256_PARAMS:Ljava/security/spec/ECParameterSpec;

    return-object v0
.end method

.method public static getNistP384Params()Ljava/security/spec/ECParameterSpec;
    .registers 1

    .line 78
    sget-object v0, Lcom/google/crypto/tink/internal/EllipticCurvesUtil;->NIST_P384_PARAMS:Ljava/security/spec/ECParameterSpec;

    return-object v0
.end method

.method public static getNistP521Params()Ljava/security/spec/ECParameterSpec;
    .registers 1

    .line 82
    sget-object v0, Lcom/google/crypto/tink/internal/EllipticCurvesUtil;->NIST_P521_PARAMS:Ljava/security/spec/ECParameterSpec;

    return-object v0
.end method

.method public static isValidDerEncoding([B)Z
    .registers 12
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "sig"
        }
    .end annotation

    .line 429
    array-length v0, p0

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-ge v0, v1, :cond_7

    return v2

    .line 445
    :cond_7
    aget-byte v0, p0, v2

    const/16 v1, 0x30

    if-eq v0, v1, :cond_e

    return v2

    :cond_e
    const/4 v0, 0x1

    .line 450
    aget-byte v1, p0, v0

    and-int/lit16 v1, v1, 0xff

    const/16 v3, 0x81

    const/16 v4, 0x80

    const/4 v5, 0x2

    if-ne v1, v3, :cond_23

    .line 457
    aget-byte v1, p0, v5

    and-int/lit16 v1, v1, 0xff

    if-ge v1, v4, :cond_21

    return v2

    :cond_21
    move v3, v5

    goto :goto_29

    :cond_23
    if-eq v1, v4, :cond_8a

    if-le v1, v3, :cond_28

    goto :goto_8a

    :cond_28
    move v3, v0

    .line 468
    :goto_29
    array-length v6, p0

    sub-int/2addr v6, v0

    sub-int/2addr v6, v3

    if-eq v1, v6, :cond_2f

    return v2

    :cond_2f
    add-int/lit8 v1, v3, 0x1

    .line 474
    aget-byte v1, p0, v1

    if-eq v1, v5, :cond_36

    return v2

    :cond_36
    add-int/lit8 v1, v3, 0x2

    .line 478
    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    add-int/lit8 v6, v3, 0x3

    add-int/2addr v6, v1

    add-int/lit8 v7, v6, 0x1

    .line 480
    array-length v8, p0

    if-lt v7, v8, :cond_45

    return v2

    :cond_45
    if-nez v1, :cond_48

    return v2

    :cond_48
    add-int/lit8 v8, v3, 0x3

    .line 489
    aget-byte v9, p0, v8

    and-int/lit16 v10, v9, 0xff

    if-lt v10, v4, :cond_51

    return v2

    :cond_51
    if-le v1, v0, :cond_5e

    if-nez v9, :cond_5e

    add-int/lit8 v9, v3, 0x4

    .line 494
    aget-byte v9, p0, v9

    and-int/lit16 v9, v9, 0xff

    if-ge v9, v4, :cond_5e

    return v2

    :cond_5e
    add-int/2addr v8, v1

    .line 500
    aget-byte v8, p0, v8

    if-eq v8, v5, :cond_64

    return v2

    .line 504
    :cond_64
    aget-byte v7, p0, v7

    and-int/lit16 v7, v7, 0xff

    add-int/2addr v6, v5

    add-int/2addr v6, v7

    .line 507
    array-length v5, p0

    if-eq v6, v5, :cond_6e

    return v2

    :cond_6e
    if-nez v7, :cond_71

    return v2

    :cond_71
    add-int/lit8 v5, v3, 0x5

    add-int/2addr v5, v1

    .line 523
    aget-byte v5, p0, v5

    and-int/lit16 v6, v5, 0xff

    if-lt v6, v4, :cond_7b

    return v2

    :cond_7b
    if-le v7, v0, :cond_89

    if-nez v5, :cond_89

    add-int/lit8 v3, v3, 0x6

    add-int/2addr v3, v1

    .line 528
    aget-byte p0, p0, v3

    and-int/lit16 p0, p0, 0xff

    if-ge p0, v4, :cond_89

    return v2

    :cond_89
    return v0

    :cond_8a
    :goto_8a
    return v2
.end method

.method public static toMinimalSignedNumber([B)[B
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bs"
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    .line 307
    :goto_2
    array-length v2, p0

    if-ge v1, v2, :cond_c

    aget-byte v2, p0, v1

    if-nez v2, :cond_c

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 310
    :cond_c
    array-length v2, p0

    const/4 v3, 0x1

    if-ne v1, v2, :cond_12

    .line 311
    array-length v1, p0

    sub-int/2addr v1, v3

    .line 316
    :cond_12
    aget-byte v2, p0, v1

    const/16 v4, 0x80

    and-int/2addr v2, v4

    if-ne v2, v4, :cond_1a

    move v0, v3

    .line 320
    :cond_1a
    array-length v2, p0

    sub-int/2addr v2, v1

    add-int/2addr v2, v0

    new-array v2, v2, [B

    .line 321
    array-length v3, p0

    sub-int/2addr v3, v1

    invoke-static {p0, v1, v2, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method

###### Class com.google.crypto.tink.subtle.EllipticCurves.CurveType (com.google.crypto.tink.subtle.EllipticCurves$CurveType)
.class public final enum Lcom/google/crypto/tink/subtle/EllipticCurves$CurveType;
.super Ljava/lang/Enum;
.source "EllipticCurves.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/crypto/tink/subtle/EllipticCurves;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CurveType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/crypto/tink/subtle/EllipticCurves$CurveType;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/google/crypto/tink/subtle/EllipticCurves$CurveType;

.field public static final enum NIST_P256:Lcom/google/crypto/tink/subtle/EllipticCurves$CurveType;

.field public static final enum NIST_P384:Lcom/google/crypto/tink/subtle/EllipticCurves$CurveType;

.field public static final enum NIST_P521:Lcom/google/crypto/tink/subtle/EllipticCurves$CurveType;


# direct methods
.method public static synthetic $values()[Lcom/google/crypto/tink/subtle/EllipticCurves$CurveType;
    .registers 3

    .line 61
    sget-object v0, Lcom/google/crypto/tink/subtle/EllipticCurves$CurveType;->NIST_P256:Lcom/google/crypto/tink/subtle/EllipticCurves$CurveType;

    sget-object v1, Lcom/google/crypto/tink/subtle/EllipticCurves$CurveType;->NIST_P384:Lcom/google/crypto/tink/subtle/EllipticCurves$CurveType;

    sget-object v2, Lcom/google/crypto/tink/subtle/EllipticCurves$CurveType;->NIST_P521:Lcom/google/crypto/tink/subtle/EllipticCurves$CurveType;

    filled-new-array {v0, v1, v2}, [Lcom/google/crypto/tink/subtle/EllipticCurves$CurveType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 62
    new-instance v0, Lcom/google/crypto/tink/subtle/EllipticCurves$CurveType;

    const-string v1, "NIST_P256"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/crypto/tink/subtle/EllipticCurves$CurveType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/crypto/tink/subtle/EllipticCurves$CurveType;->NIST_P256:Lcom/google/crypto/tink/subtle/EllipticCurves$CurveType;

    .line 63
    new-instance v0, Lcom/google/crypto/tink/subtle/EllipticCurves$CurveType;

    const-string v1, "NIST_P384"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/google/crypto/tink/subtle/EllipticCurves$CurveType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/crypto/tink/subtle/EllipticCurves$CurveType;->NIST_P384:Lcom/google/crypto/tink/subtle/EllipticCurves$CurveType;

    .line 64
    new-instance v0, Lcom/google/crypto/tink/subtle/EllipticCurves$CurveType;

    const-string v1, "NIST_P521"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/google/crypto/tink/subtle/EllipticCurves$CurveType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/crypto/tink/subtle/EllipticCurves$CurveType;->NIST_P521:Lcom/google/crypto/tink/subtle/EllipticCurves$CurveType;

    .line 61
    invoke-static {}, Lcom/google/crypto/tink/subtle/EllipticCurves$CurveType;->$values()[Lcom/google/crypto/tink/subtle/EllipticCurves$CurveType;

    move-result-object v0

    sput-object v0, Lcom/google/crypto/tink/subtle/EllipticCurves$CurveType;->$VALUES:[Lcom/google/crypto/tink/subtle/EllipticCurves$CurveType;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "$enum$name",
            "$enum$ordinal"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 61
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/crypto/tink/subtle/EllipticCurves$CurveType;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    .line 61
    const-class v0, Lcom/google/crypto/tink/subtle/EllipticCurves$CurveType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/subtle/EllipticCurves$CurveType;

    return-object p0
.end method

.method public static values()[Lcom/google/crypto/tink/subtle/EllipticCurves$CurveType;
    .registers 1

    .line 61
    sget-object v0, Lcom/google/crypto/tink/subtle/EllipticCurves$CurveType;->$VALUES:[Lcom/google/crypto/tink/subtle/EllipticCurves$CurveType;

    invoke-virtual {v0}, [Lcom/google/crypto/tink/subtle/EllipticCurves$CurveType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/crypto/tink/subtle/EllipticCurves$CurveType;

    return-object v0
.end method

###### Class com.google.crypto.tink.subtle.EllipticCurves.EcdsaEncoding (com.google.crypto.tink.subtle.EllipticCurves$EcdsaEncoding)
.class public final enum Lcom/google/crypto/tink/subtle/EllipticCurves$EcdsaEncoding;
.super Ljava/lang/Enum;
.source "EllipticCurves.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/crypto/tink/subtle/EllipticCurves;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EcdsaEncoding"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/crypto/tink/subtle/EllipticCurves$EcdsaEncoding;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/google/crypto/tink/subtle/EllipticCurves$EcdsaEncoding;

.field public static final enum DER:Lcom/google/crypto/tink/subtle/EllipticCurves$EcdsaEncoding;

.field public static final enum IEEE_P1363:Lcom/google/crypto/tink/subtle/EllipticCurves$EcdsaEncoding;


# direct methods
.method public static synthetic $values()[Lcom/google/crypto/tink/subtle/EllipticCurves$EcdsaEncoding;
    .registers 2

    .line 68
    sget-object v0, Lcom/google/crypto/tink/subtle/EllipticCurves$EcdsaEncoding;->IEEE_P1363:Lcom/google/crypto/tink/subtle/EllipticCurves$EcdsaEncoding;

    sget-object v1, Lcom/google/crypto/tink/subtle/EllipticCurves$EcdsaEncoding;->DER:Lcom/google/crypto/tink/subtle/EllipticCurves$EcdsaEncoding;

    filled-new-array {v0, v1}, [Lcom/google/crypto/tink/subtle/EllipticCurves$EcdsaEncoding;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 69
    new-instance v0, Lcom/google/crypto/tink/subtle/EllipticCurves$EcdsaEncoding;

    const-string v1, "IEEE_P1363"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/crypto/tink/subtle/EllipticCurves$EcdsaEncoding;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/crypto/tink/subtle/EllipticCurves$EcdsaEncoding;->IEEE_P1363:Lcom/google/crypto/tink/subtle/EllipticCurves$EcdsaEncoding;

    .line 70
    new-instance v0, Lcom/google/crypto/tink/subtle/EllipticCurves$EcdsaEncoding;

    const-string v1, "DER"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/google/crypto/tink/subtle/EllipticCurves$EcdsaEncoding;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/crypto/tink/subtle/EllipticCurves$EcdsaEncoding;->DER:Lcom/google/crypto/tink/subtle/EllipticCurves$EcdsaEncoding;

    .line 68
    invoke-static {}, Lcom/google/crypto/tink/subtle/EllipticCurves$EcdsaEncoding;->$values()[Lcom/google/crypto/tink/subtle/EllipticCurves$EcdsaEncoding;

    move-result-object v0

    sput-object v0, Lcom/google/crypto/tink/subtle/EllipticCurves$EcdsaEncoding;->$VALUES:[Lcom/google/crypto/tink/subtle/EllipticCurves$EcdsaEncoding;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "$enum$name",
            "$enum$ordinal"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 68
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/crypto/tink/subtle/EllipticCurves$EcdsaEncoding;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    .line 68
    const-class v0, Lcom/google/crypto/tink/subtle/EllipticCurves$EcdsaEncoding;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/subtle/EllipticCurves$EcdsaEncoding;

    return-object p0
.end method

.method public static values()[Lcom/google/crypto/tink/subtle/EllipticCurves$EcdsaEncoding;
    .registers 1

    .line 68
    sget-object v0, Lcom/google/crypto/tink/subtle/EllipticCurves$EcdsaEncoding;->$VALUES:[Lcom/google/crypto/tink/subtle/EllipticCurves$EcdsaEncoding;

    invoke-virtual {v0}, [Lcom/google/crypto/tink/subtle/EllipticCurves$EcdsaEncoding;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/crypto/tink/subtle/EllipticCurves$EcdsaEncoding;

    return-object v0
.end method
