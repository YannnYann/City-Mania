###### Class io.bidmachine.rendering.model.animation.easing.LinearAnimationEasing (io.bidmachine.rendering.model.animation.easing.LinearAnimationEasing)
.class public final Lio/bidmachine/rendering/model/animation/easing/LinearAnimationEasing;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/bidmachine/rendering/model/animation/easing/AnimationEasing;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createInterpolator()Landroid/animation/TimeInterpolator;
    .registers 2

    .line 1
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    return-object v0
.end method
