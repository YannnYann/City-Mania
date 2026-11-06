###### Class io.bidmachine.rendering.model.animation.effect.FadeAnimationEffect (io.bidmachine.rendering.model.animation.effect.FadeAnimationEffect)
.class public final Lio/bidmachine/rendering/model/animation/effect/FadeAnimationEffect;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/bidmachine/rendering/model/animation/effect/AnimationEffect;


# instance fields
.field public final a:Z

.field public final b:Z

.field public c:F


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lio/bidmachine/rendering/model/animation/effect/FadeAnimationEffect;->a:Z

    const/high16 v0, 0x3f800000    # 1.0f

    .line 6
    iput v0, p0, Lio/bidmachine/rendering/model/animation/effect/FadeAnimationEffect;->c:F

    return-void
.end method


# virtual methods
.method public bridge synthetic buildAnimator(Landroid/view/View;Z)Landroid/animation/Animator;
    .registers 3

    .line 1
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/rendering/model/animation/effect/FadeAnimationEffect;->buildAnimator(Landroid/view/View;Z)Landroid/animation/ObjectAnimator;

    move-result-object p1

    return-object p1
.end method

.method public buildAnimator(Landroid/view/View;Z)Landroid/animation/ObjectAnimator;
    .registers 6

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    sget-object v0, Landroid/view/View;->ALPHA:Landroid/util/Property;

    if-eqz p2, :cond_c

    .line 4
    iget p2, p0, Lio/bidmachine/rendering/model/animation/effect/FadeAnimationEffect;->c:F

    goto :goto_d

    :cond_c
    const/4 p2, 0x0

    :goto_d
    const/4 v1, 0x1

    .line 6
    new-array v1, v1, [F

    const/4 v2, 0x0

    aput p2, v1, v2

    .line 7
    invoke-static {p1, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    const-string p2, "ofFloat(\n            vie\u2026F\n            }\n        )"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public isApplicableWithLayers()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lio/bidmachine/rendering/model/animation/effect/FadeAnimationEffect;->a:Z

    return v0
.end method

.method public isLayoutSensitive()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lio/bidmachine/rendering/model/animation/effect/FadeAnimationEffect;->b:Z

    return v0
.end method

.method public onAnimationEnd(Landroid/view/View;)V
    .registers 3

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget v0, p0, Lio/bidmachine/rendering/model/animation/effect/FadeAnimationEffect;->c:F

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method public onSaveViewState(Landroid/view/View;)V
    .registers 3

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result p1

    iput p1, p0, Lio/bidmachine/rendering/model/animation/effect/FadeAnimationEffect;->c:F

    return-void
.end method

.method public prepareView(Landroid/view/View;Z)V
    .registers 4

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_9

    const/4 p2, 0x0

    goto :goto_b

    .line 1
    :cond_9
    iget p2, p0, Lio/bidmachine/rendering/model/animation/effect/FadeAnimationEffect;->c:F

    .line 2
    :goto_b
    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method
