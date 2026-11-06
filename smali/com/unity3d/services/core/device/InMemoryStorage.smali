###### Class com.unity3d.services.core.device.InMemoryStorage (com.unity3d.services.core.device.InMemoryStorage)
.class public final Lcom/unity3d/services/core/device/InMemoryStorage;
.super Lcom/unity3d/services/core/device/Storage;
.source "InMemoryStorage.kt"


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 3
    const-string v0, ""

    sget-object v1, Lcom/unity3d/services/core/device/StorageManager$StorageType;->MEMORY:Lcom/unity3d/services/core/device/StorageManager$StorageType;

    invoke-direct {p0, v0, v1}, Lcom/unity3d/services/core/device/Storage;-><init>(Ljava/lang/String;Lcom/unity3d/services/core/device/StorageManager$StorageType;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized clearStorage()Z
    .registers 2

    monitor-enter p0

    .line 16
    :try_start_1
    invoke-virtual {p0}, Lcom/unity3d/services/core/misc/JsonStorage;->clearData()V
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_7

    .line 17
    monitor-exit p0

    const/4 v0, 0x1

    return v0

    :catchall_7
    move-exception v0

    :try_start_8
    monitor-exit p0
    :try_end_9
    .catchall {:try_start_8 .. :try_end_9} :catchall_7

    throw v0
.end method

.method public declared-synchronized readStorage()Z
    .registers 2

    monitor-enter p0

    .line 6
    monitor-exit p0

    const/4 v0, 0x1

    return v0
.end method

.method public declared-synchronized writeStorage()Z
    .registers 2

    monitor-enter p0

    .line 11
    monitor-exit p0

    const/4 v0, 0x1

    return v0
.end method
