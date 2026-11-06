###### Class com.google.crypto.tink.signature.internal.LegacyFullSign (com.google.crypto.tink.signature.internal.LegacyFullSign)
.class public final Lcom/google/crypto/tink/signature/internal/LegacyFullSign;
.super Ljava/lang/Object;
.source "LegacyFullSign.java"

# interfaces
.implements Lcom/google/crypto/tink/PublicKeySign;


# instance fields
.field public final messageSuffix:[B

.field public final outputPrefix:[B

.field public final rawSigner:Lcom/google/crypto/tink/PublicKeySign;


# direct methods
.method public constructor <init>(Lcom/google/crypto/tink/PublicKeySign;[B[B)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "rawSigner",
            "outputPrefix",
            "messageSuffix"
        }
    .end annotation

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/google/crypto/tink/signature/internal/LegacyFullSign;->rawSigner:Lcom/google/crypto/tink/PublicKeySign;

    .line 53
    iput-object p2, p0, Lcom/google/crypto/tink/signature/internal/LegacyFullSign;->outputPrefix:[B

    .line 54
    iput-object p3, p0, Lcom/google/crypto/tink/signature/internal/LegacyFullSign;->messageSuffix:[B

    return-void
.end method

.method public static create(Lcom/google/crypto/tink/internal/LegacyProtoKey;)Lcom/google/crypto/tink/PublicKeySign;
    .registers 4
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

    .line 38
    invoke-static {}, Lcom/google/crypto/tink/InsecureSecretKeyAccess;->get()Lcom/google/crypto/tink/SecretKeyAccess;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/crypto/tink/internal/LegacyProtoKey;->getSerialization(Lcom/google/crypto/tink/SecretKeyAccess;)Lcom/google/crypto/tink/internal/ProtoKeySerialization;

    move-result-object p0

    .line 40
    invoke-static {}, Lcom/google/crypto/tink/internal/KeyManagerRegistry;->globalInstance()Lcom/google/crypto/tink/internal/KeyManagerRegistry;

    move-result-object v0

    .line 41
    invoke-virtual {p0}, Lcom/google/crypto/tink/internal/ProtoKeySerialization;->getTypeUrl()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/google/crypto/tink/PublicKeySign;

    invoke-virtual {v0, v1, v2}, Lcom/google/crypto/tink/internal/KeyManagerRegistry;->getKeyManager(Ljava/lang/String;Ljava/lang/Class;)Lcom/google/crypto/tink/KeyManager;

    move-result-object v0

    .line 43
    invoke-virtual {p0}, Lcom/google/crypto/tink/internal/ProtoKeySerialization;->getValue()Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/crypto/tink/KeyManager;->getPrimitive(Lcom/google/crypto/tink/shaded/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/PublicKeySign;

    .line 45
    new-instance v1, Lcom/google/crypto/tink/signature/internal/LegacyFullSign;

    .line 47
    invoke-static {p0}, Lcom/google/crypto/tink/signature/internal/LegacyFullVerify;->getOutputPrefix(Lcom/google/crypto/tink/internal/ProtoKeySerialization;)[B

    move-result-object v2

    .line 48
    invoke-static {p0}, Lcom/google/crypto/tink/signature/internal/LegacyFullVerify;->getMessageSuffix(Lcom/google/crypto/tink/internal/ProtoKeySerialization;)[B

    move-result-object p0

    invoke-direct {v1, v0, v2, p0}, Lcom/google/crypto/tink/signature/internal/LegacyFullSign;-><init>(Lcom/google/crypto/tink/PublicKeySign;[B[B)V

    return-object v1
.end method


# virtual methods
.method public sign([B)[B
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 69
    iget-object v0, p0, Lcom/google/crypto/tink/signature/internal/LegacyFullSign;->messageSuffix:[B

    array-length v1, v0

    if-nez v1, :cond_c

    .line 70
    iget-object v0, p0, Lcom/google/crypto/tink/signature/internal/LegacyFullSign;->rawSigner:Lcom/google/crypto/tink/PublicKeySign;

    invoke-interface {v0, p1}, Lcom/google/crypto/tink/PublicKeySign;->sign([B)[B

    move-result-object p1

    goto :goto_1a

    .line 72
    :cond_c
    iget-object v1, p0, Lcom/google/crypto/tink/signature/internal/LegacyFullSign;->rawSigner:Lcom/google/crypto/tink/PublicKeySign;

    filled-new-array {p1, v0}, [[B

    move-result-object p1

    invoke-static {p1}, Lcom/google/crypto/tink/subtle/Bytes;->concat([[B)[B

    move-result-object p1

    invoke-interface {v1, p1}, Lcom/google/crypto/tink/PublicKeySign;->sign([B)[B

    move-result-object p1

    .line 74
    :goto_1a
    iget-object v0, p0, Lcom/google/crypto/tink/signature/internal/LegacyFullSign;->outputPrefix:[B

    array-length v1, v0

    if-nez v1, :cond_20

    return-object p1

    .line 77
    :cond_20
    filled-new-array {v0, p1}, [[B

    move-result-object p1

    invoke-static {p1}, Lcom/google/crypto/tink/subtle/Bytes;->concat([[B)[B

    move-result-object p1

    return-object p1
.end method
