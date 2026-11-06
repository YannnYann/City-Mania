###### Class com.vungle.ads.internal.ui.view.a (com.vungle.ads.internal.ui.view.a)
.class public final Lcom/vungle/ads/internal/ui/view/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final a:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Lcom/vungle/ads/internal/ui/view/d;)V
    .registers 3

    const-string v0, "adVideoView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/vungle/ads/internal/ui/view/a;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/ui/view/a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/ads/internal/ui/view/d;

    if-nez v0, :cond_b

    goto :goto_2c

    .line 2
    :cond_b
    invoke-virtual {v0}, Lcom/vungle/ads/internal/ui/view/d;->b()V

    .line 3
    iget-object v1, v0, Lcom/vungle/ads/internal/ui/view/d;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 4
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 5
    iget-object v1, v0, Lcom/vungle/ads/internal/ui/view/d;->g:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_2c

    .line 6
    invoke-virtual {v1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2c

    .line 7
    iget-boolean v1, v0, Lcom/vungle/ads/internal/ui/view/d;->q:Z

    if-nez v1, :cond_2c

    .line 8
    iget-object v0, v0, Lcom/vungle/ads/internal/ui/view/d;->w:Landroid/os/Handler;

    const-wide/16 v1, 0x3e8

    .line 9
    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2c
    :goto_2c
    return-void
.end method
