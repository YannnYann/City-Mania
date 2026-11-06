###### Class com.facebook.ads.redexgen.X.C2398es (com.facebook.ads.redexgen.X.es)
.class public final Lcom/facebook/ads/redexgen/X/es;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static A00:Lcom/facebook/ads/redexgen/X/en;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 88512
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final A00(Lcom/facebook/ads/redexgen/X/Hi;Lcom/facebook/ads/internal/protocol/AdPlacementType;)Lcom/facebook/ads/redexgen/X/en;
    .registers 5

    .line 88513
    sget-object v0, Lcom/facebook/ads/redexgen/X/es;->A00:Lcom/facebook/ads/redexgen/X/en;

    if-eqz v0, :cond_7

    .line 88514
    sget-object v0, Lcom/facebook/ads/redexgen/X/es;->A00:Lcom/facebook/ads/redexgen/X/en;

    return-object v0

    .line 88515
    :cond_7
    sget-object v1, Lcom/facebook/ads/redexgen/X/er;->A00:[I

    invoke-virtual {p2}, Lcom/facebook/ads/internal/protocol/AdPlacementType;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_44

    .line 88516
    const/4 v0, 0x0

    return-object v0

    .line 88517
    :pswitch_14
    new-instance v0, Lcom/facebook/ads/redexgen/X/7m;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/7m;-><init>()V

    return-object v0

    .line 88518
    :pswitch_1a
    new-instance v0, Lcom/facebook/ads/redexgen/X/7p;

    invoke-direct {v0, p1}, Lcom/facebook/ads/redexgen/X/7p;-><init>(Lcom/facebook/ads/redexgen/X/Hi;)V

    return-object v0

    .line 88519
    :pswitch_20
    new-instance v0, Lcom/facebook/ads/redexgen/X/Lh;

    invoke-direct {v0, p1}, Lcom/facebook/ads/redexgen/X/Lh;-><init>(Lcom/facebook/ads/redexgen/X/Hi;)V

    return-object v0

    .line 88520
    :pswitch_26
    new-instance v0, Lcom/facebook/ads/redexgen/X/Lq;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/Lq;-><init>()V

    return-object v0

    .line 88521
    :pswitch_2c
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/mv;->A1O(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_38

    .line 88522
    new-instance v0, Lcom/facebook/ads/redexgen/X/7q;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/7q;-><init>()V

    return-object v0

    .line 88523
    :cond_38
    new-instance v0, Lcom/facebook/ads/redexgen/X/7r;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/7r;-><init>()V

    return-object v0

    .line 88524
    :pswitch_3e
    new-instance v0, Lcom/facebook/ads/redexgen/X/7r;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/7r;-><init>()V

    return-object v0

    :pswitch_data_44
    .packed-switch 0x1
        :pswitch_3e
        :pswitch_2c
        :pswitch_26
        :pswitch_20
        :pswitch_1a
        :pswitch_14
    .end packed-switch
.end method

###### Class com.facebook.ads.redexgen.X.C14087p (com.facebook.ads.redexgen.X.7p)
.class public final Lcom/facebook/ads/redexgen/X/7p;
.super Lcom/facebook/ads/redexgen/X/Lh;
.source ""


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Hi;)V
    .registers 2

    .line 22335
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Lh;-><init>(Lcom/facebook/ads/redexgen/X/Hi;)V

    .line 22336
    return-void
.end method


# virtual methods
.method public final A9N()Lcom/facebook/ads/internal/protocol/AdPlacementType;
    .registers 2

    .line 22337
    sget-object v0, Lcom/facebook/ads/internal/protocol/AdPlacementType;->NATIVE_BANNER:Lcom/facebook/ads/internal/protocol/AdPlacementType;

    return-object v0
.end method
