###### Class com.facebook.ads.redexgen.X.C1578Eu (com.facebook.ads.redexgen.X.Eu)
.class public final Lcom/facebook/ads/redexgen/X/Eu;
.super Lcom/facebook/ads/redexgen/X/oq;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/tf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/tf;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/tf;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 39284
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Eu;->A00:Lcom/facebook/ads/redexgen/X/tf;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/oq;-><init>()V

    return-void
.end method


# virtual methods
.method public final A07()V
    .registers 5

    .line 39285
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Eu;->A00:Lcom/facebook/ads/redexgen/X/tf;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/tf;->A05(Lcom/facebook/ads/redexgen/X/tf;)V

    .line 39286
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Eu;->A00:Lcom/facebook/ads/redexgen/X/tf;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/tf;->A06(Lcom/facebook/ads/redexgen/X/tf;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 39287
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Eu;->A00:Lcom/facebook/ads/redexgen/X/tf;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/tf;->A00(Lcom/facebook/ads/redexgen/X/tf;)Landroid/os/Handler;

    move-result-object v3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Eu;->A00:Lcom/facebook/ads/redexgen/X/tf;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/tf;->A01(Lcom/facebook/ads/redexgen/X/tf;)Ljava/lang/Runnable;

    move-result-object v2

    const-wide/16 v0, 0xfa

    invoke-virtual {v3, v2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 39288
    :cond_1e
    return-void
.end method
