###### Class com.vungle.ads.internal.downloader.q (com.vungle.ads.internal.downloader.q)
.class public final synthetic Lcom/vungle/ads/internal/downloader/q;
.super Lkotlin/jvm/internal/FunctionReferenceImpl;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .registers 9

    .line 0
    const-string v5, "getOrCreateDownloader()Lcom/vungle/ads/internal/downloader/AssetDownloader;"

    const/4 v6, 0x0

    const/4 v1, 0x0

    const-class v3, Lcom/vungle/ads/internal/downloader/u;

    const-string v4, "getOrCreateDownloader"

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .registers 6

    .line 1
    iget-object v0, p0, Lkotlin/jvm/internal/CallableReference;->receiver:Ljava/lang/Object;

    check-cast v0, Lcom/vungle/ads/internal/downloader/u;

    .line 2
    iget-object v1, v0, Lcom/vungle/ads/internal/downloader/u;->g:Lcom/vungle/ads/internal/downloader/i;

    if-nez v1, :cond_32

    .line 3
    iget-object v1, v0, Lcom/vungle/ads/internal/downloader/u;->c:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 7
    :try_start_d
    iget-boolean v2, v0, Lcom/vungle/ads/internal/downloader/u;->e:Z

    if-eqz v2, :cond_13

    const/4 v0, 0x0

    goto :goto_2a

    .line 8
    :cond_13
    iget-object v2, v0, Lcom/vungle/ads/internal/downloader/u;->g:Lcom/vungle/ads/internal/downloader/i;

    if-nez v2, :cond_26

    new-instance v2, Lcom/vungle/ads/internal/downloader/i;

    iget-object v3, v0, Lcom/vungle/ads/internal/downloader/u;->a:Lcom/vungle/ads/internal/executor/a;

    check-cast v3, Lcom/vungle/ads/internal/executor/d;

    .line 9
    iget-object v3, v3, Lcom/vungle/ads/internal/executor/d;->f:Lcom/vungle/ads/internal/executor/j;

    .line 10
    iget-object v4, v0, Lcom/vungle/ads/internal/downloader/u;->b:Lcom/vungle/ads/internal/util/PathProvider;

    invoke-direct {v2, v3, v4}, Lcom/vungle/ads/internal/downloader/i;-><init>(Lcom/vungle/ads/internal/executor/j;Lcom/vungle/ads/internal/util/PathProvider;)V

    .line 11
    iput-object v2, v0, Lcom/vungle/ads/internal/downloader/u;->g:Lcom/vungle/ads/internal/downloader/i;
    :try_end_26
    .catchall {:try_start_d .. :try_end_26} :catchall_28

    :cond_26
    move-object v0, v2

    goto :goto_2a

    :catchall_28
    move-exception v0

    goto :goto_2e

    .line 12
    :goto_2a
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v0

    :goto_2e
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0

    :cond_32
    return-object v1
.end method
