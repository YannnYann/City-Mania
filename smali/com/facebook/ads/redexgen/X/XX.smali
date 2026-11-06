###### Class com.facebook.ads.redexgen.X.XX (com.facebook.ads.redexgen.X.XX)
.class public final Lcom/facebook/ads/redexgen/X/XX;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/XW;
    }
.end annotation


# instance fields
.field public A00:I

.field public A01:J

.field public A02:Lcom/facebook/ads/redexgen/X/XW;

.field public A03:Lcom/facebook/ads/redexgen/X/XW;

.field public A04:Z

.field public A05:Z


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 76524
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76525
    new-instance v0, Lcom/facebook/ads/redexgen/X/XW;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/XW;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/XX;->A03:Lcom/facebook/ads/redexgen/X/XW;

    .line 76526
    new-instance v0, Lcom/facebook/ads/redexgen/X/XW;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/XW;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/XX;->A02:Lcom/facebook/ads/redexgen/X/XW;

    .line 76527
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/XX;->A01:J

    .line 76528
    return-void
.end method


# virtual methods
.method public final A00()F
    .registers 6

    .line 76529
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/XX;->A06()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 76530
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XX;->A03:Lcom/facebook/ads/redexgen/X/XW;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/XW;->A01()J

    move-result-wide v0

    long-to-double v3, v0

    const-wide v1, 0x41cdcd6500000000L    # 1.0E9

    div-double/2addr v1, v3

    double-to-float v0, v1

    .line 76531
    :goto_14
    return v0

    .line 76532
    :cond_15
    const/high16 v0, -0x40800000    # -1.0f

    goto :goto_14
.end method

.method public final A01()I
    .registers 2

    .line 76533
    iget v0, p0, Lcom/facebook/ads/redexgen/X/XX;->A00:I

    return v0
.end method

.method public final A02()J
    .registers 3

    .line 76534
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/XX;->A06()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XX;->A03:Lcom/facebook/ads/redexgen/X/XW;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/XW;->A01()J

    move-result-wide v0

    :goto_c
    return-wide v0

    :cond_d
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    goto :goto_c
.end method

.method public final A03()J
    .registers 3

    .line 76535
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/XX;->A06()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XX;->A03:Lcom/facebook/ads/redexgen/X/XW;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/XW;->A02()J

    move-result-wide v0

    :goto_c
    return-wide v0

    :cond_d
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    goto :goto_c
.end method

.method public final A04()V
    .registers 4

    .line 76536
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XX;->A03:Lcom/facebook/ads/redexgen/X/XW;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/XW;->A03()V

    .line 76537
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XX;->A02:Lcom/facebook/ads/redexgen/X/XW;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/XW;->A03()V

    .line 76538
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/facebook/ads/redexgen/X/XX;->A04:Z

    .line 76539
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/XX;->A01:J

    .line 76540
    iput v2, p0, Lcom/facebook/ads/redexgen/X/XX;->A00:I

    .line 76541
    return-void
.end method

.method public final A05(J)V
    .registers 10

    .line 76542
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XX;->A03:Lcom/facebook/ads/redexgen/X/XW;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/XW;->A04(J)V

    .line 76543
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XX;->A03:Lcom/facebook/ads/redexgen/X/XW;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/XW;->A06()Z

    move-result v0

    const/4 v4, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_3f

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/XX;->A05:Z

    if-nez v0, :cond_3f

    .line 76544
    iput-boolean v3, p0, Lcom/facebook/ads/redexgen/X/XX;->A04:Z

    .line 76545
    :cond_15
    :goto_15
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/XX;->A04:Z

    if-eqz v0, :cond_2d

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XX;->A02:Lcom/facebook/ads/redexgen/X/XW;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/XW;->A06()Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 76546
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/XX;->A03:Lcom/facebook/ads/redexgen/X/XW;

    .line 76547
    .local v0, "previousMatcher":Lcom/facebook/ads/redexgen/X/XW;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XX;->A02:Lcom/facebook/ads/redexgen/X/XW;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/XX;->A03:Lcom/facebook/ads/redexgen/X/XW;

    .line 76548
    iput-object v1, p0, Lcom/facebook/ads/redexgen/X/XX;->A02:Lcom/facebook/ads/redexgen/X/XW;

    .line 76549
    iput-boolean v3, p0, Lcom/facebook/ads/redexgen/X/XX;->A04:Z

    .line 76550
    iput-boolean v3, p0, Lcom/facebook/ads/redexgen/X/XX;->A05:Z

    .line 76551
    .end local v0    # "previousMatcher":Lcom/facebook/ads/redexgen/X/XW;
    :cond_2d
    iput-wide p1, p0, Lcom/facebook/ads/redexgen/X/XX;->A01:J

    .line 76552
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XX;->A03:Lcom/facebook/ads/redexgen/X/XW;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/XW;->A06()Z

    move-result v0

    if-eqz v0, :cond_3a

    :goto_37
    iput v3, p0, Lcom/facebook/ads/redexgen/X/XX;->A00:I

    .line 76553
    return-void

    .line 76554
    :cond_3a
    iget v0, p0, Lcom/facebook/ads/redexgen/X/XX;->A00:I

    add-int/lit8 v3, v0, 0x1

    goto :goto_37

    .line 76555
    :cond_3f
    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/XX;->A01:J

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v1, v5

    if-eqz v0, :cond_15

    .line 76556
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/XX;->A04:Z

    if-eqz v0, :cond_56

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XX;->A02:Lcom/facebook/ads/redexgen/X/XW;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/XW;->A05()Z

    move-result v0

    if-eqz v0, :cond_62

    .line 76557
    :cond_56
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XX;->A02:Lcom/facebook/ads/redexgen/X/XW;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/XW;->A03()V

    .line 76558
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/XX;->A02:Lcom/facebook/ads/redexgen/X/XW;

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/XX;->A01:J

    invoke-virtual {v2, v0, v1}, Lcom/facebook/ads/redexgen/X/XW;->A04(J)V

    .line 76559
    :cond_62
    iput-boolean v4, p0, Lcom/facebook/ads/redexgen/X/XX;->A04:Z

    .line 76560
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XX;->A02:Lcom/facebook/ads/redexgen/X/XW;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/XW;->A04(J)V

    goto :goto_15
.end method

.method public final A06()Z
    .registers 2

    .line 76561
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XX;->A03:Lcom/facebook/ads/redexgen/X/XW;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/XW;->A06()Z

    move-result v0

    return v0
.end method
