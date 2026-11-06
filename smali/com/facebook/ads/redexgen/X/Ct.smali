###### Class com.facebook.ads.redexgen.X.C1525Ct (com.facebook.ads.redexgen.X.Ct)
.class public final Lcom/facebook/ads/redexgen/X/Ct;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/ph;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/5w;->A0B(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/5w;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/5w;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 33595
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Ct;->A00:Lcom/facebook/ads/redexgen/X/5w;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final AET()V
    .registers 3

    .line 33596
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ct;->A00:Lcom/facebook/ads/redexgen/X/5w;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/D8;->A09:Lcom/facebook/ads/redexgen/X/r2;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ct;->A00:Lcom/facebook/ads/redexgen/X/5w;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/5w;->A00(Lcom/facebook/ads/redexgen/X/5w;)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/r2;->setToolbarActionMode(I)V

    .line 33597
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ct;->A00:Lcom/facebook/ads/redexgen/X/5w;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/D8;->A09:Lcom/facebook/ads/redexgen/X/r2;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/r2;->A0A()V

    .line 33598
    return-void
.end method

.method public final AGb(F)V
    .registers 2

    .line 33599
    return-void
.end method
