###### Class com.google.crypto.tink.mac.internal.ChunkedHmacImpl (com.google.crypto.tink.mac.internal.ChunkedHmacImpl)
.class public final Lcom/google/crypto/tink/mac/internal/ChunkedHmacImpl;
.super Ljava/lang/Object;
.source "ChunkedHmacImpl.java"

# interfaces
.implements Lcom/google/crypto/tink/mac/ChunkedMac;


# static fields
.field public static final FIPS:Lcom/google/crypto/tink/config/internal/TinkFipsUtil$AlgorithmFipsCompatibility;


# instance fields
.field public final key:Lcom/google/crypto/tink/mac/HmacKey;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 31
    sget-object v0, Lcom/google/crypto/tink/config/internal/TinkFipsUtil$AlgorithmFipsCompatibility;->ALGORITHM_REQUIRES_BORINGCRYPTO:Lcom/google/crypto/tink/config/internal/TinkFipsUtil$AlgorithmFipsCompatibility;

    sput-object v0, Lcom/google/crypto/tink/mac/internal/ChunkedHmacImpl;->FIPS:Lcom/google/crypto/tink/config/internal/TinkFipsUtil$AlgorithmFipsCompatibility;

    return-void
.end method

.method public constructor <init>(Lcom/google/crypto/tink/mac/HmacKey;)V
    .registers 3
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

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    sget-object v0, Lcom/google/crypto/tink/mac/internal/ChunkedHmacImpl;->FIPS:Lcom/google/crypto/tink/config/internal/TinkFipsUtil$AlgorithmFipsCompatibility;

    invoke-virtual {v0}, Lcom/google/crypto/tink/config/internal/TinkFipsUtil$AlgorithmFipsCompatibility;->isCompatible()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 42
    iput-object p1, p0, Lcom/google/crypto/tink/mac/internal/ChunkedHmacImpl;->key:Lcom/google/crypto/tink/mac/HmacKey;

    return-void

    .line 39
    :cond_e
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string v0, "Can not use HMAC in FIPS-mode, as BoringCrypto module is not available."

    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
