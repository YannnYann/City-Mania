###### Class ads_mobile_sdk.do2 (ads_mobile_sdk.do2)
.class public final Lads_mobile_sdk/do2;
.super Lads_mobile_sdk/o53;
.source "SourceFile"


# instance fields
.field public final b:Lads_mobile_sdk/qn2;

.field public final c:Lkotlin/jvm/functions/Function1;

.field public d:Lcom/google/android/libraries/ads/mobile/sdk/pip/PictureInPictureAdPosition;

.field public e:F

.field public f:F

.field public g:F

.field public h:F

.field public i:Lads_mobile_sdk/sn2;

.field public j:Lads_mobile_sdk/sn2;

.field public k:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;Landroid/content/Context;Lads_mobile_sdk/qn2;Lads_mobile_sdk/xz2;)V
    .registers 6

    .line 1
    const-string v0, "adSize"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pipAdConfig"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onSnapRequestedListener"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0, p2, p1}, Lads_mobile_sdk/o53;-><init>(Landroid/content/Context;Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;)V

    .line 3
    iput-object p3, p0, Lads_mobile_sdk/do2;->b:Lads_mobile_sdk/qn2;

    .line 4
    iput-object p4, p0, Lads_mobile_sdk/do2;->c:Lkotlin/jvm/functions/Function1;

    .line 7
    sget-object p1, Lcom/google/android/libraries/ads/mobile/sdk/pip/PictureInPictureAdPosition;->DEFAULT:Lcom/google/android/libraries/ads/mobile/sdk/pip/PictureInPictureAdPosition;

    iput-object p1, p0, Lads_mobile_sdk/do2;->d:Lcom/google/android/libraries/ads/mobile/sdk/pip/PictureInPictureAdPosition;

    .line 21
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 p2, -0x2

    invoke-direct {p1, p2, p2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 23
    new-instance p1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {p1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const/4 p2, 0x0

    .line 24
    invoke-virtual {p1, p2}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 25
    invoke-virtual {p3}, Lads_mobile_sdk/qn2;->e()I

    move-result p4

    invoke-virtual {p0, p4}, Lads_mobile_sdk/do2;->a(I)I

    move-result p4

    int-to-float p4, p4

    invoke-virtual {p1, p4}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    const/16 p4, 0x73

    .line 26
    invoke-static {p4, p4, p4}, Landroid/graphics/Color;->rgb(III)I

    move-result p4

    invoke-virtual {p1, p4}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 27
    invoke-virtual {p0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 35
    invoke-virtual {p3}, Lads_mobile_sdk/qn2;->f()I

    move-result p1

    invoke-virtual {p0, p1}, Lads_mobile_sdk/do2;->a(I)I

    move-result p1

    .line 36
    invoke-virtual {p3}, Lads_mobile_sdk/qn2;->f()I

    move-result p4

    invoke-virtual {p0, p4}, Lads_mobile_sdk/do2;->a(I)I

    move-result p4

    .line 37
    invoke-virtual {p3}, Lads_mobile_sdk/qn2;->f()I

    move-result v0

    invoke-virtual {p0, v0}, Lads_mobile_sdk/do2;->a(I)I

    move-result v0

    .line 38
    invoke-virtual {p3}, Lads_mobile_sdk/qn2;->b()I

    move-result p3

    invoke-virtual {p0, p3}, Lads_mobile_sdk/do2;->a(I)I

    move-result p3

    .line 39
    invoke-virtual {p0, p1, p4, v0, p3}, Landroid/view/View;->setPadding(IIII)V

    .line 45
    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 46
    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    const/16 p1, 0x8

    .line 453
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public static final a(Lads_mobile_sdk/do2;Landroid/animation/ValueAnimator;)V
    .registers 3

    .line 985
    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "animation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1077
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type kotlin.Float"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 1078
    invoke-virtual {p0, p1}, Landroid/view/View;->setX(F)V

    .line 1079
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public static final a(Lkotlin/jvm/functions/Function0;Landroid/view/View;)V
    .registers 2

    .line 725
    const-string p1, "$onClose"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 886
    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a(I)I
    .registers 4

    .line 476
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "getContext(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 477
    const-string v1, "<this>"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    int-to-float p1, p1

    .line 478
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 582
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const-string v1, "getDisplayMetrics(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 583
    invoke-static {v1, p1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-float p1, v0

    float-to-int p1, p1

    return p1
.end method

.method public final a(Landroid/view/View;)Lads_mobile_sdk/sn2;
    .registers 10

    .line 1080
    new-instance v0, Lads_mobile_sdk/sn2;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "getContext(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lads_mobile_sdk/sn2;-><init>(Landroid/content/Context;)V

    const/16 v1, 0xa

    invoke-virtual {p0, v1}, Lads_mobile_sdk/do2;->a(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setElevation(F)V

    .line 1084
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x2

    const v3, 0x800053

    .line 1085
    invoke-direct {v1, v2, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 1086
    invoke-virtual {v0, p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1095
    iget-object v1, p0, Lads_mobile_sdk/do2;->b:Lads_mobile_sdk/qn2;

    invoke-virtual {v1}, Lads_mobile_sdk/qn2;->f()I

    move-result v1

    invoke-virtual {p0, v1}, Lads_mobile_sdk/do2;->a(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 1097
    iget-object v1, p0, Lads_mobile_sdk/do2;->b:Lads_mobile_sdk/qn2;

    invoke-virtual {v1}, Lads_mobile_sdk/qn2;->b()I

    move-result v1

    iget-object v4, p0, Lads_mobile_sdk/do2;->b:Lads_mobile_sdk/qn2;

    .line 1098
    iget-object v4, v4, Lads_mobile_sdk/qn2;->a:Lads_mobile_sdk/ex0;

    const/16 v5, 0x14

    .line 1100
    const-string v6, "key"

    const-string v7, "gads:picture_in_picture:close_button_icon_size_dp"

    invoke-static {v4, v7, v6, v5}, Lads_mobile_sdk/by0;->a(Lads_mobile_sdk/ex0;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v5

    .line 1101
    sget-object v6, Lads_mobile_sdk/yr;->f:Lads_mobile_sdk/nr;

    invoke-virtual {v4, v7, v5, v6}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    sub-int/2addr v1, v4

    .line 1102
    div-int/lit8 v1, v1, 0x2

    invoke-virtual {p0, v1}, Lads_mobile_sdk/do2;->a(I)I

    move-result v1

    int-to-float v1, v1

    neg-float v1, v1

    .line 1103
    invoke-virtual {p1, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 1108
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    .line 1109
    invoke-direct {p1, v2, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 1110
    invoke-virtual {p0, v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1119
    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    return-object v0
.end method

.method public final a()Lcom/google/android/libraries/ads/mobile/sdk/pip/PictureInPictureAdPosition;
    .registers 2

    .line 630
    iget-object v0, p0, Lads_mobile_sdk/do2;->d:Lcom/google/android/libraries/ads/mobile/sdk/pip/PictureInPictureAdPosition;

    return-object v0
.end method

.method public final a(FFF)V
    .registers 5

    .line 975
    invoke-virtual {p0, p3}, Landroid/view/View;->setY(F)V

    const/4 p3, 0x2

    .line 976
    new-array p3, p3, [F

    const/4 v0, 0x0

    aput p1, p3, v0

    const/4 p1, 0x1

    aput p2, p3, p1

    invoke-static {p3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    .line 977
    iget-object p2, p0, Lads_mobile_sdk/do2;->b:Lads_mobile_sdk/qn2;

    invoke-virtual {p2}, Lads_mobile_sdk/qn2;->a()J

    move-result-wide p2

    invoke-static {p2, p3}, Lkotlin/time/Duration;->getInWholeMilliseconds-impl(J)J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 978
    new-instance p2, Lads_mobile_sdk/do2$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0}, Lads_mobile_sdk/do2$$ExternalSyntheticLambda1;-><init>(Lads_mobile_sdk/do2;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 983
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 984
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public final a(Lads_mobile_sdk/sn2;IIII)V
    .registers 12

    .line 632
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_9

    return-void

    :cond_9
    const/4 v0, 0x0

    .line 633
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    const/high16 v2, 0x40000000    # 2.0f

    if-eqz v1, :cond_55

    .line 635
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    instance-of v4, v3, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v5, 0x0

    if-eqz v4, :cond_1e

    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    goto :goto_1f

    :cond_1e
    move-object v3, v5

    :goto_1f
    if-eqz v3, :cond_30

    .line 638
    iget v4, v3, Landroid/widget/FrameLayout$LayoutParams;->width:I

    if-ne v4, p3, :cond_29

    iget v4, v3, Landroid/widget/FrameLayout$LayoutParams;->height:I

    if-eq v4, p3, :cond_30

    .line 640
    :cond_29
    iput p3, v3, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 641
    iput p3, v3, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 642
    invoke-virtual {v1, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 645
    :cond_30
    invoke-static {p3, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 646
    invoke-virtual {v1, v3, v3}, Landroid/view/View;->measure(II)V

    .line 649
    instance-of v3, v1, Landroid/widget/FrameLayout;

    if-eqz v3, :cond_55

    .line 650
    check-cast v1, Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    instance-of v3, v1, Landroid/widget/TextView;

    if-eqz v3, :cond_48

    move-object v5, v1

    check-cast v5, Landroid/widget/TextView;

    :cond_48
    if-eqz v5, :cond_55

    int-to-float p3, p3

    const v1, 0x3f19999a    # 0.6f

    mul-float/2addr p3, v1

    .line 652
    invoke-virtual {v5, v0, p3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 653
    invoke-virtual {p0, v5, p4, p5}, Landroid/view/ViewGroup;->measureChild(Landroid/view/View;II)V

    .line 658
    :cond_55
    invoke-static {p2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 659
    invoke-virtual {p1, p2, p2}, Landroid/view/View;->measure(II)V

    return-void
.end method

.method public final a(Lads_mobile_sdk/xn2;)V
    .registers 4

    .line 707
    const-string v0, "onClose"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 708
    iget-object v0, p0, Lads_mobile_sdk/do2;->j:Lads_mobile_sdk/sn2;

    if-eqz v0, :cond_11

    .line 709
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 710
    iput-object v0, p0, Lads_mobile_sdk/do2;->j:Lads_mobile_sdk/sn2;

    .line 711
    iput-object v0, p0, Lads_mobile_sdk/do2;->k:Landroid/widget/TextView;

    .line 712
    :cond_11
    iget-object v0, p0, Lads_mobile_sdk/do2;->i:Lads_mobile_sdk/sn2;

    if-eqz v0, :cond_16

    return-void

    .line 717
    :cond_16
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 718
    sget v1, Lcom/google/android/libraries/ads/mobile/sdk/R$drawable;->admob_close_button_white_circle_black_cross:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 719
    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 723
    invoke-virtual {p0, v0}, Lads_mobile_sdk/do2;->a(Landroid/view/View;)Lads_mobile_sdk/sn2;

    move-result-object v0

    new-instance v1, Lads_mobile_sdk/do2$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Lads_mobile_sdk/do2$$ExternalSyntheticLambda0;-><init>(Lkotlin/jvm/functions/Function0;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 724
    iput-object v0, p0, Lads_mobile_sdk/do2;->i:Lads_mobile_sdk/sn2;

    return-void
.end method

.method public final a(Lcom/google/android/libraries/ads/mobile/sdk/pip/PictureInPictureAdPosition;)V
    .registers 3

    .line 660
    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 706
    iput-object p1, p0, Lads_mobile_sdk/do2;->d:Lcom/google/android/libraries/ads/mobile/sdk/pip/PictureInPictureAdPosition;

    return-void
.end method

.method public final addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .registers 8

    if-eqz p1, :cond_39

    .line 283
    instance-of v0, p1, Lads_mobile_sdk/sn2;

    if-nez v0, :cond_39

    .line 284
    iget-object v0, p0, Lads_mobile_sdk/o53;->a:Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;

    .line 285
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "getContext(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;->getWidthInPixels(Landroid/content/Context;)I

    move-result v0

    .line 286
    iget-object v1, p0, Lads_mobile_sdk/o53;->a:Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;

    .line 287
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;->getHeightInPixels(Landroid/content/Context;)I

    move-result v1

    .line 288
    instance-of v2, p3, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz v2, :cond_29

    check-cast p3, Landroid/widget/FrameLayout$LayoutParams;

    goto :goto_2a

    :cond_29
    const/4 p3, 0x0

    :goto_2a
    if-nez p3, :cond_31

    new-instance p3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {p3, v0, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 289
    :cond_31
    iput v0, p3, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 290
    iput v1, p3, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 291
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void

    .line 294
    :cond_39
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public final b(I)V
    .registers 7

    .line 189
    iget-object v0, p0, Lads_mobile_sdk/do2;->j:Lads_mobile_sdk/sn2;

    if-nez v0, :cond_58

    .line 191
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 193
    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const/4 v2, 0x0

    .line 194
    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    const/high16 v3, 0x447a0000    # 1000.0f

    .line 195
    invoke-virtual {v1, v3}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    const/16 v3, 0xcc

    const/16 v4, 0xff

    .line 196
    invoke-static {v3, v4, v4, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 197
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 206
    new-instance v1, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/high16 v3, -0x1000000

    .line 207
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 208
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    .line 209
    sget-object v2, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const/16 v2, 0x11

    .line 210
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 215
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v4, -0x2

    invoke-direct {v3, v4, v4, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 216
    invoke-virtual {v0, v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 221
    invoke-virtual {p0, v0}, Lads_mobile_sdk/do2;->a(Landroid/view/View;)Lads_mobile_sdk/sn2;

    move-result-object v0

    iput-object v0, p0, Lads_mobile_sdk/do2;->j:Lads_mobile_sdk/sn2;

    .line 222
    iput-object v1, p0, Lads_mobile_sdk/do2;->k:Landroid/widget/TextView;

    .line 223
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 226
    :cond_58
    iget-object v0, p0, Lads_mobile_sdk/do2;->k:Landroid/widget/TextView;

    if-nez v0, :cond_5d

    return-void

    :cond_5d
    sget-object v1, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const/4 v2, 0x1

    invoke-static {p1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    const-string v2, "%d"

    invoke-static {v1, v2, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "format(...)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final b()Z
    .registers 2

    .line 80
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    if-eqz v0, :cond_15

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    if-eqz v0, :cond_15

    invoke-virtual {p0}, Landroid/view/View;->isLaidOut()Z

    move-result v0

    if-nez v0, :cond_13

    goto :goto_15

    :cond_13
    const/4 v0, 0x0

    return v0

    :cond_15
    :goto_15
    const/4 v0, 0x1

    return v0
.end method

.method public final onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 5

    .line 1
    const-string v0, "ev"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 200
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    .line 201
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    .line 203
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    if-eqz p1, :cond_32

    const/4 v2, 0x2

    if-eq p1, v2, :cond_17

    goto :goto_48

    .line 211
    :cond_17
    iget p1, p0, Lads_mobile_sdk/do2;->e:F

    sub-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const/16 v0, 0x32

    int-to-float v0, v0

    cmpl-float p1, p1, v0

    if-gtz p1, :cond_30

    iget p1, p0, Lads_mobile_sdk/do2;->f:F

    sub-float/2addr v1, p1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    cmpl-float p1, p1, v0

    if-lez p1, :cond_48

    :cond_30
    const/4 p1, 0x1

    return p1

    .line 212
    :cond_32
    iput v0, p0, Lads_mobile_sdk/do2;->e:F

    .line 213
    iput v1, p0, Lads_mobile_sdk/do2;->f:F

    .line 214
    invoke-virtual {p0}, Landroid/view/View;->getX()F

    move-result p1

    iget v0, p0, Lads_mobile_sdk/do2;->e:F

    sub-float/2addr p1, v0

    iput p1, p0, Lads_mobile_sdk/do2;->g:F

    .line 215
    invoke-virtual {p0}, Landroid/view/View;->getY()F

    move-result p1

    iget v0, p0, Lads_mobile_sdk/do2;->f:F

    sub-float/2addr p1, v0

    iput p1, p0, Lads_mobile_sdk/do2;->h:F

    :cond_48
    :goto_48
    const/4 p1, 0x0

    return p1
.end method

.method public final onLayout(ZIIII)V
    .registers 13

    .line 2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    const/4 p2, 0x0

    :goto_5
    if-ge p2, p1, :cond_13

    .line 3
    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p4

    .line 4
    instance-of v0, p4, Lads_mobile_sdk/sn2;

    if-nez v0, :cond_10

    goto :goto_14

    :cond_10
    add-int/lit8 p2, p2, 0x1

    goto :goto_5

    :cond_13
    const/4 p4, 0x0

    :goto_14
    const/16 p1, 0x8

    if-eqz p4, :cond_71

    .line 5
    invoke-virtual {p4}, Landroid/view/View;->getVisibility()I

    move-result p2

    if-ne p2, p1, :cond_1f

    goto :goto_71

    .line 6
    :cond_1f
    iget-object p2, p0, Lads_mobile_sdk/o53;->a:Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;

    .line 7
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "getContext(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;->getWidthInPixels(Landroid/content/Context;)I

    move-result p2

    .line 8
    iget-object v0, p0, Lads_mobile_sdk/o53;->a:Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;

    .line 9
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;->getHeightInPixels(Landroid/content/Context;)I

    move-result v0

    .line 12
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    .line 13
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    .line 15
    iget-object v3, p0, Lads_mobile_sdk/do2;->b:Lads_mobile_sdk/qn2;

    .line 16
    iget-object v3, v3, Lads_mobile_sdk/qn2;->a:Lads_mobile_sdk/ex0;

    .line 18
    const-string v4, "key"

    const-string v5, "gads:picture_in_picture:inner_clipping_radius_dp"

    invoke-static {v3, v5, v4, p1}, Lads_mobile_sdk/by0;->a(Lads_mobile_sdk/ex0;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v4

    .line 19
    sget-object v6, Lads_mobile_sdk/yr;->f:Lads_mobile_sdk/nr;

    invoke-virtual {v3, v5, v4, v6}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    .line 20
    invoke-virtual {p0, v3}, Lads_mobile_sdk/do2;->a(I)I

    move-result v3

    int-to-float v3, v3

    .line 22
    new-instance v4, Lads_mobile_sdk/co2;

    invoke-direct {v4, p2, v0, v3}, Lads_mobile_sdk/co2;-><init>(IIF)V

    .line 23
    invoke-virtual {p4, v4}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    const/4 v3, 0x1

    .line 29
    invoke-virtual {p4, v3}, Landroid/view/View;->setClipToOutline(Z)V

    add-int/2addr p2, v1

    add-int/2addr v0, v2

    .line 30
    invoke-virtual {p4, v1, v2, p2, v0}, Landroid/view/View;->layout(IIII)V

    .line 33
    :cond_71
    :goto_71
    iget-object p2, p0, Lads_mobile_sdk/do2;->i:Lads_mobile_sdk/sn2;

    if-eqz p2, :cond_90

    .line 34
    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result p4

    if-ne p4, p1, :cond_7c

    goto :goto_90

    .line 35
    :cond_7c
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result p4

    .line 36
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .line 40
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    sub-int v2, p5, p3

    sub-int/2addr v2, v0

    add-int/2addr p4, v1

    add-int/2addr v0, v2

    .line 43
    invoke-virtual {p2, v1, v2, p4, v0}, Landroid/view/View;->layout(IIII)V

    .line 44
    :cond_90
    :goto_90
    iget-object p2, p0, Lads_mobile_sdk/do2;->j:Lads_mobile_sdk/sn2;

    if-eqz p2, :cond_ae

    .line 45
    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result p4

    if-ne p4, p1, :cond_9b

    goto :goto_ae

    .line 46
    :cond_9b
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    .line 47
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result p4

    .line 51
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    sub-int/2addr p5, p3

    sub-int/2addr p5, p4

    add-int/2addr p1, v0

    add-int/2addr p4, p5

    .line 54
    invoke-virtual {p2, v0, p5, p1, p4}, Landroid/view/View;->layout(IIII)V

    :cond_ae
    :goto_ae
    return-void
.end method

.method public final onMeasure(II)V
    .registers 16

    .line 2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_5
    const/4 v2, 0x0

    if-ge v1, v0, :cond_14

    .line 3
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 4
    instance-of v4, v3, Lads_mobile_sdk/sn2;

    if-nez v4, :cond_11

    goto :goto_15

    :cond_11
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_14
    move-object v3, v2

    .line 5
    :goto_15
    iget-object v0, p0, Lads_mobile_sdk/o53;->a:Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;

    .line 6
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v4, "getContext(...)"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;->getWidthInPixels(Landroid/content/Context;)I

    move-result v0

    .line 7
    iget-object v1, p0, Lads_mobile_sdk/o53;->a:Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;

    .line 8
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;->getHeightInPixels(Landroid/content/Context;)I

    move-result v1

    if-eqz v3, :cond_5b

    .line 161
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-ne v4, v5, :cond_3c

    goto :goto_5b

    .line 162
    :cond_3c
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    instance-of v5, v4, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz v5, :cond_47

    move-object v2, v4

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    :cond_47
    if-eqz v2, :cond_58

    .line 164
    iget v4, v2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    if-ne v4, v0, :cond_51

    iget v4, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    if-eq v4, v1, :cond_58

    .line 166
    :cond_51
    iput v0, v2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 167
    iput v1, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 168
    invoke-virtual {v3, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 170
    :cond_58
    invoke-virtual {p0, v3, p1, p2}, Landroid/view/ViewGroup;->measureChild(Landroid/view/View;II)V

    .line 176
    :cond_5b
    :goto_5b
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    add-int/2addr v2, v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v0

    add-int/2addr v0, v2

    .line 177
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    add-int/2addr v2, v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    add-int/2addr v1, v2

    .line 179
    iget-object v2, p0, Lads_mobile_sdk/do2;->b:Lads_mobile_sdk/qn2;

    .line 180
    iget-object v2, v2, Lads_mobile_sdk/qn2;->a:Lads_mobile_sdk/ex0;

    const/16 v3, 0x30

    .line 182
    const-string v4, "gads:picture_in_picture:close_button_container_size_dp"

    const-string v5, "key"

    invoke-static {v2, v4, v5, v3}, Lads_mobile_sdk/by0;->a(Lads_mobile_sdk/ex0;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v3

    .line 183
    sget-object v6, Lads_mobile_sdk/yr;->f:Lads_mobile_sdk/nr;

    invoke-virtual {v2, v4, v3, v6}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    .line 184
    invoke-virtual {p0, v2}, Lads_mobile_sdk/do2;->a(I)I

    move-result v9

    .line 185
    iget-object v2, p0, Lads_mobile_sdk/do2;->b:Lads_mobile_sdk/qn2;

    .line 186
    iget-object v2, v2, Lads_mobile_sdk/qn2;->a:Lads_mobile_sdk/ex0;

    const/16 v3, 0x14

    .line 188
    const-string v4, "gads:picture_in_picture:close_button_icon_size_dp"

    invoke-static {v2, v4, v5, v3}, Lads_mobile_sdk/by0;->a(Lads_mobile_sdk/ex0;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v3

    .line 189
    invoke-virtual {v2, v4, v3, v6}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    .line 190
    invoke-virtual {p0, v2}, Lads_mobile_sdk/do2;->a(I)I

    move-result v10

    .line 192
    iget-object v8, p0, Lads_mobile_sdk/do2;->i:Lads_mobile_sdk/sn2;

    move-object v7, p0

    move v11, p1

    move v12, p2

    if-eqz v8, :cond_b1

    .line 193
    invoke-virtual/range {v7 .. v12}, Lads_mobile_sdk/do2;->a(Lads_mobile_sdk/sn2;IIII)V

    .line 201
    :cond_b1
    iget-object v8, v7, Lads_mobile_sdk/do2;->j:Lads_mobile_sdk/sn2;

    if-eqz v8, :cond_b8

    .line 202
    invoke-virtual/range {v7 .. v12}, Lads_mobile_sdk/do2;->a(Lads_mobile_sdk/sn2;IIII)V

    .line 211
    :cond_b8
    invoke-virtual {p0}, Landroid/view/View;->getSuggestedMinimumWidth()I

    move-result p1

    invoke-static {v0, p1}, Lkotlin/ranges/RangesKt___RangesKt;->coerceAtLeast(II)I

    move-result p1

    .line 212
    invoke-virtual {p0}, Landroid/view/View;->getSuggestedMinimumHeight()I

    move-result p2

    invoke-static {v1, p2}, Lkotlin/ranges/RangesKt___RangesKt;->coerceAtLeast(II)I

    move-result p2

    .line 214
    invoke-static {p1, v11}, Landroid/view/View;->resolveSize(II)I

    move-result p1

    .line 215
    invoke-static {p2, v12}, Landroid/view/View;->resolveSize(II)I

    move-result p2

    .line 216
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 13

    .line 1
    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 220
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v1, v0, Landroid/view/View;

    const/4 v2, 0x0

    if-eqz v1, :cond_11

    check-cast v0, Landroid/view/View;

    goto :goto_12

    :cond_11
    move-object v0, v2

    :goto_12
    const/4 v1, 0x0

    if-nez v0, :cond_16

    return v1

    .line 222
    :cond_16
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_5b

    const/4 v2, 0x2

    if-eq v3, v2, :cond_21

    return v1

    .line 224
    :cond_21
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    iget v2, p0, Lads_mobile_sdk/do2;->g:F

    add-float/2addr v1, v2

    .line 225
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    iget v2, p0, Lads_mobile_sdk/do2;->h:F

    add-float/2addr p1, v2

    .line 226
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lkotlin/ranges/RangesKt___RangesKt;->coerceAtLeast(FF)F

    move-result v2

    .line 227
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v5

    sub-int/2addr v0, v5

    int-to-float v0, v0

    invoke-static {v0, v3}, Lkotlin/ranges/RangesKt___RangesKt;->coerceAtLeast(FF)F

    move-result v0

    .line 228
    invoke-static {v1, v3, v2}, Lkotlin/ranges/RangesKt___RangesKt;->coerceIn(FFF)F

    move-result v1

    invoke-virtual {p0, v1}, Landroid/view/View;->setX(F)V

    .line 229
    invoke-static {p1, v3, v0}, Lkotlin/ranges/RangesKt___RangesKt;->coerceIn(FFF)F

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setY(F)V

    return v4

    .line 234
    :cond_5b
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iget v1, p0, Lads_mobile_sdk/do2;->e:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    iget v1, p0, Lads_mobile_sdk/do2;->f:F

    sub-float/2addr p1, v1

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    .line 235
    iget-object v0, p0, Lads_mobile_sdk/do2;->b:Lads_mobile_sdk/qn2;

    .line 236
    iget-object v0, v0, Lads_mobile_sdk/qn2;->a:Lads_mobile_sdk/ex0;

    const/16 v1, 0xa

    .line 238
    const-string v3, "key"

    const-string v5, "gads:picture_in_picture:drag_threshold_px"

    invoke-static {v0, v5, v3, v1}, Lads_mobile_sdk/by0;->a(Lads_mobile_sdk/ex0;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v1

    .line 239
    sget-object v3, Lads_mobile_sdk/yr;->f:Lads_mobile_sdk/nr;

    invoke-virtual {v0, v5, v1, v3}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    int-to-float v0, v0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_ee

    .line 240
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    instance-of v0, p1, Landroid/view/View;

    if-eqz v0, :cond_9f

    move-object v2, p1

    check-cast v2, Landroid/view/View;

    :cond_9f
    if-nez v2, :cond_a2

    goto :goto_f1

    .line 242
    :cond_a2
    invoke-virtual {p0}, Landroid/view/View;->getX()F

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    add-float/2addr v0, p1

    .line 243
    invoke-virtual {p0}, Landroid/view/View;->getY()F

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v1

    add-float/2addr v3, p1

    float-to-double v5, v3

    .line 246
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result p1

    int-to-double v7, p1

    const-wide/high16 v9, 0x4000000000000000L    # 2.0

    div-double/2addr v7, v9

    cmpg-double p1, v5, v7

    if-gez p1, :cond_d8

    float-to-double v0, v0

    .line 247
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result p1

    int-to-double v2, p1

    div-double/2addr v2, v9

    cmpg-double p1, v0, v2

    if-gez p1, :cond_d5

    .line 248
    sget-object p1, Lcom/google/android/libraries/ads/mobile/sdk/pip/PictureInPictureAdPosition;->TOP_LEFT:Lcom/google/android/libraries/ads/mobile/sdk/pip/PictureInPictureAdPosition;

    goto :goto_e8

    .line 250
    :cond_d5
    sget-object p1, Lcom/google/android/libraries/ads/mobile/sdk/pip/PictureInPictureAdPosition;->TOP_RIGHT:Lcom/google/android/libraries/ads/mobile/sdk/pip/PictureInPictureAdPosition;

    goto :goto_e8

    :cond_d8
    float-to-double v0, v0

    .line 253
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result p1

    int-to-double v2, p1

    div-double/2addr v2, v9

    cmpg-double p1, v0, v2

    if-gez p1, :cond_e6

    .line 254
    sget-object p1, Lcom/google/android/libraries/ads/mobile/sdk/pip/PictureInPictureAdPosition;->BOTTOM_LEFT:Lcom/google/android/libraries/ads/mobile/sdk/pip/PictureInPictureAdPosition;

    goto :goto_e8

    .line 256
    :cond_e6
    sget-object p1, Lcom/google/android/libraries/ads/mobile/sdk/pip/PictureInPictureAdPosition;->BOTTOM_RIGHT:Lcom/google/android/libraries/ads/mobile/sdk/pip/PictureInPictureAdPosition;

    .line 260
    :goto_e8
    iget-object v0, p0, Lads_mobile_sdk/do2;->c:Lkotlin/jvm/functions/Function1;

    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_f1

    .line 261
    :cond_ee
    invoke-super {p0}, Landroid/view/View;->performClick()Z

    :goto_f1
    return v4
.end method

.method public final performClick()Z
    .registers 2

    .line 254
    invoke-super {p0}, Landroid/view/View;->performClick()Z

    const/4 v0, 0x1

    return v0
.end method

.method public final removeAllViews()V
    .registers 6

    .line 453
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 454
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_a
    if-ge v2, v1, :cond_1d

    .line 455
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 456
    instance-of v4, v3, Lads_mobile_sdk/sn2;

    if-nez v4, :cond_1a

    .line 457
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1a
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 460
    :cond_1d
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_21
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_31

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 461
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_21

    :cond_31
    return-void
.end method

###### Class ads_mobile_sdk.do2$$ExternalSyntheticLambda0 (ads_mobile_sdk.do2$$ExternalSyntheticLambda0)
.class public final synthetic Lads_mobile_sdk/do2$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lkotlin/jvm/functions/Function0;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function0;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lads_mobile_sdk/do2$$ExternalSyntheticLambda0;->f$0:Lkotlin/jvm/functions/Function0;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 3

    .line 0
    iget-object v0, p0, Lads_mobile_sdk/do2$$ExternalSyntheticLambda0;->f$0:Lkotlin/jvm/functions/Function0;

    invoke-static {v0, p1}, Lads_mobile_sdk/do2;->a(Lkotlin/jvm/functions/Function0;Landroid/view/View;)V

    return-void
.end method

###### Class ads_mobile_sdk.do2$$ExternalSyntheticLambda1 (ads_mobile_sdk.do2$$ExternalSyntheticLambda1)
.class public final synthetic Lads_mobile_sdk/do2$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic f$0:Lads_mobile_sdk/do2;


# direct methods
.method public synthetic constructor <init>(Lads_mobile_sdk/do2;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lads_mobile_sdk/do2$$ExternalSyntheticLambda1;->f$0:Lads_mobile_sdk/do2;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 3

    .line 0
    iget-object v0, p0, Lads_mobile_sdk/do2$$ExternalSyntheticLambda1;->f$0:Lads_mobile_sdk/do2;

    invoke-static {v0, p1}, Lads_mobile_sdk/do2;->a(Lads_mobile_sdk/do2;Landroid/animation/ValueAnimator;)V

    return-void
.end method
