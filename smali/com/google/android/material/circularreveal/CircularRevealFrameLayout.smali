###### Class com.google.android.material.circularreveal.CircularRevealFrameLayout (com.google.android.material.circularreveal.CircularRevealFrameLayout)
.class public Lcom/google/android/material/circularreveal/CircularRevealFrameLayout;
.super Landroid/widget/FrameLayout;
.source "CircularRevealFrameLayout.java"

# interfaces
.implements Lcom/google/android/material/circularreveal/CircularRevealWidget;


# virtual methods
.method public buildCircularRevealCache()V
    .registers 2

    const/4 v0, 0x0

    .line 44
    throw v0
.end method

.method public destroyCircularRevealCache()V
    .registers 2

    const/4 v0, 0x0

    .line 49
    throw v0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .registers 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingSuperCall"
        }
    .end annotation

    .line 90
    invoke-super {p0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public getCircularRevealOverlayDrawable()Landroid/graphics/drawable/Drawable;
    .registers 2

    const/4 v0, 0x0

    .line 76
    throw v0
.end method

.method public getCircularRevealScrimColor()I
    .registers 2

    const/4 v0, 0x0

    .line 65
    throw v0
.end method

.method public getRevealInfo()Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;
    .registers 2

    const/4 v0, 0x0

    .line 55
    throw v0
.end method

.method public isOpaque()Z
    .registers 2

    .line 104
    invoke-super {p0}, Landroid/view/View;->isOpaque()Z

    move-result v0

    return v0
.end method

.method public setCircularRevealOverlayDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    const/4 p1, 0x0

    .line 81
    throw p1
.end method

.method public setCircularRevealScrimColor(I)V
    .registers 2

    const/4 p1, 0x0

    .line 70
    throw p1
.end method

.method public setRevealInfo(Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;)V
    .registers 2

    const/4 p1, 0x0

    .line 60
    throw p1
.end method
