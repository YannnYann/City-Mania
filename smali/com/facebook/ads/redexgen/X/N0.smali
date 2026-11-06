###### Class com.facebook.ads.redexgen.X.N0 (com.facebook.ads.redexgen.X.N0)
.class public final Lcom/facebook/ads/redexgen/X/N0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/dj;


# instance fields
.field public final A00:Lcom/facebook/ads/redexgen/X/dg;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/dg;)V
    .registers 2

    .line 55714
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55715
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/N0;->A00:Lcom/facebook/ads/redexgen/X/dg;

    .line 55716
    return-void
.end method


# virtual methods
.method public final A00()Lcom/facebook/ads/redexgen/X/dg;
    .registers 2

    .line 55717
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/N0;->A00:Lcom/facebook/ads/redexgen/X/dg;

    return-object v0
.end method

.method public final ADB()Lcom/facebook/ads/redexgen/X/86;
    .registers 2

    .line 55718
    new-instance v0, Lcom/facebook/ads/redexgen/X/86;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/86;-><init>(Lcom/facebook/ads/redexgen/X/N0;)V

    return-object v0
.end method

.method public final ADC()Lcom/facebook/ads/redexgen/X/N4;
    .registers 2

    .line 55719
    new-instance v0, Lcom/facebook/ads/redexgen/X/N4;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/N4;-><init>(Lcom/facebook/ads/redexgen/X/N0;)V

    return-object v0
.end method

.method public final ADD(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/N4;
    .registers 3

    .line 55720
    new-instance v0, Lcom/facebook/ads/redexgen/X/N4;

    invoke-direct {v0, p0, p1}, Lcom/facebook/ads/redexgen/X/N4;-><init>(Lcom/facebook/ads/redexgen/X/N0;Ljava/lang/String;)V

    return-object v0
.end method
