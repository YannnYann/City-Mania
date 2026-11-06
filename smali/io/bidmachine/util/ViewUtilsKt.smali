###### Class io.bidmachine.util.ViewUtilsKt (io.bidmachine.util.ViewUtilsKt)
.class public final Lio/bidmachine/util/ViewUtilsKt;
.super Ljava/lang/Object;
.source "ViewUtils.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nViewUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ViewUtils.kt\nio/bidmachine/util/ViewUtilsKt\n+ 2 Utils.kt\nio/bidmachine/util/UtilsKt\n+ 3 CancellableContinuation.kt\nkotlinx/coroutines/CancellableContinuationKt\n*L\n1#1,451:1\n846#2,4:452\n846#2,4:456\n846#2,4:460\n314#3,11:464\n*S KotlinDebug\n*F\n+ 1 ViewUtils.kt\nio/bidmachine/util/ViewUtilsKt\n*L\n182#1:452,4\n216#1:456,4\n228#1:460,4\n330#1:464,11\n*E\n"
.end annotation


# direct methods
.method public static synthetic $r8$lambda$-sYr5wXMwoZgyPHJ8cQlQYyfsdM(ILandroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .registers 3

    .line 0
    invoke-static {p0, p1, p2}, Lio/bidmachine/util/ViewUtilsKt;->setInsetsChanger$lambda$3(ILandroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object p0

    return-object p0
.end method

.method public static final addOnPreDrawListenerSafely(Landroid/view/View;Landroid/view/ViewTreeObserver$OnPreDrawListener;)V
    .registers 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onPreDrawListener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 387
    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p0

    if-eqz p0, :cond_13

    invoke-static {p0, p1}, Lio/bidmachine/util/ViewUtilsKt;->addOnPreDrawListenerSafely(Landroid/view/ViewTreeObserver;Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    :cond_13
    return-void
.end method

.method public static final addOnPreDrawListenerSafely(Landroid/view/ViewTreeObserver;Landroid/view/ViewTreeObserver$OnPreDrawListener;)V
    .registers 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onPreDrawListener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 391
    invoke-virtual {p0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 392
    invoke-virtual {p0, p1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    :cond_13
    return-void
.end method

.method public static final addSingleViewSafely(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .registers 10

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 229
    :try_start_a
    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 230
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_f
    .catchall {:try_start_a .. :try_end_f} :catchall_f

    :catchall_f
    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v3, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    .line 231
    invoke-static/range {v1 .. v6}, Lio/bidmachine/util/ViewUtilsKt;->addViewSafely$default(Landroid/view/ViewGroup;Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;ILjava/lang/Object;)Z

    return-void
.end method

.method public static synthetic addSingleViewSafely$default(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;ILjava/lang/Object;)V
    .registers 5

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_5

    const/4 p2, 0x0

    .line 227
    :cond_5
    invoke-static {p0, p1, p2}, Lio/bidmachine/util/ViewUtilsKt;->addSingleViewSafely(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public static final addViewSafely(Landroid/view/ViewGroup;Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z
    .registers 5

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 217
    :try_start_a
    invoke-static {p1}, Lio/bidmachine/util/ViewUtilsKt;->removeFromParent(Landroid/view/View;)Lkotlin/Unit;

    if-eqz p3, :cond_13

    .line 219
    invoke-virtual {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_16

    .line 221
    :cond_13
    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 223
    :goto_16
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;
    :try_end_18
    .catchall {:try_start_a .. :try_end_18} :catchall_19

    goto :goto_1a

    :catchall_19
    const/4 p0, 0x0

    .line 224
    :goto_1a
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic addViewSafely$default(Landroid/view/ViewGroup;Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;ILjava/lang/Object;)Z
    .registers 6

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_5

    const/4 p2, -0x1

    :cond_5
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_a

    const/4 p3, 0x0

    .line 215
    :cond_a
    invoke-static {p0, p1, p2, p3}, Lio/bidmachine/util/ViewUtilsKt;->addViewSafely(Landroid/view/ViewGroup;Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z

    move-result p0

    return p0
.end method

.method public static final awaitLayout(Landroid/view/View;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Landroid/view/View;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 315
    new-instance v0, Lkotlinx/coroutines/CancellableContinuationImpl;

    invoke-static {p1}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsJvmKt;->intercepted(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lkotlinx/coroutines/CancellableContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;I)V

    .line 471
    invoke-virtual {v0}, Lkotlinx/coroutines/CancellableContinuationImpl;->initCancellability()V

    .line 331
    invoke-virtual {p0}, Landroid/view/View;->isLaidOut()Z

    move-result v1

    if-eqz v1, :cond_21

    invoke-virtual {p0}, Landroid/view/View;->isLayoutRequested()Z

    move-result v1

    if-nez v1, :cond_21

    .line 332
    invoke-static {p0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-interface {v0, p0}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    goto :goto_40

    .line 336
    :cond_21
    new-instance v1, Lio/bidmachine/util/ViewUtilsKt$awaitLayout$2$listener$1;

    invoke-direct {v1, p0, v0}, Lio/bidmachine/util/ViewUtilsKt$awaitLayout$2$listener$1;-><init>(Landroid/view/View;Lkotlinx/coroutines/CancellableContinuation;)V

    .line 367
    new-instance v2, Lio/bidmachine/util/ViewUtilsKt$awaitLayout$2$1;

    invoke-direct {v2, p0, v1}, Lio/bidmachine/util/ViewUtilsKt$awaitLayout$2$1;-><init>(Landroid/view/View;Landroid/view/View$OnLayoutChangeListener;)V

    invoke-interface {v0, v2}, Lkotlinx/coroutines/CancellableContinuation;->invokeOnCancellation(Lkotlin/jvm/functions/Function1;)V

    .line 370
    invoke-virtual {p0, v1}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 372
    invoke-virtual {p0}, Landroid/view/View;->isLaidOut()Z

    move-result v1

    if-nez v1, :cond_40

    invoke-virtual {p0}, Landroid/view/View;->isLayoutRequested()Z

    move-result v1

    if-nez v1, :cond_40

    .line 373
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 473
    :cond_40
    :goto_40
    invoke-virtual {v0}, Lkotlinx/coroutines/CancellableContinuationImpl;->getResult()Ljava/lang/Object;

    move-result-object p0

    .line 314
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    if-ne p0, v0, :cond_4d

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/DebugProbesKt;->probeCoroutineSuspended(Lkotlin/coroutines/Continuation;)V

    :cond_4d
    return-object p0
.end method

.method public static final contains(Landroid/view/ViewGroup;Landroid/view/View;)Z
    .registers 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 410
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-ne p1, p0, :cond_12

    const/4 p0, 0x1

    return p0

    :cond_12
    const/4 p0, 0x0

    return p0
.end method

.method public static final findActivity(Landroid/view/View;)Landroid/app/Activity;
    .registers 4

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 289
    invoke-static {p0}, Lio/bidmachine/util/ViewUtilsKt;->findContentOrRootView(Landroid/view/View;)Landroid/view/View;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_11

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    goto :goto_12

    :cond_11
    move-object p0, v0

    .line 291
    :goto_12
    instance-of v1, p0, Landroid/app/Activity;

    if-eqz v1, :cond_19

    .line 292
    check-cast p0, Landroid/app/Activity;

    return-object p0

    .line 295
    :cond_19
    instance-of v1, p0, Landroid/content/ContextWrapper;

    if-eqz v1, :cond_26

    .line 296
    check-cast p0, Landroid/content/ContextWrapper;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {p0, v1, v2, v0}, Lio/bidmachine/util/UtilsKt;->findActivity$default(Landroid/content/ContextWrapper;IILjava/lang/Object;)Landroid/app/Activity;

    move-result-object p0

    return-object p0

    :cond_26
    return-object v0
.end method

.method public static final findContentOrRootView(Landroid/view/View;)Landroid/view/View;
    .registers 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 273
    invoke-static {p0}, Lio/bidmachine/util/ViewUtilsKt;->isContentView(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_c

    return-object p0

    .line 277
    :cond_c
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    const/4 v0, 0x0

    .line 278
    :goto_11
    instance-of v1, p0, Landroid/view/View;

    if-eqz v1, :cond_24

    .line 279
    move-object v0, p0

    check-cast v0, Landroid/view/View;

    .line 280
    invoke-static {v0}, Lio/bidmachine/util/ViewUtilsKt;->isContentView(Landroid/view/View;)Z

    move-result p0

    if-eqz p0, :cond_1f

    return-object v0

    .line 283
    :cond_1f
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    goto :goto_11

    :cond_24
    return-object v0
.end method

.method public static final findParentView(Landroid/view/View;Lkotlin/jvm/functions/Function1;)Landroid/view/View;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroid/view/View;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Landroid/view/View;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "predicate"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 259
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    .line 260
    :goto_e
    instance-of v0, p0, Landroid/view/View;

    if-eqz v0, :cond_26

    .line 261
    check-cast p0, Landroid/view/View;

    .line 262
    invoke-interface {p1, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_21

    return-object p0

    .line 265
    :cond_21
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    goto :goto_e

    :cond_26
    const/4 p0, 0x0

    return-object p0
.end method

.method public static final findWindow(Landroid/view/View;)Landroid/view/Window;
    .registers 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 305
    invoke-static {p0}, Lio/bidmachine/util/ViewUtilsKt;->findActivity(Landroid/view/View;)Landroid/app/Activity;

    move-result-object p0

    if-eqz p0, :cond_10

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    return-object p0

    :cond_10
    const/4 p0, 0x0

    return-object p0
.end method

.method public static final getHeightDp(Landroid/view/View;)I
    .registers 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 408
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "context"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    invoke-static {v0, p0}, Lio/bidmachine/util/UtilsKt;->pxToDp(Landroid/content/Context;I)I

    move-result p0

    return p0
.end method

.method public static final getLineText(Landroid/text/Layout;I)Ljava/lang/String;
    .registers 4

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-ltz p1, :cond_27

    .line 415
    invoke-virtual {p0}, Landroid/text/Layout;->getLineCount()I

    move-result v0

    if-ge p1, v0, :cond_27

    .line 419
    invoke-virtual {p0}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    const-string v1, "text"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 420
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v1

    .line 421
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineEnd(I)I

    move-result p0

    .line 419
    invoke-interface {v0, v1, p0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_27
    const/4 p0, 0x0

    return-object p0
.end method

.method public static final getLocationInWindow(Landroid/view/View;)Landroid/graphics/Rect;
    .registers 8

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x2

    .line 192
    new-array v0, v0, [I

    .line 193
    invoke-virtual {p0, v0}, Landroid/view/View;->getLocationInWindow([I)V

    .line 195
    new-instance v1, Landroid/graphics/Rect;

    const/4 v2, 0x0

    .line 196
    aget v3, v0, v2

    const/4 v4, 0x1

    .line 197
    aget v5, v0, v4

    .line 198
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v6

    aget v2, v0, v2

    add-int/2addr v6, v2

    .line 199
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    aget v0, v0, v4

    add-int/2addr p0, v0

    .line 195
    invoke-direct {v1, v3, v5, v6, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v1
.end method

.method public static final getMaxLineWidth(Landroid/text/Layout;)F
    .registers 6

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 435
    invoke-virtual {p0}, Landroid/text/Layout;->getLineCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_b
    if-ge v2, v0, :cond_19

    .line 436
    invoke-virtual {p0, v2}, Landroid/text/Layout;->getLineWidth(I)F

    move-result v3

    cmpl-float v4, v3, v1

    if-lez v4, :cond_16

    move v1, v3

    :cond_16
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :cond_19
    return v1
.end method

.method public static final getTextList(Landroid/text/Layout;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/text/Layout;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 426
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 427
    invoke-virtual {p0}, Landroid/text/Layout;->getLineCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_f
    if-ge v2, v1, :cond_28

    .line 428
    invoke-static {p0, v2}, Lio/bidmachine/util/ViewUtilsKt;->getLineText(Landroid/text/Layout;I)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_25

    invoke-static {v3}, Lkotlin/text/StringsKt__StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_22

    goto :goto_25

    :cond_22
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_25
    :goto_25
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    :cond_28
    return-object v0
.end method

.method public static final getWidthDp(Landroid/view/View;)I
    .registers 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 406
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "context"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p0

    invoke-static {v0, p0}, Lio/bidmachine/util/UtilsKt;->pxToDp(Landroid/content/Context;I)I

    move-result p0

    return p0
.end method

.method public static final hideViewSafely(Landroid/view/View;)V
    .registers 2

    if-nez p0, :cond_3

    return-void

    .line 161
    :cond_3
    new-instance v0, Lio/bidmachine/util/ViewUtilsKt$hideViewSafely$1;

    invoke-direct {v0, p0}, Lio/bidmachine/util/ViewUtilsKt$hideViewSafely$1;-><init>(Landroid/view/View;)V

    invoke-static {v0}, Lio/bidmachine/util/UiUtils;->onUiThread(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static final invisibleViewSafely(Landroid/view/View;)V
    .registers 2

    if-nez p0, :cond_3

    return-void

    .line 172
    :cond_3
    new-instance v0, Lio/bidmachine/util/ViewUtilsKt$invisibleViewSafely$1;

    invoke-direct {v0, p0}, Lio/bidmachine/util/ViewUtilsKt$invisibleViewSafely$1;-><init>(Landroid/view/View;)V

    invoke-static {v0}, Lio/bidmachine/util/UiUtils;->onUiThread(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static final isContentView(Landroid/view/View;)Z
    .registers 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 270
    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result p0

    const v0, 0x1020002

    if-ne p0, v0, :cond_10

    const/4 p0, 0x1

    return p0

    :cond_10
    const/4 p0, 0x0

    return p0
.end method

.method public static final isViewVisible(Landroid/view/View;)Z
    .registers 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 189
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p0

    invoke-static {p0}, Lio/bidmachine/util/ViewUtils;->isViewVisible(I)Z

    move-result p0

    return p0
.end method

.method public static final measureText(Landroid/graphics/Paint;Ljava/lang/CharSequence;)F
    .registers 4

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "text"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 412
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/CharSequence;II)F

    move-result p0

    return p0
.end method

.method public static final removeFromParent(Landroid/view/View;)Lkotlin/Unit;
    .registers 4

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 187
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v1, v0, Landroid/view/ViewGroup;

    const/4 v2, 0x0

    if-eqz v1, :cond_11

    check-cast v0, Landroid/view/ViewGroup;

    goto :goto_12

    :cond_11
    move-object v0, v2

    :goto_12
    if-eqz v0, :cond_1a

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :cond_1a
    return-object v2
.end method

.method public static final removeOnPreDrawListenerSafely(Landroid/view/View;Landroid/view/ViewTreeObserver$OnPreDrawListener;)V
    .registers 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onPreDrawListener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 397
    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p0

    if-eqz p0, :cond_13

    invoke-static {p0, p1}, Lio/bidmachine/util/ViewUtilsKt;->removeOnPreDrawListenerSafely(Landroid/view/ViewTreeObserver;Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    :cond_13
    return-void
.end method

.method public static final removeOnPreDrawListenerSafely(Landroid/view/ViewTreeObserver;Landroid/view/ViewTreeObserver$OnPreDrawListener;)V
    .registers 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onPreDrawListener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 401
    invoke-virtual {p0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 402
    invoke-virtual {p0, p1}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    :cond_13
    return-void
.end method

.method public static final setInsetsChanger(Landroid/view/View;I)V
    .registers 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 208
    new-instance v0, Lio/bidmachine/util/ViewUtilsKt$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lio/bidmachine/util/ViewUtilsKt$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    return-void
.end method

.method public static final setInsetsChanger$lambda$3(ILandroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .registers 6

    const-string v0, "selfView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "windowInsets"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 209
    invoke-static {p2, p0}, Lads_mobile_sdk/mb$$ExternalSyntheticApiModelOutline5;->m(Landroid/view/WindowInsets;I)Landroid/graphics/Insets;

    move-result-object p0

    const-string v0, "windowInsets.getInsets(typeInsets)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 210
    invoke-static {p0}, Lads_mobile_sdk/lb$$ExternalSyntheticApiModelOutline1;->m(Landroid/graphics/Insets;)I

    move-result v0

    invoke-static {p0}, Lads_mobile_sdk/lb$$ExternalSyntheticApiModelOutline2;->m(Landroid/graphics/Insets;)I

    move-result v1

    invoke-static {p0}, Lads_mobile_sdk/lb$$ExternalSyntheticApiModelOutline3;->m(Landroid/graphics/Insets;)I

    move-result v2

    invoke-static {p0}, Lads_mobile_sdk/lb$$ExternalSyntheticApiModelOutline4;->m(Landroid/graphics/Insets;)I

    move-result p0

    invoke-virtual {p1, v0, v1, v2, p0}, Landroid/view/View;->setPadding(IIII)V

    return-object p2
.end method

.method public static final setLayoutParamsSafely(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .registers 3

    const-string v0, "layoutParams"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p0, :cond_8

    return-void

    .line 132
    :cond_8
    new-instance v0, Lio/bidmachine/util/ViewUtilsKt$setLayoutParamsSafely$1;

    invoke-direct {v0, p0, p1}, Lio/bidmachine/util/ViewUtilsKt$setLayoutParamsSafely$1;-><init>(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-static {v0}, Lio/bidmachine/util/UiUtils;->onUiThread(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static final showViewSafely(Landroid/view/View;)V
    .registers 2

    if-nez p0, :cond_3

    return-void

    .line 150
    :cond_3
    new-instance v0, Lio/bidmachine/util/ViewUtilsKt$showViewSafely$1;

    invoke-direct {v0, p0}, Lio/bidmachine/util/ViewUtilsKt$showViewSafely$1;-><init>(Landroid/view/View;)V

    invoke-static {v0}, Lio/bidmachine/util/UiUtils;->onUiThread(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static final updateLayout(Landroid/view/View;II)V
    .registers 6

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 143
    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v2

    add-int/2addr v2, p1

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result p1

    add-int/2addr p1, p2

    invoke-virtual {p0, v0, v1, v2, p1}, Landroid/view/View;->layout(IIII)V

    return-void
.end method

###### Class io.bidmachine.util.ViewUtilsKt.AnonymousClass1 (io.bidmachine.util.ViewUtilsKt$hideViewSafely$1)
.class public final Lio/bidmachine/util/ViewUtilsKt$hideViewSafely$1;
.super Ljava/lang/Object;
.source "ViewUtils.kt"

# interfaces
.implements Lio/bidmachine/util/SafeRunnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/util/ViewUtilsKt;->hideViewSafely(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic $this_hideViewSafely:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .registers 2

    iput-object p1, p0, Lio/bidmachine/util/ViewUtilsKt$hideViewSafely$1;->$this_hideViewSafely:Landroid/view/View;

    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRun()V
    .registers 3

    .line 163
    iget-object v0, p0, Lio/bidmachine/util/ViewUtilsKt$hideViewSafely$1;->$this_hideViewSafely:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

###### Class io.bidmachine.util.ViewUtilsKt.C42541 (io.bidmachine.util.ViewUtilsKt$invisibleViewSafely$1)
.class public final Lio/bidmachine/util/ViewUtilsKt$invisibleViewSafely$1;
.super Ljava/lang/Object;
.source "ViewUtils.kt"

# interfaces
.implements Lio/bidmachine/util/SafeRunnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/util/ViewUtilsKt;->invisibleViewSafely(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic $this_invisibleViewSafely:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .registers 2

    iput-object p1, p0, Lio/bidmachine/util/ViewUtilsKt$invisibleViewSafely$1;->$this_invisibleViewSafely:Landroid/view/View;

    .line 172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRun()V
    .registers 3

    .line 174
    iget-object v0, p0, Lio/bidmachine/util/ViewUtilsKt$invisibleViewSafely$1;->$this_invisibleViewSafely:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

###### Class io.bidmachine.util.ViewUtilsKt.C42551 (io.bidmachine.util.ViewUtilsKt$setLayoutParamsSafely$1)
.class public final Lio/bidmachine/util/ViewUtilsKt$setLayoutParamsSafely$1;
.super Ljava/lang/Object;
.source "ViewUtils.kt"

# interfaces
.implements Lio/bidmachine/util/SafeRunnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/util/ViewUtilsKt;->setLayoutParamsSafely(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic $layoutParams:Landroid/view/ViewGroup$LayoutParams;

.field public final synthetic $this_setLayoutParamsSafely:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .registers 3

    iput-object p1, p0, Lio/bidmachine/util/ViewUtilsKt$setLayoutParamsSafely$1;->$this_setLayoutParamsSafely:Landroid/view/View;

    iput-object p2, p0, Lio/bidmachine/util/ViewUtilsKt$setLayoutParamsSafely$1;->$layoutParams:Landroid/view/ViewGroup$LayoutParams;

    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRun()V
    .registers 3

    .line 134
    iget-object v0, p0, Lio/bidmachine/util/ViewUtilsKt$setLayoutParamsSafely$1;->$this_setLayoutParamsSafely:Landroid/view/View;

    iget-object v1, p0, Lio/bidmachine/util/ViewUtilsKt$setLayoutParamsSafely$1;->$layoutParams:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

###### Class io.bidmachine.util.ViewUtilsKt.C42561 (io.bidmachine.util.ViewUtilsKt$showViewSafely$1)
.class public final Lio/bidmachine/util/ViewUtilsKt$showViewSafely$1;
.super Ljava/lang/Object;
.source "ViewUtils.kt"

# interfaces
.implements Lio/bidmachine/util/SafeRunnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/util/ViewUtilsKt;->showViewSafely(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic $this_showViewSafely:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .registers 2

    iput-object p1, p0, Lio/bidmachine/util/ViewUtilsKt$showViewSafely$1;->$this_showViewSafely:Landroid/view/View;

    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRun()V
    .registers 3

    .line 152
    iget-object v0, p0, Lio/bidmachine/util/ViewUtilsKt$showViewSafely$1;->$this_showViewSafely:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

###### Class io.bidmachine.util.ViewUtilsKt$$ExternalSyntheticLambda0 (io.bidmachine.util.ViewUtilsKt$$ExternalSyntheticLambda0)
.class public final synthetic Lio/bidmachine/util/ViewUtilsKt$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnApplyWindowInsetsListener;


# instance fields
.field public final synthetic f$0:I


# direct methods
.method public synthetic constructor <init>(I)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lio/bidmachine/util/ViewUtilsKt$$ExternalSyntheticLambda0;->f$0:I

    return-void
.end method


# virtual methods
.method public final onApplyWindowInsets(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .registers 4

    .line 0
    iget v0, p0, Lio/bidmachine/util/ViewUtilsKt$$ExternalSyntheticLambda0;->f$0:I

    invoke-static {v0, p1, p2}, Lio/bidmachine/util/ViewUtilsKt;->$r8$lambda$-sYr5wXMwoZgyPHJ8cQlQYyfsdM(ILandroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object p1

    return-object p1
.end method

###### Class io.bidmachine.util.ViewUtilsKt$awaitLayout$2$1 (io.bidmachine.util.ViewUtilsKt$awaitLayout$2$1)
.class public final Lio/bidmachine/util/ViewUtilsKt$awaitLayout$2$1;
.super Lkotlin/jvm/internal/Lambda;
.source "ViewUtils.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/util/ViewUtilsKt;->awaitLayout(Landroid/view/View;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/Throwable;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic $listener:Landroid/view/View$OnLayoutChangeListener;

.field public final synthetic $this_awaitLayout:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;Landroid/view/View$OnLayoutChangeListener;)V
    .registers 3

    .line 0
    iput-object p1, p0, Lio/bidmachine/util/ViewUtilsKt$awaitLayout$2$1;->$this_awaitLayout:Landroid/view/View;

    iput-object p2, p0, Lio/bidmachine/util/ViewUtilsKt$awaitLayout$2$1;->$listener:Landroid/view/View$OnLayoutChangeListener;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 367
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lio/bidmachine/util/ViewUtilsKt$awaitLayout$2$1;->invoke(Ljava/lang/Throwable;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Ljava/lang/Throwable;)V
    .registers 3

    .line 368
    iget-object p1, p0, Lio/bidmachine/util/ViewUtilsKt$awaitLayout$2$1;->$this_awaitLayout:Landroid/view/View;

    iget-object v0, p0, Lio/bidmachine/util/ViewUtilsKt$awaitLayout$2$1;->$listener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {p1, v0}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    return-void
.end method

###### Class io.bidmachine.util.ViewUtilsKt$awaitLayout$2$listener$1 (io.bidmachine.util.ViewUtilsKt$awaitLayout$2$listener$1)
.class public final Lio/bidmachine/util/ViewUtilsKt$awaitLayout$2$listener$1;
.super Ljava/lang/Object;
.source "ViewUtils.kt"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/util/ViewUtilsKt;->awaitLayout(Landroid/view/View;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic $continuation:Lkotlinx/coroutines/CancellableContinuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/CancellableContinuation<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic $this_awaitLayout:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;Lkotlinx/coroutines/CancellableContinuation;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Lkotlinx/coroutines/CancellableContinuation<",
            "-",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lio/bidmachine/util/ViewUtilsKt$awaitLayout$2$listener$1;->$this_awaitLayout:Landroid/view/View;

    iput-object p2, p0, Lio/bidmachine/util/ViewUtilsKt$awaitLayout$2$listener$1;->$continuation:Lkotlinx/coroutines/CancellableContinuation;

    .line 336
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .registers 10

    const-string p2, "view"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 348
    iget-object p2, p0, Lio/bidmachine/util/ViewUtilsKt$awaitLayout$2$listener$1;->$this_awaitLayout:Landroid/view/View;

    invoke-virtual {p2, p0}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 355
    new-instance p2, Lio/bidmachine/util/ViewUtilsKt$awaitLayout$2$listener$1$onLayoutChange$resume$1;

    iget-object p3, p0, Lio/bidmachine/util/ViewUtilsKt$awaitLayout$2$listener$1;->$continuation:Lkotlinx/coroutines/CancellableContinuation;

    invoke-direct {p2, p3, p1}, Lio/bidmachine/util/ViewUtilsKt$awaitLayout$2$listener$1$onLayoutChange$resume$1;-><init>(Lkotlinx/coroutines/CancellableContinuation;Landroid/view/View;)V

    .line 358
    invoke-virtual {p1}, Landroid/view/View;->isInLayout()Z

    move-result p3

    if-eqz p3, :cond_26

    .line 359
    new-instance p3, Lio/bidmachine/util/ViewUtilsKt$sam$java_lang_Runnable$0;

    invoke-direct {p3, p2}, Lio/bidmachine/util/ViewUtilsKt$sam$java_lang_Runnable$0;-><init>(Lkotlin/jvm/functions/Function0;)V

    invoke-virtual {p1, p3}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    move-result p1

    if-nez p1, :cond_25

    .line 360
    invoke-interface {p2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :cond_25
    return-void

    .line 363
    :cond_26
    invoke-interface {p2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    return-void
.end method

###### Class io.bidmachine.util.ViewUtilsKt$awaitLayout$2$listener$1$onLayoutChange$resume$1 (io.bidmachine.util.ViewUtilsKt$awaitLayout$2$listener$1$onLayoutChange$resume$1)
.class public final Lio/bidmachine/util/ViewUtilsKt$awaitLayout$2$listener$1$onLayoutChange$resume$1;
.super Lkotlin/jvm/internal/Lambda;
.source "ViewUtils.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/util/ViewUtilsKt$awaitLayout$2$listener$1;->onLayoutChange(Landroid/view/View;IIIIIIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic $continuation:Lkotlinx/coroutines/CancellableContinuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/CancellableContinuation<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic $view:Landroid/view/View;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/CancellableContinuation;Landroid/view/View;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CancellableContinuation<",
            "-",
            "Landroid/view/View;",
            ">;",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    .line 0
    iput-object p1, p0, Lio/bidmachine/util/ViewUtilsKt$awaitLayout$2$listener$1$onLayoutChange$resume$1;->$continuation:Lkotlinx/coroutines/CancellableContinuation;

    iput-object p2, p0, Lio/bidmachine/util/ViewUtilsKt$awaitLayout$2$listener$1$onLayoutChange$resume$1;->$view:Landroid/view/View;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    .line 355
    invoke-virtual {p0}, Lio/bidmachine/util/ViewUtilsKt$awaitLayout$2$listener$1$onLayoutChange$resume$1;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .registers 3

    .line 356
    iget-object v0, p0, Lio/bidmachine/util/ViewUtilsKt$awaitLayout$2$listener$1$onLayoutChange$resume$1;->$continuation:Lkotlinx/coroutines/CancellableContinuation;

    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    iget-object v1, p0, Lio/bidmachine/util/ViewUtilsKt$awaitLayout$2$listener$1$onLayoutChange$resume$1;->$view:Landroid/view/View;

    invoke-static {v1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    return-void
.end method

###### Class io.bidmachine.util.ViewUtilsKt$sam$java_lang_Runnable$0 (io.bidmachine.util.ViewUtilsKt$sam$java_lang_Runnable$0)
.class public final synthetic Lio/bidmachine/util/ViewUtilsKt$sam$java_lang_Runnable$0;
.super Ljava/lang/Object;
.source "ViewUtils.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/util/ViewUtilsKt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic function:Lkotlin/jvm/functions/Function0;


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function0;)V
    .registers 3

    .line 0
    const-string v0, "function"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/util/ViewUtilsKt$sam$java_lang_Runnable$0;->function:Lkotlin/jvm/functions/Function0;

    return-void
.end method


# virtual methods
.method public final synthetic run()V
    .registers 2

    .line 0
    iget-object v0, p0, Lio/bidmachine/util/ViewUtilsKt$sam$java_lang_Runnable$0;->function:Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    return-void
.end method
