###### Class com.google.crypto.tink.aead.internal.AesGcmSiv (com.google.crypto.tink.aead.internal.AesGcmSiv)
.class public final Lcom/google/crypto/tink/aead/internal/AesGcmSiv;
.super Ljava/lang/Object;
.source "AesGcmSiv.java"

# interfaces
.implements Lcom/google/crypto/tink/Aead;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/crypto/tink/aead/internal/AesGcmSiv$ThrowingSupplier;
    }
.end annotation


# static fields
.field public static final testAad:[B

.field public static final testKey:[B

.field public static final testNounce:[B

.field public static final testPlaintext:[B

.field public static final testResult:[B


# instance fields
.field public final cipherSupplier:Lcom/google/crypto/tink/aead/internal/AesGcmSiv$ThrowingSupplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/crypto/tink/aead/internal/AesGcmSiv$ThrowingSupplier<",
            "Ljavax/crypto/Cipher;",
            ">;"
        }
    .end annotation
.end field

.field public final keySpec:Ljavax/crypto/SecretKey;

.field public final outputPrefix:[B


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 50
    const-string v0, "7a806c"

    invoke-static {v0}, Lcom/google/crypto/tink/subtle/Hex;->decode(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/google/crypto/tink/aead/internal/AesGcmSiv;->testPlaintext:[B

    .line 51
    const-string v0, "46bb91c3c5"

    invoke-static {v0}, Lcom/google/crypto/tink/subtle/Hex;->decode(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/google/crypto/tink/aead/internal/AesGcmSiv;->testAad:[B

    .line 52
    const-string v0, "36864200e0eaf5284d884a0e77d31646"

    invoke-static {v0}, Lcom/google/crypto/tink/subtle/Hex;->decode(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/google/crypto/tink/aead/internal/AesGcmSiv;->testKey:[B

    .line 53
    const-string v0, "bae8e37fc83441b16034566b"

    invoke-static {v0}, Lcom/google/crypto/tink/subtle/Hex;->decode(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/google/crypto/tink/aead/internal/AesGcmSiv;->testNounce:[B

    .line 54
    const-string v0, "af60eb711bd85bc1e4d3e0a462e074eea428a8"

    invoke-static {v0}, Lcom/google/crypto/tink/subtle/Hex;->decode(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/google/crypto/tink/aead/internal/AesGcmSiv;->testResult:[B

    return-void
.end method

.method public constructor <init>([B[BLcom/google/crypto/tink/aead/internal/AesGcmSiv$ThrowingSupplier;)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "key",
            "outputPrefix",
            "cipherSupplier"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B[B",
            "Lcom/google/crypto/tink/aead/internal/AesGcmSiv$ThrowingSupplier<",
            "Ljavax/crypto/Cipher;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    iput-object p2, p0, Lcom/google/crypto/tink/aead/internal/AesGcmSiv;->outputPrefix:[B

    .line 111
    array-length p2, p1

    invoke-static {p2}, Lcom/google/crypto/tink/subtle/Validators;->validateAesKeySize(I)V

    .line 112
    new-instance p2, Ljavax/crypto/spec/SecretKeySpec;

    const-string v0, "AES"

    invoke-direct {p2, p1, v0}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    iput-object p2, p0, Lcom/google/crypto/tink/aead/internal/AesGcmSiv;->keySpec:Ljavax/crypto/SecretKey;

    .line 113
    iput-object p3, p0, Lcom/google/crypto/tink/aead/internal/AesGcmSiv;->cipherSupplier:Lcom/google/crypto/tink/aead/internal/AesGcmSiv$ThrowingSupplier;

    return-void
.end method

.method public static create(Lcom/google/crypto/tink/aead/AesGcmSivKey;Lcom/google/crypto/tink/aead/internal/AesGcmSiv$ThrowingSupplier;)Lcom/google/crypto/tink/Aead;
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "key",
            "cipherSupplier"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/crypto/tink/aead/AesGcmSivKey;",
            "Lcom/google/crypto/tink/aead/internal/AesGcmSiv$ThrowingSupplier<",
            "Ljavax/crypto/Cipher;",
            ">;)",
            "Lcom/google/crypto/tink/Aead;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 99
    invoke-interface {p1}, Lcom/google/crypto/tink/aead/internal/AesGcmSiv$ThrowingSupplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/crypto/Cipher;

    invoke-static {v0}, Lcom/google/crypto/tink/aead/internal/AesGcmSiv;->isAesGcmSivCipher(Ljavax/crypto/Cipher;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 102
    new-instance v0, Lcom/google/crypto/tink/aead/internal/AesGcmSiv;

    .line 103
    invoke-virtual {p0}, Lcom/google/crypto/tink/aead/AesGcmSivKey;->getKeyBytes()Lcom/google/crypto/tink/util/SecretBytes;

    move-result-object v1

    invoke-static {}, Lcom/google/crypto/tink/InsecureSecretKeyAccess;->get()Lcom/google/crypto/tink/SecretKeyAccess;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/crypto/tink/util/SecretBytes;->toByteArray(Lcom/google/crypto/tink/SecretKeyAccess;)[B

    move-result-object v1

    .line 104
    invoke-virtual {p0}, Lcom/google/crypto/tink/aead/AesGcmSivKey;->getOutputPrefix()Lcom/google/crypto/tink/util/Bytes;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/crypto/tink/util/Bytes;->toByteArray()[B

    move-result-object p0

    invoke-direct {v0, v1, p0, p1}, Lcom/google/crypto/tink/aead/internal/AesGcmSiv;-><init>([B[BLcom/google/crypto/tink/aead/internal/AesGcmSiv$ThrowingSupplier;)V

    return-object v0

    .line 100
    :cond_26
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Cipher does not implement AES GCM SIV."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getParams([B)Ljava/security/spec/AlgorithmParameterSpec;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "iv"
        }
    .end annotation

    .line 185
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lcom/google/crypto/tink/aead/internal/AesGcmSiv;->getParams([BII)Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object p0

    return-object p0
.end method

.method public static getParams([BII)Ljava/security/spec/AlgorithmParameterSpec;
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0,
            0x0
        }
        names = {
            "buf",
            "offset",
            "len"
        }
    .end annotation

    .line 189
    new-instance v0, Ljavax/crypto/spec/GCMParameterSpec;

    const/16 v1, 0x80

    invoke-direct {v0, v1, p0, p1, p2}, Ljavax/crypto/spec/GCMParameterSpec;-><init>(I[BII)V

    return-object v0
.end method

.method public static isAesGcmSivCipher(Ljavax/crypto/Cipher;)Z
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cipher"
        }
    .end annotation

    const/4 v0, 0x0

    .line 66
    :try_start_1
    sget-object v1, Lcom/google/crypto/tink/aead/internal/AesGcmSiv;->testNounce:[B

    invoke-static {v1}, Lcom/google/crypto/tink/aead/internal/AesGcmSiv;->getParams([B)Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object v1

    .line 67
    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    sget-object v3, Lcom/google/crypto/tink/aead/internal/AesGcmSiv;->testKey:[B

    const-string v4, "AES"

    invoke-direct {v2, v3, v4}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    const/4 v3, 0x2

    invoke-virtual {p0, v3, v2, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 68
    sget-object v1, Lcom/google/crypto/tink/aead/internal/AesGcmSiv;->testAad:[B

    invoke-virtual {p0, v1}, Ljavax/crypto/Cipher;->updateAAD([B)V

    .line 69
    sget-object v1, Lcom/google/crypto/tink/aead/internal/AesGcmSiv;->testResult:[B

    array-length v2, v1

    invoke-virtual {p0, v1, v0, v2}, Ljavax/crypto/Cipher;->doFinal([BII)[B

    move-result-object p0

    .line 70
    sget-object v1, Lcom/google/crypto/tink/aead/internal/AesGcmSiv;->testPlaintext:[B

    invoke-static {p0, v1}, Lcom/google/crypto/tink/subtle/Bytes;->equal([B[B)Z

    move-result p0
    :try_end_26
    .catch Ljava/security/GeneralSecurityException; {:try_start_1 .. :try_end_26} :catch_27

    return p0

    :catch_27
    return v0
.end method


# virtual methods
.method public decrypt([B[B)[B
    .registers 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "ciphertext",
            "associatedData"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 167
    array-length v0, p1

    iget-object v1, p0, Lcom/google/crypto/tink/aead/internal/AesGcmSiv;->outputPrefix:[B

    array-length v2, v1

    add-int/lit8 v2, v2, 0x1c

    if-lt v0, v2, :cond_42

    .line 170
    invoke-static {v1, p1}, Lcom/google/crypto/tink/internal/Util;->isPrefix([B[B)Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 173
    iget-object v0, p0, Lcom/google/crypto/tink/aead/internal/AesGcmSiv;->cipherSupplier:Lcom/google/crypto/tink/aead/internal/AesGcmSiv$ThrowingSupplier;

    invoke-interface {v0}, Lcom/google/crypto/tink/aead/internal/AesGcmSiv$ThrowingSupplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/crypto/Cipher;

    .line 174
    iget-object v1, p0, Lcom/google/crypto/tink/aead/internal/AesGcmSiv;->outputPrefix:[B

    array-length v1, v1

    const/16 v2, 0xc

    invoke-static {p1, v1, v2}, Lcom/google/crypto/tink/aead/internal/AesGcmSiv;->getParams([BII)Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object v1

    const/4 v3, 0x2

    .line 175
    iget-object v4, p0, Lcom/google/crypto/tink/aead/internal/AesGcmSiv;->keySpec:Ljavax/crypto/SecretKey;

    invoke-virtual {v0, v3, v4, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    if-eqz p2, :cond_2d

    .line 176
    array-length v1, p2

    if-eqz v1, :cond_2d

    .line 177
    invoke-virtual {v0, p2}, Ljavax/crypto/Cipher;->updateAAD([B)V

    .line 179
    :cond_2d
    iget-object p2, p0, Lcom/google/crypto/tink/aead/internal/AesGcmSiv;->outputPrefix:[B

    array-length v1, p2

    add-int/2addr v1, v2

    .line 180
    array-length v3, p1

    array-length p2, p2

    sub-int/2addr v3, p2

    sub-int/2addr v3, v2

    .line 181
    invoke-virtual {v0, p1, v1, v3}, Ljavax/crypto/Cipher;->doFinal([BII)[B

    move-result-object p1

    return-object p1

    .line 171
    :cond_3a
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string p2, "Decryption failed (OutputPrefix mismatch)."

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 168
    :cond_42
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string p2, "ciphertext too short"

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

###### Class com.google.crypto.tink.aead.internal.AesGcmSiv.ThrowingSupplier (com.google.crypto.tink.aead.internal.AesGcmSiv$ThrowingSupplier)
.class public interface abstract Lcom/google/crypto/tink/aead/internal/AesGcmSiv$ThrowingSupplier;
.super Ljava/lang/Object;
.source "AesGcmSiv.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/crypto/tink/aead/internal/AesGcmSiv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ThrowingSupplier"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract get()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation
.end method
