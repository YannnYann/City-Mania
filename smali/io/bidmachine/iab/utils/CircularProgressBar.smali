###### Class io.bidmachine.iab.utils.CircularProgressBar (io.bidmachine.iab.utils.CircularProgressBar)
.class public final Lio/bidmachine/iab/utils/CircularProgressBar;
.super Landroid/widget/ProgressBar;
.source "SourceFile"

# interfaces
.implements Lio/bidmachine/iab/utils/IabElement;


# instance fields
.field public a:Lio/bidmachine/iab/utils/CircularProgressDrawable;

.field public final b:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lio/bidmachine/iab/utils/CircularProgressBar;->b:Landroid/graphics/Paint;

    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 12
    invoke-virtual {p0, p1}, Lio/bidmachine/iab/utils/CircularProgressBar;->a(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .registers 4

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 2
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x41000000    # 8.0f

    .line 4
    invoke-static {p1, v1}, Lio/bidmachine/iab/utils/Utils;->dpToPx(Landroid/content/Context;F)I

    move-result v1

    .line 5
    invoke-virtual {p0, v1, v1, v1, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 7
    new-instance v1, Lio/bidmachine/iab/utils/CircularProgressDrawable;

    invoke-direct {v1, p1}, Lio/bidmachine/iab/utils/CircularProgressDrawable;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lio/bidmachine/iab/utils/CircularProgressBar;->a:Lio/bidmachine/iab/utils/CircularProgressDrawable;

    const/high16 p1, 0x40800000    # 4.0f

    mul-float/2addr v0, p1

    .line 8
    invoke-virtual {v1, v0}, Lio/bidmachine/iab/utils/CircularProgressDrawable;->setStrokeWidth(F)V

    .line 9
    iget-object p1, p0, Lio/bidmachine/iab/utils/CircularProgressBar;->a:Lio/bidmachine/iab/utils/CircularProgressDrawable;

    const/high16 v0, -0x10000

    filled-new-array {v0}, [I

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/bidmachine/iab/utils/CircularProgressDrawable;->setColorSchemeColors([I)V

    .line 10
    iget-object p1, p0, Lio/bidmachine/iab/utils/CircularProgressBar;->a:Lio/bidmachine/iab/utils/CircularProgressDrawable;

    sget-object v0, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {p1, v0}, Lio/bidmachine/iab/utils/CircularProgressDrawable;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 11
    iget-object p1, p0, Lio/bidmachine/iab/utils/CircularProgressBar;->a:Lio/bidmachine/iab/utils/CircularProgressDrawable;

    invoke-virtual {p0, p1}, Landroid/widget/ProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 p1, 0x1

    .line 12
    invoke-virtual {p0, p1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    return-void
.end method

.method public declared-synchronized onDraw(Landroid/graphics/Canvas;)V
    .registers 7

    monitor-enter p0

    .line 1
    :try_start_1
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v1

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v1

    iget-object v1, p0, Lio/bidmachine/iab/utils/CircularProgressBar;->b:Landroid/graphics/Paint;

    .line 3
    invoke-virtual {p1, v0, v2, v3, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 6
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->onDraw(Landroid/graphics/Canvas;)V
    :try_end_25
    .catchall {:try_start_1 .. :try_end_25} :catchall_27

    monitor-exit p0

    return-void

    :catchall_27
    move-exception p1

    :try_start_28
    monitor-exit p0
    :try_end_29
    .catchall {:try_start_28 .. :try_end_29} :catchall_27

    throw p1
.end method

.method public declared-synchronized onMeasure(II)V
    .registers 4

    monitor-enter p0

    .line 1
    :try_start_1
    invoke-super {p0, p1, p2}, Landroid/widget/ProgressBar;->onMeasure(II)V

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result p2

    sub-int/2addr p1, p2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result p2

    sub-int/2addr p1, p2

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    sub-int/2addr p2, v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v0

    sub-int/2addr p2, v0

    .line 5
    iget-object v0, p0, Lio/bidmachine/iab/utils/CircularProgressBar;->a:Lio/bidmachine/iab/utils/CircularProgressDrawable;

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    int-to-float p1, p1

    const/high16 p2, 0x40000000    # 2.0f

    div-float/2addr p1, p2

    iget-object p2, p0, Lio/bidmachine/iab/utils/CircularProgressBar;->a:Lio/bidmachine/iab/utils/CircularProgressDrawable;

    invoke-virtual {p2}, Lio/bidmachine/iab/utils/CircularProgressDrawable;->getStrokeWidth()F

    move-result p2

    sub-float/2addr p1, p2

    invoke-virtual {v0, p1}, Lio/bidmachine/iab/utils/CircularProgressDrawable;->setCenterRadius(F)V
    :try_end_34
    .catchall {:try_start_1 .. :try_end_34} :catchall_36

    monitor-exit p0

    return-void

    :catchall_36
    move-exception p1

    :try_start_37
    monitor-exit p0
    :try_end_38
    .catchall {:try_start_37 .. :try_end_38} :catchall_36

    throw p1
.end method

.method public varargs setColorSchemeColors([I)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "colors"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/utils/CircularProgressBar;->a:Lio/bidmachine/iab/utils/CircularProgressDrawable;

    invoke-virtual {v0, p1}, Lio/bidmachine/iab/utils/CircularProgressDrawable;->setColorSchemeColors([I)V

    return-void
.end method

.method public setProgressBackgroundColor(I)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "color"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/utils/CircularProgressBar;->b:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public setStyle(Lio/bidmachine/iab/utils/IabElementStyle;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "style"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/utils/CircularProgressBar;->a:Lio/bidmachine/iab/utils/CircularProgressDrawable;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1, v1}, Lio/bidmachine/iab/utils/IabElementStyle;->getStrokeWidth(Landroid/content/Context;)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v0, v1}, Lio/bidmachine/iab/utils/CircularProgressDrawable;->setStrokeWidth(F)V

    .line 2
    iget-object v0, p0, Lio/bidmachine/iab/utils/CircularProgressBar;->a:Lio/bidmachine/iab/utils/CircularProgressDrawable;

    invoke-virtual {p1}, Lio/bidmachine/iab/utils/IabElementStyle;->getStrokeColor()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    filled-new-array {v1}, [I

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/bidmachine/iab/utils/CircularProgressDrawable;->setColorSchemeColors([I)V

    .line 3
    iget-object v0, p0, Lio/bidmachine/iab/utils/CircularProgressBar;->b:Landroid/graphics/Paint;

    invoke-virtual {p1}, Lio/bidmachine/iab/utils/IabElementStyle;->getFillColor()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    return-void
.end method
