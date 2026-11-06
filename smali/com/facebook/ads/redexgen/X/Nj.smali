###### Class com.facebook.ads.redexgen.X.AbstractC1794Nj (com.facebook.ads.redexgen.X.Nj)
.class public abstract Lcom/facebook/ads/redexgen/X/Nj;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public A00:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 58190
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final A00(I)V
    .registers 3

    .line 58191
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Nj;->A00:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Nj;->A00:I

    .line 58192
    return-void
.end method

.method public final A01(I)V
    .registers 4

    .line 58193
    iget v1, p0, Lcom/facebook/ads/redexgen/X/Nj;->A00:I

    not-int v0, p1

    and-int/2addr v1, v0

    iput v1, p0, Lcom/facebook/ads/redexgen/X/Nj;->A00:I

    .line 58194
    return-void
.end method

.method public final A02(I)V
    .registers 2

    .line 58195
    iput p1, p0, Lcom/facebook/ads/redexgen/X/Nj;->A00:I

    .line 58196
    return-void
.end method

.method public final A03()Z
    .registers 2

    .line 58197
    const/high16 v0, 0x10000000

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/Nj;->A09(I)Z

    move-result v0

    return v0
.end method

.method public final A04()Z
    .registers 2

    .line 58198
    const/high16 v0, -0x80000000

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/Nj;->A09(I)Z

    move-result v0

    return v0
.end method

.method public final A05()Z
    .registers 2

    .line 58199
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/Nj;->A09(I)Z

    move-result v0

    return v0
.end method

.method public final A06()Z
    .registers 2

    .line 58200
    const/high16 v0, 0x8000000

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/Nj;->A09(I)Z

    move-result v0

    return v0
.end method

.method public final A07()Z
    .registers 2

    .line 58201
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/Nj;->A09(I)Z

    move-result v0

    return v0
.end method

.method public final A08()Z
    .registers 2
    .annotation runtime Lcom/facebook/video/heroplayer/exocustom/MetaExoPlayerCustomization;
    .end annotation

    .line 58202
    const/high16 v0, 0x20000000

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/Nj;->A09(I)Z

    move-result v0

    return v0
.end method

.method public final A09(I)Z
    .registers 3

    .line 58203
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Nj;->A00:I

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public A0A()V
    .registers 2

    .line 58204
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Nj;->A00:I

    .line 58205
    return-void
.end method
