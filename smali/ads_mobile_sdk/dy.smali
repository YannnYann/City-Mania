###### Class ads_mobile_sdk.dy (ads_mobile_sdk.dy)
.class public final Lads_mobile_sdk/dy;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# instance fields
.field public a:Lkotlin/jvm/functions/Function0;

.field public final b:Landroid/widget/ImageButton;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lads_mobile_sdk/ey;)V
    .registers 8

    .line 1
    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "closeButtonAsset"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "config"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 21
    new-instance v0, Landroid/widget/ImageButton;

    invoke-direct {v0, p1}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lads_mobile_sdk/dy;->b:Landroid/widget/ImageButton;

    .line 24
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v1, 0x0

    .line 28
    :try_start_1e
    const-string v2, "white"

    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 30
    sget p2, Lcom/google/android/libraries/ads/mobile/sdk/R$drawable;->admob_close_button_white_circle_black_cross:I

    .line 31
    invoke-virtual {v0, p2, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    :goto_2c
    move-object v1, p2

    goto :goto_3d

    .line 35
    :cond_2e
    const-string v2, "black"

    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3d

    .line 37
    sget p2, Lcom/google/android/libraries/ads/mobile/sdk/R$drawable;->admob_close_button_black_circle_white_cross:I

    .line 38
    invoke-virtual {v0, p2, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p2
    :try_end_3c
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1e .. :try_end_3c} :catch_3d

    goto :goto_2c

    :catch_3d
    :cond_3d
    :goto_3d
    if-nez v1, :cond_48

    .line 49
    iget-object p2, p0, Lads_mobile_sdk/dy;->b:Landroid/widget/ImageButton;

    const v0, 0x1080017

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_54

    .line 51
    :cond_48
    iget-object p2, p0, Lads_mobile_sdk/dy;->b:Landroid/widget/ImageButton;

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 52
    iget-object p2, p0, Lads_mobile_sdk/dy;->b:Landroid/widget/ImageButton;

    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 55
    :goto_54
    iget-object p2, p0, Lads_mobile_sdk/dy;->b:Landroid/widget/ImageButton;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 56
    iget-object p2, p0, Lads_mobile_sdk/dy;->b:Landroid/widget/ImageButton;

    .line 57
    iget v1, p3, Lads_mobile_sdk/ey;->a:I

    invoke-static {p1, v1}, Lads_mobile_sdk/zn0;->a(Landroid/content/Context;I)I

    move-result v1

    .line 58
    invoke-static {p1, v0}, Lads_mobile_sdk/zn0;->a(Landroid/content/Context;I)I

    move-result v0

    .line 59
    iget v2, p3, Lads_mobile_sdk/ey;->b:I

    invoke-static {p1, v2}, Lads_mobile_sdk/zn0;->a(Landroid/content/Context;I)I

    move-result v2

    .line 60
    iget v3, p3, Lads_mobile_sdk/ey;->c:I

    invoke-static {p1, v3}, Lads_mobile_sdk/zn0;->a(Landroid/content/Context;I)I

    move-result v3

    .line 61
    invoke-virtual {p2, v1, v0, v2, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 67
    iget-object p2, p0, Lads_mobile_sdk/dy;->b:Landroid/widget/ImageButton;

    const-string v0, "Fullscreen ad close button"

    invoke-virtual {p2, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 68
    new-instance p2, Lads_mobile_sdk/dy$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lads_mobile_sdk/dy$$ExternalSyntheticLambda0;-><init>(Lads_mobile_sdk/dy;)V

    invoke-virtual {p0, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    iget-object p2, p0, Lads_mobile_sdk/dy;->b:Landroid/widget/ImageButton;

    new-instance v0, Lads_mobile_sdk/dy$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lads_mobile_sdk/dy$$ExternalSyntheticLambda1;-><init>(Lads_mobile_sdk/dy;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    iget-object p2, p0, Lads_mobile_sdk/dy;->b:Landroid/widget/ImageButton;

    .line 72
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 73
    iget v1, p3, Lads_mobile_sdk/ey;->a:I

    add-int/lit8 v1, v1, 0x32

    iget v2, p3, Lads_mobile_sdk/ey;->b:I

    add-int/2addr v1, v2

    invoke-static {p1, v1}, Lads_mobile_sdk/zn0;->a(Landroid/content/Context;I)I

    move-result v1

    .line 74
    iget p3, p3, Lads_mobile_sdk/ey;->c:I

    add-int/lit8 p3, p3, 0x32

    invoke-static {p1, p3}, Lads_mobile_sdk/zn0;->a(Landroid/content/Context;I)I

    move-result p1

    .line 75
    invoke-direct {v0, v1, p1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 76
    invoke-virtual {p0, p2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public static final a(Lads_mobile_sdk/dy;Landroid/view/View;)V
    .registers 2

    .line 1
    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    iget-object p0, p0, Lads_mobile_sdk/dy;->a:Lkotlin/jvm/functions/Function0;

    if-eqz p0, :cond_c

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :cond_c
    return-void
.end method

.method public static final b(Lads_mobile_sdk/dy;Landroid/view/View;)V
    .registers 2

    .line 1
    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    iget-object p0, p0, Lads_mobile_sdk/dy;->a:Lkotlin/jvm/functions/Function0;

    if-eqz p0, :cond_c

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :cond_c
    return-void
.end method

###### Class ads_mobile_sdk.dy$$ExternalSyntheticLambda0 (ads_mobile_sdk.dy$$ExternalSyntheticLambda0)
.class public final synthetic Lads_mobile_sdk/dy$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lads_mobile_sdk/dy;


# direct methods
.method public synthetic constructor <init>(Lads_mobile_sdk/dy;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lads_mobile_sdk/dy$$ExternalSyntheticLambda0;->f$0:Lads_mobile_sdk/dy;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 3

    .line 0
    iget-object v0, p0, Lads_mobile_sdk/dy$$ExternalSyntheticLambda0;->f$0:Lads_mobile_sdk/dy;

    invoke-static {v0, p1}, Lads_mobile_sdk/dy;->a(Lads_mobile_sdk/dy;Landroid/view/View;)V

    return-void
.end method

###### Class ads_mobile_sdk.dy$$ExternalSyntheticLambda1 (ads_mobile_sdk.dy$$ExternalSyntheticLambda1)
.class public final synthetic Lads_mobile_sdk/dy$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lads_mobile_sdk/dy;


# direct methods
.method public synthetic constructor <init>(Lads_mobile_sdk/dy;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lads_mobile_sdk/dy$$ExternalSyntheticLambda1;->f$0:Lads_mobile_sdk/dy;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 3

    .line 0
    iget-object v0, p0, Lads_mobile_sdk/dy$$ExternalSyntheticLambda1;->f$0:Lads_mobile_sdk/dy;

    invoke-static {v0, p1}, Lads_mobile_sdk/dy;->b(Lads_mobile_sdk/dy;Landroid/view/View;)V

    return-void
.end method
