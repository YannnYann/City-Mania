###### Class io.bidmachine.rendering.internal.C4248e (io.bidmachine.rendering.internal.e)
.class public final Lio/bidmachine/rendering/internal/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lkotlinx/coroutines/CoroutineDispatcher;

.field public final b:Lkotlinx/coroutines/CoroutineScope;

.field public final c:Ljava/util/Map;


# direct methods
.method public constructor <init>(Lio/bidmachine/rendering/internal/j;)V
    .registers 4

    const-string v0, "coroutineDispatchers"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p1}, Lio/bidmachine/rendering/internal/j;->e()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/rendering/internal/e;->a:Lkotlinx/coroutines/CoroutineDispatcher;

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 3
    invoke-static {v0, v1, v0}, Lkotlinx/coroutines/SupervisorKt;->SupervisorJob$default(Lkotlinx/coroutines/Job;ILjava/lang/Object;)Lkotlinx/coroutines/CompletableJob;

    move-result-object v0

    invoke-interface {v0, p1}, Lkotlin/coroutines/CoroutineContext;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object p1

    invoke-static {p1}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/rendering/internal/e;->b:Lkotlinx/coroutines/CoroutineScope;

    .line 4
    new-instance p1, Ljava/util/WeakHashMap;

    invoke-direct {p1}, Ljava/util/WeakHashMap;-><init>()V

    invoke-static {p1}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    const-string v0, "synchronizedMap(WeakHashMap())"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lio/bidmachine/rendering/internal/e;->c:Ljava/util/Map;

    return-void
.end method

.method public synthetic constructor <init>(Lio/bidmachine/rendering/internal/j;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 4

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_a

    .line 5
    sget-object p1, Lio/bidmachine/rendering/internal/j;->i:Lio/bidmachine/rendering/internal/j$e;

    invoke-virtual {p1}, Lio/bidmachine/rendering/internal/j$e;->a()Lio/bidmachine/rendering/internal/j;

    move-result-object p1

    :cond_a
    invoke-direct {p0, p1}, Lio/bidmachine/rendering/internal/e;-><init>(Lio/bidmachine/rendering/internal/j;)V

    return-void
.end method

.method public static final synthetic a(Lio/bidmachine/rendering/internal/e;)Ljava/util/Map;
    .registers 1

    .line 2
    iget-object p0, p0, Lio/bidmachine/rendering/internal/e;->c:Ljava/util/Map;

    return-object p0
.end method

.method public static final synthetic a(Lio/bidmachine/rendering/internal/e;Landroid/view/View;Lio/bidmachine/rendering/model/animation/AnimationTiming;Ljava/util/List;Ljava/util/List;Lkotlin/jvm/functions/Function1;)V
    .registers 6

    .line 1
    invoke-virtual/range {p0 .. p5}, Lio/bidmachine/rendering/internal/e;->a(Landroid/view/View;Lio/bidmachine/rendering/model/animation/AnimationTiming;Ljava/util/List;Ljava/util/List;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 10

    .line 48
    iget-object v0, p0, Lio/bidmachine/rendering/internal/e;->b:Lkotlinx/coroutines/CoroutineScope;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v2, v1, v2}, Lkotlinx/coroutines/CoroutineScopeKt;->cancel$default(Lkotlinx/coroutines/CoroutineScope;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 49
    iget-object v0, p0, Lio/bidmachine/rendering/internal/e;->a:Lkotlinx/coroutines/CoroutineDispatcher;

    invoke-static {v0}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v3

    new-instance v6, Lio/bidmachine/rendering/internal/e$d;

    invoke-direct {v6, p0, v2}, Lio/bidmachine/rendering/internal/e$d;-><init>(Lio/bidmachine/rendering/internal/e;Lkotlin/coroutines/Continuation;)V

    const/4 v7, 0x3

    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v3 .. v8}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final a(Landroid/view/View;)V
    .registers 8

    if-nez p1, :cond_3

    return-void

    .line 47
    :cond_3
    iget-object v0, p0, Lio/bidmachine/rendering/internal/e;->b:Lkotlinx/coroutines/CoroutineScope;

    iget-object v1, p0, Lio/bidmachine/rendering/internal/e;->a:Lkotlinx/coroutines/CoroutineDispatcher;

    new-instance v3, Lio/bidmachine/rendering/internal/e$e;

    const/4 v2, 0x0

    invoke-direct {v3, p0, p1, v2}, Lio/bidmachine/rendering/internal/e$e;-><init>(Lio/bidmachine/rendering/internal/e;Landroid/view/View;Lkotlin/coroutines/Continuation;)V

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final a(Landroid/view/View;Lio/bidmachine/rendering/model/animation/AnimationParams;Lkotlin/jvm/functions/Function0;)V
    .registers 11

    .line 16
    invoke-virtual {p0, p1}, Lio/bidmachine/rendering/internal/e;->a(Landroid/view/View;)V

    if-eqz p1, :cond_1b

    if-nez p2, :cond_8

    goto :goto_1b

    .line 23
    :cond_8
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 24
    new-instance v6, Lio/bidmachine/rendering/internal/e$c;

    invoke-direct {v6, v0, p3}, Lio/bidmachine/rendering/internal/e$c;-><init>(Ljava/lang/ref/WeakReference;Lkotlin/jvm/functions/Function0;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v5, p2

    invoke-virtual/range {v1 .. v6}, Lio/bidmachine/rendering/internal/e;->a(Landroid/view/View;ZZLio/bidmachine/rendering/model/animation/AnimationParams;Lkotlin/jvm/functions/Function0;)V

    return-void

    :cond_1b
    :goto_1b
    if-eqz p3, :cond_20

    .line 25
    invoke-interface {p3}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :cond_20
    return-void
.end method

.method public final a(Landroid/view/View;Lio/bidmachine/rendering/model/animation/AnimationParams;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;)V
    .registers 16

    .line 34
    invoke-virtual {p2}, Lio/bidmachine/rendering/model/animation/AnimationParams;->getAnimationTiming()Lio/bidmachine/rendering/model/animation/AnimationTiming;

    move-result-object v3

    .line 35
    invoke-virtual {p2}, Lio/bidmachine/rendering/model/animation/AnimationParams;->getAnimationEffectList()Ljava/util/List;

    move-result-object v4

    .line 36
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_c
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lio/bidmachine/rendering/model/animation/effect/AnimationEffect;

    .line 37
    instance-of v1, v1, Lio/bidmachine/rendering/model/animation/effect/LayoutAnimationEffect;

    if-eqz v1, :cond_c

    goto :goto_1f

    :cond_1e
    const/4 v0, 0x0

    .line 38
    :goto_1f
    check-cast v0, Lio/bidmachine/rendering/model/animation/effect/AnimationEffect;

    if-nez v0, :cond_29

    if-eqz p4, :cond_28

    .line 42
    invoke-interface {p4}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :cond_28
    return-void

    .line 46
    :cond_29
    iget-object p2, p0, Lio/bidmachine/rendering/internal/e;->b:Lkotlinx/coroutines/CoroutineScope;

    iget-object v8, p0, Lio/bidmachine/rendering/internal/e;->a:Lkotlinx/coroutines/CoroutineDispatcher;

    new-instance v0, Lio/bidmachine/rendering/internal/e$b;

    const/4 v7, 0x0

    move-object v2, p0

    move-object v1, p1

    move-object v6, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v7}, Lio/bidmachine/rendering/internal/e$b;-><init>(Landroid/view/View;Lio/bidmachine/rendering/internal/e;Lio/bidmachine/rendering/model/animation/AnimationTiming;Ljava/util/List;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V

    const/4 v9, 0x2

    const/4 v10, 0x0

    move-object v5, p2

    move-object v6, v8

    move-object v8, v0

    invoke-static/range {v5 .. v10}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final a(Landroid/view/View;Lio/bidmachine/rendering/model/animation/AnimationTiming;Ljava/util/List;Ljava/util/List;Lkotlin/jvm/functions/Function1;)V
    .registers 9

    .line 50
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 51
    invoke-virtual {p2}, Lio/bidmachine/rendering/model/animation/AnimationTiming;->getAnimationEasing()Lio/bidmachine/rendering/model/animation/easing/AnimationEasing;

    move-result-object v1

    invoke-interface {v1}, Lio/bidmachine/rendering/model/animation/easing/AnimationEasing;->createInterpolator()Landroid/animation/TimeInterpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 52
    invoke-virtual {p2}, Lio/bidmachine/rendering/model/animation/AnimationTiming;->getDuration-UwyO8pc()J

    move-result-wide v1

    invoke-static {v1, v2}, Lkotlin/time/Duration;->getInWholeMilliseconds-impl(J)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 165
    instance-of p2, p3, Ljava/util/Collection;

    if-eqz p2, :cond_26

    invoke-interface {p3}, Ljava/util/Collection;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_26

    goto :goto_3d

    .line 166
    :cond_26
    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_2a
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_3d

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lio/bidmachine/rendering/model/animation/effect/AnimationEffect;

    .line 167
    invoke-interface {p3}, Lio/bidmachine/rendering/model/animation/effect/AnimationEffect;->isApplicableWithLayers()Z

    move-result p3

    if-nez p3, :cond_2a

    goto :goto_40

    .line 168
    :cond_3d
    :goto_3d
    invoke-static {v0, p1}, Lio/bidmachine/rendering/internal/f;->a(Landroid/animation/Animator;Landroid/view/View;)Landroid/animation/Animator;

    .line 170
    :goto_40
    invoke-virtual {v0, p4}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 172
    new-instance p2, Lio/bidmachine/rendering/internal/h;

    .line 174
    iget-object p3, p0, Lio/bidmachine/rendering/internal/e;->c:Ljava/util/Map;

    .line 175
    invoke-direct {p2, p1, p3}, Lio/bidmachine/rendering/internal/h;-><init>(Landroid/view/View;Ljava/util/Map;)V

    .line 176
    invoke-virtual {v0, p2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 183
    new-instance p2, Lio/bidmachine/rendering/internal/u;

    invoke-direct {p2, p1, p5}, Lio/bidmachine/rendering/internal/u;-><init>(Landroid/view/View;Lkotlin/jvm/functions/Function1;)V

    .line 184
    invoke-virtual {v0, p2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 191
    iget-object p2, p0, Lio/bidmachine/rendering/internal/e;->c:Ljava/util/Map;

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    return-void
.end method

.method public final a(Landroid/view/View;ZLio/bidmachine/rendering/model/animation/AnimationParams;Lkotlin/jvm/functions/Function0;)V
    .registers 12

    .line 3
    invoke-virtual {p0, p1}, Lio/bidmachine/rendering/internal/e;->a(Landroid/view/View;)V

    if-eqz p1, :cond_7

    if-nez p3, :cond_9

    :cond_7
    move-object v6, p4

    goto :goto_1f

    .line 9
    :cond_9
    invoke-static {p1}, Lio/bidmachine/util/ViewUtilsKt;->isViewVisible(Landroid/view/View;)Z

    move-result v0

    if-ne p2, v0, :cond_15

    if-eqz p4, :cond_24

    .line 10
    invoke-interface {p4}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    return-void

    :cond_15
    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v5, p3

    move-object v6, p4

    .line 14
    invoke-virtual/range {v1 .. v6}, Lio/bidmachine/rendering/internal/e;->a(Landroid/view/View;ZZLio/bidmachine/rendering/model/animation/AnimationParams;Lkotlin/jvm/functions/Function0;)V

    return-void

    :goto_1f
    if-eqz v6, :cond_24

    .line 15
    invoke-interface {v6}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :cond_24
    return-void
.end method

.method public final a(Landroid/view/View;ZZLio/bidmachine/rendering/model/animation/AnimationParams;Lkotlin/jvm/functions/Function0;)V
    .registers 18

    .line 26
    invoke-virtual/range {p4 .. p4}, Lio/bidmachine/rendering/model/animation/AnimationParams;->getAnimationTiming()Lio/bidmachine/rendering/model/animation/AnimationTiming;

    move-result-object v5

    .line 27
    invoke-virtual/range {p4 .. p4}, Lio/bidmachine/rendering/model/animation/AnimationParams;->getAnimationEffectList()Ljava/util/List;

    move-result-object v2

    .line 28
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_14

    if-eqz p5, :cond_13

    .line 29
    invoke-interface/range {p5 .. p5}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :cond_13
    return-void

    .line 33
    :cond_14
    iget-object v9, p0, Lio/bidmachine/rendering/internal/e;->b:Lkotlinx/coroutines/CoroutineScope;

    iget-object v10, p0, Lio/bidmachine/rendering/internal/e;->a:Lkotlinx/coroutines/CoroutineDispatcher;

    new-instance v0, Lio/bidmachine/rendering/internal/e$a;

    const/4 v8, 0x0

    move-object v4, p0

    move-object v3, p1

    move v6, p2

    move v1, p3

    move-object/from16 v7, p5

    invoke-direct/range {v0 .. v8}, Lio/bidmachine/rendering/internal/e$a;-><init>(ZLjava/util/List;Landroid/view/View;Lio/bidmachine/rendering/internal/e;Lio/bidmachine/rendering/model/animation/AnimationTiming;ZLkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)V

    move-object v7, v10

    const/4 v10, 0x2

    const/4 v11, 0x0

    move-object v6, v9

    move-object v9, v0

    invoke-static/range {v6 .. v11}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final b(Landroid/view/View;Lio/bidmachine/rendering/model/animation/AnimationParams;Lkotlin/jvm/functions/Function0;)V
    .registers 10

    .line 1
    invoke-virtual {p0, p1}, Lio/bidmachine/rendering/internal/e;->a(Landroid/view/View;)V

    if-eqz p1, :cond_7

    if-nez p2, :cond_9

    :cond_7
    move-object v5, p3

    goto :goto_13

    :cond_9
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    .line 8
    invoke-virtual/range {v0 .. v5}, Lio/bidmachine/rendering/internal/e;->a(Landroid/view/View;ZZLio/bidmachine/rendering/model/animation/AnimationParams;Lkotlin/jvm/functions/Function0;)V

    return-void

    :goto_13
    if-eqz v5, :cond_18

    .line 9
    invoke-interface {v5}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :cond_18
    return-void
.end method

.method public final b(Landroid/view/View;Lio/bidmachine/rendering/model/animation/AnimationParams;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;)V
    .registers 6

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "layoutParamsApplier"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-virtual {p0, p1}, Lio/bidmachine/rendering/internal/e;->a(Landroid/view/View;)V

    if-nez p2, :cond_15

    if-eqz p4, :cond_14

    .line 13
    invoke-interface {p4}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :cond_14
    return-void

    .line 17
    :cond_15
    invoke-virtual {p0, p1, p2, p3, p4}, Lio/bidmachine/rendering/internal/e;->a(Landroid/view/View;Lio/bidmachine/rendering/model/animation/AnimationParams;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public final c(Landroid/view/View;Lio/bidmachine/rendering/model/animation/AnimationParams;Lkotlin/jvm/functions/Function0;)V
    .registers 10

    .line 1
    invoke-virtual {p0, p1}, Lio/bidmachine/rendering/internal/e;->a(Landroid/view/View;)V

    if-eqz p1, :cond_7

    if-nez p2, :cond_9

    :cond_7
    move-object v5, p3

    goto :goto_13

    :cond_9
    const/4 v2, 0x1

    const/4 v3, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    .line 8
    invoke-virtual/range {v0 .. v5}, Lio/bidmachine/rendering/internal/e;->a(Landroid/view/View;ZZLio/bidmachine/rendering/model/animation/AnimationParams;Lkotlin/jvm/functions/Function0;)V

    return-void

    :goto_13
    if-eqz v5, :cond_18

    .line 9
    invoke-interface {v5}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :cond_18
    return-void
.end method

###### Class io.bidmachine.rendering.internal.C4248e.a (io.bidmachine.rendering.internal.e$a)
.class public final Lio/bidmachine/rendering/internal/e$a;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/rendering/internal/e;->a(Landroid/view/View;ZZLio/bidmachine/rendering/model/animation/AnimationParams;Lkotlin/jvm/functions/Function0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public a:I

.field public synthetic b:Ljava/lang/Object;

.field public final synthetic c:Z

.field public final synthetic d:Ljava/util/List;

.field public final synthetic e:Landroid/view/View;

.field public final synthetic f:Lio/bidmachine/rendering/internal/e;

.field public final synthetic g:Lio/bidmachine/rendering/model/animation/AnimationTiming;

.field public final synthetic h:Z

.field public final synthetic i:Lkotlin/jvm/functions/Function0;


# direct methods
.method public constructor <init>(ZLjava/util/List;Landroid/view/View;Lio/bidmachine/rendering/internal/e;Lio/bidmachine/rendering/model/animation/AnimationTiming;ZLkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)V
    .registers 9

    .line 0
    iput-boolean p1, p0, Lio/bidmachine/rendering/internal/e$a;->c:Z

    iput-object p2, p0, Lio/bidmachine/rendering/internal/e$a;->d:Ljava/util/List;

    iput-object p3, p0, Lio/bidmachine/rendering/internal/e$a;->e:Landroid/view/View;

    iput-object p4, p0, Lio/bidmachine/rendering/internal/e$a;->f:Lio/bidmachine/rendering/internal/e;

    iput-object p5, p0, Lio/bidmachine/rendering/internal/e$a;->g:Lio/bidmachine/rendering/model/animation/AnimationTiming;

    iput-boolean p6, p0, Lio/bidmachine/rendering/internal/e$a;->h:Z

    iput-object p7, p0, Lio/bidmachine/rendering/internal/e$a;->i:Lkotlin/jvm/functions/Function0;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p8}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final a(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/rendering/internal/e$a;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lio/bidmachine/rendering/internal/e$a;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lio/bidmachine/rendering/internal/e$a;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 12

    .line 0
    new-instance v0, Lio/bidmachine/rendering/internal/e$a;

    iget-boolean v1, p0, Lio/bidmachine/rendering/internal/e$a;->c:Z

    iget-object v2, p0, Lio/bidmachine/rendering/internal/e$a;->d:Ljava/util/List;

    iget-object v3, p0, Lio/bidmachine/rendering/internal/e$a;->e:Landroid/view/View;

    iget-object v4, p0, Lio/bidmachine/rendering/internal/e$a;->f:Lio/bidmachine/rendering/internal/e;

    iget-object v5, p0, Lio/bidmachine/rendering/internal/e$a;->g:Lio/bidmachine/rendering/model/animation/AnimationTiming;

    iget-boolean v6, p0, Lio/bidmachine/rendering/internal/e$a;->h:Z

    iget-object v7, p0, Lio/bidmachine/rendering/internal/e$a;->i:Lkotlin/jvm/functions/Function0;

    move-object v8, p2

    invoke-direct/range {v0 .. v8}, Lio/bidmachine/rendering/internal/e$a;-><init>(ZLjava/util/List;Landroid/view/View;Lio/bidmachine/rendering/internal/e;Lio/bidmachine/rendering/model/animation/AnimationTiming;ZLkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lio/bidmachine/rendering/internal/e$a;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lio/bidmachine/rendering/internal/e$a;->a(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 12

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 1
    iget v1, p0, Lio/bidmachine/rendering/internal/e$a;->a:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1b

    if-ne v1, v2, :cond_13

    iget-object v0, p0, Lio/bidmachine/rendering/internal/e$a;->b:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/CoroutineScope;

    :try_start_f
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_12
    .catchall {:try_start_f .. :try_end_12} :catchall_b1

    goto :goto_57

    .line 2
    :cond_13
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1b
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lio/bidmachine/rendering/internal/e$a;->b:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 4
    :try_start_22
    iget-boolean v1, p0, Lio/bidmachine/rendering/internal/e$a;->c:Z

    if-eqz v1, :cond_56

    iget-object v1, p0, Lio/bidmachine/rendering/internal/e$a;->d:Ljava/util/List;

    .line 282
    instance-of v3, v1, Ljava/util/Collection;

    if-eqz v3, :cond_33

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_33

    goto :goto_56

    .line 283
    :cond_33
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_37
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_56

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/bidmachine/rendering/model/animation/effect/AnimationEffect;

    .line 284
    invoke-interface {v3}, Lio/bidmachine/rendering/model/animation/effect/AnimationEffect;->isLayoutSensitive()Z

    move-result v3

    if-eqz v3, :cond_37

    .line 285
    iget-object v1, p0, Lio/bidmachine/rendering/internal/e$a;->e:Landroid/view/View;

    iput-object p1, p0, Lio/bidmachine/rendering/internal/e$a;->b:Ljava/lang/Object;

    iput v2, p0, Lio/bidmachine/rendering/internal/e$a;->a:I

    invoke-static {v1, p0}, Lio/bidmachine/util/ViewUtilsKt;->awaitLayout(Landroid/view/View;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_56

    return-object v0

    :cond_56
    :goto_56
    move-object v0, p1

    .line 287
    :goto_57
    iget-object p1, p0, Lio/bidmachine/rendering/internal/e$a;->e:Landroid/view/View;

    invoke-static {p1}, Lio/bidmachine/util/ViewUtilsKt;->showViewSafely(Landroid/view/View;)V

    .line 288
    iget-object p1, p0, Lio/bidmachine/rendering/internal/e$a;->d:Ljava/util/List;

    iget-object v1, p0, Lio/bidmachine/rendering/internal/e$a;->e:Landroid/view/View;

    iget-boolean v2, p0, Lio/bidmachine/rendering/internal/e$a;->h:Z

    .line 565
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_66
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_79

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/bidmachine/rendering/model/animation/effect/AnimationEffect;

    .line 566
    invoke-interface {v3, v1}, Lio/bidmachine/rendering/model/animation/effect/AnimationEffect;->onSaveViewState(Landroid/view/View;)V

    .line 567
    invoke-interface {v3, v1, v2}, Lio/bidmachine/rendering/model/animation/effect/AnimationEffect;->prepareView(Landroid/view/View;Z)V

    goto :goto_66

    .line 573
    :cond_79
    iget-object v4, p0, Lio/bidmachine/rendering/internal/e$a;->f:Lio/bidmachine/rendering/internal/e;

    .line 574
    iget-object v5, p0, Lio/bidmachine/rendering/internal/e$a;->e:Landroid/view/View;

    .line 575
    iget-object v6, p0, Lio/bidmachine/rendering/internal/e$a;->g:Lio/bidmachine/rendering/model/animation/AnimationTiming;

    .line 576
    iget-object v7, p0, Lio/bidmachine/rendering/internal/e$a;->d:Ljava/util/List;

    .line 577
    iget-boolean p1, p0, Lio/bidmachine/rendering/internal/e$a;->h:Z

    .line 844
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 853
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_8c
    :goto_8c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 854
    check-cast v2, Lio/bidmachine/rendering/model/animation/effect/AnimationEffect;

    .line 855
    invoke-interface {v2, v5, p1}, Lio/bidmachine/rendering/model/animation/effect/AnimationEffect;->buildAnimator(Landroid/view/View;Z)Landroid/animation/Animator;

    move-result-object v2

    if-eqz v2, :cond_8c

    .line 1129
    invoke-interface {v8, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_8c

    .line 1130
    :cond_a2
    new-instance v9, Lio/bidmachine/rendering/internal/e$a$a;

    iget-object p1, p0, Lio/bidmachine/rendering/internal/e$a;->d:Ljava/util/List;

    iget-boolean v1, p0, Lio/bidmachine/rendering/internal/e$a;->h:Z

    iget-object v2, p0, Lio/bidmachine/rendering/internal/e$a;->i:Lkotlin/jvm/functions/Function0;

    invoke-direct {v9, v0, p1, v1, v2}, Lio/bidmachine/rendering/internal/e$a$a;-><init>(Lkotlinx/coroutines/CoroutineScope;Ljava/util/List;ZLkotlin/jvm/functions/Function0;)V

    invoke-static/range {v4 .. v9}, Lio/bidmachine/rendering/internal/e;->a(Lio/bidmachine/rendering/internal/e;Landroid/view/View;Lio/bidmachine/rendering/model/animation/AnimationTiming;Ljava/util/List;Ljava/util/List;Lkotlin/jvm/functions/Function1;)V
    :try_end_b0
    .catchall {:try_start_22 .. :try_end_b0} :catchall_b1

    goto :goto_ba

    .line 1156
    :catchall_b1
    iget-object p1, p0, Lio/bidmachine/rendering/internal/e$a;->i:Lkotlin/jvm/functions/Function0;

    if-eqz p1, :cond_ba

    .line 1157
    :try_start_b5
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_ba
    .catchall {:try_start_b5 .. :try_end_ba} :catchall_ba

    .line 1160
    :catchall_ba
    :cond_ba
    :goto_ba
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

###### Class io.bidmachine.rendering.internal.C4248e.a.C1187a (io.bidmachine.rendering.internal.e$a$a)
.class public final Lio/bidmachine/rendering/internal/e$a$a;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/rendering/internal/e$a;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lkotlinx/coroutines/CoroutineScope;

.field public final synthetic b:Ljava/util/List;

.field public final synthetic c:Z

.field public final synthetic d:Lkotlin/jvm/functions/Function0;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/CoroutineScope;Ljava/util/List;ZLkotlin/jvm/functions/Function0;)V
    .registers 5

    .line 0
    iput-object p1, p0, Lio/bidmachine/rendering/internal/e$a$a;->a:Lkotlinx/coroutines/CoroutineScope;

    iput-object p2, p0, Lio/bidmachine/rendering/internal/e$a$a;->b:Ljava/util/List;

    iput-boolean p3, p0, Lio/bidmachine/rendering/internal/e$a$a;->c:Z

    iput-object p4, p0, Lio/bidmachine/rendering/internal/e$a$a;->d:Lkotlin/jvm/functions/Function0;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)V
    .registers 5

    if-eqz p1, :cond_1f

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/internal/e$a$a;->b:Ljava/util/List;

    iget-boolean v1, p0, Lio/bidmachine/rendering/internal/e$a$a;->c:Z

    .line 256
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/bidmachine/rendering/model/animation/effect/AnimationEffect;

    .line 257
    invoke-interface {v2, p1}, Lio/bidmachine/rendering/model/animation/effect/AnimationEffect;->onAnimationEnd(Landroid/view/View;)V

    goto :goto_a

    :cond_1a
    if-nez v1, :cond_1f

    .line 260
    invoke-static {p1}, Lio/bidmachine/util/ViewUtilsKt;->invisibleViewSafely(Landroid/view/View;)V

    .line 264
    :cond_1f
    iget-object p1, p0, Lio/bidmachine/rendering/internal/e$a$a;->d:Lkotlin/jvm/functions/Function0;

    if-eqz p1, :cond_28

    .line 265
    :try_start_23
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_28
    .catchall {:try_start_23 .. :try_end_28} :catchall_28

    :catchall_28
    :cond_28
    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 1
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Lio/bidmachine/rendering/internal/e$a$a;->a(Landroid/view/View;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

###### Class io.bidmachine.rendering.internal.C4248e.b (io.bidmachine.rendering.internal.e$b)
.class public final Lio/bidmachine/rendering/internal/e$b;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/rendering/internal/e;->a(Landroid/view/View;Lio/bidmachine/rendering/model/animation/AnimationParams;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public a:Ljava/lang/Object;

.field public b:I

.field public synthetic c:Ljava/lang/Object;

.field public final synthetic d:Landroid/view/View;

.field public final synthetic e:Lio/bidmachine/rendering/internal/e;

.field public final synthetic f:Lio/bidmachine/rendering/model/animation/AnimationTiming;

.field public final synthetic g:Ljava/util/List;

.field public final synthetic h:Lkotlin/jvm/functions/Function0;

.field public final synthetic i:Lkotlin/jvm/functions/Function1;


# direct methods
.method public constructor <init>(Landroid/view/View;Lio/bidmachine/rendering/internal/e;Lio/bidmachine/rendering/model/animation/AnimationTiming;Ljava/util/List;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V
    .registers 8

    .line 0
    iput-object p1, p0, Lio/bidmachine/rendering/internal/e$b;->d:Landroid/view/View;

    iput-object p2, p0, Lio/bidmachine/rendering/internal/e$b;->e:Lio/bidmachine/rendering/internal/e;

    iput-object p3, p0, Lio/bidmachine/rendering/internal/e$b;->f:Lio/bidmachine/rendering/model/animation/AnimationTiming;

    iput-object p4, p0, Lio/bidmachine/rendering/internal/e$b;->g:Ljava/util/List;

    iput-object p5, p0, Lio/bidmachine/rendering/internal/e$b;->h:Lkotlin/jvm/functions/Function0;

    iput-object p6, p0, Lio/bidmachine/rendering/internal/e$b;->i:Lkotlin/jvm/functions/Function1;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p7}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final a(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/rendering/internal/e$b;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lio/bidmachine/rendering/internal/e$b;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lio/bidmachine/rendering/internal/e$b;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 11

    .line 0
    new-instance v0, Lio/bidmachine/rendering/internal/e$b;

    iget-object v1, p0, Lio/bidmachine/rendering/internal/e$b;->d:Landroid/view/View;

    iget-object v2, p0, Lio/bidmachine/rendering/internal/e$b;->e:Lio/bidmachine/rendering/internal/e;

    iget-object v3, p0, Lio/bidmachine/rendering/internal/e$b;->f:Lio/bidmachine/rendering/model/animation/AnimationTiming;

    iget-object v4, p0, Lio/bidmachine/rendering/internal/e$b;->g:Ljava/util/List;

    iget-object v5, p0, Lio/bidmachine/rendering/internal/e$b;->h:Lkotlin/jvm/functions/Function0;

    iget-object v6, p0, Lio/bidmachine/rendering/internal/e$b;->i:Lkotlin/jvm/functions/Function1;

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, Lio/bidmachine/rendering/internal/e$b;-><init>(Landroid/view/View;Lio/bidmachine/rendering/internal/e;Lio/bidmachine/rendering/model/animation/AnimationTiming;Ljava/util/List;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lio/bidmachine/rendering/internal/e$b;->c:Ljava/lang/Object;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lio/bidmachine/rendering/internal/e$b;->a(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 16

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v2

    .line 1
    iget v3, p0, Lio/bidmachine/rendering/internal/e$b;->b:I

    const/4 v4, 0x1

    if-eqz v3, :cond_21

    if-ne v3, v4, :cond_19

    iget-object v2, p0, Lio/bidmachine/rendering/internal/e$b;->a:Ljava/lang/Object;

    check-cast v2, Landroid/view/View;

    iget-object v3, p0, Lio/bidmachine/rendering/internal/e$b;->c:Ljava/lang/Object;

    check-cast v3, Lkotlinx/coroutines/CoroutineScope;

    :try_start_15
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_18
    .catchall {:try_start_15 .. :try_end_18} :catchall_121

    goto :goto_7b

    .line 2
    :cond_19
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_21
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lio/bidmachine/rendering/internal/e$b;->c:Ljava/lang/Object;

    move-object v3, p1

    check-cast v3, Lkotlinx/coroutines/CoroutineScope;

    .line 4
    :try_start_29
    iget-object p1, p0, Lio/bidmachine/rendering/internal/e$b;->d:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    instance-of v5, p1, Lio/bidmachine/rendering/internal/view/e;

    if-eqz v5, :cond_37

    check-cast p1, Lio/bidmachine/rendering/internal/view/e;

    :goto_35
    move-object v5, p1

    goto :goto_39

    :cond_37
    const/4 p1, 0x0

    goto :goto_35

    :goto_39
    if-nez v5, :cond_47

    .line 6
    iget-object p1, p0, Lio/bidmachine/rendering/internal/e$b;->h:Lkotlin/jvm/functions/Function0;
    :try_end_3d
    .catchall {:try_start_29 .. :try_end_3d} :catchall_121

    if-eqz p1, :cond_44

    .line 7
    :try_start_3f
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_44
    .catchall {:try_start_3f .. :try_end_44} :catchall_44

    .line 9
    :catchall_44
    :cond_44
    :try_start_44
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 12
    :cond_47
    new-instance v6, Landroid/view/View;

    iget-object p1, p0, Lio/bidmachine/rendering/internal/e$b;->d:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v6, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iget-object p1, p0, Lio/bidmachine/rendering/internal/e$b;->i:Lkotlin/jvm/functions/Function1;

    .line 13
    invoke-interface {p1, v6}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v9, 0x6

    const/4 v10, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 15
    invoke-static/range {v5 .. v10}, Lio/bidmachine/util/ViewUtilsKt;->addViewSafely$default(Landroid/view/ViewGroup;Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;ILjava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6d

    .line 16
    iget-object p1, p0, Lio/bidmachine/rendering/internal/e$b;->h:Lkotlin/jvm/functions/Function0;
    :try_end_63
    .catchall {:try_start_44 .. :try_end_63} :catchall_121

    if-eqz p1, :cond_6a

    .line 17
    :try_start_65
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_6a
    .catchall {:try_start_65 .. :try_end_6a} :catchall_6a

    .line 19
    :catchall_6a
    :cond_6a
    :try_start_6a
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 21
    :cond_6d
    iput-object v3, p0, Lio/bidmachine/rendering/internal/e$b;->c:Ljava/lang/Object;

    iput-object v6, p0, Lio/bidmachine/rendering/internal/e$b;->a:Ljava/lang/Object;

    iput v4, p0, Lio/bidmachine/rendering/internal/e$b;->b:I

    invoke-static {v6, p0}, Lio/bidmachine/util/ViewUtilsKt;->awaitLayout(Landroid/view/View;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v2, :cond_7a

    return-object v2

    :cond_7a
    move-object v2, v6

    .line 22
    :goto_7b
    invoke-static {v2}, Lio/bidmachine/util/ViewUtilsKt;->getLocationInWindow(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object p1

    .line 23
    invoke-static {v2}, Lio/bidmachine/util/ViewUtilsKt;->removeFromParent(Landroid/view/View;)Lkotlin/Unit;

    .line 25
    iget-object v2, p0, Lio/bidmachine/rendering/internal/e$b;->d:Landroid/view/View;

    invoke-static {v2}, Lio/bidmachine/util/ViewUtilsKt;->getLocationInWindow(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v2

    .line 26
    iget-object v5, p0, Lio/bidmachine/rendering/internal/e$b;->d:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getTranslationX()F

    move-result v5

    .line 27
    iget-object v6, p0, Lio/bidmachine/rendering/internal/e$b;->d:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getTranslationY()F

    move-result v6

    .line 29
    const-string v7, "width"

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v8

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v9

    filled-new-array {v8, v9}, [I

    move-result-object v8

    invoke-static {v7, v8}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v7

    .line 30
    const-string v8, "height"

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v9

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v10

    filled-new-array {v9, v10}, [I

    move-result-object v9

    invoke-static {v8, v9}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v8

    filled-new-array {v7, v8}, [Landroid/animation/PropertyValuesHolder;

    move-result-object v7

    .line 31
    invoke-static {v7}, Landroid/animation/ValueAnimator;->ofPropertyValuesHolder([Landroid/animation/PropertyValuesHolder;)Landroid/animation/ValueAnimator;

    move-result-object v7

    .line 34
    iget-object v8, p0, Lio/bidmachine/rendering/internal/e$b;->d:Landroid/view/View;

    .line 35
    new-instance v9, Lio/bidmachine/rendering/internal/D;

    invoke-direct {v9, v8}, Lio/bidmachine/rendering/internal/D;-><init>(Landroid/view/View;)V

    invoke-virtual {v7, v9}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 36
    const-string v8, "ofPropertyValuesHolder(\n\u2026ayout))\n                }"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    iget-object v8, p0, Lio/bidmachine/rendering/internal/e$b;->d:Landroid/view/View;

    .line 42
    sget-object v9, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    .line 44
    iget v10, p1, Landroid/graphics/Rect;->left:I

    iget v11, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v10, v11

    int-to-float v10, v10

    add-float/2addr v10, v5

    new-array v11, v1, [F

    aput v5, v11, v0

    aput v10, v11, v4

    .line 45
    invoke-static {v9, v11}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v9

    .line 51
    sget-object v10, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    .line 53
    iget p1, p1, Landroid/graphics/Rect;->top:I

    iget v2, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr p1, v2

    int-to-float p1, p1

    add-float/2addr p1, v6

    new-array v2, v1, [F

    aput v6, v2, v0

    aput p1, v2, v4

    .line 54
    invoke-static {v10, v2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object p1

    filled-new-array {v9, p1}, [Landroid/animation/PropertyValuesHolder;

    move-result-object p1

    .line 55
    invoke-static {v8, p1}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object p1

    const-string v2, "ofPropertyValuesHolder(\n\u2026      )\n                )"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    iget-object v8, p0, Lio/bidmachine/rendering/internal/e$b;->e:Lio/bidmachine/rendering/internal/e;

    .line 70
    iget-object v9, p0, Lio/bidmachine/rendering/internal/e$b;->d:Landroid/view/View;

    .line 71
    iget-object v10, p0, Lio/bidmachine/rendering/internal/e$b;->f:Lio/bidmachine/rendering/model/animation/AnimationTiming;

    .line 72
    iget-object v11, p0, Lio/bidmachine/rendering/internal/e$b;->g:Ljava/util/List;

    .line 73
    new-array v1, v1, [Landroid/animation/ValueAnimator;

    aput-object v7, v1, v0

    aput-object p1, v1, v4

    invoke-static {v1}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v12

    .line 74
    new-instance v13, Lio/bidmachine/rendering/internal/e$b$a;

    iget-object p1, p0, Lio/bidmachine/rendering/internal/e$b;->h:Lkotlin/jvm/functions/Function0;

    invoke-direct {v13, v3, v5, v6, p1}, Lio/bidmachine/rendering/internal/e$b$a;-><init>(Lkotlinx/coroutines/CoroutineScope;FFLkotlin/jvm/functions/Function0;)V

    invoke-static/range {v8 .. v13}, Lio/bidmachine/rendering/internal/e;->a(Lio/bidmachine/rendering/internal/e;Landroid/view/View;Lio/bidmachine/rendering/model/animation/AnimationTiming;Ljava/util/List;Ljava/util/List;Lkotlin/jvm/functions/Function1;)V
    :try_end_120
    .catchall {:try_start_6a .. :try_end_120} :catchall_121

    goto :goto_12a

    .line 91
    :catchall_121
    iget-object p1, p0, Lio/bidmachine/rendering/internal/e$b;->h:Lkotlin/jvm/functions/Function0;

    if-eqz p1, :cond_12a

    .line 92
    :try_start_125
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_12a
    .catchall {:try_start_125 .. :try_end_12a} :catchall_12a

    .line 95
    :catchall_12a
    :cond_12a
    :goto_12a
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

###### Class io.bidmachine.rendering.internal.C4248e.b.a (io.bidmachine.rendering.internal.e$b$a)
.class public final Lio/bidmachine/rendering/internal/e$b$a;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/rendering/internal/e$b;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lkotlinx/coroutines/CoroutineScope;

.field public final synthetic b:F

.field public final synthetic c:F

.field public final synthetic d:Lkotlin/jvm/functions/Function0;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/CoroutineScope;FFLkotlin/jvm/functions/Function0;)V
    .registers 5

    .line 0
    iput-object p1, p0, Lio/bidmachine/rendering/internal/e$b$a;->a:Lkotlinx/coroutines/CoroutineScope;

    iput p2, p0, Lio/bidmachine/rendering/internal/e$b$a;->b:F

    iput p3, p0, Lio/bidmachine/rendering/internal/e$b$a;->c:F

    iput-object p4, p0, Lio/bidmachine/rendering/internal/e$b$a;->d:Lkotlin/jvm/functions/Function0;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)V
    .registers 4

    if-eqz p1, :cond_c

    .line 1
    iget v0, p0, Lio/bidmachine/rendering/internal/e$b$a;->b:F

    iget v1, p0, Lio/bidmachine/rendering/internal/e$b$a;->c:F

    .line 2
    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 3
    invoke-virtual {p1, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 6
    :cond_c
    iget-object p1, p0, Lio/bidmachine/rendering/internal/e$b$a;->d:Lkotlin/jvm/functions/Function0;

    if-eqz p1, :cond_15

    .line 7
    :try_start_10
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_15
    .catchall {:try_start_10 .. :try_end_15} :catchall_15

    :catchall_15
    :cond_15
    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 1
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Lio/bidmachine/rendering/internal/e$b$a;->a(Landroid/view/View;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

###### Class io.bidmachine.rendering.internal.C4248e.c (io.bidmachine.rendering.internal.e$c)
.class public final Lio/bidmachine/rendering/internal/e$c;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/rendering/internal/e;->a(Landroid/view/View;Lio/bidmachine/rendering/model/animation/AnimationParams;Lkotlin/jvm/functions/Function0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/ref/WeakReference;

.field public final synthetic b:Lkotlin/jvm/functions/Function0;


# direct methods
.method public constructor <init>(Ljava/lang/ref/WeakReference;Lkotlin/jvm/functions/Function0;)V
    .registers 3

    .line 0
    iput-object p1, p0, Lio/bidmachine/rendering/internal/e$c;->a:Ljava/lang/ref/WeakReference;

    iput-object p2, p0, Lio/bidmachine/rendering/internal/e$c;->b:Lkotlin/jvm/functions/Function0;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/internal/e$c;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_d

    invoke-static {v0}, Lio/bidmachine/util/ViewUtilsKt;->showViewSafely(Landroid/view/View;)V

    .line 2
    :cond_d
    iget-object v0, p0, Lio/bidmachine/rendering/internal/e$c;->b:Lkotlin/jvm/functions/Function0;

    if-eqz v0, :cond_14

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :cond_14
    return-void
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/rendering/internal/e$c;->a()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

###### Class io.bidmachine.rendering.internal.C4248e.d (io.bidmachine.rendering.internal.e$d)
.class public final Lio/bidmachine/rendering/internal/e$d;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/rendering/internal/e;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public a:I

.field public synthetic b:Ljava/lang/Object;

.field public final synthetic c:Lio/bidmachine/rendering/internal/e;


# direct methods
.method public constructor <init>(Lio/bidmachine/rendering/internal/e;Lkotlin/coroutines/Continuation;)V
    .registers 3

    .line 0
    iput-object p1, p0, Lio/bidmachine/rendering/internal/e$d;->c:Lio/bidmachine/rendering/internal/e;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final a(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/rendering/internal/e$d;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lio/bidmachine/rendering/internal/e$d;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lio/bidmachine/rendering/internal/e$d;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 5

    .line 0
    new-instance v0, Lio/bidmachine/rendering/internal/e$d;

    iget-object v1, p0, Lio/bidmachine/rendering/internal/e$d;->c:Lio/bidmachine/rendering/internal/e;

    invoke-direct {v0, v1, p2}, Lio/bidmachine/rendering/internal/e$d;-><init>(Lio/bidmachine/rendering/internal/e;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lio/bidmachine/rendering/internal/e$d;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lio/bidmachine/rendering/internal/e$d;->a(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 1
    iget v0, p0, Lio/bidmachine/rendering/internal/e$d;->a:I

    if-nez v0, :cond_45

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lio/bidmachine/rendering/internal/e$d;->b:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 2
    iget-object p1, p0, Lio/bidmachine/rendering/internal/e$d;->c:Lio/bidmachine/rendering/internal/e;

    .line 3
    :try_start_10
    invoke-static {p1}, Lio/bidmachine/rendering/internal/e;->a(Lio/bidmachine/rendering/internal/e;)Ljava/util/Map;

    move-result-object v0

    monitor-enter v0
    :try_end_15
    .catchall {:try_start_10 .. :try_end_15} :catchall_42

    .line 4
    :try_start_15
    invoke-static {p1}, Lio/bidmachine/rendering/internal/e;->a(Lio/bidmachine/rendering/internal/e;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    .line 139
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :catchall_21
    :goto_21
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_35

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/animation/Animator;
    :try_end_2d
    .catchall {:try_start_15 .. :try_end_2d} :catchall_33

    .line 140
    :try_start_2d
    invoke-virtual {v2}, Landroid/animation/Animator;->cancel()V

    .line 141
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_32
    .catchall {:try_start_2d .. :try_end_32} :catchall_21

    goto :goto_21

    :catchall_33
    move-exception p1

    goto :goto_40

    .line 143
    :cond_35
    :try_start_35
    invoke-static {p1}, Lio/bidmachine/rendering/internal/e;->a(Lio/bidmachine/rendering/internal/e;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->clear()V

    .line 144
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_3e
    .catchall {:try_start_35 .. :try_end_3e} :catchall_33

    .line 145
    :try_start_3e
    monitor-exit v0

    goto :goto_42

    .line 146
    :goto_40
    monitor-exit v0

    throw p1
    :try_end_42
    .catchall {:try_start_3e .. :try_end_42} :catchall_42

    .line 155
    :catchall_42
    :goto_42
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 156
    :cond_45
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

###### Class io.bidmachine.rendering.internal.C4248e.C1188e (io.bidmachine.rendering.internal.e$e)
.class public final Lio/bidmachine/rendering/internal/e$e;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/rendering/internal/e;->a(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public a:I

.field public synthetic b:Ljava/lang/Object;

.field public final synthetic c:Lio/bidmachine/rendering/internal/e;

.field public final synthetic d:Landroid/view/View;


# direct methods
.method public constructor <init>(Lio/bidmachine/rendering/internal/e;Landroid/view/View;Lkotlin/coroutines/Continuation;)V
    .registers 4

    .line 0
    iput-object p1, p0, Lio/bidmachine/rendering/internal/e$e;->c:Lio/bidmachine/rendering/internal/e;

    iput-object p2, p0, Lio/bidmachine/rendering/internal/e$e;->d:Landroid/view/View;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final a(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/rendering/internal/e$e;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lio/bidmachine/rendering/internal/e$e;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lio/bidmachine/rendering/internal/e$e;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 6

    .line 0
    new-instance v0, Lio/bidmachine/rendering/internal/e$e;

    iget-object v1, p0, Lio/bidmachine/rendering/internal/e$e;->c:Lio/bidmachine/rendering/internal/e;

    iget-object v2, p0, Lio/bidmachine/rendering/internal/e$e;->d:Landroid/view/View;

    invoke-direct {v0, v1, v2, p2}, Lio/bidmachine/rendering/internal/e$e;-><init>(Lio/bidmachine/rendering/internal/e;Landroid/view/View;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lio/bidmachine/rendering/internal/e$e;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lio/bidmachine/rendering/internal/e$e;->a(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 1
    iget v0, p0, Lio/bidmachine/rendering/internal/e$e;->a:I

    if-nez v0, :cond_26

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lio/bidmachine/rendering/internal/e$e;->b:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 2
    iget-object p1, p0, Lio/bidmachine/rendering/internal/e$e;->c:Lio/bidmachine/rendering/internal/e;

    iget-object v0, p0, Lio/bidmachine/rendering/internal/e$e;->d:Landroid/view/View;

    .line 3
    :try_start_12
    invoke-static {p1}, Lio/bidmachine/rendering/internal/e;->a(Lio/bidmachine/rendering/internal/e;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/animation/Animator;

    if-eqz p1, :cond_23

    invoke-virtual {p1}, Landroid/animation/Animator;->end()V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_23
    .catchall {:try_start_12 .. :try_end_23} :catchall_23

    .line 5
    :catchall_23
    :cond_23
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 6
    :cond_26
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
