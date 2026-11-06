###### Class com.badlogic.gdx.utils.GdxNativesLoader (com.badlogic.gdx.utils.GdxNativesLoader)
.class public Lcom/badlogic/gdx/utils/GdxNativesLoader;
.super Ljava/lang/Object;
.source "GdxNativesLoader.java"


# static fields
.field public static disableNativesLoading:Z = false

.field public static nativesLoaded:Z


# direct methods
.method static constructor <clinit>()V
    .registers 0

    .line 0
    return-void
.end method

.method public static declared-synchronized load()V
    .registers 3

    const-class v0, Lcom/badlogic/gdx/utils/GdxNativesLoader;

    monitor-enter v0

    .line 26
    :try_start_3
    sget-boolean v1, Lcom/badlogic/gdx/utils/GdxNativesLoader;->nativesLoaded:Z
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_1e

    if-eqz v1, :cond_9

    monitor-exit v0

    return-void

    .line 28
    :cond_9
    :try_start_9
    sget-boolean v1, Lcom/badlogic/gdx/utils/GdxNativesLoader;->disableNativesLoading:Z
    :try_end_b
    .catchall {:try_start_9 .. :try_end_b} :catchall_1e

    if-eqz v1, :cond_f

    monitor-exit v0

    return-void

    .line 30
    :cond_f
    :try_start_f
    new-instance v1, Lcom/badlogic/gdx/utils/SharedLibraryLoader;

    invoke-direct {v1}, Lcom/badlogic/gdx/utils/SharedLibraryLoader;-><init>()V

    const-string v2, "gdx"

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/utils/SharedLibraryLoader;->load(Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 31
    sput-boolean v1, Lcom/badlogic/gdx/utils/GdxNativesLoader;->nativesLoaded:Z
    :try_end_1c
    .catchall {:try_start_f .. :try_end_1c} :catchall_1e

    .line 32
    monitor-exit v0

    return-void

    :catchall_1e
    move-exception v1

    :try_start_1f
    monitor-exit v0
    :try_end_20
    .catchall {:try_start_1f .. :try_end_20} :catchall_1e

    throw v1
.end method
