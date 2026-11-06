###### Class com.facebook.ads.redexgen.X.C1812Ob (com.facebook.ads.redexgen.X.Ob)
.class public final Lcom/facebook/ads/redexgen/X/Ob;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/94;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PlaybackInfoUpdate"
.end annotation


# instance fields
.field public A00:I

.field public A01:I

.field public A02:Lcom/facebook/ads/redexgen/X/PO;

.field public A03:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 60598
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/facebook/ads/redexgen/X/OX;)V
    .registers 2

    .line 60599
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Ob;-><init>()V

    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/Ob;)I
    .registers 1

    .line 60600
    iget p0, p0, Lcom/facebook/ads/redexgen/X/Ob;->A01:I

    return p0
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/Ob;)I
    .registers 1

    .line 60601
    iget p0, p0, Lcom/facebook/ads/redexgen/X/Ob;->A00:I

    return p0
.end method

.method public static synthetic A02(Lcom/facebook/ads/redexgen/X/Ob;)Z
    .registers 1

    .line 60602
    iget-boolean p0, p0, Lcom/facebook/ads/redexgen/X/Ob;->A03:Z

    return p0
.end method


# virtual methods
.method public final A03(I)V
    .registers 3

    .line 60603
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Ob;->A01:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Ob;->A01:I

    .line 60604
    return-void
.end method

.method public final A04(I)V
    .registers 5

    .line 60605
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Ob;->A03:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_12

    iget v1, p0, Lcom/facebook/ads/redexgen/X/Ob;->A00:I

    const/4 v0, 0x4

    if-eq v1, v0, :cond_12

    .line 60606
    if-ne p1, v0, :cond_10

    :goto_c
    invoke-static {v2}, Lcom/facebook/ads/redexgen/X/Ln;->A07(Z)V

    .line 60607
    return-void

    .line 60608
    :cond_10
    const/4 v2, 0x0

    goto :goto_c

    .line 60609
    :cond_12
    iput-boolean v2, p0, Lcom/facebook/ads/redexgen/X/Ob;->A03:Z

    .line 60610
    iput p1, p0, Lcom/facebook/ads/redexgen/X/Ob;->A00:I

    .line 60611
    return-void
.end method

.method public final A05(Lcom/facebook/ads/redexgen/X/PO;)V
    .registers 3

    .line 60612
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Ob;->A02:Lcom/facebook/ads/redexgen/X/PO;

    .line 60613
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Ob;->A01:I

    .line 60614
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Ob;->A03:Z

    .line 60615
    return-void
.end method

.method public final A06(Lcom/facebook/ads/redexgen/X/PO;)Z
    .registers 3

    .line 60616
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ob;->A02:Lcom/facebook/ads/redexgen/X/PO;

    if-ne p1, v0, :cond_c

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Ob;->A01:I

    if-gtz v0, :cond_c

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Ob;->A03:Z

    if-eqz v0, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method
