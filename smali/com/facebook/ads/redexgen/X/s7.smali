###### Class com.facebook.ads.redexgen.X.ViewOnClickListenerC3204s7 (com.facebook.ads.redexgen.X.s7)
.class public final Lcom/facebook/ads/redexgen/X/s7;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/sA;->A01(Lcom/facebook/ads/redexgen/X/s9;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/sA;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/sA;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 111122
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/s7;->A00:Lcom/facebook/ads/redexgen/X/sA;

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

    .line 111123
    .local v0, "this":Lcom/facebook/ads/redexgen/X/s7;
    .local p1, "view":Landroid/view/View;
    :try_start_8
    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/s7;->A00:Lcom/facebook/ads/redexgen/X/sA;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/sA;->A03(Lcom/facebook/ads/redexgen/X/sA;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 111124
    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/s7;->A00:Lcom/facebook/ads/redexgen/X/sA;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/sA;->A02(Lcom/facebook/ads/redexgen/X/sA;)Lcom/facebook/ads/redexgen/X/sE;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/sE;->A5c()V

    goto :goto_23

    .line 111125
    .end local v0    # "this":Lcom/facebook/ads/redexgen/X/s7;
    :cond_1a
    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/s7;->A00:Lcom/facebook/ads/redexgen/X/sA;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/sA;->A02(Lcom/facebook/ads/redexgen/X/sA;)Lcom/facebook/ads/redexgen/X/sE;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/sE;->A5d()V

    .line 111126
    :goto_23
    return-void
    :try_end_24
    .catchall {:try_start_8 .. :try_end_24} :catchall_24

    .end local p1    # "view":Landroid/view/View;
    :catchall_24
    move-exception v0

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/oi;->A00(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method
