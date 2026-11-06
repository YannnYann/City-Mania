###### Class io.bidmachine.rendering.internal.view.e (io.bidmachine.rendering.internal.view.e)
.class public final Lio/bidmachine/rendering/internal/view/e;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/rendering/internal/view/e$a;
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public final a(IIIF)Ljava/lang/Integer;
    .registers 7

    const/4 v0, 0x0

    if-lez p1, :cond_4

    goto :goto_d

    :cond_4
    const/4 v1, -0x1

    if-ne p1, v1, :cond_9

    move p1, p2

    goto :goto_d

    :cond_9
    const/4 p2, -0x2

    if-ne p1, p2, :cond_1b

    move p1, p3

    :goto_d
    if-nez p1, :cond_10

    return-object v0

    :cond_10
    int-to-float p1, p1

    mul-float/2addr p1, p4

    .line 36
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_1b
    return-object v0
.end method

.method public final a(II)V
    .registers 8

    .line 1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    sub-int/2addr p1, v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v0

    sub-int/2addr p1, v0

    .line 2
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    sub-int/2addr p2, v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v0

    sub-int/2addr p2, v0

    .line 3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_21
    if-ge v1, v0, :cond_3c

    .line 4
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    const-string v3, "getChildAt(i)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 6
    instance-of v4, v3, Lio/bidmachine/rendering/internal/view/e$a;

    if-eqz v4, :cond_39

    .line 7
    check-cast v3, Lio/bidmachine/rendering/internal/view/e$a;

    invoke-virtual {p0, p1, p2, v2, v3}, Lio/bidmachine/rendering/internal/view/e;->a(IILandroid/view/View;Lio/bidmachine/rendering/internal/view/e$a;)V

    :cond_39
    add-int/lit8 v1, v1, 0x1

    goto :goto_21

    :cond_3c
    return-void
.end method

.method public final a(IILandroid/view/View;Lio/bidmachine/rendering/internal/view/e$a;)V
    .registers 10

    .line 8
    invoke-virtual {p4}, Lio/bidmachine/rendering/internal/view/e$a;->d()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v2, v0, v1

    const/high16 v3, 0x3f800000    # 1.0f

    if-lez v2, :cond_23

    cmpg-float v2, v0, v3

    if-gez v2, :cond_23

    .line 11
    invoke-virtual {p4}, Lio/bidmachine/rendering/internal/view/e$a;->c()I

    move-result v2

    .line 13
    invoke-virtual {p3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    .line 14
    invoke-virtual {p0, v2, p1, v4, v0}, Lio/bidmachine/rendering/internal/view/e;->a(IIIF)Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_23

    .line 19
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    .line 20
    iput p1, p4, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 23
    :cond_23
    invoke-virtual {p4}, Lio/bidmachine/rendering/internal/view/e$a;->a()F

    move-result p1

    cmpl-float v0, p1, v1

    if-lez v0, :cond_43

    cmpg-float v0, p1, v3

    if-gez v0, :cond_43

    .line 26
    invoke-virtual {p4}, Lio/bidmachine/rendering/internal/view/e$a;->b()I

    move-result v0

    .line 28
    invoke-virtual {p3}, Landroid/view/View;->getMeasuredHeight()I

    move-result p3

    .line 29
    invoke-virtual {p0, v0, p2, p3, p1}, Lio/bidmachine/rendering/internal/view/e;->a(IIIF)Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_43

    .line 34
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    .line 35
    iput p1, p4, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    :cond_43
    return-void
.end method

.method public onMeasure(II)V
    .registers 3

    .line 1
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/rendering/internal/view/e;->a(II)V

    .line 3
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    return-void
.end method

###### Class io.bidmachine.rendering.internal.view.e.a (io.bidmachine.rendering.internal.view.e$a)
.class public final Lio/bidmachine/rendering/internal/view/e$a;
.super Landroid/widget/RelativeLayout$LayoutParams;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/rendering/internal/view/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:I

.field public final b:I

.field public c:F

.field public d:F


# direct methods
.method public constructor <init>(II)V
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 2
    iput p1, p0, Lio/bidmachine/rendering/internal/view/e$a;->a:I

    .line 3
    iput p2, p0, Lio/bidmachine/rendering/internal/view/e$a;->b:I

    const/high16 p1, 0x3f800000    # 1.0f

    .line 10
    iput p1, p0, Lio/bidmachine/rendering/internal/view/e$a;->c:F

    .line 12
    iput p1, p0, Lio/bidmachine/rendering/internal/view/e$a;->d:F

    return-void
.end method


# virtual methods
.method public final a()F
    .registers 2

    .line 1
    iget v0, p0, Lio/bidmachine/rendering/internal/view/e$a;->d:F

    return v0
.end method

.method public final a(Ljava/util/List;Ljava/lang/String;)Landroid/view/View;
    .registers 6

    const/4 v0, 0x0

    if-eqz p2, :cond_34

    .line 88
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_a

    goto :goto_34

    .line 91
    :cond_a
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_e
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lio/bidmachine/rendering/internal/b;

    .line 92
    invoke-interface {v2}, Lio/bidmachine/rendering/internal/b;->g()Lio/bidmachine/rendering/model/AdElementParams;

    move-result-object v2

    invoke-virtual {v2}, Lio/bidmachine/rendering/model/AdElementParams;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    goto :goto_2b

    :cond_2a
    move-object v1, v0

    .line 93
    :goto_2b
    check-cast v1, Lio/bidmachine/rendering/internal/b;

    if-eqz v1, :cond_34

    .line 95
    invoke-interface {v1}, Lio/bidmachine/rendering/internal/b;->j()Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_34
    :goto_34
    return-object v0
.end method

.method public final a(Landroid/content/Context;Lio/bidmachine/rendering/model/ElementLayoutParams;Ljava/util/List;)V
    .registers 9

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "elementLayoutParams"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adFormList"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p2}, Lio/bidmachine/rendering/model/ElementLayoutParams;->getWidthPercent()F

    move-result v0

    iput v0, p0, Lio/bidmachine/rendering/internal/view/e$a;->c:F

    .line 3
    invoke-virtual {p2}, Lio/bidmachine/rendering/model/ElementLayoutParams;->getHeightPercent()F

    move-result v0

    iput v0, p0, Lio/bidmachine/rendering/internal/view/e$a;->d:F

    .line 5
    invoke-virtual {p2, p1}, Lio/bidmachine/rendering/model/ElementLayoutParams;->getMarginLeftPx(Landroid/content/Context;)I

    move-result v0

    .line 6
    invoke-virtual {p2, p1}, Lio/bidmachine/rendering/model/ElementLayoutParams;->getMarginTopPx(Landroid/content/Context;)I

    move-result v1

    .line 7
    invoke-virtual {p2, p1}, Lio/bidmachine/rendering/model/ElementLayoutParams;->getMarginRightPx(Landroid/content/Context;)I

    move-result v2

    neg-int v2, v2

    .line 8
    invoke-virtual {p2, p1}, Lio/bidmachine/rendering/model/ElementLayoutParams;->getMarginBottomPx(Landroid/content/Context;)I

    move-result v3

    neg-int v3, v3

    .line 9
    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 16
    invoke-virtual {p2}, Lio/bidmachine/rendering/model/ElementLayoutParams;->getTopSideBindParams()Lio/bidmachine/rendering/model/SideBindParams;

    move-result-object v0

    .line 17
    invoke-virtual {p2}, Lio/bidmachine/rendering/model/ElementLayoutParams;->getBottomSideBindParams()Lio/bidmachine/rendering/model/SideBindParams;

    move-result-object v1

    .line 18
    invoke-virtual {p2}, Lio/bidmachine/rendering/model/ElementLayoutParams;->getCenterYSideBindParams()Lio/bidmachine/rendering/model/SideBindParams;

    move-result-object v2

    .line 22
    invoke-virtual {p2, p1}, Lio/bidmachine/rendering/model/ElementLayoutParams;->getWidthPx(Landroid/content/Context;)I

    move-result v3

    const/16 v4, 0xf

    .line 23
    invoke-virtual {p0, v2, v4, v3}, Lio/bidmachine/rendering/internal/view/e$a;->a(Lio/bidmachine/rendering/model/SideBindParams;II)Z

    move-result v2

    if-nez v2, :cond_4b

    .line 28
    invoke-virtual {p0, v0, v1, p3}, Lio/bidmachine/rendering/internal/view/e$a;->b(Lio/bidmachine/rendering/model/SideBindParams;Lio/bidmachine/rendering/model/SideBindParams;Ljava/util/List;)V

    .line 35
    :cond_4b
    invoke-virtual {p2}, Lio/bidmachine/rendering/model/ElementLayoutParams;->getLeftSideBindParams()Lio/bidmachine/rendering/model/SideBindParams;

    move-result-object v0

    .line 36
    invoke-virtual {p2}, Lio/bidmachine/rendering/model/ElementLayoutParams;->getRightSideBindParams()Lio/bidmachine/rendering/model/SideBindParams;

    move-result-object v1

    .line 37
    invoke-virtual {p2}, Lio/bidmachine/rendering/model/ElementLayoutParams;->getCenterXSideBindParams()Lio/bidmachine/rendering/model/SideBindParams;

    move-result-object v2

    .line 41
    invoke-virtual {p2, p1}, Lio/bidmachine/rendering/model/ElementLayoutParams;->getHeightPx(Landroid/content/Context;)I

    move-result p1

    const/16 p2, 0xe

    .line 42
    invoke-virtual {p0, v2, p2, p1}, Lio/bidmachine/rendering/internal/view/e$a;->a(Lio/bidmachine/rendering/model/SideBindParams;II)Z

    move-result p1

    if-nez p1, :cond_66

    .line 47
    invoke-virtual {p0, v0, v1, p3}, Lio/bidmachine/rendering/internal/view/e$a;->a(Lio/bidmachine/rendering/model/SideBindParams;Lio/bidmachine/rendering/model/SideBindParams;Ljava/util/List;)V

    .line 54
    :cond_66
    invoke-virtual {p0}, Lio/bidmachine/rendering/internal/view/e$a;->e()V

    return-void
.end method

.method public final a(Lio/bidmachine/rendering/model/SideBindParams;Lio/bidmachine/rendering/model/SideBindParams;Ljava/util/List;)V
    .registers 17

    .line 56
    sget-object v2, Lio/bidmachine/rendering/model/SideType;->Left:Lio/bidmachine/rendering/model/SideType;

    const/4 v4, 0x1

    const/16 v5, 0x9

    const/4 v3, 0x5

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v6, p3

    .line 57
    invoke-virtual/range {v0 .. v6}, Lio/bidmachine/rendering/internal/view/e$a;->a(Lio/bidmachine/rendering/model/SideBindParams;Lio/bidmachine/rendering/model/SideType;IIILjava/util/List;)V

    .line 67
    sget-object v8, Lio/bidmachine/rendering/model/SideType;->Right:Lio/bidmachine/rendering/model/SideType;

    const/4 v10, 0x0

    const/16 v11, 0xb

    const/4 v9, 0x7

    move-object v6, p0

    move-object v7, p2

    move-object/from16 v12, p3

    .line 68
    invoke-virtual/range {v6 .. v12}, Lio/bidmachine/rendering/internal/view/e$a;->a(Lio/bidmachine/rendering/model/SideBindParams;Lio/bidmachine/rendering/model/SideType;IIILjava/util/List;)V

    return-void
.end method

.method public final a(Lio/bidmachine/rendering/model/SideBindParams;Lio/bidmachine/rendering/model/SideType;IIILjava/util/List;)V
    .registers 8

    if-nez p1, :cond_3

    return-void

    .line 69
    :cond_3
    invoke-virtual {p1}, Lio/bidmachine/rendering/model/SideBindParams;->getTargetName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p6, v0}, Lio/bidmachine/rendering/internal/view/e$a;->a(Ljava/util/List;Ljava/lang/String;)Landroid/view/View;

    move-result-object p6

    if-eqz p6, :cond_1d

    .line 72
    invoke-virtual {p1}, Lio/bidmachine/rendering/model/SideBindParams;->getTargetSideType()Lio/bidmachine/rendering/model/SideType;

    move-result-object p1

    if-ne p1, p2, :cond_14

    goto :goto_15

    :cond_14
    move p3, p4

    .line 77
    :goto_15
    invoke-virtual {p6}, Landroid/view/View;->getId()I

    move-result p1

    .line 78
    invoke-virtual {p0, p3, p1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    return-void

    .line 87
    :cond_1d
    invoke-virtual {p0, p5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    return-void
.end method

.method public final a(Lio/bidmachine/rendering/model/SideBindParams;II)Z
    .registers 4

    if-ltz p3, :cond_9

    if-eqz p1, :cond_9

    .line 55
    invoke-virtual {p0, p2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/4 p1, 0x1

    return p1

    :cond_9
    const/4 p1, 0x0

    return p1
.end method

.method public final b()I
    .registers 2

    .line 1
    iget v0, p0, Lio/bidmachine/rendering/internal/view/e$a;->b:I

    return v0
.end method

.method public final b(Lio/bidmachine/rendering/model/SideBindParams;Lio/bidmachine/rendering/model/SideBindParams;Ljava/util/List;)V
    .registers 17

    .line 2
    sget-object v2, Lio/bidmachine/rendering/model/SideType;->Top:Lio/bidmachine/rendering/model/SideType;

    const/4 v4, 0x3

    const/16 v5, 0xa

    const/4 v3, 0x6

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v6, p3

    .line 3
    invoke-virtual/range {v0 .. v6}, Lio/bidmachine/rendering/internal/view/e$a;->a(Lio/bidmachine/rendering/model/SideBindParams;Lio/bidmachine/rendering/model/SideType;IIILjava/util/List;)V

    .line 13
    sget-object v8, Lio/bidmachine/rendering/model/SideType;->Bottom:Lio/bidmachine/rendering/model/SideType;

    const/4 v10, 0x2

    const/16 v11, 0xc

    const/16 v9, 0x8

    move-object v6, p0

    move-object v7, p2

    move-object/from16 v12, p3

    .line 14
    invoke-virtual/range {v6 .. v12}, Lio/bidmachine/rendering/internal/view/e$a;->a(Lio/bidmachine/rendering/model/SideBindParams;Lio/bidmachine/rendering/model/SideType;IIILjava/util/List;)V

    return-void
.end method

.method public final c()I
    .registers 2

    .line 1
    iget v0, p0, Lio/bidmachine/rendering/internal/view/e$a;->a:I

    return v0
.end method

.method public final d()F
    .registers 2

    .line 1
    iget v0, p0, Lio/bidmachine/rendering/internal/view/e$a;->c:F

    return v0
.end method

.method public final e()V
    .registers 7

    .line 1
    invoke-virtual {p0}, Landroid/widget/RelativeLayout$LayoutParams;->getRules()[I

    move-result-object v0

    const-string v1, "getRules()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget v1, p0, Lio/bidmachine/rendering/internal/view/e$a;->c:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    const/4 v3, -0x1

    if-gtz v1, :cond_15

    iget v1, p0, Lio/bidmachine/rendering/internal/view/e$a;->a:I

    if-lez v1, :cond_2c

    :cond_15
    const/16 v1, 0x9

    .line 4
    aget v4, v0, v1

    if-ne v4, v3, :cond_2c

    const/16 v4, 0xb

    .line 5
    aget v5, v0, v4

    if-ne v5, v3, :cond_2c

    .line 7
    invoke-virtual {p0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 8
    invoke-virtual {p0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    const/16 v1, 0xe

    .line 9
    invoke-virtual {p0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 13
    :cond_2c
    iget v1, p0, Lio/bidmachine/rendering/internal/view/e$a;->d:F

    cmpl-float v1, v1, v2

    if-gtz v1, :cond_36

    iget v1, p0, Lio/bidmachine/rendering/internal/view/e$a;->b:I

    if-lez v1, :cond_4d

    :cond_36
    const/16 v1, 0xa

    .line 14
    aget v2, v0, v1

    if-ne v2, v3, :cond_4d

    const/16 v2, 0xc

    .line 15
    aget v0, v0, v2

    if-ne v0, v3, :cond_4d

    .line 17
    invoke-virtual {p0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 18
    invoke-virtual {p0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    const/16 v0, 0xf

    .line 19
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    :cond_4d
    return-void
.end method
