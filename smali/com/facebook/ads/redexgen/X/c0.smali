###### Class com.facebook.ads.redexgen.X.C2222c0 (com.facebook.ads.redexgen.X.c0)
.class public final Lcom/facebook/ads/redexgen/X/c0;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public A00:F

.field public A01:Lcom/facebook/ads/redexgen/X/dd;

.field public A02:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/dd;)V
    .registers 3

    .line 84494
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/c0;-><init>(Lcom/facebook/ads/redexgen/X/dd;F)V

    .line 84495
    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/dd;F)V
    .registers 4

    .line 84496
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/facebook/ads/redexgen/X/c0;-><init>(Lcom/facebook/ads/redexgen/X/dd;FLjava/util/Map;)V

    .line 84497
    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/dd;FLjava/util/Map;)V
    .registers 5
    .param p1    # Lcom/facebook/ads/redexgen/X/dd;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/dd;",
            "F",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 84498
    .local p3, "windowParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84499
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/c0;->A01:Lcom/facebook/ads/redexgen/X/dd;

    .line 84500
    iput p2, p0, Lcom/facebook/ads/redexgen/X/c0;->A00:F

    .line 84501
    if-eqz p3, :cond_c

    .line 84502
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/c0;->A02:Ljava/util/Map;

    .line 84503
    :goto_b
    return-void

    .line 84504
    :cond_c
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/c0;->A02:Ljava/util/Map;

    goto :goto_b
.end method


# virtual methods
.method public final A00()F
    .registers 2

    .line 84505
    iget v0, p0, Lcom/facebook/ads/redexgen/X/c0;->A00:F

    return v0
.end method

.method public final A01()I
    .registers 2

    .line 84506
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/c0;->A01:Lcom/facebook/ads/redexgen/X/dd;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/dd;->A03()I

    move-result v0

    return v0
.end method

.method public final A02()Lcom/facebook/ads/redexgen/X/dd;
    .registers 2

    .line 84507
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/c0;->A01:Lcom/facebook/ads/redexgen/X/dd;

    return-object v0
.end method

.method public final A03()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 84508
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/c0;->A02:Ljava/util/Map;

    return-object v0
.end method

.method public final A04()Z
    .registers 3

    .line 84509
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/c0;->A01:Lcom/facebook/ads/redexgen/X/dd;

    sget-object v0, Lcom/facebook/ads/redexgen/X/dd;->A0J:Lcom/facebook/ads/redexgen/X/dd;

    if-ne v1, v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method
