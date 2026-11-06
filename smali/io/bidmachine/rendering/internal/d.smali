###### Class io.bidmachine.rendering.internal.AbstractC4247d (io.bidmachine.rendering.internal.d)
.class public abstract Lio/bidmachine/rendering/internal/d;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Lio/bidmachine/rendering/internal/view/e;Landroid/view/ViewGroup;Ljava/util/List;Lio/bidmachine/rendering/internal/b;)V
    .registers 11

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rootContainer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adElements"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adElement"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p3}, Lio/bidmachine/rendering/internal/b;->j()Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_1b

    goto :goto_37

    .line 3
    :cond_1b
    invoke-interface {p3}, Lio/bidmachine/rendering/internal/b;->g()Lio/bidmachine/rendering/model/AdElementParams;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/rendering/model/AdElementParams;->getElementLayoutParams()Lio/bidmachine/rendering/model/ElementLayoutParams;

    move-result-object v0

    invoke-static {v0, p3, v2, p2}, Lio/bidmachine/rendering/internal/d;->a(Lio/bidmachine/rendering/model/ElementLayoutParams;Lio/bidmachine/rendering/internal/b;Landroid/view/View;Ljava/util/List;)V

    const/4 v5, 0x6

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    .line 8
    invoke-static/range {v1 .. v6}, Lio/bidmachine/util/ViewUtilsKt;->addViewSafely$default(Landroid/view/ViewGroup;Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;ILjava/lang/Object;)Z

    .line 10
    :try_start_2e
    invoke-interface {p3, p1}, Lio/bidmachine/rendering/internal/b;->a(Landroid/view/ViewGroup;)V
    :try_end_31
    .catchall {:try_start_2e .. :try_end_31} :catchall_32

    return-void

    :catchall_32
    move-exception v0

    move-object p0, v0

    .line 12
    invoke-static {p0}, Lio/bidmachine/rendering/internal/t;->b(Ljava/lang/Throwable;)V

    :goto_37
    return-void
.end method

.method public static final a(Lio/bidmachine/rendering/model/ElementLayoutParams;Lio/bidmachine/rendering/internal/b;Landroid/view/View;Ljava/util/List;)V
    .registers 8

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adElement"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "view"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adElements"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-interface {p1, p0}, Lio/bidmachine/rendering/internal/b;->a(Lio/bidmachine/rendering/model/ElementLayoutParams;)V

    .line 15
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "view.context.applicationContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-virtual {p0, p1}, Lio/bidmachine/rendering/model/ElementLayoutParams;->getWidthPx(Landroid/content/Context;)I

    move-result v0

    .line 17
    invoke-virtual {p0, p1}, Lio/bidmachine/rendering/model/ElementLayoutParams;->getHeightPx(Landroid/content/Context;)I

    move-result v1

    .line 18
    new-instance v2, Lio/bidmachine/rendering/internal/view/e$a;

    const/4 v3, -0x1

    if-lez v0, :cond_32

    goto :goto_33

    :cond_32
    move v0, v3

    :goto_33
    if-lez v1, :cond_36

    goto :goto_37

    :cond_36
    move v1, v3

    .line 19
    :goto_37
    invoke-direct {v2, v0, v1}, Lio/bidmachine/rendering/internal/view/e$a;-><init>(II)V

    .line 31
    invoke-virtual {v2, p1, p0, p3}, Lio/bidmachine/rendering/internal/view/e$a;->a(Landroid/content/Context;Lio/bidmachine/rendering/model/ElementLayoutParams;Ljava/util/List;)V

    .line 32
    invoke-static {p2, v2}, Lio/bidmachine/util/ViewUtilsKt;->setLayoutParamsSafely(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
