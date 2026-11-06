###### Class com.vungle.ads.internal.presenter.k (com.vungle.ads.internal.presenter.k)
.class public final Lcom/vungle/ads/internal/presenter/k;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic a:Lcom/vungle/ads/internal/presenter/r;


# direct methods
.method public constructor <init>(Lcom/vungle/ads/internal/presenter/r;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/vungle/ads/internal/presenter/k;->a:Lcom/vungle/ads/internal/presenter/r;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/presenter/k;->a:Lcom/vungle/ads/internal/presenter/r;

    .line 2
    iget-object v0, v0, Lcom/vungle/ads/internal/presenter/r;->d:Lcom/vungle/ads/internal/ui/x;

    .line 3
    iget-object v1, v0, Lcom/vungle/ads/internal/ui/x;->m:Landroid/webkit/WebView;

    if-eqz v1, :cond_d

    .line 6
    const-string v2, "window.vungle.mraidBridgeExt.notifyPresentAppStoreFailed(0)"

    invoke-virtual {v0, v1, v2}, Lcom/vungle/ads/internal/ui/x;->a(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 7
    :cond_d
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method
