###### Class com.google.crypto.tink.internal.Random (com.google.crypto.tink.internal.Random)
.class public final Lcom/google/crypto/tink/internal/Random;
.super Ljava/lang/Object;
.source "Random.java"


# static fields
.field public static final localRandom:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/security/SecureRandom;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 25
    new-instance v0, Lcom/google/crypto/tink/internal/Random$1;

    invoke-direct {v0}, Lcom/google/crypto/tink/internal/Random$1;-><init>()V

    sput-object v0, Lcom/google/crypto/tink/internal/Random;->localRandom:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public static synthetic access$000()Ljava/security/SecureRandom;
    .registers 1

    .line 24
    invoke-static {}, Lcom/google/crypto/tink/internal/Random;->newDefaultSecureRandom()Ljava/security/SecureRandom;

    move-result-object v0

    return-object v0
.end method

.method public static create()Ljava/security/SecureRandom;
    .registers 2

    .line 36
    invoke-static {}, Lcom/google/crypto/tink/internal/ConscryptUtil;->providerOrNull()Ljava/security/Provider;

    move-result-object v0

    .line 37
    const-string v1, "SHA1PRNG"

    if-eqz v0, :cond_d

    .line 39
    :try_start_8
    invoke-static {v1, v0}, Ljava/security/SecureRandom;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/SecureRandom;

    move-result-object v0
    :try_end_c
    .catch Ljava/security/GeneralSecurityException; {:try_start_8 .. :try_end_c} :catch_d

    return-object v0

    .line 45
    :catch_d
    :cond_d
    invoke-static {}, Lcom/google/crypto/tink/internal/ConscryptUtil;->providerWithReflectionOrNull()Ljava/security/Provider;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 48
    :try_start_13
    invoke-static {v1, v0}, Ljava/security/SecureRandom;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/SecureRandom;

    move-result-object v0
    :try_end_17
    .catch Ljava/security/GeneralSecurityException; {:try_start_13 .. :try_end_17} :catch_18

    return-object v0

    .line 53
    :catch_18
    :cond_18
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    return-object v0
.end method

.method public static newDefaultSecureRandom()Ljava/security/SecureRandom;
    .registers 1

    .line 57
    invoke-static {}, Lcom/google/crypto/tink/internal/Random;->create()Ljava/security/SecureRandom;

    move-result-object v0

    .line 58
    invoke-virtual {v0}, Ljava/util/Random;->nextLong()J

    return-object v0
.end method

.method public static randBytes(I)[B
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "size"
        }
    .end annotation

    .line 64
    new-array p0, p0, [B

    .line 65
    sget-object v0, Lcom/google/crypto/tink/internal/Random;->localRandom:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/SecureRandom;

    invoke-virtual {v0, p0}, Ljava/security/SecureRandom;->nextBytes([B)V

    return-object p0
.end method

###### Class com.google.crypto.tink.internal.Random.AnonymousClass1 (com.google.crypto.tink.internal.Random$1)
.class public Lcom/google/crypto/tink/internal/Random$1;
.super Ljava/lang/ThreadLocal;
.source "Random.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/crypto/tink/internal/Random;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ThreadLocal<",
        "Ljava/security/SecureRandom;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 26
    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic initialValue()Ljava/lang/Object;
    .registers 2

    .line 26
    invoke-virtual {p0}, Lcom/google/crypto/tink/internal/Random$1;->initialValue()Ljava/security/SecureRandom;

    move-result-object v0

    return-object v0
.end method

.method public initialValue()Ljava/security/SecureRandom;
    .registers 2

    .line 29
    invoke-static {}, Lcom/google/crypto/tink/internal/Random;->access$000()Ljava/security/SecureRandom;

    move-result-object v0

    return-object v0
.end method
