###### Class com.vungle.ads.internal.w0 (com.vungle.ads.internal.w0)
.class public final Lcom/vungle/ads/internal/w0;
.super Lcom/vungle/ads/internal/presenter/c;
.source "SourceFile"


# instance fields
.field public final synthetic b:Lcom/vungle/ads/internal/x0;


# direct methods
.method public constructor <init>(Lcom/vungle/ads/BaseFullscreenAd$play$2;Lcom/vungle/ads/internal/x0;)V
    .registers 3

    iput-object p2, p0, Lcom/vungle/ads/internal/w0;->b:Lcom/vungle/ads/internal/x0;

    .line 1
    invoke-direct {p0, p1}, Lcom/vungle/ads/internal/presenter/c;-><init>(Lcom/vungle/ads/internal/presenter/b;)V

    return-void
.end method


# virtual methods
.method public final onAdEnd(Ljava/lang/String;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/w0;->b:Lcom/vungle/ads/internal/x0;

    sget-object v1, Lcom/vungle/ads/internal/h;->f:Lcom/vungle/ads/internal/b;

    invoke-virtual {v0, v1}, Lcom/vungle/ads/internal/r;->a(Lcom/vungle/ads/internal/h;)V

    .line 2
    iget-object v0, p0, Lcom/vungle/ads/internal/presenter/c;->a:Lcom/vungle/ads/internal/presenter/b;

    invoke-interface {v0, p1}, Lcom/vungle/ads/internal/presenter/b;->onAdEnd(Ljava/lang/String;)V

    return-void
.end method

.method public final onAdImpression(Ljava/lang/String;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/w0;->b:Lcom/vungle/ads/internal/x0;

    sget-object v1, Lcom/vungle/ads/internal/h;->e:Lcom/vungle/ads/internal/c;

    invoke-virtual {v0, v1}, Lcom/vungle/ads/internal/r;->a(Lcom/vungle/ads/internal/h;)V

    .line 2
    iget-object v0, p0, Lcom/vungle/ads/internal/presenter/c;->a:Lcom/vungle/ads/internal/presenter/b;

    invoke-interface {v0, p1}, Lcom/vungle/ads/internal/presenter/b;->onAdImpression(Ljava/lang/String;)V

    return-void
.end method

.method public final onAdStart(Ljava/lang/String;)V
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/w0;->b:Lcom/vungle/ads/internal/x0;

    sget-object v1, Lcom/vungle/ads/internal/h;->d:Lcom/vungle/ads/internal/f;

    invoke-virtual {v0, v1}, Lcom/vungle/ads/internal/r;->a(Lcom/vungle/ads/internal/h;)V

    .line 2
    iget-object v0, p0, Lcom/vungle/ads/internal/w0;->b:Lcom/vungle/ads/internal/x0;

    .line 3
    iget-object v0, v0, Lcom/vungle/ads/internal/r;->l:Lcom/vungle/ads/internal/p1;

    .line 4
    invoke-virtual {v0}, Lcom/vungle/ads/internal/p1;->d()V

    .line 5
    sget-object v0, Lcom/vungle/ads/internal/AnalyticsClient;->INSTANCE:Lcom/vungle/ads/internal/AnalyticsClient;

    iget-object v1, p0, Lcom/vungle/ads/internal/w0;->b:Lcom/vungle/ads/internal/x0;

    .line 6
    iget-object v2, v1, Lcom/vungle/ads/internal/r;->l:Lcom/vungle/ads/internal/p1;

    .line 7
    iget-object v1, v1, Lcom/vungle/ads/internal/r;->m:Lcom/vungle/ads/internal/util/t;

    .line 8
    iget-object v3, v2, Lcom/vungle/ads/internal/e1;->b:Ljava/lang/String;

    .line 9
    invoke-virtual {v0, v2, v1, v3}, Lcom/vungle/ads/internal/AnalyticsClient;->a(Lcom/vungle/ads/internal/p1;Lcom/vungle/ads/internal/util/t;Ljava/lang/String;)V

    .line 10
    iget-object v0, p0, Lcom/vungle/ads/internal/presenter/c;->a:Lcom/vungle/ads/internal/presenter/b;

    invoke-interface {v0, p1}, Lcom/vungle/ads/internal/presenter/b;->onAdStart(Ljava/lang/String;)V

    return-void
.end method

.method public final onFailure(Lcom/vungle/ads/VungleError;)V
    .registers 4

    const-string v0, "error"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/w0;->b:Lcom/vungle/ads/internal/x0;

    sget-object v1, Lcom/vungle/ads/internal/h;->g:Lcom/vungle/ads/internal/a;

    invoke-virtual {v0, v1}, Lcom/vungle/ads/internal/r;->a(Lcom/vungle/ads/internal/h;)V

    .line 2
    invoke-super {p0, p1}, Lcom/vungle/ads/internal/presenter/c;->onFailure(Lcom/vungle/ads/VungleError;)V

    return-void
.end method
