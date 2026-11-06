###### Class com.facebook.ads.redexgen.X.Cdo (com.facebook.ads.redexgen.X.do)
.class public final Lcom/facebook/ads/redexgen/X/do;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/51;->A07()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/51;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/51;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 87402
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/do;->A00:Lcom/facebook/ads/redexgen/X/51;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 6

    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/oi;->A02(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    move-object v3, p0

    .line 87403
    .local v0, "this":Lcom/facebook/ads/redexgen/X/do;
    .local p1, "v":Landroid/view/View;
    :try_start_8
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/do;->A00:Lcom/facebook/ads/redexgen/X/51;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/51;->A02(Lcom/facebook/ads/redexgen/X/51;)Lcom/facebook/ads/redexgen/X/Be;

    move-result-object v0

    if-nez v0, :cond_11

    .line 87404
    return-void

    .line 87405
    :cond_11
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/do;->A00:Lcom/facebook/ads/redexgen/X/51;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/51;->A01(Lcom/facebook/ads/redexgen/X/51;)Lcom/facebook/ads/redexgen/X/nO;

    move-result-object v0

    if-eqz v0, :cond_25

    .line 87406
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/do;->A00:Lcom/facebook/ads/redexgen/X/51;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/51;->A01(Lcom/facebook/ads/redexgen/X/51;)Lcom/facebook/ads/redexgen/X/nO;

    move-result-object v2

    sget-object v1, Lcom/facebook/ads/redexgen/X/nN;->A1B:Lcom/facebook/ads/redexgen/X/nN;

    const/4 v0, 0x0

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/nO;->A04(Lcom/facebook/ads/redexgen/X/nN;Ljava/util/Map;)V

    .line 87407
    .end local v0    # "this":Lcom/facebook/ads/redexgen/X/do;
    :cond_25
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/do;->A00:Lcom/facebook/ads/redexgen/X/51;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/51;->A00(Lcom/facebook/ads/redexgen/X/51;)Lcom/facebook/ads/redexgen/X/Hi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Hi;->A0F()Lcom/facebook/ads/redexgen/X/df;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/df;->A43()V

    .line 87408
    sget-object v1, Lcom/facebook/ads/redexgen/X/dn;->A00:[I

    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/do;->A00:Lcom/facebook/ads/redexgen/X/51;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/51;->A03(Lcom/facebook/ads/redexgen/X/51;)Lcom/facebook/ads/redexgen/X/Be;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Be;->getState()Lcom/facebook/ads/redexgen/X/cC;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/cC;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_68

    goto :goto_62

    .line 87409
    :pswitch_48
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/do;->A00:Lcom/facebook/ads/redexgen/X/51;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/51;->A05(Lcom/facebook/ads/redexgen/X/51;)Lcom/facebook/ads/redexgen/X/Be;

    move-result-object v2

    const/4 v1, 0x1

    const/16 v0, 0x8

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Be;->A0j(ZI)V

    goto :goto_62

    .line 87410
    :pswitch_55
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/do;->A00:Lcom/facebook/ads/redexgen/X/51;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/51;->A04(Lcom/facebook/ads/redexgen/X/51;)Lcom/facebook/ads/redexgen/X/Be;

    move-result-object v2

    sget-object v1, Lcom/facebook/ads/redexgen/X/e4;->A05:Lcom/facebook/ads/redexgen/X/e4;

    .line 87411
    const/16 v0, 0xc

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Be;->A0f(Lcom/facebook/ads/redexgen/X/e4;I)V

    .line 87412
    :goto_62
    return-void
    :try_end_63
    .catchall {:try_start_8 .. :try_end_63} :catchall_63

    .end local p1    # "v":Landroid/view/View;
    :catchall_63
    move-exception v0

    invoke-static {v0, v3}, Lcom/facebook/ads/redexgen/X/oi;->A00(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void

    :pswitch_data_68
    .packed-switch 0x1
        :pswitch_55
        :pswitch_55
        :pswitch_55
        :pswitch_55
        :pswitch_48
    .end packed-switch
.end method
