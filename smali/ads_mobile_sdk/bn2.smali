###### Class ads_mobile_sdk.bn2 (ads_mobile_sdk.bn2)
.class public final Lads_mobile_sdk/bn2;
.super Lads_mobile_sdk/nc1;
.source "SourceFile"


# instance fields
.field public final c:Lkotlinx/coroutines/CoroutineScope;

.field public final d:Lads_mobile_sdk/ex0;

.field public e:Z

.field public final f:Lkotlinx/coroutines/sync/Mutex;

.field public final g:Ljava/util/LinkedHashMap;

.field public final h:Ljava/lang/ref/ReferenceQueue;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/CoroutineScope;Lads_mobile_sdk/ex0;)V
    .registers 5

    .line 1
    const-string v0, "backgroundScope"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "flags"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x3

    const/4 v1, 0x0

    .line 39
    invoke-direct {p0, v1, v0}, Lads_mobile_sdk/nc1;-><init>(Lads_mobile_sdk/s11;I)V

    .line 40
    iput-object p1, p0, Lads_mobile_sdk/bn2;->c:Lkotlinx/coroutines/CoroutineScope;

    .line 41
    iput-object p2, p0, Lads_mobile_sdk/bn2;->d:Lads_mobile_sdk/ex0;

    const/4 p1, 0x0

    const/4 p2, 0x1

    .line 45
    invoke-static {p1, p2, v1}, Lkotlinx/coroutines/sync/MutexKt;->Mutex$default(ZILjava/lang/Object;)Lkotlinx/coroutines/sync/Mutex;

    move-result-object p1

    iput-object p1, p0, Lads_mobile_sdk/bn2;->f:Lkotlinx/coroutines/sync/Mutex;

    .line 54
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lads_mobile_sdk/bn2;->g:Ljava/util/LinkedHashMap;

    .line 56
    new-instance p1, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {p1}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object p1, p0, Lads_mobile_sdk/bn2;->h:Ljava/lang/ref/ReferenceQueue;

    return-void
.end method

.method public static synthetic a(Lads_mobile_sdk/bn2;Ljava/lang/Object;Lads_mobile_sdk/vm2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 9

    .line 500
    instance-of v0, p3, Lads_mobile_sdk/zm2;

    if-eqz v0, :cond_13

    move-object v0, p3

    check-cast v0, Lads_mobile_sdk/zm2;

    iget v1, v0, Lads_mobile_sdk/zm2;->g:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/zm2;->g:I

    goto :goto_18

    :cond_13
    new-instance v0, Lads_mobile_sdk/zm2;

    invoke-direct {v0, p0, p3}, Lads_mobile_sdk/zm2;-><init>(Lads_mobile_sdk/bn2;Lkotlin/coroutines/Continuation;)V

    :goto_18
    iget-object p3, v0, Lads_mobile_sdk/zm2;->e:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 562
    iget v2, v0, Lads_mobile_sdk/zm2;->g:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_3c

    if-ne v2, v3, :cond_34

    iget-object p0, v0, Lads_mobile_sdk/zm2;->d:Lkotlinx/coroutines/sync/Mutex;

    iget-object p2, v0, Lads_mobile_sdk/zm2;->c:Lads_mobile_sdk/vm2;

    iget-object p1, v0, Lads_mobile_sdk/zm2;->b:Ljava/lang/Object;

    iget-object v0, v0, Lads_mobile_sdk/zm2;->a:Lads_mobile_sdk/bn2;

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object p3, p0

    move-object p0, v0

    goto :goto_59

    :cond_34
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3c
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 563
    iget-boolean p3, p0, Lads_mobile_sdk/bn2;->e:Z

    if-nez p3, :cond_46

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    .line 564
    :cond_46
    iget-object p3, p0, Lads_mobile_sdk/bn2;->f:Lkotlinx/coroutines/sync/Mutex;

    .line 602
    iput-object p0, v0, Lads_mobile_sdk/zm2;->a:Lads_mobile_sdk/bn2;

    iput-object p1, v0, Lads_mobile_sdk/zm2;->b:Ljava/lang/Object;

    iput-object p2, v0, Lads_mobile_sdk/zm2;->c:Lads_mobile_sdk/vm2;

    iput-object p3, v0, Lads_mobile_sdk/zm2;->d:Lkotlinx/coroutines/sync/Mutex;

    iput v3, v0, Lads_mobile_sdk/zm2;->g:I

    invoke-interface {p3, v4, v0}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_59

    return-object v1

    .line 603
    :cond_59
    :goto_59
    :try_start_59
    iget-object v0, p0, Lads_mobile_sdk/bn2;->g:Ljava/util/LinkedHashMap;

    new-instance v1, Lads_mobile_sdk/g01;

    iget-object p0, p0, Lads_mobile_sdk/bn2;->h:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v1, p2, p1, p0}, Lads_mobile_sdk/g01;-><init>(Lads_mobile_sdk/vm2;Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_6b
    .catchall {:try_start_59 .. :try_end_6b} :catchall_6f

    .line 645
    invoke-interface {p3, v4}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    return-object p0

    :catchall_6f
    move-exception p0

    .line 646
    invoke-interface {p3, v4}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw p0
.end method

.method public static final a(Lads_mobile_sdk/bn2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 15

    .line 32
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 33
    instance-of v0, p1, Lads_mobile_sdk/xm2;

    if-eqz v0, :cond_16

    move-object v0, p1

    check-cast v0, Lads_mobile_sdk/xm2;

    iget v1, v0, Lads_mobile_sdk/xm2;->f:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_16

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/xm2;->f:I

    goto :goto_1b

    :cond_16
    new-instance v0, Lads_mobile_sdk/xm2;

    invoke-direct {v0, p0, p1}, Lads_mobile_sdk/xm2;-><init>(Lads_mobile_sdk/bn2;Lkotlin/coroutines/Continuation;)V

    :goto_1b
    iget-object p1, v0, Lads_mobile_sdk/xm2;->d:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 100
    iget v2, v0, Lads_mobile_sdk/xm2;->f:I

    const/4 v3, 0x1

    const/4 v4, 0x2

    const/4 v5, 0x0

    if-eqz v2, :cond_2e

    if-eq v2, v3, :cond_3a

    if-ne v2, v4, :cond_32

    iget-object p0, v0, Lads_mobile_sdk/xm2;->a:Lads_mobile_sdk/bn2;

    :cond_2e
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_46

    :cond_32
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3a
    iget-object p0, v0, Lads_mobile_sdk/xm2;->c:Lkotlinx/coroutines/sync/Mutex;

    iget-object v2, v0, Lads_mobile_sdk/xm2;->b:Lads_mobile_sdk/g01;

    iget-object v6, v0, Lads_mobile_sdk/xm2;->a:Lads_mobile_sdk/bn2;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object p1, p0

    move-object p0, v6

    goto :goto_68

    .line 103
    :cond_46
    :goto_46
    iget-object p1, p0, Lads_mobile_sdk/bn2;->h:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {p1}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object p1

    instance-of v2, p1, Lads_mobile_sdk/g01;

    if-eqz v2, :cond_53

    check-cast p1, Lads_mobile_sdk/g01;

    goto :goto_54

    :cond_53
    move-object p1, v5

    :goto_54
    move-object v2, p1

    :goto_55
    if-eqz v2, :cond_ab

    .line 108
    iget-object p1, p0, Lads_mobile_sdk/bn2;->f:Lkotlinx/coroutines/sync/Mutex;

    .line 146
    iput-object p0, v0, Lads_mobile_sdk/xm2;->a:Lads_mobile_sdk/bn2;

    iput-object v2, v0, Lads_mobile_sdk/xm2;->b:Lads_mobile_sdk/g01;

    iput-object p1, v0, Lads_mobile_sdk/xm2;->c:Lkotlinx/coroutines/sync/Mutex;

    iput v3, v0, Lads_mobile_sdk/xm2;->f:I

    invoke-interface {p1, v5, v0}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v6

    if-ne v6, v1, :cond_68

    goto :goto_d6

    .line 147
    :cond_68
    :goto_68
    :try_start_68
    iget-object v6, p0, Lads_mobile_sdk/bn2;->g:Ljava/util/LinkedHashMap;

    invoke-interface {v6, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;
    :try_end_70
    .catchall {:try_start_68 .. :try_end_70} :catchall_a5

    .line 189
    invoke-interface {p1, v5}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    .line 190
    iget-object v7, p0, Lads_mobile_sdk/bn2;->c:Lkotlinx/coroutines/CoroutineScope;

    new-instance p1, Lads_mobile_sdk/ym2;

    invoke-direct {p1, v2, v5}, Lads_mobile_sdk/ym2;-><init>(Lads_mobile_sdk/g01;Lkotlin/coroutines/Continuation;)V

    .line 191
    sget-object v8, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    .line 192
    const-string v2, "<this>"

    invoke-static {v7, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "context"

    invoke-static {v8, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "block"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 450
    new-instance v10, Lads_mobile_sdk/ws3;

    invoke-direct {v10, p1, v5}, Lads_mobile_sdk/ws3;-><init>(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)V

    const/4 v11, 0x2

    const/4 v12, 0x0

    const/4 v9, 0x0

    invoke-static/range {v7 .. v12}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 451
    iget-object p1, p0, Lads_mobile_sdk/bn2;->h:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {p1}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object p1

    instance-of v2, p1, Lads_mobile_sdk/g01;

    if-eqz v2, :cond_a3

    check-cast p1, Lads_mobile_sdk/g01;

    goto :goto_54

    :cond_a3
    move-object v2, v5

    goto :goto_55

    :catchall_a5
    move-exception v0

    move-object p0, v0

    .line 491
    invoke-interface {p1, v5}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw p0

    .line 492
    :cond_ab
    iget-object p1, p0, Lads_mobile_sdk/bn2;->d:Lads_mobile_sdk/ex0;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 493
    sget-object v2, Lkotlin/time/Duration;->Companion:Lkotlin/time/Duration$Companion;

    sget-object v2, Lkotlin/time/DurationUnit;->MINUTES:Lkotlin/time/DurationUnit;

    .line 494
    const-string v6, "key"

    const-string v7, "gads:phantom_reference_interval:seconds"

    invoke-static {v4, v2, v7, v6}, Lads_mobile_sdk/wm2;->a(ILkotlin/time/DurationUnit;Ljava/lang/String;Ljava/lang/String;)Lkotlin/time/Duration;

    move-result-object v2

    .line 495
    sget-object v6, Lads_mobile_sdk/yr;->l:Lads_mobile_sdk/ur;

    invoke-virtual {p1, v7, v2, v6}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlin/time/Duration;

    invoke-virtual {p1}, Lkotlin/time/Duration;->unbox-impl()J

    move-result-wide v6

    .line 496
    iput-object p0, v0, Lads_mobile_sdk/xm2;->a:Lads_mobile_sdk/bn2;

    iput-object v5, v0, Lads_mobile_sdk/xm2;->b:Lads_mobile_sdk/g01;

    iput-object v5, v0, Lads_mobile_sdk/xm2;->c:Lkotlinx/coroutines/sync/Mutex;

    iput v4, v0, Lads_mobile_sdk/xm2;->f:I

    invoke-static {v6, v7, v0}, Lkotlinx/coroutines/DelayKt;->delay-VtjQ1oo(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_46

    :goto_d6
    return-object v1
.end method


# virtual methods
.method public final u(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 8

    .line 2
    iget-object p1, p0, Lads_mobile_sdk/bn2;->d:Lads_mobile_sdk/ex0;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    sget-object v0, Lkotlin/time/Duration;->Companion:Lkotlin/time/Duration$Companion;

    sget-object v1, Lkotlin/time/DurationUnit;->MINUTES:Lkotlin/time/DurationUnit;

    .line 4
    const-string v2, "key"

    const/4 v3, 0x2

    const-string v4, "gads:phantom_reference_interval:seconds"

    invoke-static {v3, v1, v4, v2}, Lads_mobile_sdk/wm2;->a(ILkotlin/time/DurationUnit;Ljava/lang/String;Ljava/lang/String;)Lkotlin/time/Duration;

    move-result-object v1

    .line 5
    sget-object v2, Lads_mobile_sdk/yr;->l:Lads_mobile_sdk/ur;

    invoke-virtual {p1, v4, v1, v2}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlin/time/Duration;

    invoke-virtual {p1}, Lkotlin/time/Duration;->unbox-impl()J

    move-result-wide v1

    .line 6
    invoke-virtual {v0}, Lkotlin/time/Duration$Companion;->getZERO-UwyO8pc()J

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Lkotlin/time/Duration;->compareTo-LRDsOJo(JJ)I

    move-result p1

    if-lez p1, :cond_2a

    const/4 p1, 0x1

    goto :goto_2b

    :cond_2a
    const/4 p1, 0x0

    :goto_2b
    iput-boolean p1, p0, Lads_mobile_sdk/bn2;->e:Z

    if-eqz p1, :cond_54

    .line 8
    iget-object v0, p0, Lads_mobile_sdk/bn2;->c:Lkotlinx/coroutines/CoroutineScope;

    new-instance p1, Lads_mobile_sdk/an2;

    const/4 v1, 0x0

    invoke-direct {p1, p0, v1}, Lads_mobile_sdk/an2;-><init>(Lads_mobile_sdk/bn2;Lkotlin/coroutines/Continuation;)V

    move-object v2, v1

    .line 9
    sget-object v1, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    .line 10
    const-string v3, "<this>"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "context"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "block"

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 268
    new-instance v3, Lads_mobile_sdk/ws3;

    invoke-direct {v3, p1, v2}, Lads_mobile_sdk/ws3;-><init>(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)V

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v2, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 269
    :cond_54
    new-instance p1, Lads_mobile_sdk/q01;

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-direct {p1, v0}, Lads_mobile_sdk/q01;-><init>(Ljava/lang/Object;)V

    return-object p1
.end method
