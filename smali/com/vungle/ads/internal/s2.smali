###### Class com.vungle.ads.internal.s2 (com.vungle.ads.internal.s2)
.class public final Lcom/vungle/ads/internal/s2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic a:Lcom/vungle/ads/internal/u2;

.field public final synthetic b:Lcom/vungle/ads/VungleError;


# direct methods
.method public constructor <init>(Lcom/vungle/ads/internal/u2;Lcom/vungle/ads/VungleError;)V
    .registers 3

    .line 0
    iput-object p1, p0, Lcom/vungle/ads/internal/s2;->a:Lcom/vungle/ads/internal/u2;

    iput-object p2, p0, Lcom/vungle/ads/internal/s2;->b:Lcom/vungle/ads/VungleError;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .registers 4

    .line 1
    sget-boolean v0, Lcom/vungle/ads/internal/util/v;->a:Z

    const-string v0, "VungleInitializer"

    const-string v1, "onError"

    invoke-static {v0, v1}, Lcom/vungle/ads/internal/util/u;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/vungle/ads/internal/s2;->a:Lcom/vungle/ads/internal/u2;

    .line 3
    iget-object v0, v0, Lcom/vungle/ads/internal/u2;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 4
    iget-object v1, p0, Lcom/vungle/ads/internal/s2;->b:Lcom/vungle/ads/VungleError;

    .line 87
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_13
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_23

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vungle/ads/InitializationListener;

    .line 88
    invoke-interface {v2, v1}, Lcom/vungle/ads/InitializationListener;->onError(Lcom/vungle/ads/VungleError;)V

    goto :goto_13

    .line 90
    :cond_23
    iget-object v0, p0, Lcom/vungle/ads/internal/s2;->a:Lcom/vungle/ads/internal/u2;

    .line 91
    iget-object v0, v0, Lcom/vungle/ads/internal/u2;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 92
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 93
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method
