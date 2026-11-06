###### Class com.facebook.ads.redexgen.X.AbstractC2487gJ (com.facebook.ads.redexgen.X.gJ)
.class public abstract Lcom/facebook/ads/redexgen/X/gJ;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static A00:Lcom/facebook/ads/redexgen/X/gI;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public static final A01:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 2512
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/gJ;->A01:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public static A00(Lcom/facebook/ads/redexgen/X/Hh;)Lcom/facebook/ads/redexgen/X/gI;
    .registers 2

    .line 91308
    sget-object v0, Lcom/facebook/ads/redexgen/X/gJ;->A00:Lcom/facebook/ads/redexgen/X/gI;

    if-nez v0, :cond_b

    .line 91309
    new-instance v0, Lcom/facebook/ads/redexgen/X/gI;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/gI;-><init>(Lcom/facebook/ads/redexgen/X/Hh;)V

    sput-object v0, Lcom/facebook/ads/redexgen/X/gJ;->A00:Lcom/facebook/ads/redexgen/X/gI;

    .line 91310
    :cond_b
    sget-object v0, Lcom/facebook/ads/redexgen/X/gJ;->A00:Lcom/facebook/ads/redexgen/X/gI;

    return-object v0
.end method

.method public static A01(Lcom/facebook/ads/redexgen/X/Hh;)V
    .registers 2

    .line 91311
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/my;->A0M(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 91312
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/gJ;->A03(Lcom/facebook/ads/redexgen/X/Hh;)V

    .line 91313
    :cond_9
    return-void
.end method

.method public static A02(Lcom/facebook/ads/redexgen/X/Hh;)V
    .registers 2

    .line 91314
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/my;->A0L(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 91315
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/gJ;->A03(Lcom/facebook/ads/redexgen/X/Hh;)V

    .line 91316
    :cond_9
    return-void
.end method

.method public static A03(Lcom/facebook/ads/redexgen/X/Hh;)V
    .registers 4

    .line 91317
    sget-object v2, Lcom/facebook/ads/redexgen/X/gJ;->A01:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-virtual {v2, v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 91318
    sget-object v1, Lcom/facebook/ads/redexgen/X/qV;->A01:Lcom/facebook/ads/redexgen/X/qV;

    new-instance v0, Lcom/facebook/ads/redexgen/X/Je;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Je;-><init>(Lcom/facebook/ads/redexgen/X/Hh;)V

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/qV;->execute(Ljava/lang/Runnable;)V

    .line 91319
    :cond_14
    return-void
.end method
