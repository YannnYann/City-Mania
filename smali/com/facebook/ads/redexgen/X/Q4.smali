###### Class com.facebook.ads.redexgen.X.Q4 (com.facebook.ads.redexgen.X.Q4)
.class public Lcom/facebook/ads/redexgen/X/Q4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/ZK;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/ZK;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Unseekable"
.end annotation


# instance fields
.field public final A00:J

.field public final A01:Lcom/facebook/ads/redexgen/X/ZJ;


# direct methods
.method public constructor <init>(J)V
    .registers 5

    .line 65843
    const-wide/16 v0, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/facebook/ads/redexgen/X/Q4;-><init>(JJ)V

    .line 65844
    return-void
.end method

.method public constructor <init>(JJ)V
    .registers 8

    .line 65845
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65846
    iput-wide p1, p0, Lcom/facebook/ads/redexgen/X/Q4;->A00:J

    .line 65847
    const-wide/16 v1, 0x0

    cmp-long v0, p3, v1

    if-nez v0, :cond_15

    sget-object v0, Lcom/facebook/ads/redexgen/X/ZL;->A03:Lcom/facebook/ads/redexgen/X/ZL;

    :goto_d
    new-instance v1, Lcom/facebook/ads/redexgen/X/ZJ;

    invoke-direct {v1, v0}, Lcom/facebook/ads/redexgen/X/ZJ;-><init>(Lcom/facebook/ads/redexgen/X/ZL;)V

    iput-object v1, p0, Lcom/facebook/ads/redexgen/X/Q4;->A01:Lcom/facebook/ads/redexgen/X/ZJ;

    .line 65848
    return-void

    .line 65849
    :cond_15
    new-instance v0, Lcom/facebook/ads/redexgen/X/ZL;

    invoke-direct {v0, v1, v2, p3, p4}, Lcom/facebook/ads/redexgen/X/ZL;-><init>(JJ)V

    goto :goto_d
.end method


# virtual methods
.method public final A8U()J
    .registers 3

    .line 65850
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/Q4;->A00:J

    return-wide v0
.end method

.method public final A9e(J)Lcom/facebook/ads/redexgen/X/ZJ;
    .registers 4

    .line 65851
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Q4;->A01:Lcom/facebook/ads/redexgen/X/ZJ;

    return-object v0
.end method

.method public final ABR()Z
    .registers 2

    .line 65852
    const/4 v0, 0x0

    return v0
.end method
