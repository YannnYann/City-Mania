###### Class ads_mobile_sdk.h41 (ads_mobile_sdk.h41)
.class public final Lads_mobile_sdk/h41;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# instance fields
.field public final a:Lads_mobile_sdk/r31;

.field public b:Lads_mobile_sdk/nr3;

.field public c:Lkotlin/jvm/functions/Function1;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/r31;)V
    .registers 4

    .line 1
    const-string v0, "gmaWebView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lads_mobile_sdk/h41;->a:Lads_mobile_sdk/r31;

    .line 19
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 20
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const/4 p1, 0x0

    .line 21
    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    return-void
.end method


# virtual methods
.method public final a()Lads_mobile_sdk/r31;
    .registers 2

    .line 14
    iget-object v0, p0, Lads_mobile_sdk/h41;->a:Lads_mobile_sdk/r31;

    return-object v0
.end method

.method public final onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    .line 1
    const-string v0, "ev"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    iget-object v0, p0, Lads_mobile_sdk/h41;->b:Lads_mobile_sdk/nr3;

    if-eqz v0, :cond_e

    check-cast v0, Lads_mobile_sdk/tk0;

    invoke-virtual {v0, p1}, Lads_mobile_sdk/tk0;->a(Landroid/view/MotionEvent;)V

    .line 34
    :cond_e
    iget-object v0, p0, Lads_mobile_sdk/h41;->c:Lkotlin/jvm/functions/Function1;

    if-eqz v0, :cond_1d

    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1

    :cond_1d
    const/4 p1, 0x0

    return p1
.end method

.method public final removeAllViews()V
    .registers 3

    const/4 v0, 0x0

    .line 41
    const-string v1, "Attempting to remove ad from its container, this should not be done unless the ad is destroyed."

    .line 42
    invoke-static {v1, v0}, Lads_mobile_sdk/f01;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final removeView(Landroid/view/View;)V
    .registers 4

    .line 1
    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    const-string v0, "Attempting to remove ad from its container, this should not be done unless the ad is destroyed."

    const/4 v1, 0x0

    .line 49
    invoke-static {v0, v1}, Lads_mobile_sdk/f01;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 50
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public final removeViewAt(I)V
    .registers 4

    const/4 v0, 0x0

    .line 56
    const-string v1, "Attempting to remove ad from its container, this should not be done unless the ad is destroyed."

    .line 57
    invoke-static {v1, v0}, Lads_mobile_sdk/f01;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 58
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->removeViewAt(I)V

    return-void
.end method

.method public final removeViews(II)V
    .registers 5

    const/4 v0, 0x0

    .line 64
    const-string v1, "Attempting to remove ad from its container, this should not be done unless the ad is destroyed."

    .line 65
    invoke-static {v1, v0}, Lads_mobile_sdk/f01;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 66
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->removeViews(II)V

    return-void
.end method
