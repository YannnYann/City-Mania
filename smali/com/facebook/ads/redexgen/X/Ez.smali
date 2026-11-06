###### Class com.facebook.ads.redexgen.X.C1583Ez (com.facebook.ads.redexgen.X.Ez)
.class public final Lcom/facebook/ads/redexgen/X/Ez;
.super Lcom/facebook/ads/redexgen/X/c3;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/Ev;-><init>(Lcom/facebook/ads/redexgen/X/Hi;Ljava/lang/ref/WeakReference;IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/Ev;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Ev;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 39403
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Ez;->A00:Lcom/facebook/ads/redexgen/X/Ev;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/c3;-><init>()V

    return-void
.end method


# virtual methods
.method public final A03()V
    .registers 2

    .line 39404
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ez;->A00:Lcom/facebook/ads/redexgen/X/Ev;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ev;->A06(Lcom/facebook/ads/redexgen/X/Ev;)Z

    move-result v0

    if-nez v0, :cond_14

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ez;->A00:Lcom/facebook/ads/redexgen/X/Ev;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ev;->A00(Lcom/facebook/ads/redexgen/X/Ev;)Lcom/facebook/ads/redexgen/X/qT;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/qT;->A07()Z

    move-result v0

    if-nez v0, :cond_1d

    .line 39405
    :cond_14
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ez;->A00:Lcom/facebook/ads/redexgen/X/Ev;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ev;->A00(Lcom/facebook/ads/redexgen/X/Ev;)Lcom/facebook/ads/redexgen/X/qT;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/qT;->A05()V

    .line 39406
    :cond_1d
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ez;->A00:Lcom/facebook/ads/redexgen/X/Ev;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ev;->A03(Lcom/facebook/ads/redexgen/X/Ev;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_38

    .line 39407
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ez;->A00:Lcom/facebook/ads/redexgen/X/Ev;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ev;->A03(Lcom/facebook/ads/redexgen/X/Ev;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/ta;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/ta;->AFD()V

    .line 39408
    :cond_38
    return-void
.end method
