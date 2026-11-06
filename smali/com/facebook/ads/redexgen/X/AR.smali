###### Class com.facebook.ads.redexgen.X.AR (com.facebook.ads.redexgen.X.AR)
.class public final Lcom/facebook/ads/redexgen/X/AR;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Zb;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 29675
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final A6L()J
    .registers 3

    .line 29676
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public final ALM(Ljava/lang/Object;J)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 29677
    invoke-virtual {p1, p2, p3}, Ljava/lang/Object;->wait(J)V

    .line 29678
    return-void
.end method
