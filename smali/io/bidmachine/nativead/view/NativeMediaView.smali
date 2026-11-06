###### Class io.bidmachine.nativead.view.NativeMediaView (io.bidmachine.nativead.view.NativeMediaView)
.class public Lio/bidmachine/nativead/view/NativeMediaView;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# virtual methods
.method public onMeasure(II)V
    .registers 11

    .line 1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 2
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 4
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 5
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 7
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    .line 8
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    const/high16 v6, 0x40000000    # 2.0f

    if-ne v0, v6, :cond_1d

    goto :goto_27

    :cond_1d
    const/high16 v7, -0x80000000

    if-ne v0, v7, :cond_26

    .line 15
    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    goto :goto_27

    :cond_26
    move v2, v4

    :goto_27
    int-to-float v0, v2

    const/high16 v7, 0x3f100000    # 0.5625f

    mul-float/2addr v0, v7

    float-to-int v0, v0

    if-ne v1, v6, :cond_37

    if-ge v3, v0, :cond_37

    int-to-float v0, v3

    const v1, 0x3fe38e39

    mul-float/2addr v0, v1

    float-to-int v2, v0

    goto :goto_38

    :cond_37
    move v3, v0

    :goto_38
    sub-int v0, v3, v5

    .line 27
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_49

    sub-int v0, v2, v4

    .line 28
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-lt v0, v1, :cond_55

    .line 29
    :cond_49
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 30
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 33
    :cond_55
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    return-void
.end method
