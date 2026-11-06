###### Class io.bidmachine.rendering.model.animation.effect.LayoutAnimationEffect (io.bidmachine.rendering.model.animation.effect.LayoutAnimationEffect)
.class public final Lio/bidmachine/rendering/model/animation/effect/LayoutAnimationEffect;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/bidmachine/rendering/model/animation/effect/AnimationEffect;


# instance fields
.field public final a:Z

.field public final b:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lio/bidmachine/rendering/model/animation/effect/LayoutAnimationEffect;->b:Z

    return-void
.end method


# virtual methods
.method public buildAnimator(Landroid/view/View;Z)Landroid/animation/Animator;
    .registers 3

    .line 0
    const-string p2, "view"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public isApplicableWithLayers()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lio/bidmachine/rendering/model/animation/effect/LayoutAnimationEffect;->a:Z

    return v0
.end method

.method public isLayoutSensitive()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lio/bidmachine/rendering/model/animation/effect/LayoutAnimationEffect;->b:Z

    return v0
.end method
