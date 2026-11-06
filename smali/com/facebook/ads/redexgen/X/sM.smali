###### Class com.facebook.ads.redexgen.X.ViewOnClickListenerC3219sM (com.facebook.ads.redexgen.X.sM)
.class public final Lcom/facebook/ads/redexgen/X/sM;
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
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/sG;

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/FD;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/FD;Lcom/facebook/ads/redexgen/X/sG;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 111427
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/sM;->A01:Lcom/facebook/ads/redexgen/X/FD;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/sM;->A00:Lcom/facebook/ads/redexgen/X/sG;

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

    .line 111428
    .local v0, "this":Lcom/facebook/ads/redexgen/X/sM;
    .local p1, "v":Landroid/view/View;
    :try_start_8
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/sM;->A00:Lcom/facebook/ads/redexgen/X/sG;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/sG;->A01()V

    .line 111429
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/sM;->A01:Lcom/facebook/ads/redexgen/X/FD;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/sC;->A0D:Lcom/facebook/ads/redexgen/X/sE;

    sget-object v0, Lcom/facebook/ads/redexgen/X/gc;->A03:Lcom/facebook/ads/redexgen/X/gc;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/sE;->AFv(Lcom/facebook/ads/redexgen/X/gc;)V

    .line 111430
    return-void
    :try_end_17
    .catchall {:try_start_8 .. :try_end_17} :catchall_17

    .end local v0    # "this":Lcom/facebook/ads/redexgen/X/sM;
    .end local p1    # "v":Landroid/view/View;
    :catchall_17
    move-exception v0

    invoke-static {v0, v2}, Lcom/facebook/ads/redexgen/X/oi;->A00(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method
