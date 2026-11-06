###### Class com.facebook.ads.redexgen.X.WG (com.facebook.ads.redexgen.X.WG)
.class public final Lcom/facebook/ads/redexgen/X/WG;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/4B;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AdaptationCheckpoint"
.end annotation


# instance fields
.field public final A00:J

.field public final A01:J


# direct methods
.method public constructor <init>(JJ)V
    .registers 5

    .line 75723
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75724
    iput-wide p1, p0, Lcom/facebook/ads/redexgen/X/WG;->A01:J

    .line 75725
    iput-wide p3, p0, Lcom/facebook/ads/redexgen/X/WG;->A00:J

    .line 75726
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 8

    .line 75727
    const/4 v5, 0x1

    if-ne p0, p1, :cond_4

    .line 75728
    return v5

    .line 75729
    :cond_4
    instance-of v1, p1, Lcom/facebook/ads/redexgen/X/WG;

    const/4 v0, 0x0

    if-nez v1, :cond_a

    .line 75730
    return v0

    .line 75731
    :cond_a
    check-cast p1, Lcom/facebook/ads/redexgen/X/WG;

    .line 75732
    .local v1, "that":Lcom/facebook/ads/redexgen/X/WG;
    iget-wide v3, p0, Lcom/facebook/ads/redexgen/X/WG;->A01:J

    iget-wide v1, p1, Lcom/facebook/ads/redexgen/X/WG;->A01:J

    cmp-long v0, v3, v1

    if-nez v0, :cond_1d

    iget-wide v3, p0, Lcom/facebook/ads/redexgen/X/WG;->A00:J

    iget-wide v1, p1, Lcom/facebook/ads/redexgen/X/WG;->A00:J

    cmp-long v0, v3, v1

    if-nez v0, :cond_1d

    :goto_1c
    return v5

    :cond_1d
    const/4 v5, 0x0

    goto :goto_1c
.end method

.method public final hashCode()I
    .registers 5

    .line 75733
    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/WG;->A01:J

    long-to-int v0, v1

    mul-int/lit8 v3, v0, 0x1f

    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/WG;->A00:J

    long-to-int v0, v1

    add-int/2addr v3, v0

    return v3
.end method
