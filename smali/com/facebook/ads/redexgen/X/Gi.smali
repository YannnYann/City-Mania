###### Class com.facebook.ads.redexgen.X.C1617Gi (com.facebook.ads.redexgen.X.Gi)
.class public final Lcom/facebook/ads/redexgen/X/Gi;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/th;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/Gf;->A0Q(Lcom/facebook/ads/redexgen/X/GT;Lcom/facebook/ads/redexgen/X/nb;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/Gf;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Gf;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 44090
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Gi;->A00:Lcom/facebook/ads/redexgen/X/Gf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final AFA(Lcom/facebook/ads/redexgen/X/tg;)V
    .registers 5

    .line 44091
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Gi;->A00:Lcom/facebook/ads/redexgen/X/Gf;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Gf;->A0B(Lcom/facebook/ads/redexgen/X/Gf;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/tg;->A00()Landroid/graphics/Bitmap;

    move-result-object v0

    const/4 v2, 0x1

    if-eqz v0, :cond_37

    const/4 v0, 0x1

    :goto_e
    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 44092
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Gi;->A00:Lcom/facebook/ads/redexgen/X/Gf;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Gf;->A0A(Lcom/facebook/ads/redexgen/X/Gf;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_34

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Gi;->A00:Lcom/facebook/ads/redexgen/X/Gf;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Gf;->A06(Lcom/facebook/ads/redexgen/X/Gf;)Lcom/facebook/ads/redexgen/X/nb;

    move-result-object v0

    if-eqz v0, :cond_34

    .line 44093
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Gi;->A00:Lcom/facebook/ads/redexgen/X/Gf;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Gf;->A06(Lcom/facebook/ads/redexgen/X/Gf;)Lcom/facebook/ads/redexgen/X/nb;

    move-result-object v1

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/tg;->A00()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_35

    :goto_31
    invoke-interface {v1, v2}, Lcom/facebook/ads/redexgen/X/nb;->AGG(Z)V

    .line 44094
    :cond_34
    return-void

    .line 44095
    :cond_35
    const/4 v2, 0x0

    goto :goto_31

    .line 44096
    :cond_37
    const/4 v0, 0x0

    goto :goto_e
.end method
