###### Class io.bidmachine.util.UiUtilsKt (io.bidmachine.util.UiUtilsKt)
.class public final Lio/bidmachine/util/UiUtilsKt;
.super Ljava/lang/Object;
.source "UiUtils.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nUiUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 UiUtils.kt\nio/bidmachine/util/UiUtilsKt\n+ 2 Utils.kt\nio/bidmachine/util/UtilsKt\n*L\n1#1,219:1\n846#2,4:220\n846#2,4:224\n846#2,4:228\n*S KotlinDebug\n*F\n+ 1 UiUtils.kt\nio/bidmachine/util/UiUtilsKt\n*L\n157#1:220,4\n163#1:224,4\n176#1:228,4\n*E\n"
.end annotation


# direct methods
.method public static final applyFullscreen(Landroid/app/Activity;)V
    .registers 4

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 187
    invoke-static {p0, v2, v0, v1}, Lio/bidmachine/util/UiUtilsKt;->applySystemUiVisibility$default(Landroid/app/Activity;ZILjava/lang/Object;)V

    .line 188
    invoke-static {p0}, Lio/bidmachine/util/UiUtilsKt;->hideKeyboard(Landroid/app/Activity;)Ljava/lang/Boolean;

    return-void
.end method

.method public static final applySystemUiVisibility(Landroid/app/Activity;Z)V
    .registers 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 192
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    if-eqz p0, :cond_e

    invoke-static {p0, p1}, Lio/bidmachine/util/UiUtilsKt;->applySystemUiVisibility(Landroid/view/Window;Z)V

    :cond_e
    return-void
.end method

.method public static final applySystemUiVisibility(Landroid/view/Window;Z)V
    .registers 4

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 196
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_23

    .line 197
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    invoke-static {p0}, Landroidx/core/view/SoftwareKeyboardControllerCompat$Impl30$$ExternalSyntheticApiModelOutline0;->m(Landroid/view/View;)Landroid/view/WindowInsetsController;

    move-result-object p0

    if-eqz p0, :cond_36

    const/4 v0, 0x2

    .line 198
    invoke-static {p0, v0}, Landroidx/core/view/WindowInsetsControllerCompat$Impl30$$ExternalSyntheticApiModelOutline1;->m(Landroid/view/WindowInsetsController;I)V

    if-eqz p1, :cond_36

    .line 200
    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$TypeImpl30$$ExternalSyntheticApiModelOutline0;->m()I

    move-result p1

    invoke-static {p0, p1}, Landroidx/core/view/SoftwareKeyboardControllerCompat$Impl30$$ExternalSyntheticApiModelOutline4;->m(Landroid/view/WindowInsetsController;I)V

    return-void

    :cond_23
    if-eqz p1, :cond_2c

    const/16 p1, 0x400

    .line 207
    invoke-virtual {p0, p1, p1}, Landroid/view/Window;->setFlags(II)V

    const/4 p1, 0x4

    goto :goto_2d

    :cond_2c
    const/4 p1, 0x0

    :goto_2d
    if-lez p1, :cond_36

    .line 213
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/view/View;->setSystemUiVisibility(I)V

    :cond_36
    return-void
.end method

.method public static synthetic applySystemUiVisibility$default(Landroid/app/Activity;ZILjava/lang/Object;)V
    .registers 4

    const/4 p3, 0x1

    and-int/2addr p2, p3

    if-eqz p2, :cond_5

    move p1, p3

    .line 191
    :cond_5
    invoke-static {p0, p1}, Lio/bidmachine/util/UiUtilsKt;->applySystemUiVisibility(Landroid/app/Activity;Z)V

    return-void
.end method

.method public static final finishActivityWithoutAnimation(Landroid/app/Activity;)V
    .registers 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 170
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 171
    invoke-static {p0}, Lio/bidmachine/util/UiUtilsKt;->setNoActivityTransition(Landroid/app/Activity;)V

    return-void
.end method

.method public static final finishActivityWithoutAnimationSafely(Landroid/app/Activity;)V
    .registers 1

    if-nez p0, :cond_3

    goto :goto_8

    .line 177
    :cond_3
    :try_start_3
    invoke-static {p0}, Lio/bidmachine/util/UiUtilsKt;->finishActivityWithoutAnimation(Landroid/app/Activity;)V

    .line 178
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_8

    :catchall_8
    :goto_8
    return-void
.end method

.method public static final hideKeyboard(Landroid/app/Activity;)Ljava/lang/Boolean;
    .registers 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 219
    invoke-static {p0}, Lio/bidmachine/util/UtilsKt;->getInputMethodManager(Landroid/content/Context;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    if-eqz v0, :cond_24

    invoke-virtual {p0}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_16

    new-instance v1, Landroid/view/View;

    invoke-direct {v1, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    :cond_16
    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_24
    const/4 p0, 0x0

    return-object p0
.end method

.method public static final isRealMotionEvent(Landroid/view/MotionEvent;)Z
    .registers 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 149
    invoke-static {p0}, Lio/bidmachine/util/UiUtilsKt;->isSyntheticMotionEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static final isSyntheticMotionEvent(Landroid/view/MotionEvent;)Z
    .registers 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 147
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getSource()I

    move-result p0

    const/4 v0, 0x2

    if-ne p0, v0, :cond_e

    const/4 p0, 0x1

    return p0

    :cond_e
    const/4 p0, 0x0

    return p0
.end method

.method public static final obtainSyntheticMotionEvent(III)Landroid/view/MotionEvent;
    .registers 11

    .line 132
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 133
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    int-to-float v5, p1

    int-to-float v6, p2

    const/4 v7, 0x0

    move v4, p0

    .line 131
    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object p0

    const/4 p1, 0x2

    .line 139
    invoke-virtual {p0, p1}, Landroid/view/MotionEvent;->setSource(I)V

    .line 138
    const-string p1, "obtain(\n        SystemCl\u2026MOTION_EVENT_SOURCE\n    }"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static final obtainSyntheticMotionEvent(ILandroid/graphics/Point;)Landroid/view/MotionEvent;
    .registers 3

    const-string v0, "point"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 125
    iget v0, p1, Landroid/graphics/Point;->x:I

    .line 126
    iget p1, p1, Landroid/graphics/Point;->y:I

    .line 123
    invoke-static {p0, v0, p1}, Lio/bidmachine/util/UiUtilsKt;->obtainSyntheticMotionEvent(III)Landroid/view/MotionEvent;

    move-result-object p0

    return-object p0
.end method

.method public static final prepareFullscreen(Landroid/app/Activity;)V
    .registers 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 182
    invoke-virtual {p0, v0}, Landroid/app/Activity;->requestWindowFeature(I)Z

    .line 183
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    if-eqz p0, :cond_14

    const/16 v0, 0x80

    invoke-virtual {p0, v0}, Landroid/view/Window;->addFlags(I)V

    :cond_14
    return-void
.end method

.method public static final setActivityBackgroundColor(Landroid/app/Activity;I)Lkotlin/Unit;
    .registers 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 153
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-static {p0, p1}, Lio/bidmachine/util/UiUtils;->setWindowBackgroundColor(Landroid/view/Window;I)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static final setNoActivityTransition(Landroid/app/Activity;)V
    .registers 4

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 156
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x22

    const/4 v2, 0x0

    if-lt v0, v1, :cond_14

    .line 158
    :try_start_c
    invoke-static {p0, v2, v2, v2, v2}, Lio/bidmachine/util/UiUtilsKt$$ExternalSyntheticApiModelOutline0;->m(Landroid/app/Activity;IIII)V

    const/4 v0, 0x1

    .line 159
    invoke-static {p0, v0, v2, v2, v2}, Lio/bidmachine/util/UiUtilsKt$$ExternalSyntheticApiModelOutline0;->m(Landroid/app/Activity;IIII)V
    :try_end_13
    .catchall {:try_start_c .. :try_end_13} :catchall_14

    return-void

    .line 165
    :catchall_14
    :cond_14
    :try_start_14
    invoke-virtual {p0, v2, v2}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 166
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_19
    .catchall {:try_start_14 .. :try_end_19} :catchall_19

    :catchall_19
    return-void
.end method

.method public static final setWindowBackgroundColor(Landroid/view/Window;I)Lkotlin/Unit;
    .registers 3

    if-eqz p0, :cond_d

    .line 151
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p0, v0}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :cond_d
    const/4 p0, 0x0

    return-object p0
.end method
