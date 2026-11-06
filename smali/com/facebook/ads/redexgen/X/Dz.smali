###### Class com.facebook.ads.redexgen.X.C1557Dz (com.facebook.ads.redexgen.X.Dz)
.class public abstract Lcom/facebook/ads/redexgen/X/Dz;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/EC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Api28Impl"
.end annotation


# direct methods
.method public static A00(Landroid/view/View;)Ljava/lang/CharSequence;
    .registers 1

    .line 34816
    invoke-virtual {p0}, Landroid/view/View;->getAccessibilityPaneTitle()Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method
