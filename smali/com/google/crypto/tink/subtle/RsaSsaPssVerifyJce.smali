###### Class com.google.crypto.tink.subtle.RsaSsaPssVerifyJce (com.google.crypto.tink.subtle.RsaSsaPssVerifyJce)
.class public final Lcom/google/crypto/tink/subtle/RsaSsaPssVerifyJce;
.super Ljava/lang/Object;
.source "RsaSsaPssVerifyJce.java"

# interfaces
.implements Lcom/google/crypto/tink/PublicKeyVerify;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/crypto/tink/subtle/RsaSsaPssVerifyJce$InternalImpl;
    }
.end annotation


# static fields
.field public static final EMPTY:[B

.field public static final FIPS:Lcom/google/crypto/tink/config/internal/TinkFipsUtil$AlgorithmFipsCompatibility;

.field public static final HASH_TYPE_CONVERTER:Lcom/google/crypto/tink/internal/EnumTypeProtoConverter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/crypto/tink/internal/EnumTypeProtoConverter<",
            "Lcom/google/crypto/tink/subtle/Enums$HashType;",
            "Lcom/google/crypto/tink/signature/RsaSsaPssParameters$HashType;",
            ">;"
        }
    .end annotation
.end field

.field public static final legacyMessageSuffix:[B


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 44
    sget-object v0, Lcom/google/crypto/tink/config/internal/TinkFipsUtil$AlgorithmFipsCompatibility;->ALGORITHM_REQUIRES_BORINGCRYPTO:Lcom/google/crypto/tink/config/internal/TinkFipsUtil$AlgorithmFipsCompatibility;

    sput-object v0, Lcom/google/crypto/tink/subtle/RsaSsaPssVerifyJce;->FIPS:Lcom/google/crypto/tink/config/internal/TinkFipsUtil$AlgorithmFipsCompatibility;

    .line 49
    invoke-static {}, Lcom/google/crypto/tink/internal/EnumTypeProtoConverter;->builder()Lcom/google/crypto/tink/internal/EnumTypeProtoConverter$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/crypto/tink/subtle/Enums$HashType;->SHA256:Lcom/google/crypto/tink/subtle/Enums$HashType;

    sget-object v2, Lcom/google/crypto/tink/signature/RsaSsaPssParameters$HashType;->SHA256:Lcom/google/crypto/tink/signature/RsaSsaPssParameters$HashType;

    .line 50
    invoke-virtual {v0, v1, v2}, Lcom/google/crypto/tink/internal/EnumTypeProtoConverter$Builder;->add(Ljava/lang/Enum;Ljava/lang/Object;)Lcom/google/crypto/tink/internal/EnumTypeProtoConverter$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/crypto/tink/subtle/Enums$HashType;->SHA384:Lcom/google/crypto/tink/subtle/Enums$HashType;

    sget-object v2, Lcom/google/crypto/tink/signature/RsaSsaPssParameters$HashType;->SHA384:Lcom/google/crypto/tink/signature/RsaSsaPssParameters$HashType;

    .line 51
    invoke-virtual {v0, v1, v2}, Lcom/google/crypto/tink/internal/EnumTypeProtoConverter$Builder;->add(Ljava/lang/Enum;Ljava/lang/Object;)Lcom/google/crypto/tink/internal/EnumTypeProtoConverter$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/crypto/tink/subtle/Enums$HashType;->SHA512:Lcom/google/crypto/tink/subtle/Enums$HashType;

    sget-object v2, Lcom/google/crypto/tink/signature/RsaSsaPssParameters$HashType;->SHA512:Lcom/google/crypto/tink/signature/RsaSsaPssParameters$HashType;

    .line 52
    invoke-virtual {v0, v1, v2}, Lcom/google/crypto/tink/internal/EnumTypeProtoConverter$Builder;->add(Ljava/lang/Enum;Ljava/lang/Object;)Lcom/google/crypto/tink/internal/EnumTypeProtoConverter$Builder;

    move-result-object v0

    .line 53
    invoke-virtual {v0}, Lcom/google/crypto/tink/internal/EnumTypeProtoConverter$Builder;->build()Lcom/google/crypto/tink/internal/EnumTypeProtoConverter;

    move-result-object v0

    sput-object v0, Lcom/google/crypto/tink/subtle/RsaSsaPssVerifyJce;->HASH_TYPE_CONVERTER:Lcom/google/crypto/tink/internal/EnumTypeProtoConverter;

    const/4 v0, 0x0

    .line 55
    new-array v1, v0, [B

    sput-object v1, Lcom/google/crypto/tink/subtle/RsaSsaPssVerifyJce;->EMPTY:[B

    const/4 v1, 0x1

    .line 56
    new-array v1, v1, [B

    aput-byte v0, v1, v0

    sput-object v1, Lcom/google/crypto/tink/subtle/RsaSsaPssVerifyJce;->legacyMessageSuffix:[B

    return-void
.end method

.method public static create(Lcom/google/crypto/tink/signature/RsaSsaPssPublicKey;)Lcom/google/crypto/tink/PublicKeyVerify;
    .registers 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 241
    :try_start_0
    invoke-static {p0}, Lcom/google/crypto/tink/signature/internal/RsaSsaPssVerifyConscrypt;->create(Lcom/google/crypto/tink/signature/RsaSsaPssPublicKey;)Lcom/google/crypto/tink/PublicKeyVerify;

    move-result-object p0
    :try_end_4
    .catch Ljava/security/NoSuchProviderException; {:try_start_0 .. :try_end_4} :catch_5

    return-object p0

    .line 245
    :catch_5
    sget-object v0, Lcom/google/crypto/tink/subtle/EngineFactory;->KEY_FACTORY:Lcom/google/crypto/tink/subtle/EngineFactory;

    const-string v1, "RSA"

    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/subtle/EngineFactory;->getInstance(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/KeyFactory;

    .line 246
    new-instance v1, Ljava/security/spec/RSAPublicKeySpec;

    .line 249
    invoke-virtual {p0}, Lcom/google/crypto/tink/signature/RsaSsaPssPublicKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/crypto/tink/signature/RsaSsaPssPublicKey;->getParameters()Lcom/google/crypto/tink/signature/RsaSsaPssParameters;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/crypto/tink/signature/RsaSsaPssParameters;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/security/spec/RSAPublicKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 248
    invoke-virtual {v0, v1}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/security/interfaces/RSAPublicKey;

    .line 250
    invoke-virtual {p0}, Lcom/google/crypto/tink/signature/RsaSsaPssPublicKey;->getParameters()Lcom/google/crypto/tink/signature/RsaSsaPssParameters;

    move-result-object v0

    .line 251
    new-instance v1, Lcom/google/crypto/tink/subtle/RsaSsaPssVerifyJce$InternalImpl;

    sget-object v3, Lcom/google/crypto/tink/subtle/RsaSsaPssVerifyJce;->HASH_TYPE_CONVERTER:Lcom/google/crypto/tink/internal/EnumTypeProtoConverter;

    .line 253
    invoke-virtual {v0}, Lcom/google/crypto/tink/signature/RsaSsaPssParameters;->getSigHashType()Lcom/google/crypto/tink/signature/RsaSsaPssParameters$HashType;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/crypto/tink/internal/EnumTypeProtoConverter;->toProtoEnum(Ljava/lang/Object;)Ljava/lang/Enum;

    move-result-object v3

    check-cast v3, Lcom/google/crypto/tink/subtle/Enums$HashType;

    sget-object v4, Lcom/google/crypto/tink/subtle/RsaSsaPssVerifyJce;->HASH_TYPE_CONVERTER:Lcom/google/crypto/tink/internal/EnumTypeProtoConverter;

    .line 254
    invoke-virtual {v0}, Lcom/google/crypto/tink/signature/RsaSsaPssParameters;->getMgf1HashType()Lcom/google/crypto/tink/signature/RsaSsaPssParameters$HashType;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/crypto/tink/internal/EnumTypeProtoConverter;->toProtoEnum(Ljava/lang/Object;)Ljava/lang/Enum;

    move-result-object v4

    check-cast v4, Lcom/google/crypto/tink/subtle/Enums$HashType;

    .line 255
    invoke-virtual {v0}, Lcom/google/crypto/tink/signature/RsaSsaPssParameters;->getSaltLengthBytes()I

    move-result v5

    .line 256
    invoke-virtual {p0}, Lcom/google/crypto/tink/signature/RsaSsaPssPublicKey;->getOutputPrefix()Lcom/google/crypto/tink/util/Bytes;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/crypto/tink/util/Bytes;->toByteArray()[B

    move-result-object v6

    .line 257
    invoke-virtual {p0}, Lcom/google/crypto/tink/signature/RsaSsaPssPublicKey;->getParameters()Lcom/google/crypto/tink/signature/RsaSsaPssParameters;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/crypto/tink/signature/RsaSsaPssParameters;->getVariant()Lcom/google/crypto/tink/signature/RsaSsaPssParameters$Variant;

    move-result-object p0

    sget-object v0, Lcom/google/crypto/tink/signature/RsaSsaPssParameters$Variant;->LEGACY:Lcom/google/crypto/tink/signature/RsaSsaPssParameters$Variant;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_65

    .line 258
    sget-object p0, Lcom/google/crypto/tink/subtle/RsaSsaPssVerifyJce;->legacyMessageSuffix:[B

    :goto_63
    move-object v7, p0

    goto :goto_68

    .line 259
    :cond_65
    sget-object p0, Lcom/google/crypto/tink/subtle/RsaSsaPssVerifyJce;->EMPTY:[B

    goto :goto_63

    :goto_68
    const/4 v8, 0x0

    invoke-direct/range {v1 .. v8}, Lcom/google/crypto/tink/subtle/RsaSsaPssVerifyJce$InternalImpl;-><init>(Ljava/security/interfaces/RSAPublicKey;Lcom/google/crypto/tink/subtle/Enums$HashType;Lcom/google/crypto/tink/subtle/Enums$HashType;I[B[BLcom/google/crypto/tink/subtle/RsaSsaPssVerifyJce$1;)V

    return-object v1
.end method

###### Class com.google.crypto.tink.subtle.RsaSsaPssVerifyJce.AnonymousClass1 (com.google.crypto.tink.subtle.RsaSsaPssVerifyJce$1)
.class public synthetic Lcom/google/crypto/tink/subtle/RsaSsaPssVerifyJce$1;
.super Ljava/lang/Object;
.source "RsaSsaPssVerifyJce.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/crypto/tink/subtle/RsaSsaPssVerifyJce;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation

###### Class com.google.crypto.tink.subtle.RsaSsaPssVerifyJce.InternalImpl (com.google.crypto.tink.subtle.RsaSsaPssVerifyJce$InternalImpl)
.class public final Lcom/google/crypto/tink/subtle/RsaSsaPssVerifyJce$InternalImpl;
.super Ljava/lang/Object;
.source "RsaSsaPssVerifyJce.java"

# interfaces
.implements Lcom/google/crypto/tink/PublicKeyVerify;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/crypto/tink/subtle/RsaSsaPssVerifyJce;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "InternalImpl"
.end annotation


# instance fields
.field public final messageSuffix:[B

.field public final mgf1Hash:Lcom/google/crypto/tink/subtle/Enums$HashType;

.field public final outputPrefix:[B

.field public final publicKey:Ljava/security/interfaces/RSAPublicKey;

.field public final saltLength:I

.field public final sigHash:Lcom/google/crypto/tink/subtle/Enums$HashType;


# direct methods
.method public constructor <init>(Ljava/security/interfaces/RSAPublicKey;Lcom/google/crypto/tink/subtle/Enums$HashType;Lcom/google/crypto/tink/subtle/Enums$HashType;I[B[B)V
    .registers 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "pubKey",
            "sigHash",
            "mgf1Hash",
            "saltLength",
            "outputPrefix",
            "messageSuffix"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    invoke-static {}, Lcom/google/crypto/tink/config/internal/TinkFipsUtil;->useOnlyFips()Z

    move-result v0

    if-nez v0, :cond_39

    .line 91
    invoke-static {p2}, Lcom/google/crypto/tink/subtle/Validators;->validateSignatureHash(Lcom/google/crypto/tink/subtle/Enums$HashType;)V

    .line 92
    invoke-virtual {p2, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_31

    .line 95
    invoke-interface {p1}, Ljava/security/interfaces/RSAKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    invoke-static {v0}, Lcom/google/crypto/tink/subtle/Validators;->validateRsaModulusSize(I)V

    .line 96
    invoke-interface {p1}, Ljava/security/interfaces/RSAPublicKey;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object v0

    invoke-static {v0}, Lcom/google/crypto/tink/subtle/Validators;->validateRsaPublicExponent(Ljava/math/BigInteger;)V

    .line 97
    iput-object p1, p0, Lcom/google/crypto/tink/subtle/RsaSsaPssVerifyJce$InternalImpl;->publicKey:Ljava/security/interfaces/RSAPublicKey;

    .line 98
    iput-object p2, p0, Lcom/google/crypto/tink/subtle/RsaSsaPssVerifyJce$InternalImpl;->sigHash:Lcom/google/crypto/tink/subtle/Enums$HashType;

    .line 99
    iput-object p3, p0, Lcom/google/crypto/tink/subtle/RsaSsaPssVerifyJce$InternalImpl;->mgf1Hash:Lcom/google/crypto/tink/subtle/Enums$HashType;

    .line 100
    iput p4, p0, Lcom/google/crypto/tink/subtle/RsaSsaPssVerifyJce$InternalImpl;->saltLength:I

    .line 101
    iput-object p5, p0, Lcom/google/crypto/tink/subtle/RsaSsaPssVerifyJce$InternalImpl;->outputPrefix:[B

    .line 102
    iput-object p6, p0, Lcom/google/crypto/tink/subtle/RsaSsaPssVerifyJce$InternalImpl;->messageSuffix:[B

    return-void

    .line 93
    :cond_31
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string p2, "sigHash and mgf1Hash must be the same"

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 87
    :cond_39
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string p2, "Can not use RSA PSS in FIPS-mode, as BoringCrypto module is not available."

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public synthetic constructor <init>(Ljava/security/interfaces/RSAPublicKey;Lcom/google/crypto/tink/subtle/Enums$HashType;Lcom/google/crypto/tink/subtle/Enums$HashType;I[B[BLcom/google/crypto/tink/subtle/RsaSsaPssVerifyJce$1;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 63
    invoke-direct/range {p0 .. p6}, Lcom/google/crypto/tink/subtle/RsaSsaPssVerifyJce$InternalImpl;-><init>(Ljava/security/interfaces/RSAPublicKey;Lcom/google/crypto/tink/subtle/Enums$HashType;Lcom/google/crypto/tink/subtle/Enums$HashType;I[B[B)V

    return-void
.end method

.method private noPrefixVerify([B[B)V
    .registers 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "signature",
            "data"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 111
    iget-object v0, p0, Lcom/google/crypto/tink/subtle/RsaSsaPssVerifyJce$InternalImpl;->publicKey:Ljava/security/interfaces/RSAPublicKey;

    invoke-interface {v0}, Ljava/security/interfaces/RSAPublicKey;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object v0

    .line 112
    iget-object v1, p0, Lcom/google/crypto/tink/subtle/RsaSsaPssVerifyJce$InternalImpl;->publicKey:Ljava/security/interfaces/RSAPublicKey;

    invoke-interface {v1}, Ljava/security/interfaces/RSAKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v1

    .line 113
    invoke-virtual {v1}, Ljava/math/BigInteger;->bitLength()I

    move-result v2

    add-int/lit8 v2, v2, 0x7

    div-int/lit8 v2, v2, 0x8

    .line 114
    invoke-virtual {v1}, Ljava/math/BigInteger;->bitLength()I

    move-result v3

    add-int/lit8 v3, v3, 0x6

    div-int/lit8 v3, v3, 0x8

    .line 117
    array-length v4, p1

    if-ne v2, v4, :cond_43

    .line 122
    invoke-static {p1}, Lcom/google/crypto/tink/subtle/SubtleUtil;->bytes2Integer([B)Ljava/math/BigInteger;

    move-result-object p1

    .line 123
    invoke-virtual {p1, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v2

    if-gez v2, :cond_3b

    .line 126
    invoke-virtual {p1, v0, v1}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    .line 127
    invoke-static {p1, v3}, Lcom/google/crypto/tink/subtle/SubtleUtil;->integer2Bytes(Ljava/math/BigInteger;I)[B

    move-result-object p1

    .line 130
    invoke-virtual {v1}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, p2, p1, v0}, Lcom/google/crypto/tink/subtle/RsaSsaPssVerifyJce$InternalImpl;->emsaPssVerify([B[BI)V

    return-void

    .line 124
    :cond_3b
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string p2, "signature out of range"

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 118
    :cond_43
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string p2, "invalid signature\'s length"

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final emsaPssVerify([B[BI)V
    .registers 22
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "message",
            "em",
            "emBits"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 141
    iget-object v2, v0, Lcom/google/crypto/tink/subtle/RsaSsaPssVerifyJce$InternalImpl;->sigHash:Lcom/google/crypto/tink/subtle/Enums$HashType;

    invoke-static {v2}, Lcom/google/crypto/tink/subtle/Validators;->validateSignatureHash(Lcom/google/crypto/tink/subtle/Enums$HashType;)V

    .line 142
    sget-object v2, Lcom/google/crypto/tink/subtle/EngineFactory;->MESSAGE_DIGEST:Lcom/google/crypto/tink/subtle/EngineFactory;

    iget-object v3, v0, Lcom/google/crypto/tink/subtle/RsaSsaPssVerifyJce$InternalImpl;->sigHash:Lcom/google/crypto/tink/subtle/Enums$HashType;

    .line 143
    invoke-static {v3}, Lcom/google/crypto/tink/subtle/SubtleUtil;->toDigestAlgo(Lcom/google/crypto/tink/subtle/Enums$HashType;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/crypto/tink/subtle/EngineFactory;->getInstance(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/security/MessageDigest;

    move-object/from16 v3, p1

    .line 145
    invoke-virtual {v2, v3}, Ljava/security/MessageDigest;->update([B)V

    .line 146
    iget-object v3, v0, Lcom/google/crypto/tink/subtle/RsaSsaPssVerifyJce$InternalImpl;->messageSuffix:[B

    array-length v4, v3

    if-eqz v4, :cond_24

    .line 147
    invoke-virtual {v2, v3}, Ljava/security/MessageDigest;->update([B)V

    .line 149
    :cond_24
    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v3

    .line 150
    invoke-virtual {v2}, Ljava/security/MessageDigest;->getDigestLength()I

    move-result v4

    .line 152
    array-length v5, v1

    .line 155
    iget v6, v0, Lcom/google/crypto/tink/subtle/RsaSsaPssVerifyJce$InternalImpl;->saltLength:I

    add-int/2addr v6, v4

    add-int/lit8 v6, v6, 0x2

    const-string v7, "inconsistent"

    if-lt v5, v6, :cond_101

    .line 160
    array-length v6, v1

    const/4 v8, 0x1

    sub-int/2addr v6, v8

    aget-byte v6, v1, v6

    const/16 v9, -0x44

    if-ne v6, v9, :cond_fb

    sub-int v6, v5, v4

    add-int/lit8 v9, v6, -0x1

    .line 165
    invoke-static {v1, v9}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v10

    .line 166
    array-length v11, v10

    array-length v12, v10

    add-int/2addr v12, v4

    invoke-static {v1, v11, v12}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    const/4 v12, 0x0

    :goto_4f
    int-to-long v13, v12

    move/from16 p2, v12

    int-to-long v11, v5

    const-wide/16 v15, 0x8

    mul-long/2addr v11, v15

    move/from16 v15, p3

    move/from16 v16, v8

    move/from16 v17, v9

    int-to-long v8, v15

    sub-long/2addr v11, v8

    cmp-long v8, v13, v11

    if-gez v8, :cond_7d

    .line 172
    div-int/lit8 v12, p2, 0x8

    .line 173
    rem-int/lit8 v8, p2, 0x8

    rsub-int/lit8 v8, v8, 0x7

    .line 174
    aget-byte v9, v10, v12

    shr-int v8, v9, v8

    and-int/lit8 v8, v8, 0x1

    if-nez v8, :cond_77

    add-int/lit8 v12, p2, 0x1

    move/from16 v8, v16

    move/from16 v9, v17

    goto :goto_4f

    .line 175
    :cond_77
    new-instance v1, Ljava/security/GeneralSecurityException;

    invoke-direct {v1, v7}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 180
    :cond_7d
    iget-object v5, v0, Lcom/google/crypto/tink/subtle/RsaSsaPssVerifyJce$InternalImpl;->mgf1Hash:Lcom/google/crypto/tink/subtle/Enums$HashType;

    move/from16 v8, v17

    invoke-static {v1, v8, v5}, Lcom/google/crypto/tink/subtle/SubtleUtil;->mgf1([BILcom/google/crypto/tink/subtle/Enums$HashType;)[B

    move-result-object v5

    .line 183
    array-length v8, v5

    new-array v9, v8, [B

    const/4 v13, 0x0

    :goto_89
    if-ge v13, v8, :cond_96

    .line 185
    aget-byte v14, v5, v13

    aget-byte v15, v10, v13

    xor-int/2addr v14, v15

    int-to-byte v14, v14

    aput-byte v14, v9, v13

    add-int/lit8 v13, v13, 0x1

    goto :goto_89

    :cond_96
    const/4 v5, 0x0

    :goto_97
    int-to-long v13, v5

    cmp-long v10, v13, v11

    if-gtz v10, :cond_ae

    .line 190
    div-int/lit8 v10, v5, 0x8

    .line 191
    rem-int/lit8 v13, v5, 0x8

    rsub-int/lit8 v13, v13, 0x7

    .line 192
    aget-byte v14, v9, v10

    shl-int v13, v16, v13

    not-int v13, v13

    and-int/2addr v13, v14

    int-to-byte v13, v13

    aput-byte v13, v9, v10

    add-int/lit8 v5, v5, 0x1

    goto :goto_97

    :cond_ae
    const/4 v5, 0x0

    .line 196
    :goto_af
    iget v10, v0, Lcom/google/crypto/tink/subtle/RsaSsaPssVerifyJce$InternalImpl;->saltLength:I

    sub-int v11, v6, v10

    add-int/lit8 v11, v11, -0x2

    if-ge v5, v11, :cond_c4

    .line 197
    aget-byte v10, v9, v5

    if-nez v10, :cond_be

    add-int/lit8 v5, v5, 0x1

    goto :goto_af

    .line 198
    :cond_be
    new-instance v1, Ljava/security/GeneralSecurityException;

    invoke-direct {v1, v7}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_c4
    sub-int/2addr v6, v10

    add-int/lit8 v6, v6, -0x2

    .line 201
    aget-byte v5, v9, v6

    move/from16 v6, v16

    if-ne v5, v6, :cond_f5

    sub-int v5, v8, v10

    .line 206
    invoke-static {v9, v5, v8}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v5

    const/16 v6, 0x8

    add-int/2addr v4, v6

    .line 209
    iget v8, v0, Lcom/google/crypto/tink/subtle/RsaSsaPssVerifyJce$InternalImpl;->saltLength:I

    add-int/2addr v8, v4

    new-array v8, v8, [B

    .line 210
    array-length v9, v3

    const/4 v10, 0x0

    invoke-static {v3, v10, v8, v6, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 211
    array-length v3, v5

    invoke-static {v5, v10, v8, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 214
    invoke-virtual {v2, v8}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v2

    .line 215
    invoke-static {v2, v1}, Lcom/google/crypto/tink/subtle/Bytes;->equal([B[B)Z

    move-result v1

    if-eqz v1, :cond_ef

    return-void

    .line 216
    :cond_ef
    new-instance v1, Ljava/security/GeneralSecurityException;

    invoke-direct {v1, v7}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 202
    :cond_f5
    new-instance v1, Ljava/security/GeneralSecurityException;

    invoke-direct {v1, v7}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 161
    :cond_fb
    new-instance v1, Ljava/security/GeneralSecurityException;

    invoke-direct {v1, v7}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 156
    :cond_101
    new-instance v1, Ljava/security/GeneralSecurityException;

    invoke-direct {v1, v7}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public verify([B[B)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "signature",
            "data"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 222
    iget-object v0, p0, Lcom/google/crypto/tink/subtle/RsaSsaPssVerifyJce$InternalImpl;->outputPrefix:[B

    array-length v1, v0

    if-nez v1, :cond_9

    .line 223
    invoke-direct {p0, p1, p2}, Lcom/google/crypto/tink/subtle/RsaSsaPssVerifyJce$InternalImpl;->noPrefixVerify([B[B)V

    return-void

    .line 226
    :cond_9
    invoke-static {v0, p1}, Lcom/google/crypto/tink/internal/Util;->isPrefix([B[B)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 229
    iget-object v0, p0, Lcom/google/crypto/tink/subtle/RsaSsaPssVerifyJce$InternalImpl;->outputPrefix:[B

    array-length v0, v0

    array-length v1, p1

    .line 230
    invoke-static {p1, v0, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    .line 231
    invoke-direct {p0, p1, p2}, Lcom/google/crypto/tink/subtle/RsaSsaPssVerifyJce$InternalImpl;->noPrefixVerify([B[B)V

    return-void

    .line 227
    :cond_1b
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string p2, "Invalid signature (output prefix mismatch)"

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
