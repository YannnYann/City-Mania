###### Class io.bidmachine.ExtraParamsManager (io.bidmachine.ExtraParamsManager)
.class public Lio/bidmachine/ExtraParamsManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final KEY_MRAID_JS:Ljava/lang/String; = "mraid_js"

.field private static volatile instance:Lio/bidmachine/ExtraParamsManager;


# instance fields
.field private final internalDataRetriever:Lio/bidmachine/utils/data/StructDataRetriever;

.field private final isExtrasPrepared:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final loadFromStoreLock:Ljava/lang/Object;

.field private final needLoadFromStore:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private privateExtras:Lcom/explorestack/protobuf/Struct;

.field private final publicDataRetriever:Lio/bidmachine/utils/data/StructDataRetriever;

.field private final updateExtrasLock:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lio/bidmachine/ExtraParamsManager;->isExtrasPrepared:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 3
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lio/bidmachine/ExtraParamsManager;->needLoadFromStore:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 4
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lio/bidmachine/ExtraParamsManager;->loadFromStoreLock:Ljava/lang/Object;

    .line 5
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lio/bidmachine/ExtraParamsManager;->updateExtrasLock:Ljava/lang/Object;

    .line 6
    new-instance v0, Lio/bidmachine/utils/data/StructDataRetriever;

    invoke-direct {v0}, Lio/bidmachine/utils/data/StructDataRetriever;-><init>()V

    iput-object v0, p0, Lio/bidmachine/ExtraParamsManager;->publicDataRetriever:Lio/bidmachine/utils/data/StructDataRetriever;

    .line 7
    new-instance v0, Lio/bidmachine/utils/data/StructDataRetriever;

    invoke-direct {v0}, Lio/bidmachine/utils/data/StructDataRetriever;-><init>()V

    iput-object v0, p0, Lio/bidmachine/ExtraParamsManager;->internalDataRetriever:Lio/bidmachine/utils/data/StructDataRetriever;

    return-void
.end method

.method private checkAndPrepareExtras(Landroid/content/Context;Lio/bidmachine/protobuf/Extras;)V
    .registers 5

    .line 1
    iget-object v0, p0, Lio/bidmachine/ExtraParamsManager;->updateExtrasLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_3
    invoke-virtual {p0}, Lio/bidmachine/ExtraParamsManager;->isExtrasPrepared()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 3
    monitor-exit v0

    return-void

    :catchall_b
    move-exception p1

    goto :goto_12

    .line 6
    :cond_d
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/ExtraParamsManager;->setExtras(Landroid/content/Context;Lio/bidmachine/protobuf/Extras;)V

    .line 7
    monitor-exit v0

    return-void

    .line 8
    :goto_12
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_b

    throw p1
.end method

.method public static get()Lio/bidmachine/ExtraParamsManager;
    .registers 2

    .line 1
    sget-object v0, Lio/bidmachine/ExtraParamsManager;->instance:Lio/bidmachine/ExtraParamsManager;

    if-nez v0, :cond_19

    .line 3
    const-class v1, Lio/bidmachine/ExtraParamsManager;

    monitor-enter v1

    .line 4
    :try_start_7
    sget-object v0, Lio/bidmachine/ExtraParamsManager;->instance:Lio/bidmachine/ExtraParamsManager;

    if-nez v0, :cond_15

    .line 6
    new-instance v0, Lio/bidmachine/ExtraParamsManager;

    invoke-direct {v0}, Lio/bidmachine/ExtraParamsManager;-><init>()V

    .line 7
    sput-object v0, Lio/bidmachine/ExtraParamsManager;->instance:Lio/bidmachine/ExtraParamsManager;

    goto :goto_15

    :catchall_13
    move-exception v0

    goto :goto_17

    .line 9
    :cond_15
    :goto_15
    monitor-exit v1

    return-object v0

    :goto_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_7 .. :try_end_18} :catchall_13

    throw v0

    :cond_19
    return-object v0
.end method


# virtual methods
.method public getInternalDataRetriever(Landroid/content/Context;)Lio/bidmachine/utils/data/StructDataRetriever;
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lio/bidmachine/ExtraParamsManager;->loadFromStore(Landroid/content/Context;)V

    .line 2
    iget-object p1, p0, Lio/bidmachine/ExtraParamsManager;->internalDataRetriever:Lio/bidmachine/utils/data/StructDataRetriever;

    return-object p1
.end method

.method public getPrivateStruct(Landroid/content/Context;)Lcom/explorestack/protobuf/Struct;
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lio/bidmachine/ExtraParamsManager;->loadFromStore(Landroid/content/Context;)V

    .line 2
    iget-object p1, p0, Lio/bidmachine/ExtraParamsManager;->privateExtras:Lcom/explorestack/protobuf/Struct;

    return-object p1
.end method

.method public getPublic(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;
    .registers 3

    .line 1
    invoke-virtual {p0, p1}, Lio/bidmachine/ExtraParamsManager;->loadFromStore(Landroid/content/Context;)V

    .line 2
    iget-object p1, p0, Lio/bidmachine/ExtraParamsManager;->publicDataRetriever:Lio/bidmachine/utils/data/StructDataRetriever;

    invoke-interface {p1, p2}, Lio/bidmachine/utils/data/DataRetriever;->getObjectOrNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public isExtrasPrepared()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/ExtraParamsManager;->isExtrasPrepared:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public loadFromStore(Landroid/content/Context;)V
    .registers 6

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/ExtraParamsManager;->isExtrasPrepared()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 5
    :cond_7
    iget-object v0, p0, Lio/bidmachine/ExtraParamsManager;->loadFromStoreLock:Ljava/lang/Object;

    monitor-enter v0

    .line 6
    :try_start_a
    iget-object v1, p0, Lio/bidmachine/ExtraParamsManager;->needLoadFromStore:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    if-nez v1, :cond_18

    .line 7
    monitor-exit v0

    return-void

    :catchall_16
    move-exception p1

    goto :goto_21

    .line 11
    :cond_18
    invoke-static {p1}, Lio/bidmachine/n;->i(Landroid/content/Context;)Lio/bidmachine/protobuf/Extras;

    move-result-object v1

    .line 12
    invoke-direct {p0, p1, v1}, Lio/bidmachine/ExtraParamsManager;->checkAndPrepareExtras(Landroid/content/Context;Lio/bidmachine/protobuf/Extras;)V

    .line 14
    monitor-exit v0

    return-void

    .line 15
    :goto_21
    monitor-exit v0
    :try_end_22
    .catchall {:try_start_a .. :try_end_22} :catchall_16

    throw p1
.end method

.method public setExtras(Landroid/content/Context;Lio/bidmachine/protobuf/Extras;)V
    .registers 6

    .line 1
    iget-object v0, p0, Lio/bidmachine/ExtraParamsManager;->isExtrasPrepared:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 2
    iget-object v0, p0, Lio/bidmachine/ExtraParamsManager;->needLoadFromStore:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 3
    iget-object v0, p0, Lio/bidmachine/ExtraParamsManager;->updateExtrasLock:Ljava/lang/Object;

    monitor-enter v0

    if-nez p2, :cond_25

    .line 5
    :try_start_11
    iget-object p2, p0, Lio/bidmachine/ExtraParamsManager;->publicDataRetriever:Lio/bidmachine/utils/data/StructDataRetriever;

    invoke-virtual {p2}, Lio/bidmachine/utils/data/MapDataRetriever;->clear()V

    .line 6
    iget-object p2, p0, Lio/bidmachine/ExtraParamsManager;->internalDataRetriever:Lio/bidmachine/utils/data/StructDataRetriever;

    invoke-virtual {p2}, Lio/bidmachine/utils/data/MapDataRetriever;->clear()V

    const/4 p2, 0x0

    .line 7
    iput-object p2, p0, Lio/bidmachine/ExtraParamsManager;->privateExtras:Lcom/explorestack/protobuf/Struct;

    .line 8
    invoke-static {p1}, Lio/bidmachine/n;->c(Landroid/content/Context;)V

    .line 9
    monitor-exit v0

    return-void

    :catchall_23
    move-exception p1

    goto :goto_42

    .line 12
    :cond_25
    iget-object v1, p0, Lio/bidmachine/ExtraParamsManager;->publicDataRetriever:Lio/bidmachine/utils/data/StructDataRetriever;

    invoke-virtual {p2}, Lio/bidmachine/protobuf/Extras;->getPublic()Lcom/explorestack/protobuf/Struct;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/bidmachine/utils/data/StructDataRetriever;->setStruct(Lcom/explorestack/protobuf/Struct;)V

    .line 13
    iget-object v1, p0, Lio/bidmachine/ExtraParamsManager;->internalDataRetriever:Lio/bidmachine/utils/data/StructDataRetriever;

    invoke-virtual {p2}, Lio/bidmachine/protobuf/Extras;->getInternal()Lcom/explorestack/protobuf/Struct;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/bidmachine/utils/data/StructDataRetriever;->setStruct(Lcom/explorestack/protobuf/Struct;)V

    .line 14
    invoke-virtual {p2}, Lio/bidmachine/protobuf/Extras;->getPrivate()Lcom/explorestack/protobuf/Struct;

    move-result-object v1

    iput-object v1, p0, Lio/bidmachine/ExtraParamsManager;->privateExtras:Lcom/explorestack/protobuf/Struct;

    .line 15
    invoke-static {p1, p2}, Lio/bidmachine/n;->a(Landroid/content/Context;Lio/bidmachine/protobuf/Extras;)V

    .line 16
    monitor-exit v0

    return-void

    .line 17
    :goto_42
    monitor-exit v0
    :try_end_43
    .catchall {:try_start_11 .. :try_end_43} :catchall_23

    throw p1
.end method
