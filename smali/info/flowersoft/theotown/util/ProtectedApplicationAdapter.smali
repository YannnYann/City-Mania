###### Class info.flowersoft.theotown.util.ProtectedApplicationAdapter (info.flowersoft.theotown.util.ProtectedApplicationAdapter)
.class public Linfo/flowersoft/theotown/util/ProtectedApplicationAdapter;
.super Ljava/lang/Object;
.source "ProtectedApplicationAdapter.kt"

# interfaces
.implements Lcom/badlogic/gdx/ApplicationListener;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nProtectedApplicationAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ProtectedApplicationAdapter.kt\ninfo/flowersoft/theotown/util/ProtectedApplicationAdapter\n*L\n1#1,37:1\n15#1,7:38\n15#1,7:45\n15#1,7:52\n15#1,7:59\n15#1,7:66\n15#1,7:73\n*S KotlinDebug\n*F\n+ 1 ProtectedApplicationAdapter.kt\ninfo/flowersoft/theotown/util/ProtectedApplicationAdapter\n*L\n23#1:38,7\n25#1:45,7\n27#1:52,7\n32#1:59,7\n34#1:66,7\n36#1:73,7\n*E\n"
.end annotation


# instance fields
.field public final app:Lcom/badlogic/gdx/ApplicationListener;

.field public final exceptionManager:Linfo/flowersoft/theotown/util/ExceptionManager;


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/ApplicationListener;Linfo/flowersoft/theotown/util/ExceptionManager;)V
    .registers 4

    const-string v0, "app"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "exceptionManager"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Linfo/flowersoft/theotown/util/ProtectedApplicationAdapter;->app:Lcom/badlogic/gdx/ApplicationListener;

    .line 11
    iput-object p2, p0, Linfo/flowersoft/theotown/util/ProtectedApplicationAdapter;->exceptionManager:Linfo/flowersoft/theotown/util/ExceptionManager;

    return-void
.end method


# virtual methods
.method public create()V
    .registers 3

    .line 15
    iget-object v0, p0, Linfo/flowersoft/theotown/util/ProtectedApplicationAdapter;->exceptionManager:Linfo/flowersoft/theotown/util/ExceptionManager;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/util/ExceptionManager;->isPaused()Z

    move-result v0

    if-nez v0, :cond_14

    .line 23
    :try_start_8
    iget-object v0, p0, Linfo/flowersoft/theotown/util/ProtectedApplicationAdapter;->app:Lcom/badlogic/gdx/ApplicationListener;

    invoke-interface {v0}, Lcom/badlogic/gdx/ApplicationListener;->create()V
    :try_end_d
    .catchall {:try_start_8 .. :try_end_d} :catchall_e

    goto :goto_14

    :catchall_e
    move-exception v0

    .line 19
    iget-object v1, p0, Linfo/flowersoft/theotown/util/ProtectedApplicationAdapter;->exceptionManager:Linfo/flowersoft/theotown/util/ExceptionManager;

    invoke-virtual {v1, v0}, Linfo/flowersoft/theotown/util/ExceptionManager;->handleException(Ljava/lang/Throwable;)V

    :cond_14
    :goto_14
    return-void
.end method

.method public dispose()V
    .registers 3

    .line 15
    iget-object v0, p0, Linfo/flowersoft/theotown/util/ProtectedApplicationAdapter;->exceptionManager:Linfo/flowersoft/theotown/util/ExceptionManager;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/util/ExceptionManager;->isPaused()Z

    move-result v0

    if-nez v0, :cond_14

    .line 36
    :try_start_8
    iget-object v0, p0, Linfo/flowersoft/theotown/util/ProtectedApplicationAdapter;->app:Lcom/badlogic/gdx/ApplicationListener;

    invoke-interface {v0}, Lcom/badlogic/gdx/ApplicationListener;->dispose()V
    :try_end_d
    .catchall {:try_start_8 .. :try_end_d} :catchall_e

    goto :goto_14

    :catchall_e
    move-exception v0

    .line 19
    iget-object v1, p0, Linfo/flowersoft/theotown/util/ProtectedApplicationAdapter;->exceptionManager:Linfo/flowersoft/theotown/util/ExceptionManager;

    invoke-virtual {v1, v0}, Linfo/flowersoft/theotown/util/ExceptionManager;->handleException(Ljava/lang/Throwable;)V

    :cond_14
    :goto_14
    return-void
.end method

.method public final getApp()Lcom/badlogic/gdx/ApplicationListener;
    .registers 2

    .line 10
    iget-object v0, p0, Linfo/flowersoft/theotown/util/ProtectedApplicationAdapter;->app:Lcom/badlogic/gdx/ApplicationListener;

    return-object v0
.end method

.method public final getExceptionManager()Linfo/flowersoft/theotown/util/ExceptionManager;
    .registers 2

    .line 11
    iget-object v0, p0, Linfo/flowersoft/theotown/util/ProtectedApplicationAdapter;->exceptionManager:Linfo/flowersoft/theotown/util/ExceptionManager;

    return-object v0
.end method

.method public pause()V
    .registers 3

    .line 15
    iget-object v0, p0, Linfo/flowersoft/theotown/util/ProtectedApplicationAdapter;->exceptionManager:Linfo/flowersoft/theotown/util/ExceptionManager;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/util/ExceptionManager;->isPaused()Z

    move-result v0

    if-nez v0, :cond_14

    .line 32
    :try_start_8
    iget-object v0, p0, Linfo/flowersoft/theotown/util/ProtectedApplicationAdapter;->app:Lcom/badlogic/gdx/ApplicationListener;

    invoke-interface {v0}, Lcom/badlogic/gdx/ApplicationListener;->pause()V
    :try_end_d
    .catchall {:try_start_8 .. :try_end_d} :catchall_e

    goto :goto_14

    :catchall_e
    move-exception v0

    .line 19
    iget-object v1, p0, Linfo/flowersoft/theotown/util/ProtectedApplicationAdapter;->exceptionManager:Linfo/flowersoft/theotown/util/ExceptionManager;

    invoke-virtual {v1, v0}, Linfo/flowersoft/theotown/util/ExceptionManager;->handleException(Ljava/lang/Throwable;)V

    :cond_14
    :goto_14
    return-void
.end method

.method public render()V
    .registers 3

    .line 15
    iget-object v0, p0, Linfo/flowersoft/theotown/util/ProtectedApplicationAdapter;->exceptionManager:Linfo/flowersoft/theotown/util/ExceptionManager;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/util/ExceptionManager;->isPaused()Z

    move-result v0

    if-nez v0, :cond_19

    .line 28
    :try_start_8
    iget-object v0, p0, Linfo/flowersoft/theotown/util/ProtectedApplicationAdapter;->app:Lcom/badlogic/gdx/ApplicationListener;

    invoke-interface {v0}, Lcom/badlogic/gdx/ApplicationListener;->render()V

    .line 29
    iget-object v0, p0, Linfo/flowersoft/theotown/util/ProtectedApplicationAdapter;->exceptionManager:Linfo/flowersoft/theotown/util/ExceptionManager;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/util/ExceptionManager;->indicateReachedEndOfFrame()V
    :try_end_12
    .catchall {:try_start_8 .. :try_end_12} :catchall_13

    goto :goto_19

    :catchall_13
    move-exception v0

    .line 19
    iget-object v1, p0, Linfo/flowersoft/theotown/util/ProtectedApplicationAdapter;->exceptionManager:Linfo/flowersoft/theotown/util/ExceptionManager;

    invoke-virtual {v1, v0}, Linfo/flowersoft/theotown/util/ExceptionManager;->handleException(Ljava/lang/Throwable;)V

    :cond_19
    :goto_19
    return-void
.end method

.method public resize(II)V
    .registers 4

    .line 15
    iget-object v0, p0, Linfo/flowersoft/theotown/util/ProtectedApplicationAdapter;->exceptionManager:Linfo/flowersoft/theotown/util/ExceptionManager;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/util/ExceptionManager;->isPaused()Z

    move-result v0

    if-nez v0, :cond_14

    .line 25
    :try_start_8
    iget-object v0, p0, Linfo/flowersoft/theotown/util/ProtectedApplicationAdapter;->app:Lcom/badlogic/gdx/ApplicationListener;

    invoke-interface {v0, p1, p2}, Lcom/badlogic/gdx/ApplicationListener;->resize(II)V
    :try_end_d
    .catchall {:try_start_8 .. :try_end_d} :catchall_e

    goto :goto_14

    :catchall_e
    move-exception p1

    .line 19
    iget-object p2, p0, Linfo/flowersoft/theotown/util/ProtectedApplicationAdapter;->exceptionManager:Linfo/flowersoft/theotown/util/ExceptionManager;

    invoke-virtual {p2, p1}, Linfo/flowersoft/theotown/util/ExceptionManager;->handleException(Ljava/lang/Throwable;)V

    :cond_14
    :goto_14
    return-void
.end method

.method public resume()V
    .registers 3

    .line 15
    iget-object v0, p0, Linfo/flowersoft/theotown/util/ProtectedApplicationAdapter;->exceptionManager:Linfo/flowersoft/theotown/util/ExceptionManager;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/util/ExceptionManager;->isPaused()Z

    move-result v0

    if-nez v0, :cond_14

    .line 34
    :try_start_8
    iget-object v0, p0, Linfo/flowersoft/theotown/util/ProtectedApplicationAdapter;->app:Lcom/badlogic/gdx/ApplicationListener;

    invoke-interface {v0}, Lcom/badlogic/gdx/ApplicationListener;->resume()V
    :try_end_d
    .catchall {:try_start_8 .. :try_end_d} :catchall_e

    goto :goto_14

    :catchall_e
    move-exception v0

    .line 19
    iget-object v1, p0, Linfo/flowersoft/theotown/util/ProtectedApplicationAdapter;->exceptionManager:Linfo/flowersoft/theotown/util/ExceptionManager;

    invoke-virtual {v1, v0}, Linfo/flowersoft/theotown/util/ExceptionManager;->handleException(Ljava/lang/Throwable;)V

    :cond_14
    :goto_14
    return-void
.end method
