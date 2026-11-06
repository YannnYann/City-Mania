###### Class com.facebook.ads.redexgen.X.ViewOnClickListenerC2998ok (com.facebook.ads.redexgen.X.ok)
.class public final Lcom/facebook/ads/redexgen/X/ok;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/oj;->setUpVideo(Lcom/facebook/ads/redexgen/X/Hi;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/oj;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/oj;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 106785
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/ok;->A00:Lcom/facebook/ads/redexgen/X/oj;

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

    .line 106786
    .local v0, "this":Lcom/facebook/ads/redexgen/X/ok;
    .local p1, "v":Landroid/view/View;
    :try_start_8
    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/ok;->A00:Lcom/facebook/ads/redexgen/X/oj;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/oj;->A00(Lcom/facebook/ads/redexgen/X/oj;)Lcom/facebook/ads/redexgen/X/51;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/51;->performClick()Z

    .line 106787
    return-void
    :try_end_12
    .catchall {:try_start_8 .. :try_end_12} :catchall_12

    .end local v0    # "this":Lcom/facebook/ads/redexgen/X/ok;
    .end local p1    # "v":Landroid/view/View;
    :catchall_12
    move-exception v0

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/oi;->A00(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method
