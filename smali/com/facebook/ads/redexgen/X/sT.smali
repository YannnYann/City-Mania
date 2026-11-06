###### Class com.facebook.ads.redexgen.X.ViewOnClickListenerC3226sT (com.facebook.ads.redexgen.X.sT)
.class public final Lcom/facebook/ads/redexgen/X/sT;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/sU;->A03()Lcom/facebook/ads/redexgen/X/sa;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/ge;

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/sG;

.field public final synthetic A02:Lcom/facebook/ads/redexgen/X/sU;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/sU;Lcom/facebook/ads/redexgen/X/sG;Lcom/facebook/ads/redexgen/X/ge;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 111481
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/sT;->A02:Lcom/facebook/ads/redexgen/X/sU;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/sT;->A01:Lcom/facebook/ads/redexgen/X/sG;

    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/sT;->A00:Lcom/facebook/ads/redexgen/X/ge;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 5

    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/oi;->A02(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    move-object v2, p0

    .line 111482
    .local v0, "this":Lcom/facebook/ads/redexgen/X/sT;
    .local p1, "v":Landroid/view/View;
    :try_start_8
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/sT;->A01:Lcom/facebook/ads/redexgen/X/sG;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/sG;->A01()V

    .line 111483
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/sT;->A02:Lcom/facebook/ads/redexgen/X/sU;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/sU;->A02(Lcom/facebook/ads/redexgen/X/sU;)Lcom/facebook/ads/redexgen/X/sE;

    move-result-object v1

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/sT;->A00:Lcom/facebook/ads/redexgen/X/ge;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/sE;->AG9(Lcom/facebook/ads/redexgen/X/ge;)V

    .line 111484
    return-void
    :try_end_19
    .catchall {:try_start_8 .. :try_end_19} :catchall_19

    .end local v0    # "this":Lcom/facebook/ads/redexgen/X/sT;
    .end local p1    # "v":Landroid/view/View;
    :catchall_19
    move-exception v0

    invoke-static {v0, v2}, Lcom/facebook/ads/redexgen/X/oi;->A00(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method
