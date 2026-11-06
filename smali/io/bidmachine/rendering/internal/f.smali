###### Class io.bidmachine.rendering.internal.AbstractC4250f (io.bidmachine.rendering.internal.f)
.class public abstract Lio/bidmachine/rendering/internal/f;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Landroid/animation/Animator;Landroid/view/View;)Landroid/animation/Animator;
    .registers 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lio/bidmachine/rendering/internal/q;

    invoke-direct {v0, p1}, Lio/bidmachine/rendering/internal/q;-><init>(Landroid/view/View;)V

    invoke-virtual {p0, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-object p0
.end method
