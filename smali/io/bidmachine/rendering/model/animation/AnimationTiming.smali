###### Class io.bidmachine.rendering.model.animation.AnimationTiming (io.bidmachine.rendering.model.animation.AnimationTiming)
.class public final Lio/bidmachine/rendering/model/animation/AnimationTiming;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lio/bidmachine/rendering/model/animation/easing/AnimationEasing;

.field public final b:J


# direct methods
.method public constructor <init>(Lio/bidmachine/rendering/model/animation/easing/AnimationEasing;J)V
    .registers 4

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lio/bidmachine/rendering/model/animation/AnimationTiming;->a:Lio/bidmachine/rendering/model/animation/easing/AnimationEasing;

    .line 4
    iput-wide p2, p0, Lio/bidmachine/rendering/model/animation/AnimationTiming;->b:J

    return-void
.end method

.method public synthetic constructor <init>(Lio/bidmachine/rendering/model/animation/easing/AnimationEasing;JLkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 5

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lio/bidmachine/rendering/model/animation/AnimationTiming;-><init>(Lio/bidmachine/rendering/model/animation/easing/AnimationEasing;J)V

    return-void
.end method


# virtual methods
.method public final getAnimationEasing()Lio/bidmachine/rendering/model/animation/easing/AnimationEasing;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/model/animation/AnimationTiming;->a:Lio/bidmachine/rendering/model/animation/easing/AnimationEasing;

    return-object v0
.end method

.method public final getDuration-UwyO8pc()J
    .registers 3

    .line 1
    iget-wide v0, p0, Lio/bidmachine/rendering/model/animation/AnimationTiming;->b:J

    return-wide v0
.end method
