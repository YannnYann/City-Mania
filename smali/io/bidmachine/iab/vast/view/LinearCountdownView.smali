###### Class io.bidmachine.iab.vast.view.LinearCountdownView (io.bidmachine.iab.vast.view.LinearCountdownView)
.class public Lio/bidmachine/iab/vast/view/LinearCountdownView;
.super Landroid/view/View;
.source "SourceFile"

# interfaces
.implements Lio/bidmachine/iab/utils/IabElement;


# instance fields
.field public final a:Landroid/graphics/Paint;

.field public b:F

.field public c:F

.field public d:I

.field public e:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance p1, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lio/bidmachine/iab/vast/view/LinearCountdownView;->a:Landroid/graphics/Paint;

    const/4 p1, 0x0

    .line 5
    iput p1, p0, Lio/bidmachine/iab/vast/view/LinearCountdownView;->b:F

    const/high16 p1, 0x41700000    # 15.0f

    .line 6
    iput p1, p0, Lio/bidmachine/iab/vast/view/LinearCountdownView;->c:F

    .line 7
    sget p1, Lio/bidmachine/iab/utils/Assets;->MAIN_ASSETS_COLOR:I

    iput p1, p0, Lio/bidmachine/iab/vast/view/LinearCountdownView;->d:I

    const/4 p1, 0x0

    .line 8
    iput p1, p0, Lio/bidmachine/iab/vast/view/LinearCountdownView;->e:I

    .line 13
    invoke-direct {p0}, Lio/bidmachine/iab/vast/view/LinearCountdownView;->a()V

    return-void
.end method

.method private a()V
    .registers 3

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x40800000    # 4.0f

    invoke-static {v0, v1}, Lio/bidmachine/iab/utils/Utils;->dpToPx(Landroid/content/Context;F)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lio/bidmachine/iab/vast/view/LinearCountdownView;->c:F

    return-void
.end method


# virtual methods
.method public changePercentage(F)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "percent"
        }
    .end annotation

    .line 1
    iput p1, p0, Lio/bidmachine/iab/vast/view/LinearCountdownView;->b:F

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    return-void
.end method

.method public getLineColor()I
    .registers 2

    .line 1
    iget v0, p0, Lio/bidmachine/iab/vast/view/LinearCountdownView;->d:I

    return v0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .registers 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "canvas"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    int-to-float v2, v2

    add-float v5, v1, v2

    .line 5
    iget-object v1, p0, Lio/bidmachine/iab/vast/view/LinearCountdownView;->a:Landroid/graphics/Paint;

    iget v2, p0, Lio/bidmachine/iab/vast/view/LinearCountdownView;->c:F

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 7
    iget-object v1, p0, Lio/bidmachine/iab/vast/view/LinearCountdownView;->a:Landroid/graphics/Paint;

    iget v2, p0, Lio/bidmachine/iab/vast/view/LinearCountdownView;->e:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 8
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    int-to-float v4, v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    add-int/2addr v1, v0

    int-to-float v6, v1

    iget-object v8, p0, Lio/bidmachine/iab/vast/view/LinearCountdownView;->a:Landroid/graphics/Paint;

    move v7, v5

    move-object v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 10
    iget-object p1, p0, Lio/bidmachine/iab/vast/view/LinearCountdownView;->a:Landroid/graphics/Paint;

    iget v1, p0, Lio/bidmachine/iab/vast/view/LinearCountdownView;->d:I

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float p1, v0

    .line 11
    iget v0, p0, Lio/bidmachine/iab/vast/view/LinearCountdownView;->b:F

    mul-float/2addr p1, v0

    const/high16 v0, 0x42c80000    # 100.0f

    div-float/2addr p1, v0

    .line 12
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    int-to-float v4, v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    int-to-float v0, v0

    add-float v6, v0, p1

    iget-object v8, p0, Lio/bidmachine/iab/vast/view/LinearCountdownView;->a:Landroid/graphics/Paint;

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public setStyle(Lio/bidmachine/iab/utils/IabElementStyle;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "style"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lio/bidmachine/iab/utils/IabElementStyle;->getStrokeColor()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lio/bidmachine/iab/vast/view/LinearCountdownView;->d:I

    .line 2
    invoke-virtual {p1}, Lio/bidmachine/iab/utils/IabElementStyle;->getFillColor()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lio/bidmachine/iab/vast/view/LinearCountdownView;->e:I

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/bidmachine/iab/utils/IabElementStyle;->getStrokeWidth(Landroid/content/Context;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iput v0, p0, Lio/bidmachine/iab/vast/view/LinearCountdownView;->c:F

    .line 4
    invoke-virtual {p1}, Lio/bidmachine/iab/utils/IabElementStyle;->getOpacity()Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    return-void
.end method
