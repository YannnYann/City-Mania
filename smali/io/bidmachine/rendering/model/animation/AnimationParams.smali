###### Class io.bidmachine.rendering.model.animation.AnimationParams (io.bidmachine.rendering.model.animation.AnimationParams)
.class public final Lio/bidmachine/rendering/model/animation/AnimationParams;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lio/bidmachine/rendering/model/animation/AnimationTiming;

.field public final b:Ljava/util/List;


# direct methods
.method public constructor <init>(Lio/bidmachine/rendering/model/animation/AnimationTiming;Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/rendering/model/animation/AnimationTiming;",
            "Ljava/util/List<",
            "+",
            "Lio/bidmachine/rendering/model/animation/effect/AnimationEffect;",
            ">;)V"
        }
    .end annotation

    const-string v0, "animationTiming"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "animationEffectList"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lio/bidmachine/rendering/model/animation/AnimationParams;->a:Lio/bidmachine/rendering/model/animation/AnimationTiming;

    .line 3
    iput-object p2, p0, Lio/bidmachine/rendering/model/animation/AnimationParams;->b:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final getAnimationEffectList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/bidmachine/rendering/model/animation/effect/AnimationEffect;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/model/animation/AnimationParams;->b:Ljava/util/List;

    return-object v0
.end method

.method public final getAnimationTiming()Lio/bidmachine/rendering/model/animation/AnimationTiming;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/model/animation/AnimationParams;->a:Lio/bidmachine/rendering/model/animation/AnimationTiming;

    return-object v0
.end method
