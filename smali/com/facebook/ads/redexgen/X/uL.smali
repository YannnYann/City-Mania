###### Class com.facebook.ads.redexgen.X.ViewOnClickListenerC3342uL (com.facebook.ads.redexgen.X.uL)
.class public final Lcom/facebook/ads/redexgen/X/uL;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/uN;->A04()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/uN;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/uN;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 114111
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/uL;->A00:Lcom/facebook/ads/redexgen/X/uN;

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

    .line 114112
    .local v0, "this":Lcom/facebook/ads/redexgen/X/uL;
    .local p1, "v":Landroid/view/View;
    :try_start_8
    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/uL;->A00:Lcom/facebook/ads/redexgen/X/uN;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/uN;->A06(Lcom/facebook/ads/redexgen/X/uN;)V

    .line 114113
    return-void
    :try_end_e
    .catchall {:try_start_8 .. :try_end_e} :catchall_e

    .end local v0    # "this":Lcom/facebook/ads/redexgen/X/uL;
    .end local p1    # "v":Landroid/view/View;
    :catchall_e
    move-exception v0

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/oi;->A00(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method
