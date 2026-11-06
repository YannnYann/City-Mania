###### Class com.vungle.ads.internal.ui.o (com.vungle.ads.internal.ui.o)
.class public final Lcom/vungle/ads/internal/ui/o;
.super Landroid/webkit/WebViewRenderProcessClient;
.source "SourceFile"


# instance fields
.field public a:Lcom/vungle/ads/internal/ui/view/o;


# direct methods
.method public constructor <init>(Lcom/vungle/ads/internal/ui/view/o;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Landroid/webkit/WebViewRenderProcessClient;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/vungle/ads/internal/ui/o;->a:Lcom/vungle/ads/internal/ui/view/o;

    return-void
.end method


# virtual methods
.method public final onRenderProcessResponsive(Landroid/webkit/WebView;Landroid/webkit/WebViewRenderProcess;)V
    .registers 3

    .line 0
    const-string p2, "webView"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final onRenderProcessUnresponsive(Landroid/webkit/WebView;Landroid/webkit/WebViewRenderProcess;)V
    .registers 4

    const-string v0, "webView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-boolean v0, Lcom/vungle/ads/internal/util/v;->a:Z

    new-instance v0, Lcom/vungle/ads/internal/ui/n;

    invoke-direct {v0, p1, p2}, Lcom/vungle/ads/internal/ui/n;-><init>(Landroid/webkit/WebView;Landroid/webkit/WebViewRenderProcess;)V

    const-string p1, "VungleWebClient"

    invoke-static {p1, v0}, Lcom/vungle/ads/internal/util/u;->a(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    .line 6
    iget-object p1, p0, Lcom/vungle/ads/internal/ui/o;->a:Lcom/vungle/ads/internal/ui/view/o;

    if-eqz p1, :cond_1a

    check-cast p1, Lcom/vungle/ads/internal/presenter/r;

    invoke-virtual {p1}, Lcom/vungle/ads/internal/presenter/r;->f()V

    :cond_1a
    return-void
.end method
