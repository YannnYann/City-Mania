###### Class io.bidmachine.rendering.internal.view.c (io.bidmachine.rendering.internal.view.c)
.class public final Lio/bidmachine/rendering/internal/view/c;
.super Landroid/view/View;
.source "SourceFile"

# interfaces
.implements Lio/bidmachine/rendering/internal/g;
.implements Lio/bidmachine/rendering/internal/z;


# instance fields
.field public final a:Landroid/graphics/Paint;

.field public b:F

.field public c:I

.field public d:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance p1, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lio/bidmachine/rendering/internal/view/c;->a:Landroid/graphics/Paint;

    .line 7
    sget p1, Lio/bidmachine/rendering/internal/k;->c:I

    iput p1, p0, Lio/bidmachine/rendering/internal/view/c;->c:I

    return-void
.end method

.method public static synthetic getLineBackgroundColor$annotations()V
    .registers 0

    .line 0
    return-void
.end method

.method public static synthetic getLineColor$annotations()V
    .registers 0

    .line 0
    return-void
.end method

.method public static synthetic getLinePaint$annotations()V
    .registers 0

    .line 0
    return-void
.end method

.method public static synthetic getPercent$annotations()V
    .registers 0

    .line 0
    return-void
.end method


# virtual methods
.method public a(JJF)V
    .registers 6

    .line 6
    iput p5, p0, Lio/bidmachine/rendering/internal/view/c;->b:F

    .line 7
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    return-void
.end method

.method public a(Lio/bidmachine/rendering/model/AppearanceParams;)V
    .registers 3

    const-string v0, "appearanceParams"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Lio/bidmachine/rendering/model/AppearanceParams;->getFillColor()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_11

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    .line 2
    iput v0, p0, Lio/bidmachine/rendering/internal/view/c;->d:I

    .line 4
    :cond_11
    invoke-virtual {p1}, Lio/bidmachine/rendering/model/AppearanceParams;->getStrokeColor()Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_1d

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    .line 5
    iput p1, p0, Lio/bidmachine/rendering/internal/view/c;->c:I

    :cond_1d
    return-void
.end method

.method public final getLineBackgroundColor()I
    .registers 2

    .line 1
    iget v0, p0, Lio/bidmachine/rendering/internal/view/c;->d:I

    return v0
.end method

.method public final getLineColor()I
    .registers 2

    .line 1
    iget v0, p0, Lio/bidmachine/rendering/internal/view/c;->c:I

    return v0
.end method

.method public final getLinePaint()Landroid/graphics/Paint;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/internal/view/c;->a:Landroid/graphics/Paint;

    return-object v0
.end method

.method public final getPercent()F
    .registers 2

    .line 1
    iget v0, p0, Lio/bidmachine/rendering/internal/view/c;->b:F

    return v0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .registers 11

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

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

    .line 7
    iget-object v1, p0, Lio/bidmachine/rendering/internal/view/c;->a:Landroid/graphics/Paint;

    iget v2, p0, Lio/bidmachine/rendering/internal/view/c;->d:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 9
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    int-to-float v4, v1

    .line 11
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    add-int/2addr v1, v0

    int-to-float v6, v1

    .line 13
    iget-object v8, p0, Lio/bidmachine/rendering/internal/view/c;->a:Landroid/graphics/Paint;

    move v7, v5

    move-object v3, p1

    .line 14
    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 23
    iget-object p1, p0, Lio/bidmachine/rendering/internal/view/c;->a:Landroid/graphics/Paint;

    iget v1, p0, Lio/bidmachine/rendering/internal/view/c;->c:I

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float p1, v0

    .line 24
    iget v0, p0, Lio/bidmachine/rendering/internal/view/c;->b:F

    mul-float/2addr p1, v0

    const/16 v0, 0x64

    int-to-float v0, v0

    div-float/2addr p1, v0

    .line 26
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    int-to-float v4, v0

    .line 28
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    int-to-float v0, v0

    add-float v6, v0, p1

    .line 30
    iget-object v8, p0, Lio/bidmachine/rendering/internal/view/c;->a:Landroid/graphics/Paint;

    .line 31
    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public onMeasure(II)V
    .registers 3

    .line 1
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 3
    iget-object p1, p0, Lio/bidmachine/rendering/internal/view/c;->a:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method

.method public final setLineBackgroundColor(I)V
    .registers 2

    .line 1
    iput p1, p0, Lio/bidmachine/rendering/internal/view/c;->d:I

    return-void
.end method

.method public final setLineColor(I)V
    .registers 2

    .line 1
    iput p1, p0, Lio/bidmachine/rendering/internal/view/c;->c:I

    return-void
.end method

.method public final setPercent(F)V
    .registers 2

    .line 1
    iput p1, p0, Lio/bidmachine/rendering/internal/view/c;->b:F

    return-void
.end method
