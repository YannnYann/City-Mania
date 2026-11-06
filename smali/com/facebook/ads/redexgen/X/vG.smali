###### Class com.facebook.ads.redexgen.X.ViewOnClickListenerC3399vG (com.facebook.ads.redexgen.X.vG)
.class public final Lcom/facebook/ads/redexgen/X/vG;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/ES;->A07()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/ES;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/ES;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 115305
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/vG;->A00:Lcom/facebook/ads/redexgen/X/ES;

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

    .line 115306
    .local v0, "this":Lcom/facebook/ads/redexgen/X/vG;
    .local p1, "view":Landroid/view/View;
    :try_start_8
    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/vG;->A00:Lcom/facebook/ads/redexgen/X/ES;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/ES;->A04(Lcom/facebook/ads/redexgen/X/ES;)Lcom/facebook/ads/redexgen/X/qL;

    move-result-object v0

    if-eqz v0, :cond_19

    .line 115307
    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/vG;->A00:Lcom/facebook/ads/redexgen/X/ES;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/ES;->A04(Lcom/facebook/ads/redexgen/X/ES;)Lcom/facebook/ads/redexgen/X/qL;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/qL;->ALH()V

    .line 115308
    .end local v0    # "this":Lcom/facebook/ads/redexgen/X/vG;
    :cond_19
    return-void
    :try_end_1a
    .catchall {:try_start_8 .. :try_end_1a} :catchall_1a

    .end local p1    # "view":Landroid/view/View;
    :catchall_1a
    move-exception v0

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/oi;->A00(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method
