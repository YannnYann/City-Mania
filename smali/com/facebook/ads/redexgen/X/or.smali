###### Class com.facebook.ads.redexgen.X.AbstractC3005or (com.facebook.ads.redexgen.X.or)
.class public abstract Lcom/facebook/ads/redexgen/X/or;
.super Landroid/view/View;
.source ""


# static fields
.field public static final A00:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 3303
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/or;->A00:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public static A00(Z)V
    .registers 2

    .line 106837
    sget-object v0, Lcom/facebook/ads/redexgen/X/or;->A00:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 106838
    return-void
.end method
