###### Class ads_mobile_sdk.p02 (ads_mobile_sdk.p02)
.class public final Lads_mobile_sdk/p02;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lkotlinx/coroutines/sync/Mutex;

.field public b:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .registers 3

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 81
    invoke-static {v0}, Lkotlinx/coroutines/sync/MutexKt;->Mutex(Z)Lkotlinx/coroutines/sync/Mutex;

    move-result-object v0

    iput-object v0, p0, Lads_mobile_sdk/p02;->a:Lkotlinx/coroutines/sync/Mutex;

    .line 82
    iput-object p1, p0, Lads_mobile_sdk/p02;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a(Lads_mobile_sdk/ct3;Lads_mobile_sdk/dt3;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 10

    .line 127
    instance-of v0, p3, Lads_mobile_sdk/n02;

    if-eqz v0, :cond_13

    move-object v0, p3

    check-cast v0, Lads_mobile_sdk/n02;

    iget v1, v0, Lads_mobile_sdk/n02;->g:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/n02;->g:I

    goto :goto_18

    :cond_13
    new-instance v0, Lads_mobile_sdk/n02;

    invoke-direct {v0, p0, p3}, Lads_mobile_sdk/n02;-><init>(Lads_mobile_sdk/p02;Lkotlin/coroutines/Continuation;)V

    :goto_18
    iget-object p3, v0, Lads_mobile_sdk/n02;->e:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 128
    iget v2, v0, Lads_mobile_sdk/n02;->g:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_55

    if-eq v2, v4, :cond_42

    if-ne v2, v3, :cond_3a

    iget-object p1, v0, Lads_mobile_sdk/n02;->c:Ljava/lang/Object;

    check-cast p1, Lads_mobile_sdk/p02;

    iget-object p2, v0, Lads_mobile_sdk/n02;->b:Ljava/lang/Object;

    check-cast p2, Lkotlinx/coroutines/sync/Mutex;

    iget-object v0, v0, Lads_mobile_sdk/n02;->a:Lads_mobile_sdk/p02;

    :try_start_33
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_36
    .catchall {:try_start_33 .. :try_end_36} :catchall_37

    goto :goto_95

    :catchall_37
    move-exception p1

    goto/16 :goto_a1

    :cond_3a
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_42
    iget-object p1, v0, Lads_mobile_sdk/n02;->d:Lkotlinx/coroutines/sync/Mutex;

    iget-object p2, v0, Lads_mobile_sdk/n02;->c:Ljava/lang/Object;

    check-cast p2, Lkotlin/jvm/functions/Function1;

    iget-object v2, v0, Lads_mobile_sdk/n02;->b:Ljava/lang/Object;

    check-cast v2, Lkotlin/jvm/functions/Function1;

    iget-object v4, v0, Lads_mobile_sdk/n02;->a:Lads_mobile_sdk/p02;

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object p3, p2

    move-object p2, p1

    move-object p1, v4

    goto :goto_70

    :cond_55
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 129
    iget-object p3, p0, Lads_mobile_sdk/p02;->a:Lkotlinx/coroutines/sync/Mutex;

    .line 164
    iput-object p0, v0, Lads_mobile_sdk/n02;->a:Lads_mobile_sdk/p02;

    iput-object p1, v0, Lads_mobile_sdk/n02;->b:Ljava/lang/Object;

    iput-object p2, v0, Lads_mobile_sdk/n02;->c:Ljava/lang/Object;

    iput-object p3, v0, Lads_mobile_sdk/n02;->d:Lkotlinx/coroutines/sync/Mutex;

    iput v4, v0, Lads_mobile_sdk/n02;->g:I

    invoke-interface {p3, v5, v0}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_6b

    goto :goto_93

    :cond_6b
    move-object v2, p3

    move-object p3, p2

    move-object p2, v2

    move-object v2, p1

    move-object p1, p0

    .line 165
    :goto_70
    :try_start_70
    iget-object v4, p1, Lads_mobile_sdk/p02;->b:Ljava/lang/Object;

    if-eqz v4, :cond_83

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v2, v4}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_98

    .line 166
    :cond_83
    iput-object p1, v0, Lads_mobile_sdk/n02;->a:Lads_mobile_sdk/p02;

    iput-object p2, v0, Lads_mobile_sdk/n02;->b:Ljava/lang/Object;

    iput-object p1, v0, Lads_mobile_sdk/n02;->c:Ljava/lang/Object;

    iput-object v5, v0, Lads_mobile_sdk/n02;->d:Lkotlinx/coroutines/sync/Mutex;

    iput v3, v0, Lads_mobile_sdk/n02;->g:I

    invoke-interface {p3, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_94

    :goto_93
    return-object v1

    :cond_94
    move-object v0, p1

    :goto_95
    iput-object p3, p1, Lads_mobile_sdk/p02;->b:Ljava/lang/Object;

    move-object p1, v0

    .line 168
    :cond_98
    iget-object p1, p1, Lads_mobile_sdk/p02;->b:Ljava/lang/Object;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V
    :try_end_9d
    .catchall {:try_start_70 .. :try_end_9d} :catchall_37

    .line 203
    invoke-interface {p2, v5}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    return-object p1

    :goto_a1
    invoke-interface {p2, v5}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw p1
.end method

.method public final a(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 8

    .line 204
    instance-of v0, p2, Lads_mobile_sdk/o02;

    if-eqz v0, :cond_13

    move-object v0, p2

    check-cast v0, Lads_mobile_sdk/o02;

    iget v1, v0, Lads_mobile_sdk/o02;->f:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/o02;->f:I

    goto :goto_18

    :cond_13
    new-instance v0, Lads_mobile_sdk/o02;

    invoke-direct {v0, p0, p2}, Lads_mobile_sdk/o02;-><init>(Lads_mobile_sdk/p02;Lkotlin/coroutines/Continuation;)V

    :goto_18
    iget-object p2, v0, Lads_mobile_sdk/o02;->d:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 289
    iget v2, v0, Lads_mobile_sdk/o02;->f:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_3a

    if-ne v2, v3, :cond_32

    iget-object p1, v0, Lads_mobile_sdk/o02;->c:Lkotlinx/coroutines/sync/Mutex;

    iget-object v1, v0, Lads_mobile_sdk/o02;->b:Ljava/lang/Object;

    iget-object v0, v0, Lads_mobile_sdk/o02;->a:Lads_mobile_sdk/p02;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object p2, p1

    move-object p1, v1

    goto :goto_4f

    :cond_32
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3a
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p2, p0, Lads_mobile_sdk/p02;->a:Lkotlinx/coroutines/sync/Mutex;

    .line 316
    iput-object p0, v0, Lads_mobile_sdk/o02;->a:Lads_mobile_sdk/p02;

    iput-object p1, v0, Lads_mobile_sdk/o02;->b:Ljava/lang/Object;

    iput-object p2, v0, Lads_mobile_sdk/o02;->c:Lkotlinx/coroutines/sync/Mutex;

    iput v3, v0, Lads_mobile_sdk/o02;->f:I

    invoke-interface {p2, v4, v0}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_4e

    return-object v1

    :cond_4e
    move-object v0, p0

    .line 317
    :goto_4f
    :try_start_4f
    iput-object p1, v0, Lads_mobile_sdk/p02;->b:Ljava/lang/Object;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_53
    .catchall {:try_start_4f .. :try_end_53} :catchall_57

    .line 348
    invoke-interface {p2, v4}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    return-object p1

    :catchall_57
    move-exception p1

    .line 349
    invoke-interface {p2, v4}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw p1
.end method

.method public final a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 7

    .line 1
    instance-of v0, p1, Lads_mobile_sdk/m02;

    if-eqz v0, :cond_13

    move-object v0, p1

    check-cast v0, Lads_mobile_sdk/m02;

    iget v1, v0, Lads_mobile_sdk/m02;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/m02;->e:I

    goto :goto_18

    :cond_13
    new-instance v0, Lads_mobile_sdk/m02;

    invoke-direct {v0, p0, p1}, Lads_mobile_sdk/m02;-><init>(Lads_mobile_sdk/p02;Lkotlin/coroutines/Continuation;)V

    :goto_18
    iget-object p1, v0, Lads_mobile_sdk/m02;->c:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 84
    iget v2, v0, Lads_mobile_sdk/m02;->e:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_36

    if-ne v2, v3, :cond_2e

    iget-object v1, v0, Lads_mobile_sdk/m02;->b:Lkotlinx/coroutines/sync/Mutex;

    iget-object v0, v0, Lads_mobile_sdk/m02;->a:Lads_mobile_sdk/p02;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_4a

    :cond_2e
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_36
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lads_mobile_sdk/p02;->a:Lkotlinx/coroutines/sync/Mutex;

    .line 102
    iput-object p0, v0, Lads_mobile_sdk/m02;->a:Lads_mobile_sdk/p02;

    iput-object p1, v0, Lads_mobile_sdk/m02;->b:Lkotlinx/coroutines/sync/Mutex;

    iput v3, v0, Lads_mobile_sdk/m02;->e:I

    invoke-interface {p1, v4, v0}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_48

    return-object v1

    :cond_48
    move-object v0, p0

    move-object v1, p1

    .line 103
    :goto_4a
    :try_start_4a
    iget-object p1, v0, Lads_mobile_sdk/p02;->b:Ljava/lang/Object;
    :try_end_4c
    .catchall {:try_start_4a .. :try_end_4c} :catchall_50

    .line 125
    invoke-interface {v1, v4}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    return-object p1

    :catchall_50
    move-exception p1

    .line 126
    invoke-interface {v1, v4}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw p1
.end method
