###### Class com.facebook.ads.redexgen.X.C1474Au (com.facebook.ads.redexgen.X.Au)
.class public final Lcom/facebook/ads/redexgen/X/Au;
.super Lcom/facebook/ads/redexgen/X/oq;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/dw;->onAnimationEnd(Landroid/animation/Animator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/dw;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/dw;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 31347
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Au;->A00:Lcom/facebook/ads/redexgen/X/dw;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/oq;-><init>()V

    return-void
.end method


# virtual methods
.method public final A07()V
    .registers 2

    .line 31348
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Au;->A00:Lcom/facebook/ads/redexgen/X/dw;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/dw;->A00:Lcom/facebook/ads/redexgen/X/5I;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/5I;->A00:Lcom/facebook/ads/redexgen/X/At;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/At;->A0E(Lcom/facebook/ads/redexgen/X/At;)Z

    move-result v0

    if-nez v0, :cond_21

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Au;->A00:Lcom/facebook/ads/redexgen/X/dw;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/dw;->A00:Lcom/facebook/ads/redexgen/X/5I;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/5I;->A00:Lcom/facebook/ads/redexgen/X/At;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/At;->A0C(Lcom/facebook/ads/redexgen/X/At;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 31349
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Au;->A00:Lcom/facebook/ads/redexgen/X/dw;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/dw;->A00:Lcom/facebook/ads/redexgen/X/5I;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/5I;->A00:Lcom/facebook/ads/redexgen/X/At;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/At;->A09(Lcom/facebook/ads/redexgen/X/At;)V

    .line 31350
    :cond_21
    return-void
.end method
