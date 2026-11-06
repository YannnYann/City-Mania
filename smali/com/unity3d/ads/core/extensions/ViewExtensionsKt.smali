###### Class com.unity3d.ads.core.extensions.ViewExtensionsKt (com.unity3d.ads.core.extensions.ViewExtensionsKt)
.class public final Lcom/unity3d/ads/core/extensions/ViewExtensionsKt;
.super Ljava/lang/Object;
.source "ViewExtensions.kt"


# direct methods
.method public static final removeViewFromParent(Landroid/view/View;)V
    .registers 4

    const/4 v0, 0x0

    if-eqz p0, :cond_8

    .line 7
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    goto :goto_9

    :cond_8
    move-object v1, v0

    :goto_9
    instance-of v2, v1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_10

    move-object v0, v1

    check-cast v0, Landroid/view/ViewGroup;

    :cond_10
    if-eqz v0, :cond_15

    .line 8
    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_15
    return-void
.end method
