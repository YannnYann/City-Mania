###### Class com.vungle.ads.internal.ui.u (com.vungle.ads.internal.ui.u)
.class public final Lcom/vungle/ads/internal/ui/u;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic a:Landroid/webkit/WebView;

.field public final synthetic b:Landroid/webkit/RenderProcessGoneDetail;


# direct methods
.method public constructor <init>(Landroid/webkit/WebView;Landroid/webkit/RenderProcessGoneDetail;)V
    .registers 3

    .line 0
    iput-object p1, p0, Lcom/vungle/ads/internal/ui/u;->a:Landroid/webkit/WebView;

    iput-object p2, p0, Lcom/vungle/ads/internal/ui/u;->b:Landroid/webkit/RenderProcessGoneDetail;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .registers 4

    .line 1
    const-string v0, "onRenderProcessGone url: "

    invoke-static {v0}, Lcom/iab/omid/library/vungle/internal/l;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/vungle/ads/internal/ui/u;->a:Landroid/webkit/WebView;

    const/4 v2, 0x0

    if-eqz v1, :cond_10

    invoke-virtual {v1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v1

    goto :goto_11

    :cond_10
    move-object v1, v2

    :goto_11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", did crash: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vungle/ads/internal/ui/u;->b:Landroid/webkit/RenderProcessGoneDetail;

    if-eqz v1, :cond_25

    invoke-static {v1}, Lads_mobile_sdk/g41$$ExternalSyntheticApiModelOutline0;->m(Landroid/webkit/RenderProcessGoneDetail;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    :cond_25
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
