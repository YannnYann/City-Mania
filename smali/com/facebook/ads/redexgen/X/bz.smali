###### Class com.facebook.ads.redexgen.X.AbstractC2221bz (com.facebook.ads.redexgen.X.bz)
.class public abstract Lcom/facebook/ads/redexgen/X/bz;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static A00(Landroid/view/View;)Z
    .registers 2

    .line 84490
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_10

    .line 84491
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getAlpha()I

    move-result v0

    if-gtz v0, :cond_12

    :cond_10
    const/4 v0, 0x1

    .line 84492
    :goto_11
    return v0

    .line 84493
    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method
