###### Class androidx.transition.ViewUtilsApi29 (androidx.transition.ViewUtilsApi29)
.class public Landroidx/transition/ViewUtilsApi29;
.super Landroidx/transition/ViewUtilsApi23;
.source "ViewUtilsApi29.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 27
    invoke-direct {p0}, Landroidx/transition/ViewUtilsApi23;-><init>()V

    return-void
.end method


# virtual methods
.method public getTransitionAlpha(Landroid/view/View;)F
    .registers 2

    .line 36
    invoke-static {p1}, Landroidx/transition/ViewUtilsApi19$Api29Impl$$ExternalSyntheticApiModelOutline1;->m(Landroid/view/View;)F

    move-result p1

    return p1
.end method

.method public setLeftTopRightBottom(Landroid/view/View;IIII)V
    .registers 6

    .line 46
    invoke-static {p1, p2, p3, p4, p5}, Landroidx/transition/ViewUtilsApi22$Api29Impl$$ExternalSyntheticApiModelOutline0;->m(Landroid/view/View;IIII)V

    return-void
.end method

.method public setTransitionAlpha(Landroid/view/View;F)V
    .registers 3

    .line 31
    invoke-static {p1, p2}, Landroidx/transition/ViewUtilsApi19$Api29Impl$$ExternalSyntheticApiModelOutline0;->m(Landroid/view/View;F)V

    return-void
.end method

.method public setTransitionVisibility(Landroid/view/View;I)V
    .registers 3

    .line 41
    invoke-static {p1, p2}, Landroidx/transition/ViewUtilsApi23$Api29Impl$$ExternalSyntheticApiModelOutline0;->m(Landroid/view/View;I)V

    return-void
.end method

.method public transformMatrixToGlobal(Landroid/view/View;Landroid/graphics/Matrix;)V
    .registers 3

    .line 51
    invoke-static {p1, p2}, Landroidx/transition/ViewUtilsApi21$Api29Impl$$ExternalSyntheticApiModelOutline1;->m(Landroid/view/View;Landroid/graphics/Matrix;)V

    return-void
.end method

.method public transformMatrixToLocal(Landroid/view/View;Landroid/graphics/Matrix;)V
    .registers 3

    .line 56
    invoke-static {p1, p2}, Landroidx/transition/ViewUtilsApi21$Api29Impl$$ExternalSyntheticApiModelOutline2;->m(Landroid/view/View;Landroid/graphics/Matrix;)V

    return-void
.end method
