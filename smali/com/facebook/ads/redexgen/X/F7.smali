###### Class com.facebook.ads.redexgen.X.F7 (com.facebook.ads.redexgen.X.F7)
.class public final Lcom/facebook/ads/redexgen/X/F7;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/tQ;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/F6;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/F6;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/F6;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 39693
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/F7;->A00:Lcom/facebook/ads/redexgen/X/F6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final AE7(Z)V
    .registers 4

    .line 39694
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/F7;->A00:Lcom/facebook/ads/redexgen/X/F6;

    invoke-static {v0, p1}, Lcom/facebook/ads/redexgen/X/F6;->A0B(Lcom/facebook/ads/redexgen/X/F6;Z)V

    .line 39695
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/F7;->A00:Lcom/facebook/ads/redexgen/X/F6;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/F6;->A0E(Lcom/facebook/ads/redexgen/X/F6;)Z

    move-result v0

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/F7;->A00:Lcom/facebook/ads/redexgen/X/F6;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/F6;->A02(Lcom/facebook/ads/redexgen/X/F6;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_2b

    .line 39696
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/F7;->A00:Lcom/facebook/ads/redexgen/X/F6;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/F6;->A02(Lcom/facebook/ads/redexgen/X/F6;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 39697
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/F7;->A00:Lcom/facebook/ads/redexgen/X/F6;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/F6;->A02(Lcom/facebook/ads/redexgen/X/F6;)Landroid/widget/ImageView;

    move-result-object v1

    if-eqz p1, :cond_2c

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_28
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 39698
    :cond_2b
    return-void

    .line 39699
    :cond_2c
    const v0, 0x3e99999a    # 0.3f

    goto :goto_28
.end method

.method public final AF0(Z)V
    .registers 4

    .line 39700
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/F7;->A00:Lcom/facebook/ads/redexgen/X/F6;

    invoke-static {v0, p1}, Lcom/facebook/ads/redexgen/X/F6;->A0B(Lcom/facebook/ads/redexgen/X/F6;Z)V

    .line 39701
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/F7;->A00:Lcom/facebook/ads/redexgen/X/F6;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/F6;->A0E(Lcom/facebook/ads/redexgen/X/F6;)Z

    move-result v0

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/F7;->A00:Lcom/facebook/ads/redexgen/X/F6;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/F6;->A03(Lcom/facebook/ads/redexgen/X/F6;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_2b

    .line 39702
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/F7;->A00:Lcom/facebook/ads/redexgen/X/F6;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/F6;->A03(Lcom/facebook/ads/redexgen/X/F6;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 39703
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/F7;->A00:Lcom/facebook/ads/redexgen/X/F6;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/F6;->A03(Lcom/facebook/ads/redexgen/X/F6;)Landroid/widget/ImageView;

    move-result-object v1

    if-eqz p1, :cond_2c

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_28
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 39704
    :cond_2b
    return-void

    .line 39705
    :cond_2c
    const v0, 0x3e99999a    # 0.3f

    goto :goto_28
.end method
