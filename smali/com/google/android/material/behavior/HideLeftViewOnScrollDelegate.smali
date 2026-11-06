###### Class com.google.android.material.behavior.HideLeftViewOnScrollDelegate (com.google.android.material.behavior.HideLeftViewOnScrollDelegate)
.class public final Lcom/google/android/material/behavior/HideLeftViewOnScrollDelegate;
.super Lcom/google/android/material/behavior/HideViewOnScrollDelegate;
.source "HideLeftViewOnScrollDelegate.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 32
    invoke-direct {p0}, Lcom/google/android/material/behavior/HideViewOnScrollDelegate;-><init>()V

    return-void
.end method


# virtual methods
.method public getSize(Landroid/view/View;Landroid/view/ViewGroup$MarginLayoutParams;)I
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Landroid/view/View;",
            ">(TV;",
            "Landroid/view/ViewGroup$MarginLayoutParams;",
            ")I"
        }
    .end annotation

    .line 41
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    iget p2, p2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr p1, p2

    return p1
.end method

.method public getTargetTranslation()I
    .registers 2

    .line 0
    const/4 v0, 0x0

    return v0
.end method

.method public getViewEdge()I
    .registers 2

    .line 0
    const/4 v0, 0x2

    return v0
.end method

.method public getViewTranslationAnimator(Landroid/view/View;I)Landroid/view/ViewPropertyAnimator;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Landroid/view/View;",
            ">(TV;I)",
            "Landroid/view/ViewPropertyAnimator;"
        }
    .end annotation

    .line 63
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    neg-int p2, p2

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    return-object p1
.end method

.method public setViewTranslation(Landroid/view/View;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Landroid/view/View;",
            ">(TV;I)V"
        }
    .end annotation

    neg-int p2, p2

    int-to-float p2, p2

    .line 57
    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationX(F)V

    return-void
.end method
