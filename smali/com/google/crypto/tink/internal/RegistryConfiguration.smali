###### Class com.google.crypto.tink.internal.RegistryConfiguration (com.google.crypto.tink.internal.RegistryConfiguration)
.class public final Lcom/google/crypto/tink/internal/RegistryConfiguration;
.super Lcom/google/crypto/tink/internal/InternalConfiguration;
.source "RegistryConfiguration.java"


# static fields
.field public static final CONFIG:Lcom/google/crypto/tink/internal/RegistryConfiguration;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 35
    new-instance v0, Lcom/google/crypto/tink/internal/RegistryConfiguration;

    invoke-direct {v0}, Lcom/google/crypto/tink/internal/RegistryConfiguration;-><init>()V

    sput-object v0, Lcom/google/crypto/tink/internal/RegistryConfiguration;->CONFIG:Lcom/google/crypto/tink/internal/RegistryConfiguration;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 37
    invoke-direct {p0}, Lcom/google/crypto/tink/internal/InternalConfiguration;-><init>()V

    return-void
.end method

.method public static get()Lcom/google/crypto/tink/internal/RegistryConfiguration;
    .registers 1

    .line 32
    sget-object v0, Lcom/google/crypto/tink/internal/RegistryConfiguration;->CONFIG:Lcom/google/crypto/tink/internal/RegistryConfiguration;

    return-object v0
.end method


# virtual methods
.method public wrap(Lcom/google/crypto/tink/internal/KeysetHandleInterface;Lcom/google/crypto/tink/internal/MonitoringAnnotations;Ljava/lang/Class;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "keysetHandle",
            "annotations",
            "clazz"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/crypto/tink/internal/KeysetHandleInterface;",
            "Lcom/google/crypto/tink/internal/MonitoringAnnotations;",
            "Ljava/lang/Class<",
            "TP;>;)TP;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 43
    invoke-static {}, Lcom/google/crypto/tink/internal/MutablePrimitiveRegistry;->globalInstance()Lcom/google/crypto/tink/internal/MutablePrimitiveRegistry;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/crypto/tink/internal/MutablePrimitiveRegistry;->wrap(Lcom/google/crypto/tink/internal/KeysetHandleInterface;Lcom/google/crypto/tink/internal/MonitoringAnnotations;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
