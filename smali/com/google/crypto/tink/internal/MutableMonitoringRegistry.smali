###### Class com.google.crypto.tink.internal.MutableMonitoringRegistry (com.google.crypto.tink.internal.MutableMonitoringRegistry)
.class public final Lcom/google/crypto/tink/internal/MutableMonitoringRegistry;
.super Ljava/lang/Object;
.source "MutableMonitoringRegistry.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/crypto/tink/internal/MutableMonitoringRegistry$DoNothingClient;
    }
.end annotation


# static fields
.field public static final DO_NOTHING_CLIENT:Lcom/google/crypto/tink/internal/MutableMonitoringRegistry$DoNothingClient;

.field public static final GLOBAL_INSTANCE:Lcom/google/crypto/tink/internal/MutableMonitoringRegistry;


# instance fields
.field public final monitoringClient:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/google/crypto/tink/internal/MonitoringClient;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 25
    new-instance v0, Lcom/google/crypto/tink/internal/MutableMonitoringRegistry;

    invoke-direct {v0}, Lcom/google/crypto/tink/internal/MutableMonitoringRegistry;-><init>()V

    sput-object v0, Lcom/google/crypto/tink/internal/MutableMonitoringRegistry;->GLOBAL_INSTANCE:Lcom/google/crypto/tink/internal/MutableMonitoringRegistry;

    .line 42
    new-instance v0, Lcom/google/crypto/tink/internal/MutableMonitoringRegistry$DoNothingClient;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/crypto/tink/internal/MutableMonitoringRegistry$DoNothingClient;-><init>(Lcom/google/crypto/tink/internal/MutableMonitoringRegistry$1;)V

    sput-object v0, Lcom/google/crypto/tink/internal/MutableMonitoringRegistry;->DO_NOTHING_CLIENT:Lcom/google/crypto/tink/internal/MutableMonitoringRegistry$DoNothingClient;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/google/crypto/tink/internal/MutableMonitoringRegistry;->monitoringClient:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method public static globalInstance()Lcom/google/crypto/tink/internal/MutableMonitoringRegistry;
    .registers 1

    .line 29
    sget-object v0, Lcom/google/crypto/tink/internal/MutableMonitoringRegistry;->GLOBAL_INSTANCE:Lcom/google/crypto/tink/internal/MutableMonitoringRegistry;

    return-object v0
.end method


# virtual methods
.method public getMonitoringClient()Lcom/google/crypto/tink/internal/MonitoringClient;
    .registers 2

    .line 58
    iget-object v0, p0, Lcom/google/crypto/tink/internal/MutableMonitoringRegistry;->monitoringClient:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/internal/MonitoringClient;

    if-nez v0, :cond_c

    .line 60
    sget-object v0, Lcom/google/crypto/tink/internal/MutableMonitoringRegistry;->DO_NOTHING_CLIENT:Lcom/google/crypto/tink/internal/MutableMonitoringRegistry$DoNothingClient;

    :cond_c
    return-object v0
.end method

###### Class com.google.crypto.tink.internal.MutableMonitoringRegistry.AnonymousClass1 (com.google.crypto.tink.internal.MutableMonitoringRegistry$1)
.class public synthetic Lcom/google/crypto/tink/internal/MutableMonitoringRegistry$1;
.super Ljava/lang/Object;
.source "MutableMonitoringRegistry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/crypto/tink/internal/MutableMonitoringRegistry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation

###### Class com.google.crypto.tink.internal.MutableMonitoringRegistry.DoNothingClient (com.google.crypto.tink.internal.MutableMonitoringRegistry$DoNothingClient)
.class public Lcom/google/crypto/tink/internal/MutableMonitoringRegistry$DoNothingClient;
.super Ljava/lang/Object;
.source "MutableMonitoringRegistry.java"

# interfaces
.implements Lcom/google/crypto/tink/internal/MonitoringClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/crypto/tink/internal/MutableMonitoringRegistry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DoNothingClient"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/crypto/tink/internal/MutableMonitoringRegistry$1;)V
    .registers 2

    .line 32
    invoke-direct {p0}, Lcom/google/crypto/tink/internal/MutableMonitoringRegistry$DoNothingClient;-><init>()V

    return-void
.end method


# virtual methods
.method public createLogger(Lcom/google/crypto/tink/internal/KeysetHandleInterface;Lcom/google/crypto/tink/internal/MonitoringAnnotations;Ljava/lang/String;Ljava/lang/String;)Lcom/google/crypto/tink/internal/MonitoringClient$Logger;
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "keysetInfo",
            "annotations",
            "primitive",
            "api"
        }
    .end annotation

    .line 39
    sget-object p1, Lcom/google/crypto/tink/internal/MonitoringUtil;->DO_NOTHING_LOGGER:Lcom/google/crypto/tink/internal/MonitoringClient$Logger;

    return-object p1
.end method
