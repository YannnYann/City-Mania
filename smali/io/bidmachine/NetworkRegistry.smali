###### Class io.bidmachine.NetworkRegistry (io.bidmachine.NetworkRegistry)
.class public Lio/bidmachine/NetworkRegistry;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/NetworkRegistry$c;,
        Lio/bidmachine/NetworkRegistry$b;
    }
.end annotation


# static fields
.field private static final CORE_INITIALIZING_LOCK:Ljava/lang/Object;

.field static final CORE_NETWORK_CONFIG_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lio/bidmachine/NetworkConfig;",
            ">;"
        }
    .end annotation
.end field

.field static final FROM_INIT_NETWORK_CONFIG_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lio/bidmachine/NetworkConfig;",
            ">;"
        }
    .end annotation
.end field

.field static final INITIALIZED_CORE_NETWORK_CONFIG_TYPED_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lio/bidmachine/AdsType;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lio/bidmachine/NetworkConfig;",
            ">;>;"
        }
    .end annotation
.end field

.field static final INITIALIZED_NETWORK_CONFIG_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lio/bidmachine/NetworkConfig;",
            ">;"
        }
    .end annotation
.end field

.field static final INITIALIZED_NETWORK_CONFIG_TYPED_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lio/bidmachine/AdsType;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lio/bidmachine/NetworkConfig;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final INITIALIZING_LOCK:Ljava/lang/Object;

.field static final INITIALIZING_NETWORK_CONFIG_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lio/bidmachine/NetworkConfig;",
            ">;"
        }
    .end annotation
.end field

.field private static final IS_CORE_NETWORKS_INITIALIZED:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static final IS_CORE_NETWORKS_INITIALIZING:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static final IS_NETWORKS_INITIALIZING_EXECUTED:Ljava/util/concurrent/atomic/AtomicBoolean;

.field static final NETWORK_ADAPTER_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lio/bidmachine/NetworkAdapter;",
            ">;"
        }
    .end annotation
.end field

.field static final PENDING_NETWORK_CONFIG_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lio/bidmachine/NetworkConfig;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$fVHrmvqrB19tcf-LU07zMmh14_U(Landroid/content/Context;Ljava/lang/String;Lio/bidmachine/NetworkRegistryCallback;)V
    .registers 3

    .line 1
    invoke-static {p0, p1}, Lio/bidmachine/NetworkRegistry;->registerNetworks(Landroid/content/Context;Ljava/lang/String;)V

    .line 2
    new-instance p0, Lio/bidmachine/NetworkRegistry$$ExternalSyntheticLambda2;

    invoke-direct {p0, p2}, Lio/bidmachine/NetworkRegistry$$ExternalSyntheticLambda2;-><init>(Lio/bidmachine/NetworkRegistryCallback;)V

    invoke-static {p0}, Lio/bidmachine/core/Utils;->onUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$rXziGQ9LwQ50E7UkrLDdZkjVSkA(Lio/bidmachine/NetworkRegistryCallback;)V
    .registers 1

    if-eqz p0, :cond_5

    .line 1
    invoke-interface {p0}, Lio/bidmachine/NetworkRegistryCallback;->onRegistered()V

    :cond_5
    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lio/bidmachine/NetworkRegistry;->NETWORK_ADAPTER_MAP:Ljava/util/Map;

    .line 4
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lio/bidmachine/NetworkRegistry;->CORE_NETWORK_CONFIG_MAP:Ljava/util/Map;

    .line 7
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lio/bidmachine/NetworkRegistry;->FROM_INIT_NETWORK_CONFIG_MAP:Ljava/util/Map;

    .line 10
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lio/bidmachine/NetworkRegistry;->PENDING_NETWORK_CONFIG_MAP:Ljava/util/Map;

    .line 13
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lio/bidmachine/NetworkRegistry;->INITIALIZING_NETWORK_CONFIG_MAP:Ljava/util/Map;

    .line 16
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lio/bidmachine/NetworkRegistry;->INITIALIZED_NETWORK_CONFIG_MAP:Ljava/util/Map;

    .line 19
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 20
    invoke-static {}, Lio/bidmachine/AdsType;->values()[Lio/bidmachine/AdsType;

    move-result-object v1

    array-length v1, v1

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    sput-object v0, Lio/bidmachine/NetworkRegistry;->INITIALIZED_CORE_NETWORK_CONFIG_TYPED_MAP:Ljava/util/Map;

    .line 23
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 24
    invoke-static {}, Lio/bidmachine/AdsType;->values()[Lio/bidmachine/AdsType;

    move-result-object v1

    array-length v1, v1

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    sput-object v0, Lio/bidmachine/NetworkRegistry;->INITIALIZED_NETWORK_CONFIG_TYPED_MAP:Ljava/util/Map;

    .line 26
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lio/bidmachine/NetworkRegistry;->IS_NETWORKS_INITIALIZING_EXECUTED:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 28
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lio/bidmachine/NetworkRegistry;->IS_CORE_NETWORKS_INITIALIZING:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 30
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lio/bidmachine/NetworkRegistry;->IS_CORE_NETWORKS_INITIALIZED:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 32
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lio/bidmachine/NetworkRegistry;->CORE_INITIALIZING_LOCK:Ljava/lang/Object;

    .line 34
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lio/bidmachine/NetworkRegistry;->INITIALIZING_LOCK:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$000(Landroid/content/Context;)V
    .registers 1

    .line 1
    invoke-static {p0}, Lio/bidmachine/NetworkRegistry;->initializeNetworksAwait(Landroid/content/Context;)V

    return-void
.end method

.method public static checkAndPutNetwork(Landroid/content/Context;Lio/bidmachine/AdsType;Lio/bidmachine/NetworkConfig;Ljava/util/Map;)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lio/bidmachine/AdsType;",
            "Lio/bidmachine/NetworkConfig;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lio/bidmachine/NetworkConfig;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Lio/bidmachine/NetworkConfig;->getNetworkKey()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Lio/bidmachine/NetworkRegistry;->getAdapter(Ljava/lang/String;)Lio/bidmachine/NetworkAdapter;

    move-result-object v0

    if-nez v0, :cond_d

    .line 4
    const-string p0, "Network not registered"

    return-object p0

    .line 6
    :cond_d
    invoke-virtual {v0, p1}, Lio/bidmachine/NetworkAdapter;->isAdsTypeSupported(Lio/bidmachine/AdsType;)Z

    move-result p1

    if-nez p1, :cond_16

    .line 7
    const-string p0, "Network does not support this ad type"

    return-object p0

    .line 9
    :cond_16
    invoke-virtual {v0, p0}, Lio/bidmachine/NetworkAdapter;->isInitialized(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_1f

    .line 10
    const-string p0, "Network not initialized"

    return-object p0

    .line 12
    :cond_1f
    invoke-virtual {p2}, Lio/bidmachine/NetworkConfig;->getNetworkKey()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p3, p0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p0, 0x0

    return-object p0
.end method

.method public static copyOrNullInitializedCoreNetworkConfigs(Lio/bidmachine/AdsType;)Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/AdsType;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lio/bidmachine/NetworkConfig;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lio/bidmachine/NetworkRegistry;->INITIALIZED_CORE_NETWORK_CONFIG_TYPED_MAP:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    if-nez p0, :cond_c

    const/4 p0, 0x0

    return-object p0

    .line 5
    :cond_c
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method public static copyOrNullInitializedNetworkConfigs(Lio/bidmachine/AdsType;)Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/AdsType;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lio/bidmachine/NetworkConfig;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lio/bidmachine/NetworkRegistry;->INITIALIZED_NETWORK_CONFIG_TYPED_MAP:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    if-nez p0, :cond_c

    const/4 p0, 0x0

    return-object p0

    .line 5
    :cond_c
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method public static createInitNetworkConfigMap()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lio/bidmachine/NetworkConfig;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashMap;

    sget-object v1, Lio/bidmachine/NetworkRegistry;->FROM_INIT_NETWORK_CONFIG_MAP:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method public static getAdapter(Ljava/lang/String;)Lio/bidmachine/NetworkAdapter;
    .registers 2

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p0, 0x0

    return-object p0

    .line 4
    :cond_8
    sget-object v0, Lio/bidmachine/NetworkRegistry;->NETWORK_ADAPTER_MAP:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/NetworkAdapter;

    return-object p0
.end method

.method public static getConfig(Ljava/lang/String;)Lio/bidmachine/NetworkConfig;
    .registers 2

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_4
    sget-object v0, Lio/bidmachine/NetworkRegistry;->INITIALIZED_NETWORK_CONFIG_MAP:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/NetworkConfig;

    return-object p0
.end method

.method public static getCoreNetworkConfigList()Ljava/util/Collection;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lio/bidmachine/NetworkConfig;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lio/bidmachine/NetworkRegistry;->CORE_NETWORK_CONFIG_MAP:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public static getPendingNetworkConfigList()Ljava/util/Collection;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lio/bidmachine/NetworkConfig;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lio/bidmachine/NetworkRegistry;->PENDING_NETWORK_CONFIG_MAP:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method private static initializeNetwork(Lio/bidmachine/ContextProvider;Lio/bidmachine/InitializationParams;Lio/bidmachine/NetworkConfig;Lio/bidmachine/NetworkRegistry$c;)V
    .registers 12

    .line 1
    sget-object v1, Lio/bidmachine/NetworkRegistry;->INITIALIZING_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 2
    :try_start_3
    invoke-virtual {p2}, Lio/bidmachine/NetworkConfig;->getNetworkKey()Ljava/lang/String;

    move-result-object v0

    .line 3
    sget-object v2, Lio/bidmachine/NetworkRegistry;->INITIALIZING_NETWORK_CONFIG_MAP:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 4
    sget-object p0, Lio/bidmachine/NetworkRegistry;->PENDING_NETWORK_CONFIG_MAP:Ljava/util/Map;

    invoke-interface {p0, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p3, :cond_1d

    .line 6
    invoke-interface {p3}, Lio/bidmachine/NetworkRegistry$c;->a()V

    goto :goto_1d

    :catchall_1a
    move-exception v0

    move-object p0, v0

    goto :goto_31

    .line 8
    :cond_1d
    :goto_1d
    monitor-exit v1

    return-void

    .line 11
    :cond_1f
    invoke-interface {v2, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    monitor-exit v1
    :try_end_23
    .catchall {:try_start_3 .. :try_end_23} :catchall_1a

    .line 14
    new-instance v2, Lio/bidmachine/NetworkRegistry$b;

    const/4 v7, 0x0

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v2 .. v7}, Lio/bidmachine/NetworkRegistry$b;-><init>(Lio/bidmachine/ContextProvider;Lio/bidmachine/InitializationParams;Lio/bidmachine/NetworkConfig;Lio/bidmachine/NetworkRegistry$c;Lio/bidmachine/NetworkRegistry$a;)V

    .line 18
    invoke-virtual {v2}, Lio/bidmachine/NetworkRegistry$b;->a()V

    return-void

    .line 19
    :goto_31
    :try_start_31
    monitor-exit v1
    :try_end_32
    .catchall {:try_start_31 .. :try_end_32} :catchall_1a

    throw p0
.end method

.method public static initializeNetworksAsync(Landroid/content/Context;Lio/bidmachine/NetworkRegistry$c;)V
    .registers 5

    .line 1
    sget-object v0, Lio/bidmachine/NetworkRegistry;->IS_NETWORKS_INITIALIZING_EXECUTED:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_b

    return-void

    .line 5
    :cond_b
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 6
    new-instance v0, Lio/bidmachine/NetworkRegistry$a;

    invoke-direct {v0, p0, p1}, Lio/bidmachine/NetworkRegistry$a;-><init>(Landroid/content/Context;Lio/bidmachine/NetworkRegistry$c;)V

    .line 16
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private static initializeNetworksAwait(Landroid/content/Context;)V
    .registers 2

    .line 1
    invoke-static {}, Lio/bidmachine/NetworkRegistry;->getPendingNetworkConfigList()Ljava/util/Collection;

    move-result-object v0

    invoke-static {p0, v0}, Lio/bidmachine/NetworkRegistry;->initializeNetworksAwait(Landroid/content/Context;Ljava/util/Collection;)V

    return-void
.end method

.method private static initializeNetworksAwait(Landroid/content/Context;Ljava/util/Collection;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Collection<",
            "Lio/bidmachine/NetworkConfig;",
            ">;)V"
        }
    .end annotation

    .line 2
    new-instance v0, Lio/bidmachine/SimpleContextProvider;

    invoke-direct {v0, p0}, Lio/bidmachine/SimpleContextProvider;-><init>(Landroid/content/Context;)V

    .line 3
    invoke-static {}, Lio/bidmachine/k;->b()Lio/bidmachine/k;

    move-result-object p0

    invoke-virtual {p0}, Lio/bidmachine/k;->a()Lio/bidmachine/InitializationParams;

    move-result-object p0

    .line 4
    invoke-static {v0, p0, p1}, Lio/bidmachine/NetworkRegistry;->initializeNetworksAwait(Lio/bidmachine/ContextProvider;Lio/bidmachine/InitializationParams;Ljava/util/Collection;)V

    return-void
.end method

.method private static initializeNetworksAwait(Lio/bidmachine/ContextProvider;Lio/bidmachine/InitializationParams;Ljava/util/Collection;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/ContextProvider;",
            "Lio/bidmachine/InitializationParams;",
            "Ljava/util/Collection<",
            "Lio/bidmachine/NetworkConfig;",
            ">;)V"
        }
    .end annotation

    .line 5
    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_31

    .line 8
    :cond_7
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 9
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_14
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_29

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/bidmachine/NetworkConfig;

    .line 13
    new-instance v2, Lio/bidmachine/NetworkRegistry$$ExternalSyntheticLambda1;

    invoke-direct {v2, v0}, Lio/bidmachine/NetworkRegistry$$ExternalSyntheticLambda1;-><init>(Ljava/util/concurrent/CountDownLatch;)V

    .line 14
    invoke-static {p0, p1, v1, v2}, Lio/bidmachine/NetworkRegistry;->initializeNetwork(Lio/bidmachine/ContextProvider;Lio/bidmachine/InitializationParams;Lio/bidmachine/NetworkConfig;Lio/bidmachine/NetworkRegistry$c;)V

    goto :goto_14

    .line 20
    :cond_29
    :try_start_29
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_2c
    .catch Ljava/lang/InterruptedException; {:try_start_29 .. :try_end_2c} :catch_2d

    return-void

    :catch_2d
    move-exception p0

    .line 22
    invoke-static {p0}, Lio/bidmachine/core/Logger;->w(Ljava/lang/Throwable;)V

    :goto_31
    return-void
.end method

.method public static initializeNetworksSync(Landroid/content/Context;)V
    .registers 4

    .line 1
    sget-object v0, Lio/bidmachine/NetworkRegistry;->IS_NETWORKS_INITIALIZING_EXECUTED:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_b

    return-void

    .line 5
    :cond_b
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 6
    invoke-static {p0}, Lio/bidmachine/NetworkRegistry;->initializeNetworksAwait(Landroid/content/Context;)V

    return-void
.end method

.method public static isNetworkRegistered(Ljava/lang/String;)Z
    .registers 1

    .line 1
    invoke-static {p0}, Lio/bidmachine/NetworkRegistry;->getAdapter(Ljava/lang/String;)Lio/bidmachine/NetworkAdapter;

    move-result-object p0

    if-eqz p0, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_8
    const/4 p0, 0x0

    return p0
.end method

.method public static isNetworksInitializingExecuted()Z
    .registers 1

    .line 1
    sget-object v0, Lio/bidmachine/NetworkRegistry;->IS_NETWORKS_INITIALIZING_EXECUTED:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public static obtainAdapter(Lio/bidmachine/NetworkConfig;)Lio/bidmachine/NetworkAdapter;
    .registers 4

    .line 1
    const-class v0, Lio/bidmachine/NetworkRegistry;

    monitor-enter v0

    .line 2
    :try_start_3
    invoke-virtual {p0}, Lio/bidmachine/NetworkConfig;->getNetworkKey()Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-static {v1}, Lio/bidmachine/NetworkRegistry;->getAdapter(Ljava/lang/String;)Lio/bidmachine/NetworkAdapter;

    move-result-object v2

    if-eqz v2, :cond_11

    .line 5
    monitor-exit v0

    return-object v2

    :catchall_f
    move-exception p0

    goto :goto_1c

    .line 7
    :cond_11
    invoke-virtual {p0}, Lio/bidmachine/NetworkConfig;->createNetworkAdapter()Lio/bidmachine/NetworkAdapter;

    move-result-object p0

    .line 8
    sget-object v2, Lio/bidmachine/NetworkRegistry;->NETWORK_ADAPTER_MAP:Ljava/util/Map;

    invoke-interface {v2, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    monitor-exit v0

    return-object p0

    .line 10
    :goto_1c
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_f

    throw p0
.end method

.method public static registerAndInitializeCoreNetworks(Landroid/content/Context;)V
    .registers 6

    .line 1
    sget-object v0, Lio/bidmachine/NetworkRegistry;->IS_CORE_NETWORKS_INITIALIZED:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_9

    return-void

    .line 5
    :cond_9
    sget-object v1, Lio/bidmachine/NetworkRegistry;->CORE_INITIALIZING_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 6
    :try_start_c
    sget-object v2, Lio/bidmachine/NetworkRegistry;->IS_CORE_NETWORKS_INITIALIZING:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v2

    if-nez v2, :cond_1a

    .line 7
    monitor-exit v1

    return-void

    :catchall_18
    move-exception p0

    goto :goto_29

    .line 10
    :cond_1a
    invoke-static {}, Lio/bidmachine/NetworkRegistry;->registerCoreNetworks()V

    .line 11
    invoke-static {}, Lio/bidmachine/NetworkRegistry;->getCoreNetworkConfigList()Ljava/util/Collection;

    move-result-object v2

    invoke-static {p0, v2}, Lio/bidmachine/NetworkRegistry;->initializeNetworksAwait(Landroid/content/Context;Ljava/util/Collection;)V

    .line 12
    invoke-virtual {v0, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 13
    monitor-exit v1

    return-void

    .line 14
    :goto_29
    monitor-exit v1
    :try_end_2a
    .catchall {:try_start_c .. :try_end_2a} :catchall_18

    throw p0
.end method

.method public static registerCoreNetwork(Lio/bidmachine/NetworkConfig;)V
    .registers 4

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/NetworkConfig;->getNetworkKey()Ljava/lang/String;

    move-result-object v0

    .line 2
    sget-object v1, Lio/bidmachine/NetworkRegistry;->CORE_NETWORK_CONFIG_MAP:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    return-void

    .line 6
    :cond_d
    invoke-interface {v1, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    invoke-static {p0}, Lio/bidmachine/NetworkRegistry;->registerNetwork(Lio/bidmachine/NetworkConfig;)V

    return-void
.end method

.method public static registerCoreNetworks()V
    .registers 4

    .line 1
    new-instance v0, Lio/bidmachine/ads/networks/mraid/MraidConfig;

    invoke-direct {v0}, Lio/bidmachine/ads/networks/mraid/MraidConfig;-><init>()V

    sget-object v1, Lio/bidmachine/AdsFormat;->Banner:Lio/bidmachine/AdsFormat;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 2
    invoke-virtual {v0, v1, v2}, Lio/bidmachine/NetworkConfig;->withMediationConfig(Lio/bidmachine/AdsFormat;Ljava/util/Map;)Lio/bidmachine/NetworkConfig;

    move-result-object v0

    sget-object v2, Lio/bidmachine/AdsFormat;->InterstitialStatic:Lio/bidmachine/AdsFormat;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 3
    invoke-virtual {v0, v2, v3}, Lio/bidmachine/NetworkConfig;->withMediationConfig(Lio/bidmachine/AdsFormat;Ljava/util/Map;)Lio/bidmachine/NetworkConfig;

    move-result-object v0

    sget-object v2, Lio/bidmachine/AdsFormat;->RewardedStatic:Lio/bidmachine/AdsFormat;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 4
    invoke-virtual {v0, v2, v3}, Lio/bidmachine/NetworkConfig;->withMediationConfig(Lio/bidmachine/AdsFormat;Ljava/util/Map;)Lio/bidmachine/NetworkConfig;

    move-result-object v0

    .line 5
    invoke-static {v0}, Lio/bidmachine/NetworkRegistry;->registerCoreNetwork(Lio/bidmachine/NetworkConfig;)V

    .line 9
    new-instance v0, Lio/bidmachine/ads/networks/vast/VastConfig;

    invoke-direct {v0}, Lio/bidmachine/ads/networks/vast/VastConfig;-><init>()V

    sget-object v2, Lio/bidmachine/AdsFormat;->InterstitialVideo:Lio/bidmachine/AdsFormat;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 10
    invoke-virtual {v0, v2, v3}, Lio/bidmachine/NetworkConfig;->withMediationConfig(Lio/bidmachine/AdsFormat;Ljava/util/Map;)Lio/bidmachine/NetworkConfig;

    move-result-object v0

    sget-object v2, Lio/bidmachine/AdsFormat;->RewardedVideo:Lio/bidmachine/AdsFormat;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 11
    invoke-virtual {v0, v2, v3}, Lio/bidmachine/NetworkConfig;->withMediationConfig(Lio/bidmachine/AdsFormat;Ljava/util/Map;)Lio/bidmachine/NetworkConfig;

    move-result-object v0

    .line 12
    invoke-static {v0}, Lio/bidmachine/NetworkRegistry;->registerCoreNetwork(Lio/bidmachine/NetworkConfig;)V

    .line 15
    new-instance v0, Lio/bidmachine/ads/networks/nast/NastConfig;

    invoke-direct {v0}, Lio/bidmachine/ads/networks/nast/NastConfig;-><init>()V

    sget-object v2, Lio/bidmachine/AdsFormat;->Native:Lio/bidmachine/AdsFormat;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 16
    invoke-virtual {v0, v2, v3}, Lio/bidmachine/NetworkConfig;->withMediationConfig(Lio/bidmachine/AdsFormat;Ljava/util/Map;)Lio/bidmachine/NetworkConfig;

    move-result-object v0

    .line 17
    invoke-static {v0}, Lio/bidmachine/NetworkRegistry;->registerCoreNetwork(Lio/bidmachine/NetworkConfig;)V

    .line 19
    new-instance v0, Lio/bidmachine/ads/networks/adaptiverendering/AdaptiveRenderingConfig;

    invoke-direct {v0}, Lio/bidmachine/ads/networks/adaptiverendering/AdaptiveRenderingConfig;-><init>()V

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 20
    invoke-virtual {v0, v1, v2}, Lio/bidmachine/NetworkConfig;->withMediationConfig(Lio/bidmachine/AdsFormat;Ljava/util/Map;)Lio/bidmachine/NetworkConfig;

    move-result-object v0

    sget-object v1, Lio/bidmachine/AdsFormat;->Interstitial:Lio/bidmachine/AdsFormat;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 21
    invoke-virtual {v0, v1, v2}, Lio/bidmachine/NetworkConfig;->withMediationConfig(Lio/bidmachine/AdsFormat;Ljava/util/Map;)Lio/bidmachine/NetworkConfig;

    move-result-object v0

    sget-object v1, Lio/bidmachine/AdsFormat;->Rewarded:Lio/bidmachine/AdsFormat;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 22
    invoke-virtual {v0, v1, v2}, Lio/bidmachine/NetworkConfig;->withMediationConfig(Lio/bidmachine/AdsFormat;Ljava/util/Map;)Lio/bidmachine/NetworkConfig;

    move-result-object v0

    .line 23
    invoke-static {v0}, Lio/bidmachine/NetworkRegistry;->registerCoreNetwork(Lio/bidmachine/NetworkConfig;)V

    return-void
.end method

.method public static registerInitNetwork(Landroid/content/Context;Lio/bidmachine/protobuf/AdNetwork;)V
    .registers 3

    .line 1
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdNetwork;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/bidmachine/NetworkRegistry;->isNetworkRegistered(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_1d

    .line 4
    :cond_b
    invoke-static {p0, p1}, Lio/bidmachine/y;->a(Landroid/content/Context;Lio/bidmachine/protobuf/AdNetwork;)Lio/bidmachine/NetworkConfig;

    move-result-object p0

    if-eqz p0, :cond_1d

    .line 6
    sget-object p1, Lio/bidmachine/NetworkRegistry;->FROM_INIT_NETWORK_CONFIG_MAP:Ljava/util/Map;

    invoke-virtual {p0}, Lio/bidmachine/NetworkConfig;->getNetworkKey()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    invoke-static {p0}, Lio/bidmachine/NetworkRegistry;->registerNetwork(Lio/bidmachine/NetworkConfig;)V

    :cond_1d
    :goto_1d
    return-void
.end method

.method public static registerNetwork(Lio/bidmachine/NetworkConfig;)V
    .registers 4

    if-nez p0, :cond_3

    goto :goto_38

    .line 1
    :cond_3
    invoke-virtual {p0}, Lio/bidmachine/NetworkConfig;->getNetworkKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/bidmachine/NetworkRegistry;->isNetworkRegistered(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    goto :goto_38

    .line 4
    :cond_e
    invoke-static {p0}, Lio/bidmachine/NetworkRegistry;->obtainAdapter(Lio/bidmachine/NetworkConfig;)Lio/bidmachine/NetworkAdapter;

    .line 5
    sget-object v0, Lio/bidmachine/NetworkRegistry;->PENDING_NETWORK_CONFIG_MAP:Ljava/util/Map;

    invoke-virtual {p0}, Lio/bidmachine/NetworkConfig;->getNetworkKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    invoke-static {}, Lio/bidmachine/NetworkRegistry;->isNetworksInitializingExecuted()Z

    move-result v0

    if-eqz v0, :cond_38

    .line 7
    invoke-static {}, Lio/bidmachine/k;->b()Lio/bidmachine/k;

    move-result-object v0

    .line 8
    invoke-virtual {v0}, Lio/bidmachine/k;->d()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_2b

    goto :goto_38

    .line 12
    :cond_2b
    new-instance v2, Lio/bidmachine/SimpleContextProvider;

    invoke-direct {v2, v1}, Lio/bidmachine/SimpleContextProvider;-><init>(Landroid/content/Context;)V

    .line 13
    invoke-virtual {v0}, Lio/bidmachine/k;->a()Lio/bidmachine/InitializationParams;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v2, v0, p0, v1}, Lio/bidmachine/NetworkRegistry;->initializeNetwork(Lio/bidmachine/ContextProvider;Lio/bidmachine/InitializationParams;Lio/bidmachine/NetworkConfig;Lio/bidmachine/NetworkRegistry$c;)V

    :cond_38
    :goto_38
    return-void
.end method

.method public static registerNetworks(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    .line 3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_27

    .line 7
    :cond_7
    :try_start_7
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 8
    :goto_d
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge p1, v1, :cond_27

    .line 9
    invoke-virtual {v0, p1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 10
    invoke-static {p0, v1}, Lio/bidmachine/y;->a(Landroid/content/Context;Lorg/json/JSONObject;)Lio/bidmachine/NetworkConfig;

    move-result-object v1

    if-eqz v1, :cond_20

    .line 12
    invoke-static {v1}, Lio/bidmachine/NetworkRegistry;->registerNetwork(Lio/bidmachine/NetworkConfig;)V
    :try_end_20
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_20} :catch_23

    :cond_20
    add-int/lit8 p1, p1, 0x1

    goto :goto_d

    :catch_23
    move-exception p0

    .line 16
    invoke-static {p0}, Lio/bidmachine/core/Logger;->w(Ljava/lang/Throwable;)V

    :cond_27
    :goto_27
    return-void
.end method

.method public static registerNetworks(Landroid/content/Context;Ljava/lang/String;Lio/bidmachine/NetworkRegistryCallback;)V
    .registers 5

    .line 17
    invoke-static {}, Lio/bidmachine/p;->a()Lio/bidmachine/utils/task/TaskManager;

    move-result-object v0

    new-instance v1, Lio/bidmachine/NetworkRegistry$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p2}, Lio/bidmachine/NetworkRegistry$$ExternalSyntheticLambda0;-><init>(Landroid/content/Context;Ljava/lang/String;Lio/bidmachine/NetworkRegistryCallback;)V

    .line 18
    invoke-interface {v0, v1}, Lio/bidmachine/utils/task/TaskManager;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static varargs registerNetworks([Lio/bidmachine/NetworkConfig;)V
    .registers 4

    if-nez p0, :cond_3

    goto :goto_f

    .line 1
    :cond_3
    array-length v0, p0

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_f

    aget-object v2, p0, v1

    .line 2
    invoke-static {v2}, Lio/bidmachine/NetworkRegistry;->registerNetwork(Lio/bidmachine/NetworkConfig;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_f
    :goto_f
    return-void
.end method

.method public static reset()V
    .registers 2

    .line 1
    sget-object v0, Lio/bidmachine/NetworkRegistry;->NETWORK_ADAPTER_MAP:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 2
    sget-object v0, Lio/bidmachine/NetworkRegistry;->CORE_NETWORK_CONFIG_MAP:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 3
    sget-object v0, Lio/bidmachine/NetworkRegistry;->FROM_INIT_NETWORK_CONFIG_MAP:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 4
    sget-object v0, Lio/bidmachine/NetworkRegistry;->PENDING_NETWORK_CONFIG_MAP:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 5
    sget-object v0, Lio/bidmachine/NetworkRegistry;->INITIALIZING_NETWORK_CONFIG_MAP:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 6
    sget-object v0, Lio/bidmachine/NetworkRegistry;->INITIALIZED_NETWORK_CONFIG_MAP:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 7
    sget-object v0, Lio/bidmachine/NetworkRegistry;->INITIALIZED_CORE_NETWORK_CONFIG_TYPED_MAP:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 8
    sget-object v0, Lio/bidmachine/NetworkRegistry;->INITIALIZED_NETWORK_CONFIG_TYPED_MAP:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 9
    sget-object v0, Lio/bidmachine/NetworkRegistry;->IS_NETWORKS_INITIALIZING_EXECUTED:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 10
    sget-object v0, Lio/bidmachine/NetworkRegistry;->IS_CORE_NETWORKS_INITIALIZING:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 11
    sget-object v0, Lio/bidmachine/NetworkRegistry;->IS_CORE_NETWORKS_INITIALIZED:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 13
    sget-object v0, Lio/bidmachine/NetworkRegistry$b;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public static setLoggingEnabled(Z)V
    .registers 3

    .line 1
    sget-object v0, Lio/bidmachine/NetworkRegistry;->NETWORK_ADAPTER_MAP:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_25

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 3
    :try_start_16
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/bidmachine/NetworkAdapter;

    invoke-virtual {v1, p0}, Lio/bidmachine/NetworkAdapter;->setLogging(Z)V
    :try_end_1f
    .catchall {:try_start_16 .. :try_end_1f} :catchall_20

    goto :goto_a

    :catchall_20
    move-exception v1

    .line 5
    invoke-static {v1}, Lio/bidmachine/core/Logger;->w(Ljava/lang/Throwable;)V

    goto :goto_a

    :cond_25
    return-void
.end method

###### Class io.bidmachine.NetworkRegistry.a (io.bidmachine.NetworkRegistry$a)
.class public Lio/bidmachine/NetworkRegistry$a;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/NetworkRegistry;->initializeNetworksAsync(Landroid/content/Context;Lio/bidmachine/NetworkRegistry$c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/content/Context;

.field public final synthetic b:Lio/bidmachine/NetworkRegistry$c;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lio/bidmachine/NetworkRegistry$c;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lio/bidmachine/NetworkRegistry$a;->a:Landroid/content/Context;

    iput-object p2, p0, Lio/bidmachine/NetworkRegistry$a;->b:Lio/bidmachine/NetworkRegistry$c;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 1
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 3
    iget-object v0, p0, Lio/bidmachine/NetworkRegistry$a;->a:Landroid/content/Context;

    invoke-static {v0}, Lio/bidmachine/NetworkRegistry;->access$000(Landroid/content/Context;)V

    .line 4
    iget-object v0, p0, Lio/bidmachine/NetworkRegistry$a;->b:Lio/bidmachine/NetworkRegistry$c;

    if-eqz v0, :cond_f

    .line 5
    invoke-interface {v0}, Lio/bidmachine/NetworkRegistry$c;->a()V

    :cond_f
    return-void
.end method

###### Class io.bidmachine.NetworkRegistry.b (io.bidmachine.NetworkRegistry$b)
.class public final Lio/bidmachine/NetworkRegistry$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/NetworkRegistry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/NetworkRegistry$b$a;
    }
.end annotation


# static fields
.field public static final g:Ljava/util/concurrent/Executor;

.field public static final h:Ljava/lang/Object;

.field public static final i:Ljava/util/List;


# instance fields
.field public final a:Lio/bidmachine/ContextProvider;

.field public final b:Lio/bidmachine/InitializationParams;

.field public final c:Lio/bidmachine/NetworkConfig;

.field public final d:Lio/bidmachine/NetworkRegistry$c;

.field public final e:Ljava/lang/String;

.field public final f:Lio/bidmachine/tracking/TrackingObject;


# direct methods
.method public static synthetic $r8$lambda$VUYLuTEIdYyGw1-8qLoov4cqREM(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    .line 0
    invoke-static {p0}, Lio/bidmachine/NetworkRegistry$b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$WY7lwMhdn5xVT_QdvaOBsOv_Rb8(Lio/bidmachine/NetworkAdapter;)Ljava/lang/String;
    .registers 1

    .line 0
    invoke-static {p0}, Lio/bidmachine/NetworkRegistry$b;->a(Lio/bidmachine/NetworkAdapter;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 1
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    mul-int/lit8 v0, v0, 0x4

    const/16 v1, 0x8

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 2
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lio/bidmachine/NetworkRegistry$b;->g:Ljava/util/concurrent/Executor;

    .line 5
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lio/bidmachine/NetworkRegistry$b;->h:Ljava/lang/Object;

    .line 8
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    sput-object v0, Lio/bidmachine/NetworkRegistry$b;->i:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lio/bidmachine/ContextProvider;Lio/bidmachine/InitializationParams;Lio/bidmachine/NetworkConfig;Lio/bidmachine/NetworkRegistry$c;)V
    .registers 5

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lio/bidmachine/NetworkRegistry$b;->a:Lio/bidmachine/ContextProvider;

    .line 4
    iput-object p2, p0, Lio/bidmachine/NetworkRegistry$b;->b:Lio/bidmachine/InitializationParams;

    .line 5
    iput-object p3, p0, Lio/bidmachine/NetworkRegistry$b;->c:Lio/bidmachine/NetworkConfig;

    .line 6
    iput-object p4, p0, Lio/bidmachine/NetworkRegistry$b;->d:Lio/bidmachine/NetworkRegistry$c;

    .line 7
    invoke-virtual {p3}, Lio/bidmachine/NetworkConfig;->getNetworkKey()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/NetworkRegistry$b;->e:Ljava/lang/String;

    .line 8
    new-instance p2, Lio/bidmachine/BidMachineTrackingObject;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "_initialize"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lio/bidmachine/BidMachineTrackingObject;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lio/bidmachine/NetworkRegistry$b;->f:Lio/bidmachine/tracking/TrackingObject;

    return-void
.end method

.method public synthetic constructor <init>(Lio/bidmachine/ContextProvider;Lio/bidmachine/InitializationParams;Lio/bidmachine/NetworkConfig;Lio/bidmachine/NetworkRegistry$c;Lio/bidmachine/NetworkRegistry$a;)V
    .registers 6

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lio/bidmachine/NetworkRegistry$b;-><init>(Lio/bidmachine/ContextProvider;Lio/bidmachine/InitializationParams;Lio/bidmachine/NetworkConfig;Lio/bidmachine/NetworkRegistry$c;)V

    return-void
.end method

.method public static synthetic a(Lio/bidmachine/NetworkAdapter;)Ljava/lang/String;
    .registers 2

    .line 7
    invoke-virtual {p0}, Lio/bidmachine/NetworkAdapter;->obtainNetworkSdkVersion()Ljava/lang/String;

    move-result-object v0

    .line 8
    invoke-virtual {p0}, Lio/bidmachine/NetworkAdapter;->getAdapterVersion()Ljava/lang/String;

    move-result-object p0

    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    .line 9
    const-string v0, "Initialization completed: %s, %s"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic a(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 10
    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "Initialization error: %s"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public a()V
    .registers 2

    .line 1
    sget-object v0, Lio/bidmachine/NetworkRegistry$b;->i:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3
    :try_start_5
    sget-object v0, Lio/bidmachine/NetworkRegistry$b;->g:Ljava/util/concurrent/Executor;

    invoke-interface {v0, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_a
    .catchall {:try_start_5 .. :try_end_a} :catchall_b

    return-void

    :catchall_b
    move-exception v0

    .line 5
    invoke-static {v0}, Lio/bidmachine/core/Logger;->w(Ljava/lang/Throwable;)V

    .line 6
    const-string v0, "Exception creating network initialization task"

    invoke-virtual {p0, v0}, Lio/bidmachine/NetworkRegistry$b;->b(Ljava/lang/String;)V

    return-void
.end method

.method public final a(Ljava/util/Map;Lio/bidmachine/AdsType;Ljava/lang/String;Lio/bidmachine/NetworkConfig;)V
    .registers 6

    .line 11
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-nez v0, :cond_10

    .line 13
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 14
    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    :cond_10
    invoke-interface {v0, p3, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public b(Lio/bidmachine/NetworkAdapter;)V
    .registers 5

    .line 1
    iget-object v0, p0, Lio/bidmachine/NetworkRegistry$b;->e:Ljava/lang/String;

    new-instance v1, Lio/bidmachine/NetworkRegistry$b$$ExternalSyntheticLambda1;

    invoke-direct {v1, p1}, Lio/bidmachine/NetworkRegistry$b$$ExternalSyntheticLambda1;-><init>(Lio/bidmachine/NetworkAdapter;)V

    invoke-static {v0, v1}, Lio/bidmachine/core/Logger;->d(Ljava/lang/Object;Lio/bidmachine/utils/lazy/LazyValue;)V

    .line 4
    instance-of p1, p1, Lio/bidmachine/HeaderBiddingAdapter;

    if-eqz p1, :cond_22

    .line 5
    iget-object p1, p0, Lio/bidmachine/NetworkRegistry$b;->f:Lio/bidmachine/tracking/TrackingObject;

    sget-object v0, Lio/bidmachine/TrackEventType;->HeaderBiddingNetworkInitialize:Lio/bidmachine/TrackEventType;

    new-instance v1, Lio/bidmachine/tracking/EventData;

    invoke-direct {v1}, Lio/bidmachine/tracking/EventData;-><init>()V

    iget-object v2, p0, Lio/bidmachine/NetworkRegistry$b;->e:Ljava/lang/String;

    .line 7
    invoke-virtual {v1, v2}, Lio/bidmachine/tracking/EventData;->setNetworkName(Ljava/lang/String;)Lio/bidmachine/tracking/EventData;

    move-result-object v1

    const/4 v2, 0x0

    .line 8
    invoke-interface {p1, v0, v2, v1, v2}, Lio/bidmachine/tracking/TrackingObject;->eventFinish(Lio/bidmachine/TrackEventType;Lio/bidmachine/AdsType;Lio/bidmachine/tracking/EventData;Lio/bidmachine/utils/BMError;)V

    goto :goto_29

    .line 13
    :cond_22
    iget-object p1, p0, Lio/bidmachine/NetworkRegistry$b;->f:Lio/bidmachine/tracking/TrackingObject;

    sget-object v0, Lio/bidmachine/TrackEventType;->HeaderBiddingNetworkInitialize:Lio/bidmachine/TrackEventType;

    invoke-interface {p1, v0}, Lio/bidmachine/tracking/TrackingObject;->clearEvent(Lio/bidmachine/TrackEventType;)V

    .line 15
    :goto_29
    sget-object p1, Lio/bidmachine/NetworkRegistry$b;->i:Ljava/util/List;

    invoke-interface {p1, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .registers 6

    .line 16
    iget-object v0, p0, Lio/bidmachine/NetworkRegistry$b;->e:Ljava/lang/String;

    new-instance v1, Lio/bidmachine/NetworkRegistry$b$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Lio/bidmachine/NetworkRegistry$b$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lio/bidmachine/core/Logger;->e(Ljava/lang/Object;Lio/bidmachine/utils/lazy/LazyValue;)V

    .line 17
    iget-object v0, p0, Lio/bidmachine/NetworkRegistry$b;->f:Lio/bidmachine/tracking/TrackingObject;

    sget-object v1, Lio/bidmachine/TrackEventType;->HeaderBiddingNetworkInitialize:Lio/bidmachine/TrackEventType;

    new-instance v2, Lio/bidmachine/tracking/EventData;

    invoke-direct {v2}, Lio/bidmachine/tracking/EventData;-><init>()V

    iget-object v3, p0, Lio/bidmachine/NetworkRegistry$b;->e:Ljava/lang/String;

    .line 19
    invoke-virtual {v2, v3}, Lio/bidmachine/tracking/EventData;->setNetworkName(Ljava/lang/String;)Lio/bidmachine/tracking/EventData;

    move-result-object v2

    .line 20
    invoke-static {p1}, Lio/bidmachine/utils/BMError;->adapterInitialization(Ljava/lang/String;)Lio/bidmachine/utils/BMError;

    move-result-object p1

    const/4 v3, 0x0

    .line 21
    invoke-interface {v0, v1, v3, v2, p1}, Lio/bidmachine/tracking/TrackingObject;->eventFinish(Lio/bidmachine/TrackEventType;Lio/bidmachine/AdsType;Lio/bidmachine/tracking/EventData;Lio/bidmachine/utils/BMError;)V

    .line 25
    sget-object p1, Lio/bidmachine/NetworkRegistry$b;->i:Ljava/util/List;

    invoke-interface {p1, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public run()V
    .registers 9

    .line 1
    iget-object v0, p0, Lio/bidmachine/NetworkRegistry$b;->e:Ljava/lang/String;

    const-string v1, "Initialization started"

    invoke-static {v0, v1}, Lio/bidmachine/core/Logger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    :try_start_7
    iget-object v0, p0, Lio/bidmachine/NetworkRegistry$b;->f:Lio/bidmachine/tracking/TrackingObject;

    sget-object v1, Lio/bidmachine/TrackEventType;->HeaderBiddingNetworkInitialize:Lio/bidmachine/TrackEventType;

    new-instance v2, Lio/bidmachine/tracking/TrackEventInfo;

    invoke-direct {v2}, Lio/bidmachine/tracking/TrackEventInfo;-><init>()V

    const-string v3, "HB_NETWORK"

    iget-object v4, p0, Lio/bidmachine/NetworkRegistry$b;->e:Ljava/lang/String;

    .line 5
    invoke-virtual {v2, v3, v4}, Lio/bidmachine/tracking/TrackEventInfo;->withParameter(Ljava/lang/String;Ljava/lang/Object;)Lio/bidmachine/tracking/TrackEventInfo;

    move-result-object v2

    .line 6
    invoke-interface {v0, v1, v2}, Lio/bidmachine/tracking/TrackingObject;->eventStart(Lio/bidmachine/TrackEventType;Lio/bidmachine/tracking/TrackEventInfo;)V

    .line 9
    iget-object v0, p0, Lio/bidmachine/NetworkRegistry$b;->c:Lio/bidmachine/NetworkConfig;

    invoke-static {v0}, Lio/bidmachine/NetworkRegistry;->obtainAdapter(Lio/bidmachine/NetworkConfig;)Lio/bidmachine/NetworkAdapter;

    move-result-object v0

    .line 10
    invoke-static {}, Lio/bidmachine/core/Logger;->isLoggingEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Lio/bidmachine/NetworkAdapter;->setLogging(Z)V

    .line 11
    iget-object v1, p0, Lio/bidmachine/NetworkRegistry$b;->a:Lio/bidmachine/ContextProvider;

    iget-object v2, p0, Lio/bidmachine/NetworkRegistry$b;->b:Lio/bidmachine/InitializationParams;

    iget-object v3, p0, Lio/bidmachine/NetworkRegistry$b;->c:Lio/bidmachine/NetworkConfig;

    .line 13
    invoke-virtual {v3}, Lio/bidmachine/NetworkConfig;->getNetworkConfigParams()Lio/bidmachine/NetworkConfigParams;

    move-result-object v3

    new-instance v4, Lio/bidmachine/NetworkRegistry$b$a;

    invoke-direct {v4, p0}, Lio/bidmachine/NetworkRegistry$b$a;-><init>(Lio/bidmachine/NetworkRegistry$b;)V

    .line 14
    invoke-virtual {v0, v1, v2, v3, v4}, Lio/bidmachine/NetworkAdapter;->initialize(Lio/bidmachine/ContextProvider;Lio/bidmachine/InitializationParams;Lio/bidmachine/NetworkConfigParams;Lio/bidmachine/InternalNetworkInitializationCallback;)V

    .line 18
    sget-object v1, Lio/bidmachine/NetworkRegistry;->INITIALIZED_NETWORK_CONFIG_MAP:Ljava/util/Map;

    iget-object v2, p0, Lio/bidmachine/NetworkRegistry$b;->e:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4e

    .line 19
    iget-object v2, p0, Lio/bidmachine/NetworkRegistry$b;->e:Ljava/lang/String;

    iget-object v3, p0, Lio/bidmachine/NetworkRegistry$b;->c:Lio/bidmachine/NetworkConfig;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4e

    :catchall_4c
    move-exception v0

    goto :goto_8a

    .line 21
    :cond_4e
    :goto_4e
    iget-object v1, p0, Lio/bidmachine/NetworkRegistry$b;->c:Lio/bidmachine/NetworkConfig;

    invoke-virtual {v1, v0}, Lio/bidmachine/NetworkConfig;->getSupportedAdsTypes(Lio/bidmachine/NetworkAdapter;)[Lio/bidmachine/AdsType;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_56
    if-ge v2, v1, :cond_82

    aget-object v3, v0, v2

    .line 23
    sget-object v4, Lio/bidmachine/NetworkRegistry$b;->h:Ljava/lang/Object;

    monitor-enter v4
    :try_end_5d
    .catchall {:try_start_7 .. :try_end_5d} :catchall_4c

    .line 24
    :try_start_5d
    sget-object v5, Lio/bidmachine/NetworkRegistry;->CORE_NETWORK_CONFIG_MAP:Ljava/util/Map;

    iget-object v6, p0, Lio/bidmachine/NetworkRegistry$b;->e:Ljava/lang/String;

    invoke-interface {v5, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_73

    .line 25
    sget-object v5, Lio/bidmachine/NetworkRegistry;->INITIALIZED_CORE_NETWORK_CONFIG_TYPED_MAP:Ljava/util/Map;

    iget-object v6, p0, Lio/bidmachine/NetworkRegistry$b;->e:Ljava/lang/String;

    iget-object v7, p0, Lio/bidmachine/NetworkRegistry$b;->c:Lio/bidmachine/NetworkConfig;

    invoke-virtual {p0, v5, v3, v6, v7}, Lio/bidmachine/NetworkRegistry$b;->a(Ljava/util/Map;Lio/bidmachine/AdsType;Ljava/lang/String;Lio/bidmachine/NetworkConfig;)V

    goto :goto_73

    :catchall_71
    move-exception v0

    goto :goto_80

    .line 30
    :cond_73
    :goto_73
    sget-object v5, Lio/bidmachine/NetworkRegistry;->INITIALIZED_NETWORK_CONFIG_TYPED_MAP:Ljava/util/Map;

    iget-object v6, p0, Lio/bidmachine/NetworkRegistry$b;->e:Ljava/lang/String;

    iget-object v7, p0, Lio/bidmachine/NetworkRegistry$b;->c:Lio/bidmachine/NetworkConfig;

    invoke-virtual {p0, v5, v3, v6, v7}, Lio/bidmachine/NetworkRegistry$b;->a(Ljava/util/Map;Lio/bidmachine/AdsType;Ljava/lang/String;Lio/bidmachine/NetworkConfig;)V

    .line 34
    monitor-exit v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_56

    .line 35
    :goto_80
    monitor-exit v4
    :try_end_81
    .catchall {:try_start_5d .. :try_end_81} :catchall_71

    :try_start_81
    throw v0

    .line 37
    :cond_82
    sget-object v0, Lio/bidmachine/NetworkRegistry;->PENDING_NETWORK_CONFIG_MAP:Ljava/util/Map;

    iget-object v1, p0, Lio/bidmachine/NetworkRegistry$b;->e:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_89
    .catchall {:try_start_81 .. :try_end_89} :catchall_4c

    goto :goto_92

    .line 39
    :goto_8a
    invoke-static {v0}, Lio/bidmachine/core/Logger;->w(Ljava/lang/Throwable;)V

    .line 40
    const-string v0, "Network initialization exception"

    invoke-virtual {p0, v0}, Lio/bidmachine/NetworkRegistry$b;->b(Ljava/lang/String;)V

    .line 43
    :goto_92
    iget-object v0, p0, Lio/bidmachine/NetworkRegistry$b;->d:Lio/bidmachine/NetworkRegistry$c;

    if-eqz v0, :cond_99

    .line 44
    invoke-interface {v0}, Lio/bidmachine/NetworkRegistry$c;->a()V

    :cond_99
    return-void
.end method

###### Class io.bidmachine.NetworkRegistry.b.a (io.bidmachine.NetworkRegistry$b$a)
.class public Lio/bidmachine/NetworkRegistry$b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/bidmachine/InternalNetworkInitializationCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/NetworkRegistry$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final a:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Lio/bidmachine/NetworkRegistry$b;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lio/bidmachine/NetworkRegistry$b$a;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public onFail(Lio/bidmachine/NetworkAdapter;Ljava/lang/String;)V
    .registers 3

    .line 1
    iget-object p1, p0, Lio/bidmachine/NetworkRegistry$b$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/bidmachine/NetworkRegistry$b;

    if-eqz p1, :cond_d

    .line 3
    invoke-virtual {p1, p2}, Lio/bidmachine/NetworkRegistry$b;->b(Ljava/lang/String;)V

    :cond_d
    return-void
.end method

.method public onSuccess(Lio/bidmachine/NetworkAdapter;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lio/bidmachine/NetworkRegistry$b$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/bidmachine/NetworkRegistry$b;

    if-eqz v0, :cond_d

    .line 3
    invoke-virtual {v0, p1}, Lio/bidmachine/NetworkRegistry$b;->b(Lio/bidmachine/NetworkAdapter;)V

    :cond_d
    return-void
.end method

###### Class io.bidmachine.NetworkRegistry$b$$ExternalSyntheticLambda0 (io.bidmachine.NetworkRegistry$b$$ExternalSyntheticLambda0)
.class public final synthetic Lio/bidmachine/NetworkRegistry$b$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/bidmachine/utils/lazy/LazyValue;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/NetworkRegistry$b$$ExternalSyntheticLambda0;->f$0:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 2

    .line 0
    iget-object v0, p0, Lio/bidmachine/NetworkRegistry$b$$ExternalSyntheticLambda0;->f$0:Ljava/lang/String;

    invoke-static {v0}, Lio/bidmachine/NetworkRegistry$b;->$r8$lambda$VUYLuTEIdYyGw1-8qLoov4cqREM(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class io.bidmachine.NetworkRegistry$b$$ExternalSyntheticLambda1 (io.bidmachine.NetworkRegistry$b$$ExternalSyntheticLambda1)
.class public final synthetic Lio/bidmachine/NetworkRegistry$b$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/bidmachine/utils/lazy/LazyValue;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/NetworkAdapter;


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/NetworkAdapter;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/NetworkRegistry$b$$ExternalSyntheticLambda1;->f$0:Lio/bidmachine/NetworkAdapter;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 2

    .line 0
    iget-object v0, p0, Lio/bidmachine/NetworkRegistry$b$$ExternalSyntheticLambda1;->f$0:Lio/bidmachine/NetworkAdapter;

    invoke-static {v0}, Lio/bidmachine/NetworkRegistry$b;->$r8$lambda$WY7lwMhdn5xVT_QdvaOBsOv_Rb8(Lio/bidmachine/NetworkAdapter;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class io.bidmachine.NetworkRegistry.c (io.bidmachine.NetworkRegistry$c)
.class public interface abstract Lio/bidmachine/NetworkRegistry$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/NetworkRegistry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "c"
.end annotation


# virtual methods
.method public abstract a()V
.end method

###### Class io.bidmachine.NetworkRegistry$$ExternalSyntheticLambda0 (io.bidmachine.NetworkRegistry$$ExternalSyntheticLambda0)
.class public final synthetic Lio/bidmachine/NetworkRegistry$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/bidmachine/internal/p;


# instance fields
.field public final synthetic f$0:Landroid/content/Context;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Lio/bidmachine/NetworkRegistryCallback;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Ljava/lang/String;Lio/bidmachine/NetworkRegistryCallback;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/NetworkRegistry$$ExternalSyntheticLambda0;->f$0:Landroid/content/Context;

    iput-object p2, p0, Lio/bidmachine/NetworkRegistry$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lio/bidmachine/NetworkRegistry$$ExternalSyntheticLambda0;->f$2:Lio/bidmachine/NetworkRegistryCallback;

    return-void
.end method


# virtual methods
.method public final onRun()V
    .registers 4

    .line 0
    iget-object v0, p0, Lio/bidmachine/NetworkRegistry$$ExternalSyntheticLambda0;->f$0:Landroid/content/Context;

    iget-object v1, p0, Lio/bidmachine/NetworkRegistry$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lio/bidmachine/NetworkRegistry$$ExternalSyntheticLambda0;->f$2:Lio/bidmachine/NetworkRegistryCallback;

    invoke-static {v0, v1, v2}, Lio/bidmachine/NetworkRegistry;->$r8$lambda$fVHrmvqrB19tcf-LU07zMmh14_U(Landroid/content/Context;Ljava/lang/String;Lio/bidmachine/NetworkRegistryCallback;)V

    return-void
.end method

###### Class io.bidmachine.NetworkRegistry$$ExternalSyntheticLambda1 (io.bidmachine.NetworkRegistry$$ExternalSyntheticLambda1)
.class public final synthetic Lio/bidmachine/NetworkRegistry$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/bidmachine/NetworkRegistry$c;


# instance fields
.field public final synthetic f$0:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method public synthetic constructor <init>(Ljava/util/concurrent/CountDownLatch;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/NetworkRegistry$$ExternalSyntheticLambda1;->f$0:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 2

    .line 0
    iget-object v0, p0, Lio/bidmachine/NetworkRegistry$$ExternalSyntheticLambda1;->f$0:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

###### Class io.bidmachine.NetworkRegistry$$ExternalSyntheticLambda2 (io.bidmachine.NetworkRegistry$$ExternalSyntheticLambda2)
.class public final synthetic Lio/bidmachine/NetworkRegistry$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/NetworkRegistryCallback;


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/NetworkRegistryCallback;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/NetworkRegistry$$ExternalSyntheticLambda2;->f$0:Lio/bidmachine/NetworkRegistryCallback;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Lio/bidmachine/NetworkRegistry$$ExternalSyntheticLambda2;->f$0:Lio/bidmachine/NetworkRegistryCallback;

    invoke-static {v0}, Lio/bidmachine/NetworkRegistry;->$r8$lambda$rXziGQ9LwQ50E7UkrLDdZkjVSkA(Lio/bidmachine/NetworkRegistryCallback;)V

    return-void
.end method
