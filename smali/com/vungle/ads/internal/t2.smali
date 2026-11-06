###### Class com.vungle.ads.internal.t2 (com.vungle.ads.internal.t2)
.class public final Lcom/vungle/ads/internal/t2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic a:Lcom/vungle/ads/internal/u2;


# direct methods
.method public constructor <init>(Lcom/vungle/ads/internal/u2;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/vungle/ads/internal/t2;->a:Lcom/vungle/ads/internal/u2;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/t2;->a:Lcom/vungle/ads/internal/u2;

    .line 2
    iget-object v0, v0, Lcom/vungle/ads/internal/u2;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vungle/ads/InitializationListener;

    .line 4
    invoke-interface {v1}, Lcom/vungle/ads/InitializationListener;->onSuccess()V

    goto :goto_8

    .line 6
    :cond_18
    iget-object v0, p0, Lcom/vungle/ads/internal/t2;->a:Lcom/vungle/ads/internal/u2;

    .line 7
    iget-object v0, v0, Lcom/vungle/ads/internal/u2;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 8
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 9
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method
