###### Class com.facebook.ads.redexgen.X.ViewOnTouchListenerC2243cL (com.facebook.ads.redexgen.X.cL)
.class public final Lcom/facebook/ads/redexgen/X/cL;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/Ac;->setFullScreen(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/Ac;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Ac;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 85494
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/cL;->A00:Lcom/facebook/ads/redexgen/X/Ac;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 5

    .line 85495
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cL;->A00:Lcom/facebook/ads/redexgen/X/Ac;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ac;->A00(Lcom/facebook/ads/redexgen/X/Ac;)Landroid/widget/MediaController;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_24

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_24

    .line 85496
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cL;->A00:Lcom/facebook/ads/redexgen/X/Ac;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ac;->A00(Lcom/facebook/ads/redexgen/X/Ac;)Landroid/widget/MediaController;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/MediaController;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_25

    .line 85497
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cL;->A00:Lcom/facebook/ads/redexgen/X/Ac;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ac;->A00(Lcom/facebook/ads/redexgen/X/Ac;)Landroid/widget/MediaController;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/MediaController;->hide()V

    .line 85498
    :cond_24
    :goto_24
    return v1

    .line 85499
    :cond_25
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cL;->A00:Lcom/facebook/ads/redexgen/X/Ac;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ac;->A00(Lcom/facebook/ads/redexgen/X/Ac;)Landroid/widget/MediaController;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/MediaController;->show()V

    goto :goto_24
.end method
