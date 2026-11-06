###### Class com.google.crypto.tink.internal.MutableKeyDerivationRegistry (com.google.crypto.tink.internal.MutableKeyDerivationRegistry)
.class public final Lcom/google/crypto/tink/internal/MutableKeyDerivationRegistry;
.super Ljava/lang/Object;
.source "MutableKeyDerivationRegistry.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/crypto/tink/internal/MutableKeyDerivationRegistry$InsecureKeyCreator;
    }
.end annotation


# static fields
.field public static final globalInstance:Lcom/google/crypto/tink/internal/MutableKeyDerivationRegistry;


# instance fields
.field public final creators:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "+",
            "Lcom/google/crypto/tink/Parameters;",
            ">;",
            "Lcom/google/crypto/tink/internal/MutableKeyDerivationRegistry$InsecureKeyCreator<",
            "+",
            "Lcom/google/crypto/tink/Parameters;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 45
    new-instance v0, Lcom/google/crypto/tink/internal/MutableKeyDerivationRegistry;

    invoke-direct {v0}, Lcom/google/crypto/tink/internal/MutableKeyDerivationRegistry;-><init>()V

    sput-object v0, Lcom/google/crypto/tink/internal/MutableKeyDerivationRegistry;->globalInstance:Lcom/google/crypto/tink/internal/MutableKeyDerivationRegistry;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/crypto/tink/internal/MutableKeyDerivationRegistry;->creators:Ljava/util/Map;

    return-void
.end method

.method public static globalInstance()Lcom/google/crypto/tink/internal/MutableKeyDerivationRegistry;
    .registers 1

    .line 49
    sget-object v0, Lcom/google/crypto/tink/internal/MutableKeyDerivationRegistry;->globalInstance:Lcom/google/crypto/tink/internal/MutableKeyDerivationRegistry;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized add(Lcom/google/crypto/tink/internal/MutableKeyDerivationRegistry$InsecureKeyCreator;Ljava/lang/Class;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "creator",
            "parametersClass"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ParametersT:",
            "Lcom/google/crypto/tink/Parameters;",
            ">(",
            "Lcom/google/crypto/tink/internal/MutableKeyDerivationRegistry$InsecureKeyCreator<",
            "TParametersT;>;",
            "Ljava/lang/Class<",
            "TParametersT;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    monitor-enter p0

    .line 61
    :try_start_1
    iget-object v0, p0, Lcom/google/crypto/tink/internal/MutableKeyDerivationRegistry;->creators:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/internal/MutableKeyDerivationRegistry$InsecureKeyCreator;

    if-eqz v0, :cond_1c

    .line 63
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    goto :goto_1c

    .line 64
    :cond_12
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string p2, "Different key creator for parameters class already inserted"

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_1a
    move-exception p1

    goto :goto_23

    .line 68
    :cond_1c
    :goto_1c
    iget-object v0, p0, Lcom/google/crypto/tink/internal/MutableKeyDerivationRegistry;->creators:Ljava/util/Map;

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_21
    .catchall {:try_start_1 .. :try_end_21} :catchall_1a

    .line 69
    monitor-exit p0

    return-void

    :goto_23
    :try_start_23
    monitor-exit p0
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_1a

    throw p1
.end method

###### Class com.google.crypto.tink.internal.MutableKeyDerivationRegistry.InsecureKeyCreator (com.google.crypto.tink.internal.MutableKeyDerivationRegistry$InsecureKeyCreator)
.class public interface abstract Lcom/google/crypto/tink/internal/MutableKeyDerivationRegistry$InsecureKeyCreator;
.super Ljava/lang/Object;
.source "MutableKeyDerivationRegistry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/crypto/tink/internal/MutableKeyDerivationRegistry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "InsecureKeyCreator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ParametersT:",
        "Lcom/google/crypto/tink/Parameters;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation
