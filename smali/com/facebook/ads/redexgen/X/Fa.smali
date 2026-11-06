###### Class com.facebook.ads.redexgen.X.C1584Fa (com.facebook.ads.redexgen.X.Fa)
.class public final Lcom/facebook/ads/redexgen/X/Fa;
.super Lcom/facebook/ads/redexgen/X/c3;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/rV;->A06()Lcom/facebook/ads/redexgen/X/Fa;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/rV;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/rV;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 41527
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Fa;->A00:Lcom/facebook/ads/redexgen/X/rV;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/c3;-><init>()V

    return-void
.end method


# virtual methods
.method public final A03()V
    .registers 2

    .line 41528
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Fa;->A00:Lcom/facebook/ads/redexgen/X/rV;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/rV;->A05(Lcom/facebook/ads/redexgen/X/rV;)Lcom/facebook/ads/redexgen/X/Fd;

    move-result-object v0

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Fa;->A00:Lcom/facebook/ads/redexgen/X/rV;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/rV;->A05(Lcom/facebook/ads/redexgen/X/rV;)Lcom/facebook/ads/redexgen/X/Fd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Fd;->A0H()Z

    move-result v0

    if-nez v0, :cond_1e

    .line 41529
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Fa;->A00:Lcom/facebook/ads/redexgen/X/rV;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/rV;->A08(Lcom/facebook/ads/redexgen/X/rV;)Lcom/facebook/ads/redexgen/X/c2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/c2;->A0T()V

    .line 41530
    return-void

    .line 41531
    :cond_1e
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Fa;->A00:Lcom/facebook/ads/redexgen/X/rV;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/rV;->A08(Lcom/facebook/ads/redexgen/X/rV;)Lcom/facebook/ads/redexgen/X/c2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/c2;->A0V()V

    .line 41532
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Fa;->A00:Lcom/facebook/ads/redexgen/X/rV;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/rV;->A01(Lcom/facebook/ads/redexgen/X/rV;)Lcom/facebook/ads/redexgen/X/qT;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/qT;->A07()Z

    move-result v0

    if-nez v0, :cond_3c

    .line 41533
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Fa;->A00:Lcom/facebook/ads/redexgen/X/rV;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/rV;->A01(Lcom/facebook/ads/redexgen/X/rV;)Lcom/facebook/ads/redexgen/X/qT;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/qT;->A05()V

    .line 41534
    :cond_3c
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Fa;->A00:Lcom/facebook/ads/redexgen/X/rV;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/rV;->A0B(Lcom/facebook/ads/redexgen/X/rV;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/rU;

    .line 41535
    .local v0, "listener":Lcom/facebook/ads/redexgen/X/rU;
    if-eqz v0, :cond_4d

    .line 41536
    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/rU;->AFD()V

    .line 41537
    :cond_4d
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Fa;->A00:Lcom/facebook/ads/redexgen/X/rV;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/rV;->A08(Lcom/facebook/ads/redexgen/X/rV;)Lcom/facebook/ads/redexgen/X/c2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/c2;->A0V()V

    .line 41538
    return-void
.end method
