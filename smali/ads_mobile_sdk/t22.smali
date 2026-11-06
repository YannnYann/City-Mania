###### Class ads_mobile_sdk.t22 (ads_mobile_sdk.t22)
.class public final Lads_mobile_sdk/t22;
.super Lads_mobile_sdk/nc1;
.source "SourceFile"


# instance fields
.field public final c:Lads_mobile_sdk/ks1;

.field public final d:Lkotlinx/coroutines/sync/Mutex;

.field public e:Lads_mobile_sdk/k22;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/ks1;)V
    .registers 4

    .line 1
    const-string v0, "dataStore"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    sget-object v0, Lads_mobile_sdk/s11;->w:Lads_mobile_sdk/s11;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lads_mobile_sdk/nc1;-><init>(Lads_mobile_sdk/s11;Z)V

    .line 26
    iput-object p1, p0, Lads_mobile_sdk/t22;->c:Lads_mobile_sdk/ks1;

    const/4 p1, 0x1

    const/4 v0, 0x0

    .line 29
    invoke-static {v1, p1, v0}, Lkotlinx/coroutines/sync/MutexKt;->Mutex$default(ZILjava/lang/Object;)Lkotlinx/coroutines/sync/Mutex;

    move-result-object p1

    iput-object p1, p0, Lads_mobile_sdk/t22;->d:Lkotlinx/coroutines/sync/Mutex;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lkotlin/coroutines/Continuation;Z)Ljava/lang/Object;
    .registers 10

    .line 1
    instance-of v0, p2, Lads_mobile_sdk/r22;

    if-eqz v0, :cond_13

    move-object v0, p2

    check-cast v0, Lads_mobile_sdk/r22;

    iget v1, v0, Lads_mobile_sdk/r22;->f:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/r22;->f:I

    goto :goto_18

    :cond_13
    new-instance v0, Lads_mobile_sdk/r22;

    invoke-direct {v0, p0, p2}, Lads_mobile_sdk/r22;-><init>(Lads_mobile_sdk/t22;Lkotlin/coroutines/Continuation;)V

    :goto_18
    iget-object p2, v0, Lads_mobile_sdk/r22;->d:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 2
    iget v2, v0, Lads_mobile_sdk/r22;->f:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_41

    if-eq v2, v4, :cond_3b

    if-ne v2, v3, :cond_33

    iget-object p1, v0, Lads_mobile_sdk/r22;->c:Lkotlinx/coroutines/sync/Mutex;

    iget-object p3, v0, Lads_mobile_sdk/r22;->b:Lads_mobile_sdk/k22;

    iget-object v0, v0, Lads_mobile_sdk/r22;->a:Lads_mobile_sdk/t22;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_73

    :cond_33
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3b
    iget-object p1, v0, Lads_mobile_sdk/r22;->a:Lads_mobile_sdk/t22;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_5d

    :cond_41
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 4
    iget-object p2, p0, Lads_mobile_sdk/t22;->c:Lads_mobile_sdk/ks1;

    invoke-interface {p2}, Lads_mobile_sdk/ks1;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/datastore/core/DataStore;

    new-instance v2, Lads_mobile_sdk/s22;

    invoke-direct {v2, p1, v5, p3}, Lads_mobile_sdk/s22;-><init>(Ljava/lang/String;Lkotlin/coroutines/Continuation;Z)V

    iput-object p0, v0, Lads_mobile_sdk/r22;->a:Lads_mobile_sdk/t22;

    iput v4, v0, Lads_mobile_sdk/r22;->f:I

    invoke-interface {p2, v2, v0}, Landroidx/datastore/core/DataStore;->updateData(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_5c

    goto :goto_70

    :cond_5c
    move-object p1, p0

    .line 5
    :goto_5d
    move-object p3, p2

    check-cast p3, Lads_mobile_sdk/k22;

    .line 8
    iget-object p2, p1, Lads_mobile_sdk/t22;->d:Lkotlinx/coroutines/sync/Mutex;

    .line 64
    iput-object p1, v0, Lads_mobile_sdk/r22;->a:Lads_mobile_sdk/t22;

    iput-object p3, v0, Lads_mobile_sdk/r22;->b:Lads_mobile_sdk/k22;

    iput-object p2, v0, Lads_mobile_sdk/r22;->c:Lkotlinx/coroutines/sync/Mutex;

    iput v3, v0, Lads_mobile_sdk/r22;->f:I

    invoke-interface {p2, v5, v0}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_71

    :goto_70
    return-object v1

    :cond_71
    move-object v0, p1

    move-object p1, p2

    .line 65
    :goto_73
    :try_start_73
    iput-object p3, v0, Lads_mobile_sdk/t22;->e:Lads_mobile_sdk/k22;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_77
    .catchall {:try_start_73 .. :try_end_77} :catchall_7b

    .line 125
    invoke-interface {p1, v5}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    return-object p2

    :catchall_7b
    move-exception p2

    invoke-interface {p1, v5}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw p2
.end method

.method public final b(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 7

    .line 1
    instance-of v0, p2, Lads_mobile_sdk/n22;

    if-eqz v0, :cond_13

    move-object v0, p2

    check-cast v0, Lads_mobile_sdk/n22;

    iget v1, v0, Lads_mobile_sdk/n22;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/n22;->d:I

    goto :goto_18

    :cond_13
    new-instance v0, Lads_mobile_sdk/n22;

    invoke-direct {v0, p0, p2}, Lads_mobile_sdk/n22;-><init>(Lads_mobile_sdk/t22;Lkotlin/coroutines/Continuation;)V

    :goto_18
    iget-object p2, v0, Lads_mobile_sdk/n22;->b:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 42
    iget v2, v0, Lads_mobile_sdk/n22;->d:I

    const/4 v3, 0x1

    if-eqz v2, :cond_33

    if-ne v2, v3, :cond_2b

    iget-object p1, v0, Lads_mobile_sdk/n22;->a:Ljava/lang/String;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_41

    :cond_2b
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_33
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 43
    iput-object p1, v0, Lads_mobile_sdk/n22;->a:Ljava/lang/String;

    iput v3, v0, Lads_mobile_sdk/n22;->d:I

    invoke-virtual {p0, v0}, Lads_mobile_sdk/t22;->w(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_41

    return-object v1

    .line 44
    :cond_41
    :goto_41
    check-cast p2, Lads_mobile_sdk/k22;

    invoke-virtual {p2}, Lads_mobile_sdk/k22;->v()Ljava/util/Map;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final e(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 10

    .line 1
    instance-of v0, p3, Lads_mobile_sdk/p22;

    if-eqz v0, :cond_13

    move-object v0, p3

    check-cast v0, Lads_mobile_sdk/p22;

    iget v1, v0, Lads_mobile_sdk/p22;->f:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/p22;->f:I

    goto :goto_18

    :cond_13
    new-instance v0, Lads_mobile_sdk/p22;

    invoke-direct {v0, p0, p3}, Lads_mobile_sdk/p22;-><init>(Lads_mobile_sdk/t22;Lkotlin/coroutines/Continuation;)V

    :goto_18
    iget-object p3, v0, Lads_mobile_sdk/p22;->d:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 55
    iget v2, v0, Lads_mobile_sdk/p22;->f:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_41

    if-eq v2, v4, :cond_3b

    if-ne v2, v3, :cond_33

    iget-object p1, v0, Lads_mobile_sdk/p22;->c:Lkotlinx/coroutines/sync/Mutex;

    iget-object p2, v0, Lads_mobile_sdk/p22;->b:Lads_mobile_sdk/k22;

    iget-object v0, v0, Lads_mobile_sdk/p22;->a:Lads_mobile_sdk/t22;

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_73

    :cond_33
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3b
    iget-object p1, v0, Lads_mobile_sdk/p22;->a:Lads_mobile_sdk/t22;

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_5d

    :cond_41
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 57
    iget-object p3, p0, Lads_mobile_sdk/t22;->c:Lads_mobile_sdk/ks1;

    invoke-interface {p3}, Lads_mobile_sdk/ks1;->get()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroidx/datastore/core/DataStore;

    new-instance v2, Lads_mobile_sdk/q22;

    invoke-direct {v2, p1, p2, v5}, Lads_mobile_sdk/q22;-><init>(JLkotlin/coroutines/Continuation;)V

    iput-object p0, v0, Lads_mobile_sdk/p22;->a:Lads_mobile_sdk/t22;

    iput v4, v0, Lads_mobile_sdk/p22;->f:I

    invoke-interface {p3, v2, v0}, Landroidx/datastore/core/DataStore;->updateData(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_5c

    goto :goto_70

    :cond_5c
    move-object p1, p0

    .line 58
    :goto_5d
    move-object p2, p3

    check-cast p2, Lads_mobile_sdk/k22;

    .line 61
    iget-object p3, p1, Lads_mobile_sdk/t22;->d:Lkotlinx/coroutines/sync/Mutex;

    .line 118
    iput-object p1, v0, Lads_mobile_sdk/p22;->a:Lads_mobile_sdk/t22;

    iput-object p2, v0, Lads_mobile_sdk/p22;->b:Lads_mobile_sdk/k22;

    iput-object p3, v0, Lads_mobile_sdk/p22;->c:Lkotlinx/coroutines/sync/Mutex;

    iput v3, v0, Lads_mobile_sdk/p22;->f:I

    invoke-interface {p3, v5, v0}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_71

    :goto_70
    return-object v1

    :cond_71
    move-object v0, p1

    move-object p1, p3

    .line 119
    :goto_73
    :try_start_73
    iput-object p2, v0, Lads_mobile_sdk/t22;->e:Lads_mobile_sdk/k22;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_77
    .catchall {:try_start_73 .. :try_end_77} :catchall_7b

    .line 180
    invoke-interface {p1, v5}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    return-object p2

    :catchall_7b
    move-exception p2

    .line 181
    invoke-interface {p1, v5}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw p2
.end method

.method public final u(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 9

    .line 1
    instance-of v0, p1, Lads_mobile_sdk/o22;

    if-eqz v0, :cond_13

    move-object v0, p1

    check-cast v0, Lads_mobile_sdk/o22;

    iget v1, v0, Lads_mobile_sdk/o22;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/o22;->e:I

    goto :goto_18

    :cond_13
    new-instance v0, Lads_mobile_sdk/o22;

    invoke-direct {v0, p0, p1}, Lads_mobile_sdk/o22;-><init>(Lads_mobile_sdk/t22;Lkotlin/coroutines/Continuation;)V

    :goto_18
    iget-object p1, v0, Lads_mobile_sdk/o22;->c:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 31
    iget v2, v0, Lads_mobile_sdk/o22;->e:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_4c

    if-eq v2, v4, :cond_3f

    if-ne v2, v3, :cond_37

    iget-object v1, v0, Lads_mobile_sdk/o22;->b:Ljava/lang/Object;

    check-cast v1, Lads_mobile_sdk/t22;

    iget-object v0, v0, Lads_mobile_sdk/o22;->a:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/sync/Mutex;

    :try_start_31
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_34
    .catchall {:try_start_31 .. :try_end_34} :catchall_35

    goto :goto_7c

    :catchall_35
    move-exception p1

    goto :goto_96

    .line 32
    :cond_37
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3f
    iget-object v2, v0, Lads_mobile_sdk/o22;->b:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/sync/Mutex;

    iget-object v4, v0, Lads_mobile_sdk/o22;->a:Ljava/lang/Object;

    check-cast v4, Lads_mobile_sdk/t22;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object p1, v2

    goto :goto_5f

    :cond_4c
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 33
    iget-object p1, p0, Lads_mobile_sdk/t22;->d:Lkotlinx/coroutines/sync/Mutex;

    .line 83
    iput-object p0, v0, Lads_mobile_sdk/o22;->a:Ljava/lang/Object;

    iput-object p1, v0, Lads_mobile_sdk/o22;->b:Ljava/lang/Object;

    iput v4, v0, Lads_mobile_sdk/o22;->e:I

    invoke-interface {p1, v5, v0}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_5e

    goto :goto_77

    :cond_5e
    move-object v4, p0

    .line 84
    :goto_5f
    :try_start_5f
    iget-object v2, v4, Lads_mobile_sdk/t22;->c:Lads_mobile_sdk/ks1;

    invoke-interface {v2}, Lads_mobile_sdk/ks1;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/datastore/core/DataStore;

    invoke-interface {v2}, Landroidx/datastore/core/DataStore;->getData()Lkotlinx/coroutines/flow/Flow;

    move-result-object v2

    iput-object p1, v0, Lads_mobile_sdk/o22;->a:Ljava/lang/Object;

    iput-object v4, v0, Lads_mobile_sdk/o22;->b:Ljava/lang/Object;

    iput v3, v0, Lads_mobile_sdk/o22;->e:I

    invoke-static {v2, v0}, Lkotlinx/coroutines/flow/FlowKt;->firstOrNull(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0
    :try_end_75
    .catchall {:try_start_5f .. :try_end_75} :catchall_9a

    if-ne v0, v1, :cond_78

    :goto_77
    return-object v1

    :cond_78
    move-object v1, v0

    move-object v0, p1

    move-object p1, v1

    move-object v1, v4

    .line 85
    :goto_7c
    :try_start_7c
    check-cast p1, Lads_mobile_sdk/k22;

    if-nez p1, :cond_89

    invoke-static {}, Lads_mobile_sdk/k22;->x()Lads_mobile_sdk/k22;

    move-result-object p1

    const-string v2, "getDefaultInstance(...)"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 86
    :cond_89
    iput-object p1, v1, Lads_mobile_sdk/t22;->e:Lads_mobile_sdk/k22;

    .line 87
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_8d
    .catchall {:try_start_7c .. :try_end_8d} :catchall_35

    .line 139
    invoke-interface {v0, v5}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    .line 140
    new-instance v0, Lads_mobile_sdk/q01;

    invoke-direct {v0, p1}, Lads_mobile_sdk/q01;-><init>(Ljava/lang/Object;)V

    return-object v0

    :goto_96
    move-object v6, v0

    move-object v0, p1

    move-object p1, v6

    goto :goto_9b

    :catchall_9a
    move-exception v0

    .line 191
    :goto_9b
    invoke-interface {p1, v5}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw v0
.end method

.method public final v(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 6

    .line 1
    instance-of v0, p1, Lads_mobile_sdk/l22;

    if-eqz v0, :cond_13

    move-object v0, p1

    check-cast v0, Lads_mobile_sdk/l22;

    iget v1, v0, Lads_mobile_sdk/l22;->c:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/l22;->c:I

    goto :goto_18

    :cond_13
    new-instance v0, Lads_mobile_sdk/l22;

    invoke-direct {v0, p0, p1}, Lads_mobile_sdk/l22;-><init>(Lads_mobile_sdk/t22;Lkotlin/coroutines/Continuation;)V

    :goto_18
    iget-object p1, v0, Lads_mobile_sdk/l22;->a:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 40
    iget v2, v0, Lads_mobile_sdk/l22;->c:I

    const/4 v3, 0x1

    if-eqz v2, :cond_31

    if-ne v2, v3, :cond_29

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_3d

    :cond_29
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_31
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iput v3, v0, Lads_mobile_sdk/l22;->c:I

    invoke-virtual {p0, v0}, Lads_mobile_sdk/t22;->w(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3d

    return-object v1

    :cond_3d
    :goto_3d
    check-cast p1, Lads_mobile_sdk/k22;

    invoke-virtual {p1}, Lads_mobile_sdk/k22;->w()J

    move-result-wide v0

    invoke-static {v0, v1}, Lkotlin/coroutines/jvm/internal/Boxing;->boxLong(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method public final w(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 7

    .line 1
    instance-of v0, p1, Lads_mobile_sdk/m22;

    if-eqz v0, :cond_13

    move-object v0, p1

    check-cast v0, Lads_mobile_sdk/m22;

    iget v1, v0, Lads_mobile_sdk/m22;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/m22;->e:I

    goto :goto_18

    :cond_13
    new-instance v0, Lads_mobile_sdk/m22;

    invoke-direct {v0, p0, p1}, Lads_mobile_sdk/m22;-><init>(Lads_mobile_sdk/t22;Lkotlin/coroutines/Continuation;)V

    :goto_18
    iget-object p1, v0, Lads_mobile_sdk/m22;->c:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 38
    iget v2, v0, Lads_mobile_sdk/m22;->e:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_36

    if-ne v2, v3, :cond_2e

    iget-object v1, v0, Lads_mobile_sdk/m22;->b:Lkotlinx/coroutines/sync/Mutex;

    iget-object v0, v0, Lads_mobile_sdk/m22;->a:Lads_mobile_sdk/t22;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_4a

    :cond_2e
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_36
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lads_mobile_sdk/t22;->d:Lkotlinx/coroutines/sync/Mutex;

    .line 93
    iput-object p0, v0, Lads_mobile_sdk/m22;->a:Lads_mobile_sdk/t22;

    iput-object p1, v0, Lads_mobile_sdk/m22;->b:Lkotlinx/coroutines/sync/Mutex;

    iput v3, v0, Lads_mobile_sdk/m22;->e:I

    invoke-interface {p1, v4, v0}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_48

    return-object v1

    :cond_48
    move-object v0, p0

    move-object v1, p1

    .line 94
    :goto_4a
    :try_start_4a
    iget-object p1, v0, Lads_mobile_sdk/t22;->e:Lads_mobile_sdk/k22;

    if-nez p1, :cond_57

    const-string p1, "nativeAdSettings"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V
    :try_end_53
    .catchall {:try_start_4a .. :try_end_53} :catchall_55

    move-object p1, v4

    goto :goto_57

    :catchall_55
    move-exception p1

    goto :goto_5b

    .line 153
    :cond_57
    :goto_57
    invoke-interface {v1, v4}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    return-object p1

    .line 154
    :goto_5b
    invoke-interface {v1, v4}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw p1
.end method
