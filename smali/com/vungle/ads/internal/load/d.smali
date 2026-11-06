###### Class com.vungle.ads.internal.load.d (com.vungle.ads.internal.load.d)
.class public final Lcom/vungle/ads/internal/load/d;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Lcom/vungle/ads/internal/load/i;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Lcom/vungle/ads/internal/downloader/e;

.field public final synthetic d:Lcom/vungle/ads/internal/downloader/l;


# direct methods
.method public constructor <init>(Lcom/vungle/ads/internal/load/i;Ljava/lang/String;Lcom/vungle/ads/internal/load/c;Lcom/vungle/ads/internal/downloader/l;)V
    .registers 5

    .line 0
    iput-object p1, p0, Lcom/vungle/ads/internal/load/d;->a:Lcom/vungle/ads/internal/load/i;

    iput-object p2, p0, Lcom/vungle/ads/internal/load/d;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/vungle/ads/internal/load/d;->c:Lcom/vungle/ads/internal/downloader/e;

    iput-object p4, p0, Lcom/vungle/ads/internal/load/d;->d:Lcom/vungle/ads/internal/downloader/l;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7

    .line 1
    check-cast p1, Lkotlin/Result;

    invoke-virtual {p1}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    move-result-object p1

    .line 2
    iget-object v0, p0, Lcom/vungle/ads/internal/load/d;->a:Lcom/vungle/ads/internal/load/i;

    invoke-static {v0}, Lcom/vungle/ads/internal/load/i;->g(Lcom/vungle/ads/internal/load/i;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_48

    .line 3
    iget-object v0, p0, Lcom/vungle/ads/internal/load/d;->c:Lcom/vungle/ads/internal/downloader/e;

    iget-object v1, p0, Lcom/vungle/ads/internal/load/d;->d:Lcom/vungle/ads/internal/downloader/l;

    invoke-static {p1}, Lkotlin/Result;->isSuccess-impl(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_22

    move-object v2, p1

    check-cast v2, Ljava/io/File;

    .line 4
    invoke-interface {v0, v2, v1}, Lcom/vungle/ads/internal/downloader/e;->a(Ljava/io/File;Lcom/vungle/ads/internal/downloader/l;)V

    .line 5
    :cond_22
    iget-object v0, p0, Lcom/vungle/ads/internal/load/d;->c:Lcom/vungle/ads/internal/downloader/e;

    iget-object v1, p0, Lcom/vungle/ads/internal/load/d;->d:Lcom/vungle/ads/internal/downloader/l;

    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_5e

    .line 8
    instance-of v2, p1, Lcom/vungle/ads/internal/downloader/o;

    if-eqz v2, :cond_34

    move-object v2, p1

    check-cast v2, Lcom/vungle/ads/internal/downloader/o;

    goto :goto_35

    :cond_34
    const/4 v2, 0x0

    :goto_35
    if-eqz v2, :cond_3d

    invoke-virtual {v2}, Lcom/vungle/ads/internal/downloader/o;->a()Lcom/vungle/ads/internal/downloader/c;

    move-result-object v2

    if-nez v2, :cond_44

    .line 9
    :cond_3d
    new-instance v2, Lcom/vungle/ads/internal/downloader/c;

    const/4 v3, -0x1

    const/4 v4, 0x1

    invoke-direct {v2, v3, p1, v4}, Lcom/vungle/ads/internal/downloader/c;-><init>(ILjava/lang/Throwable;I)V

    .line 14
    :cond_44
    invoke-interface {v0, v2, v1}, Lcom/vungle/ads/internal/downloader/e;->a(Lcom/vungle/ads/internal/downloader/c;Lcom/vungle/ads/internal/downloader/l;)V

    goto :goto_5e

    .line 17
    :cond_48
    sget-boolean p1, Lcom/vungle/ads/internal/util/v;->a:Z

    .line 18
    const-string p1, "Template callback ignored after cancel: "

    invoke-static {p1}, Lcom/iab/omid/library/vungle/internal/l;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 19
    iget-object v0, p0, Lcom/vungle/ads/internal/load/d;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "BaseAdLoader"

    invoke-static {v0, p1}, Lcom/vungle/ads/internal/util/u;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    :cond_5e
    :goto_5e
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
