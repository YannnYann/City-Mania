###### Class com.facebook.ads.redexgen.X.AbstractC3069pw (com.facebook.ads.redexgen.X.pw)
.class public abstract Lcom/facebook/ads/redexgen/X/pw;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final A00:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Landroid/util/DisplayMetrics;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 3458
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/pw;->A00:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method public static A00()Landroid/util/DisplayMetrics;
    .registers 1

    .line 108424
    sget-object v0, Lcom/facebook/ads/redexgen/X/pw;->A00:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 108425
    sget-object v0, Lcom/facebook/ads/redexgen/X/pw;->A00:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/DisplayMetrics;

    return-object v0

    .line 108426
    :cond_11
    sget-object v0, Lcom/facebook/ads/redexgen/X/px;->A04:Landroid/util/DisplayMetrics;

    return-object v0
.end method
