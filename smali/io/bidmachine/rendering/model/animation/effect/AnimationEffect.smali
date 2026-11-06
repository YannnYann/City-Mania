###### Class io.bidmachine.rendering.model.animation.effect.AnimationEffect (io.bidmachine.rendering.model.animation.effect.AnimationEffect)
.class public interface abstract Lio/bidmachine/rendering/model/animation/effect/AnimationEffect;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract buildAnimator(Landroid/view/View;Z)Landroid/animation/Animator;
.end method

.method public abstract isApplicableWithLayers()Z
.end method

.method public abstract isLayoutSensitive()Z
.end method

.method public onAnimationEnd(Landroid/view/View;)V
    .registers 3

    .line 0
    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onSaveViewState(Landroid/view/View;)V
    .registers 3

    .line 0
    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public prepareView(Landroid/view/View;Z)V
    .registers 3

    .line 0
    const-string p2, "view"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
