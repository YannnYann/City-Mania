###### Class com.google.crypto.tink.aead.subtle.AesGcmSiv (com.google.crypto.tink.aead.subtle.AesGcmSiv)
.class public final Lcom/google/crypto/tink/aead/subtle/AesGcmSiv;
.super Ljava/lang/Object;
.source "AesGcmSiv.java"

# interfaces
.implements Lcom/google/crypto/tink/Aead;


# static fields
.field public static final localAesGcmSivCipher:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljavax/crypto/Cipher;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$qxbnrf-gDFs3sWhu1vTeLGQdE7I()Ljavax/crypto/Cipher;
    .registers 1

    .line 0
    invoke-static {}, Lcom/google/crypto/tink/aead/subtle/AesGcmSiv;->cipherSupplier()Ljavax/crypto/Cipher;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 46
    new-instance v0, Lcom/google/crypto/tink/aead/subtle/AesGcmSiv$1;

    invoke-direct {v0}, Lcom/google/crypto/tink/aead/subtle/AesGcmSiv$1;-><init>()V

    sput-object v0, Lcom/google/crypto/tink/aead/subtle/AesGcmSiv;->localAesGcmSivCipher:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public static cipherSupplier()Ljavax/crypto/Cipher;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 65
    :try_start_0
    sget-object v0, Lcom/google/crypto/tink/aead/subtle/AesGcmSiv;->localAesGcmSivCipher:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/crypto/Cipher;

    if-eqz v0, :cond_b

    return-object v0

    .line 67
    :cond_b
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "AES GCM SIV cipher is invalid."

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_13
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_13} :catch_13

    :catch_13
    move-exception v0

    .line 71
    new-instance v1, Ljava/security/GeneralSecurityException;

    const-string v2, "AES GCM SIV cipher is not available or is invalid."

    invoke-direct {v1, v2, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static create(Lcom/google/crypto/tink/aead/AesGcmSivKey;)Lcom/google/crypto/tink/Aead;
    .registers 2
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

    .line 79
    new-instance v0, Lcom/google/crypto/tink/aead/subtle/AesGcmSiv$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/google/crypto/tink/aead/subtle/AesGcmSiv$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {p0, v0}, Lcom/google/crypto/tink/aead/internal/AesGcmSiv;->create(Lcom/google/crypto/tink/aead/AesGcmSivKey;Lcom/google/crypto/tink/aead/internal/AesGcmSiv$ThrowingSupplier;)Lcom/google/crypto/tink/Aead;

    move-result-object p0

    return-object p0
.end method

###### Class com.google.crypto.tink.aead.subtle.AesGcmSiv.AnonymousClass1 (com.google.crypto.tink.aead.subtle.AesGcmSiv$1)
.class public Lcom/google/crypto/tink/aead/subtle/AesGcmSiv$1;
.super Ljava/lang/ThreadLocal;
.source "AesGcmSiv.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/crypto/tink/aead/subtle/AesGcmSiv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ThreadLocal<",
        "Ljavax/crypto/Cipher;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 47
    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic initialValue()Ljava/lang/Object;
    .registers 2

    .line 47
    invoke-virtual {p0}, Lcom/google/crypto/tink/aead/subtle/AesGcmSiv$1;->initialValue()Ljavax/crypto/Cipher;

    move-result-object v0

    return-object v0
.end method

.method public initialValue()Ljavax/crypto/Cipher;
    .registers 3

    .line 52
    :try_start_0
    sget-object v0, Lcom/google/crypto/tink/subtle/EngineFactory;->CIPHER:Lcom/google/crypto/tink/subtle/EngineFactory;

    const-string v1, "AES/GCM-SIV/NoPadding"

    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/subtle/EngineFactory;->getInstance(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/crypto/Cipher;

    .line 53
    invoke-static {v0}, Lcom/google/crypto/tink/aead/internal/AesGcmSiv;->isAesGcmSivCipher(Ljavax/crypto/Cipher;)Z

    move-result v1
    :try_end_e
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_e} :catch_12

    if-nez v1, :cond_11

    const/4 v0, 0x0

    :cond_11
    return-object v0

    :catch_12
    move-exception v0

    .line 58
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

###### Class com.google.crypto.tink.aead.subtle.AesGcmSiv$$ExternalSyntheticLambda0 (com.google.crypto.tink.aead.subtle.AesGcmSiv$$ExternalSyntheticLambda0)
.class public final synthetic Lcom/google/crypto/tink/aead/subtle/AesGcmSiv$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/google/crypto/tink/aead/internal/AesGcmSiv$ThrowingSupplier;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 2

    .line 0
    invoke-static {}, Lcom/google/crypto/tink/aead/subtle/AesGcmSiv;->$r8$lambda$qxbnrf-gDFs3sWhu1vTeLGQdE7I()Ljavax/crypto/Cipher;

    move-result-object v0

    return-object v0
.end method
