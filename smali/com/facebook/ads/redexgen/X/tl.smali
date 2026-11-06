###### Class com.facebook.ads.redexgen.X.AbstractC3306tl (com.facebook.ads.redexgen.X.tl)
.class public abstract Lcom/facebook/ads/redexgen/X/tl;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/tk;
    }
.end annotation


# direct methods
.method public static A00(Landroid/view/View;ZLandroid/view/View$OnClickListener;)V
    .registers 5

    .line 113124
    if-nez p1, :cond_6

    .line 113125
    invoke-virtual {p0, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 113126
    .end local v0
    :cond_5
    :goto_5
    return-void

    .line 113127
    :cond_6
    if-eqz p1, :cond_5

    .line 113128
    new-instance v1, Lcom/facebook/ads/redexgen/X/tk;

    invoke-direct {v1, p2}, Lcom/facebook/ads/redexgen/X/tk;-><init>(Landroid/view/View$OnClickListener;)V

    .line 113129
    .local v0, "clickListener":Lcom/facebook/ads/redexgen/X/tk;
    invoke-virtual {p0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 113130
    new-instance v0, Lcom/facebook/ads/redexgen/X/tj;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/tj;-><init>(Lcom/facebook/ads/redexgen/X/tk;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_5
.end method
