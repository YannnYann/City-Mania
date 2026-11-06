###### Class com.facebook.ads.redexgen.X.ViewOnClickListenerC3218sL (com.facebook.ads.redexgen.X.sL)
.class public final Lcom/facebook/ads/redexgen/X/sL;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/FD;->A0O()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/FD;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/FD;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 111424
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/sL;->A00:Lcom/facebook/ads/redexgen/X/FD;

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

    .line 111425
    .local v0, "this":Lcom/facebook/ads/redexgen/X/sL;
    .local p1, "v":Landroid/view/View;
    :try_start_8
    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/sL;->A00:Lcom/facebook/ads/redexgen/X/FD;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/sC;->A0D:Lcom/facebook/ads/redexgen/X/sE;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/sE;->AAG()V

    .line 111426
    return-void
    :try_end_10
    .catchall {:try_start_8 .. :try_end_10} :catchall_10

    .end local v0    # "this":Lcom/facebook/ads/redexgen/X/sL;
    .end local p1    # "v":Landroid/view/View;
    :catchall_10
    move-exception v0

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/oi;->A00(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method
