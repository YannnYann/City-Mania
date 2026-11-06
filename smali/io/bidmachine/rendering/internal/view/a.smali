###### Class io.bidmachine.rendering.internal.view.a (io.bidmachine.rendering.internal.view.a)
.class public Lio/bidmachine/rendering/internal/view/a;
.super Landroid/view/TextureView;
.source "SourceFile"


# instance fields
.field public a:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onMeasure(II)V
    .registers 9

    .line 1
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 2
    iget p1, p0, Lio/bidmachine/rendering/internal/view/a;->a:F

    const/4 p2, 0x0

    cmpg-float p1, p1, p2

    if-gtz p1, :cond_b

    return-void

    .line 6
    :cond_b
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    .line 7
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    int-to-float v1, p1

    int-to-float v2, v0

    div-float v3, v1, v2

    .line 9
    iget v4, p0, Lio/bidmachine/rendering/internal/view/a;->a:F

    div-float v3, v4, v3

    const/high16 v5, 0x3f800000    # 1.0f

    sub-float/2addr v3, v5

    cmpl-float p2, v3, p2

    if-lez p2, :cond_25

    div-float/2addr v1, v4

    float-to-int v0, v1

    goto :goto_27

    :cond_25
    mul-float/2addr v2, v4

    float-to-int p1, v2

    :goto_27
    const/high16 p2, 0x40000000    # 2.0f

    .line 16
    invoke-static {p1, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 17
    invoke-static {v0, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 18
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    return-void
.end method

.method public setVideoAspectRatio(F)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "videoAspectRatio"
        }
    .end annotation

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_1d

    .line 1
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_1d

    invoke-static {p1}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v0

    if-nez v0, :cond_1d

    iget v0, p0, Lio/bidmachine/rendering/internal/view/a;->a:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_18

    goto :goto_1d

    .line 5
    :cond_18
    iput p1, p0, Lio/bidmachine/rendering/internal/view/a;->a:F

    .line 6
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    :cond_1d
    :goto_1d
    return-void
.end method
