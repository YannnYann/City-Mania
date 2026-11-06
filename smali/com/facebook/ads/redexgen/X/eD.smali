###### Class com.facebook.ads.redexgen.X.C2358eD (com.facebook.ads.redexgen.X.eD)
.class public final Lcom/facebook/ads/redexgen/X/eD;
.super Landroid/database/ContentObserver;
.source ""


# instance fields
.field public final A00:Lcom/facebook/ads/redexgen/X/BR;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Lcom/facebook/ads/redexgen/X/BR;)V
    .registers 3

    .line 87729
    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 87730
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/eD;->A00:Lcom/facebook/ads/redexgen/X/BR;

    .line 87731
    return-void
.end method


# virtual methods
.method public final deliverSelfNotifications()Z
    .registers 2

    .line 87732
    const/4 v0, 0x0

    return v0
.end method

.method public final onChange(Z)V
    .registers 3

    .line 87733
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/eD;->A00:Lcom/facebook/ads/redexgen/X/BR;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/BR;->A0f()V

    .line 87734
    return-void
.end method
