###### Class com.facebook.ads.redexgen.X.ViewOnClickListenerC3267t8 (com.facebook.ads.redexgen.X.t8)
.class public final Lcom/facebook/ads/redexgen/X/t8;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/F8;->A08()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/F8;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/F8;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 112128
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/t8;->A00:Lcom/facebook/ads/redexgen/X/F8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 4

    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/oi;->A02(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    move-object v1, p0

    .line 112129
    .local v0, "this":Lcom/facebook/ads/redexgen/X/t8;
    .local p1, "view":Landroid/view/View;
    :try_start_8
    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/t8;->A00:Lcom/facebook/ads/redexgen/X/F8;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/F8;->A01(Lcom/facebook/ads/redexgen/X/F8;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 112130
    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/t8;->A00:Lcom/facebook/ads/redexgen/X/F8;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/F8;->A01(Lcom/facebook/ads/redexgen/X/F8;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    .line 112131
    .end local v0    # "this":Lcom/facebook/ads/redexgen/X/t8;
    :cond_1d
    return-void
    :try_end_1e
    .catchall {:try_start_8 .. :try_end_1e} :catchall_1e

    .end local p1    # "view":Landroid/view/View;
    :catchall_1e
    move-exception v0

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/oi;->A00(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method
