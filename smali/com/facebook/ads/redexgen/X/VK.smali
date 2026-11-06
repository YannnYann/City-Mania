###### Class com.facebook.ads.redexgen.X.VK (com.facebook.ads.redexgen.X.VK)
.class public abstract Lcom/facebook/ads/redexgen/X/VK;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/LQ;


# instance fields
.field public final A00:Lcom/facebook/ads/redexgen/X/UK;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 74308
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74309
    new-instance v0, Lcom/facebook/ads/redexgen/X/UK;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/UK;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/VK;->A00:Lcom/facebook/ads/redexgen/X/UK;

    .line 74310
    return-void
.end method


# virtual methods
.method public final A00()I
    .registers 10

    .line 74311
    invoke-interface {p0}, Lcom/facebook/ads/redexgen/X/LQ;->A7h()J

    move-result-wide v7

    .line 74312
    .local v0, "position":J
    invoke-interface {p0}, Lcom/facebook/ads/redexgen/X/LQ;->A8T()J

    move-result-wide v5

    .line 74313
    .local v2, "duration":J
    const/4 v4, 0x0

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v7, v1

    if-eqz v0, :cond_16

    cmp-long v0, v5, v1

    if-nez v0, :cond_17

    :cond_16
    :goto_16
    return v4

    .line 74314
    :cond_17
    const-wide/16 v1, 0x0

    const/16 v3, 0x64

    cmp-long v0, v5, v1

    if-nez v0, :cond_22

    const/16 v4, 0x64

    goto :goto_16

    :cond_22
    const-wide/16 v1, 0x64

    mul-long/2addr v1, v7

    div-long/2addr v1, v5

    long-to-int v0, v1

    invoke-static {v0, v4, v3}, Lcom/facebook/ads/redexgen/X/N1;->A07(III)I

    move-result v4

    goto :goto_16
.end method

.method public A01()V
    .registers 2

    .line 74315
    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lcom/facebook/ads/redexgen/X/LQ;->ALZ(Z)V

    .line 74316
    return-void
.end method

.method public final A02()V
    .registers 2

    .line 74317
    invoke-interface {p0}, Lcom/facebook/ads/redexgen/X/LQ;->A8I()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/VK;->A03(I)V

    .line 74318
    return-void
.end method

.method public final A03(I)V
    .registers 4

    .line 74319
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    invoke-virtual {p0, p1, v0, v1}, Lcom/facebook/ads/redexgen/X/VK;->A0H(IJ)V

    .line 74320
    return-void
.end method

.method public final A04(J)V
    .registers 4

    .line 74321
    invoke-interface {p0}, Lcom/facebook/ads/redexgen/X/LQ;->A8I()I

    move-result v0

    invoke-virtual {p0, v0, p1, p2}, Lcom/facebook/ads/redexgen/X/VK;->A0H(IJ)V

    .line 74322
    return-void
.end method

.method public abstract A0H(IJ)V
    .annotation runtime Lcom/facebook/video/heroplayer/exocustom/MetaExoPlayerCustomization;
    .end annotation
.end method
