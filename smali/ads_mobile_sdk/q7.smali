###### Class ads_mobile_sdk.q7 (ads_mobile_sdk.q7)
.class public final Lads_mobile_sdk/q7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/r6;


# instance fields
.field public final a:Lads_mobile_sdk/v7;

.field public final b:Lads_mobile_sdk/ux;

.field public final c:Lads_mobile_sdk/d8;

.field public final d:Lkotlinx/coroutines/CoroutineScope;

.field public final e:Lads_mobile_sdk/f40;

.field public final f:Lkotlinx/coroutines/sync/Mutex;

.field public final g:Lkotlinx/coroutines/sync/Mutex;

.field public final h:Lkotlinx/coroutines/sync/Mutex;

.field public i:Z

.field public j:Lads_mobile_sdk/n6;

.field public k:Z

.field public final l:Landroidx/datastore/core/DataStore;

.field public final m:Lkotlinx/coroutines/sync/Mutex;

.field public n:Lkotlinx/coroutines/Job;


# direct methods
.method public constructor <init>(Landroidx/datastore/core/DataStore;Lads_mobile_sdk/d40;Lads_mobile_sdk/v7;Lads_mobile_sdk/ux;Lads_mobile_sdk/d8;)V
    .registers 7

    .line 1
    const-string v0, "adQualityDataStore"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "coroutineScopeProvider"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dataPinger"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clock"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "flags"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p3, p0, Lads_mobile_sdk/q7;->a:Lads_mobile_sdk/v7;

    .line 36
    iput-object p4, p0, Lads_mobile_sdk/q7;->b:Lads_mobile_sdk/ux;

    .line 37
    iput-object p5, p0, Lads_mobile_sdk/q7;->c:Lads_mobile_sdk/d8;

    .line 39
    invoke-interface {p2}, Lads_mobile_sdk/d40;->get()Lkotlinx/coroutines/CoroutineScope;

    move-result-object p2

    iput-object p2, p0, Lads_mobile_sdk/q7;->d:Lkotlinx/coroutines/CoroutineScope;

    .line 41
    new-instance p2, Lads_mobile_sdk/f40;

    invoke-direct {p2}, Lads_mobile_sdk/f40;-><init>()V

    iput-object p2, p0, Lads_mobile_sdk/q7;->e:Lads_mobile_sdk/f40;

    const/4 p2, 0x0

    const/4 p3, 0x1

    const/4 p4, 0x0

    .line 42
    invoke-static {p2, p3, p4}, Lkotlinx/coroutines/sync/MutexKt;->Mutex$default(ZILjava/lang/Object;)Lkotlinx/coroutines/sync/Mutex;

    move-result-object p5

    iput-object p5, p0, Lads_mobile_sdk/q7;->f:Lkotlinx/coroutines/sync/Mutex;

    .line 43
    invoke-static {p2, p3, p4}, Lkotlinx/coroutines/sync/MutexKt;->Mutex$default(ZILjava/lang/Object;)Lkotlinx/coroutines/sync/Mutex;

    move-result-object p5

    iput-object p5, p0, Lads_mobile_sdk/q7;->g:Lkotlinx/coroutines/sync/Mutex;

    .line 44
    invoke-static {p2, p3, p4}, Lkotlinx/coroutines/sync/MutexKt;->Mutex$default(ZILjava/lang/Object;)Lkotlinx/coroutines/sync/Mutex;

    move-result-object p5

    iput-object p5, p0, Lads_mobile_sdk/q7;->h:Lkotlinx/coroutines/sync/Mutex;

    .line 53
    iput-object p1, p0, Lads_mobile_sdk/q7;->l:Landroidx/datastore/core/DataStore;

    .line 55
    invoke-static {p2, p3, p4}, Lkotlinx/coroutines/sync/MutexKt;->Mutex$default(ZILjava/lang/Object;)Lkotlinx/coroutines/sync/Mutex;

    move-result-object p1

    iput-object p1, p0, Lads_mobile_sdk/q7;->m:Lkotlinx/coroutines/sync/Mutex;

    return-void
.end method

.method public static final a(Lads_mobile_sdk/q7;Ljava/lang/String;Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 16

    .line 1716
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1717
    instance-of v0, p3, Lads_mobile_sdk/d7;

    if-eqz v0, :cond_16

    move-object v0, p3

    check-cast v0, Lads_mobile_sdk/d7;

    iget v1, v0, Lads_mobile_sdk/d7;->h:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_16

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/d7;->h:I

    goto :goto_1b

    :cond_16
    new-instance v0, Lads_mobile_sdk/d7;

    invoke-direct {v0, p0, p3}, Lads_mobile_sdk/d7;-><init>(Lads_mobile_sdk/q7;Lkotlin/coroutines/Continuation;)V

    :goto_1b
    iget-object p3, v0, Lads_mobile_sdk/d7;->f:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 1826
    iget v2, v0, Lads_mobile_sdk/d7;->h:I

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v2, :cond_69

    if-eq v2, v6, :cond_57

    if-eq v2, v5, :cond_46

    if-eq v2, v4, :cond_3f

    if-ne v2, v3, :cond_37

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_fc

    :cond_37
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3f
    iget-object p0, v0, Lads_mobile_sdk/d7;->a:Lads_mobile_sdk/q7;

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_f1

    :cond_46
    iget-wide p0, v0, Lads_mobile_sdk/d7;->e:J

    iget-object p2, v0, Lads_mobile_sdk/d7;->d:Lkotlinx/coroutines/sync/Mutex;

    iget-object v2, v0, Lads_mobile_sdk/d7;->c:Ljava/util/List;

    iget-object v5, v0, Lads_mobile_sdk/d7;->b:Ljava/lang/String;

    iget-object v8, v0, Lads_mobile_sdk/d7;->a:Lads_mobile_sdk/q7;

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-wide v10, p0

    move-object p0, v8

    move-wide v8, v10

    goto :goto_ab

    :cond_57
    iget-wide p0, v0, Lads_mobile_sdk/d7;->e:J

    iget-object p2, v0, Lads_mobile_sdk/d7;->d:Lkotlinx/coroutines/sync/Mutex;

    iget-object v2, v0, Lads_mobile_sdk/d7;->c:Ljava/util/List;

    iget-object v8, v0, Lads_mobile_sdk/d7;->b:Ljava/lang/String;

    iget-object v9, v0, Lads_mobile_sdk/d7;->a:Lads_mobile_sdk/q7;

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-wide v10, p0

    move-object p1, v8

    move-object p0, v9

    move-wide v8, v10

    goto :goto_8d

    :cond_69
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1832
    iget-object p3, p0, Lads_mobile_sdk/q7;->b:Lads_mobile_sdk/ux;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1833
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 1834
    iget-object p3, p0, Lads_mobile_sdk/q7;->g:Lkotlinx/coroutines/sync/Mutex;

    .line 2094
    iput-object p0, v0, Lads_mobile_sdk/d7;->a:Lads_mobile_sdk/q7;

    iput-object p1, v0, Lads_mobile_sdk/d7;->b:Ljava/lang/String;

    iput-object p2, v0, Lads_mobile_sdk/d7;->c:Ljava/util/List;

    iput-object p3, v0, Lads_mobile_sdk/d7;->d:Lkotlinx/coroutines/sync/Mutex;

    iput-wide v8, v0, Lads_mobile_sdk/d7;->e:J

    iput v6, v0, Lads_mobile_sdk/d7;->h:I

    invoke-interface {p3, v7, v0}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_8b

    goto/16 :goto_fb

    :cond_8b
    move-object v2, p2

    move-object p2, p3

    :goto_8d
    const/4 p3, 0x0

    .line 2095
    :try_start_8e
    iput-boolean p3, p0, Lads_mobile_sdk/q7;->k:Z

    sget-object p3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_92
    .catchall {:try_start_8e .. :try_end_92} :catchall_103

    .line 2359
    invoke-interface {p2, v7}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    .line 2360
    iget-object p2, p0, Lads_mobile_sdk/q7;->f:Lkotlinx/coroutines/sync/Mutex;

    .line 2630
    iput-object p0, v0, Lads_mobile_sdk/d7;->a:Lads_mobile_sdk/q7;

    iput-object p1, v0, Lads_mobile_sdk/d7;->b:Ljava/lang/String;

    iput-object v2, v0, Lads_mobile_sdk/d7;->c:Ljava/util/List;

    iput-object p2, v0, Lads_mobile_sdk/d7;->d:Lkotlinx/coroutines/sync/Mutex;

    iput-wide v8, v0, Lads_mobile_sdk/d7;->e:J

    iput v5, v0, Lads_mobile_sdk/d7;->h:I

    invoke-interface {p2, v7, v0}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_aa

    goto :goto_fb

    :cond_aa
    move-object v5, p1

    .line 2631
    :goto_ab
    :try_start_ab
    iget-boolean p1, p0, Lads_mobile_sdk/q7;->i:Z

    if-eqz p1, :cond_b7

    .line 2632
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_b1
    .catchall {:try_start_ab .. :try_end_b1} :catchall_b5

    .line 2904
    invoke-interface {p2, v7}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    return-object p0

    :catchall_b5
    move-exception p0

    goto :goto_ff

    .line 2905
    :cond_b7
    :try_start_b7
    iput-boolean v6, p0, Lads_mobile_sdk/q7;->i:Z

    .line 2906
    invoke-static {}, Lads_mobile_sdk/o6;->A()Lads_mobile_sdk/o6;

    move-result-object p1

    invoke-virtual {p1}, Lads_mobile_sdk/vz0;->u()Lads_mobile_sdk/vz0$a;

    move-result-object p1

    const-string p3, "toBuilder(...)"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lads_mobile_sdk/n6;

    iput-object p1, p0, Lads_mobile_sdk/q7;->j:Lads_mobile_sdk/n6;

    if-nez p1, :cond_d2

    .line 2907
    const-string p1, "adQualityDataBuilder"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v7

    .line 2908
    :cond_d2
    invoke-virtual {p1, v5}, Lads_mobile_sdk/n6;->a(Ljava/lang/String;)Lads_mobile_sdk/n6;

    move-result-object p1

    .line 2909
    invoke-virtual {p1, v8, v9}, Lads_mobile_sdk/n6;->f(J)Lads_mobile_sdk/n6;

    move-result-object p1

    .line 2910
    invoke-virtual {p1, v2}, Lads_mobile_sdk/n6;->a(Ljava/util/List;)V
    :try_end_dd
    .catchall {:try_start_b7 .. :try_end_dd} :catchall_b5

    .line 3175
    invoke-interface {p2, v7}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    .line 3176
    iput-object p0, v0, Lads_mobile_sdk/d7;->a:Lads_mobile_sdk/q7;

    iput-object v7, v0, Lads_mobile_sdk/d7;->b:Ljava/lang/String;

    iput-object v7, v0, Lads_mobile_sdk/d7;->c:Ljava/util/List;

    iput-object v7, v0, Lads_mobile_sdk/d7;->d:Lkotlinx/coroutines/sync/Mutex;

    iput v4, v0, Lads_mobile_sdk/d7;->h:I

    invoke-virtual {p0, v0}, Lads_mobile_sdk/q7;->c(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_f1

    goto :goto_fb

    .line 3177
    :cond_f1
    :goto_f1
    iput-object v7, v0, Lads_mobile_sdk/d7;->a:Lads_mobile_sdk/q7;

    iput v3, v0, Lads_mobile_sdk/d7;->h:I

    invoke-virtual {p0, v0}, Lads_mobile_sdk/q7;->d(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_fc

    :goto_fb
    return-object v1

    .line 3178
    :cond_fc
    :goto_fc
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    .line 3436
    :goto_ff
    invoke-interface {p2, v7}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw p0

    :catchall_103
    move-exception p0

    .line 3437
    invoke-interface {p2, v7}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw p0
.end method

.method public static final a(Lads_mobile_sdk/q7;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 13

    .line 30
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    instance-of v0, p1, Lads_mobile_sdk/z6;

    if-eqz v0, :cond_16

    move-object v0, p1

    check-cast v0, Lads_mobile_sdk/z6;

    iget v1, v0, Lads_mobile_sdk/z6;->f:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_16

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/z6;->f:I

    goto :goto_1b

    :cond_16
    new-instance v0, Lads_mobile_sdk/z6;

    invoke-direct {v0, p0, p1}, Lads_mobile_sdk/z6;-><init>(Lads_mobile_sdk/q7;Lkotlin/coroutines/Continuation;)V

    :goto_1b
    iget-object p1, v0, Lads_mobile_sdk/z6;->d:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 178
    iget v2, v0, Lads_mobile_sdk/z6;->f:I

    const/4 v3, 0x5

    const/4 v4, 0x4

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz v2, :cond_64

    if-eq v2, v7, :cond_5e

    if-eq v2, v6, :cond_56

    if-eq v2, v5, :cond_49

    if-eq v2, v4, :cond_42

    if-ne v2, v3, :cond_3a

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_de

    :cond_3a
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_42
    iget-object p0, v0, Lads_mobile_sdk/z6;->a:Lads_mobile_sdk/q7;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_d3

    :cond_49
    iget-wide v5, v0, Lads_mobile_sdk/z6;->c:J

    iget-object p0, v0, Lads_mobile_sdk/z6;->b:Lkotlinx/coroutines/sync/Mutex;

    iget-object v2, v0, Lads_mobile_sdk/z6;->a:Lads_mobile_sdk/q7;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-wide v9, v5

    move-object v6, p0

    :goto_54
    move-object p0, v2

    goto :goto_b3

    :cond_56
    iget-object p0, v0, Lads_mobile_sdk/z6;->b:Lkotlinx/coroutines/sync/Mutex;

    iget-object v2, v0, Lads_mobile_sdk/z6;->a:Lads_mobile_sdk/q7;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_84

    :cond_5e
    iget-object p0, v0, Lads_mobile_sdk/z6;->a:Lads_mobile_sdk/q7;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_73

    :cond_64
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 179
    iput-object p0, v0, Lads_mobile_sdk/z6;->a:Lads_mobile_sdk/q7;

    iput v7, v0, Lads_mobile_sdk/z6;->f:I

    invoke-virtual {p0, v0}, Lads_mobile_sdk/q7;->a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_73

    goto/16 :goto_dd

    .line 182
    :cond_73
    :goto_73
    iget-object p1, p0, Lads_mobile_sdk/q7;->g:Lkotlinx/coroutines/sync/Mutex;

    .line 429
    iput-object p0, v0, Lads_mobile_sdk/z6;->a:Lads_mobile_sdk/q7;

    iput-object p1, v0, Lads_mobile_sdk/z6;->b:Lkotlinx/coroutines/sync/Mutex;

    iput v6, v0, Lads_mobile_sdk/z6;->f:I

    invoke-interface {p1, v8, v0}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_82

    goto :goto_dd

    :cond_82
    move-object v2, p0

    move-object p0, p1

    .line 430
    :goto_84
    :try_start_84
    iget-boolean p1, v2, Lads_mobile_sdk/q7;->k:Z

    if-eqz p1, :cond_90

    .line 432
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_8a
    .catchall {:try_start_84 .. :try_end_8a} :catchall_8e

    .line 680
    invoke-interface {p0, v8}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    return-object p1

    :catchall_8e
    move-exception p1

    goto :goto_e5

    .line 681
    :cond_90
    :try_start_90
    iput-boolean v7, v2, Lads_mobile_sdk/q7;->k:Z

    .line 682
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_94
    .catchall {:try_start_90 .. :try_end_94} :catchall_8e

    .line 927
    invoke-interface {p0, v8}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    .line 928
    iget-object p0, v2, Lads_mobile_sdk/q7;->b:Lads_mobile_sdk/ux;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 929
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p0

    .line 930
    iget-object v6, v2, Lads_mobile_sdk/q7;->f:Lkotlinx/coroutines/sync/Mutex;

    .line 1180
    iput-object v2, v0, Lads_mobile_sdk/z6;->a:Lads_mobile_sdk/q7;

    iput-object v6, v0, Lads_mobile_sdk/z6;->b:Lkotlinx/coroutines/sync/Mutex;

    iput-wide p0, v0, Lads_mobile_sdk/z6;->c:J

    iput v5, v0, Lads_mobile_sdk/z6;->f:I

    invoke-interface {v6, v8, v0}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v1, :cond_b1

    goto :goto_dd

    :cond_b1
    move-wide v9, p0

    goto :goto_54

    .line 1181
    :goto_b3
    :try_start_b3
    iget-object p1, p0, Lads_mobile_sdk/q7;->j:Lads_mobile_sdk/n6;

    if-nez p1, :cond_c0

    const-string p1, "adQualityDataBuilder"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v8

    goto :goto_c0

    :catchall_be
    move-exception p0

    goto :goto_e1

    :cond_c0
    :goto_c0
    invoke-virtual {p1, v9, v10}, Lads_mobile_sdk/n6;->b(J)V
    :try_end_c3
    .catchall {:try_start_b3 .. :try_end_c3} :catchall_be

    .line 1435
    invoke-interface {v6, v8}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    .line 1436
    iput-object p0, v0, Lads_mobile_sdk/z6;->a:Lads_mobile_sdk/q7;

    iput-object v8, v0, Lads_mobile_sdk/z6;->b:Lkotlinx/coroutines/sync/Mutex;

    iput v4, v0, Lads_mobile_sdk/z6;->f:I

    invoke-virtual {p0, v9, v10, v0}, Lads_mobile_sdk/q7;->a(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_d3

    goto :goto_dd

    .line 1437
    :cond_d3
    :goto_d3
    iput-object v8, v0, Lads_mobile_sdk/z6;->a:Lads_mobile_sdk/q7;

    iput v3, v0, Lads_mobile_sdk/z6;->f:I

    invoke-virtual {p0, v0}, Lads_mobile_sdk/q7;->c(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_de

    :goto_dd
    return-object v1

    .line 1438
    :cond_de
    :goto_de
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    .line 1685
    :goto_e1
    invoke-interface {v6, v8}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw p0

    .line 1686
    :goto_e5
    invoke-interface {p0, v8}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw p1
.end method

.method public static final b(Lads_mobile_sdk/q7;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 9

    .line 30
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    instance-of v0, p1, Lads_mobile_sdk/f7;

    if-eqz v0, :cond_16

    move-object v0, p1

    check-cast v0, Lads_mobile_sdk/f7;

    iget v1, v0, Lads_mobile_sdk/f7;->f:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_16

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/f7;->f:I

    goto :goto_1b

    :cond_16
    new-instance v0, Lads_mobile_sdk/f7;

    invoke-direct {v0, p0, p1}, Lads_mobile_sdk/f7;-><init>(Lads_mobile_sdk/q7;Lkotlin/coroutines/Continuation;)V

    :goto_1b
    iget-object p1, v0, Lads_mobile_sdk/f7;->d:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 302
    iget v2, v0, Lads_mobile_sdk/f7;->f:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_3d

    if-ne v2, v3, :cond_35

    iget-wide v1, v0, Lads_mobile_sdk/f7;->c:J

    iget-object p0, v0, Lads_mobile_sdk/f7;->b:Lkotlinx/coroutines/sync/Mutex;

    iget-object v0, v0, Lads_mobile_sdk/f7;->a:Lads_mobile_sdk/q7;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object p1, p0

    move-object p0, v0

    goto :goto_5b

    :cond_35
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3d
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 303
    iget-object p1, p0, Lads_mobile_sdk/q7;->b:Lads_mobile_sdk/ux;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 304
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 305
    iget-object p1, p0, Lads_mobile_sdk/q7;->f:Lkotlinx/coroutines/sync/Mutex;

    .line 518
    iput-object p0, v0, Lads_mobile_sdk/f7;->a:Lads_mobile_sdk/q7;

    iput-object p1, v0, Lads_mobile_sdk/f7;->b:Lkotlinx/coroutines/sync/Mutex;

    iput-wide v5, v0, Lads_mobile_sdk/f7;->c:J

    iput v3, v0, Lads_mobile_sdk/f7;->f:I

    invoke-interface {p1, v4, v0}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_5a

    return-object v1

    :cond_5a
    move-wide v1, v5

    .line 519
    :goto_5b
    :try_start_5b
    iget-object p0, p0, Lads_mobile_sdk/q7;->j:Lads_mobile_sdk/n6;

    if-nez p0, :cond_68

    const-string p0, "adQualityDataBuilder"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p0, v4

    goto :goto_68

    :catchall_66
    move-exception p0

    goto :goto_71

    :cond_68
    :goto_68
    invoke-virtual {p0, v1, v2}, Lads_mobile_sdk/n6;->a(J)V
    :try_end_6b
    .catchall {:try_start_5b .. :try_end_6b} :catchall_66

    .line 736
    invoke-interface {p1, v4}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    .line 737
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    .line 953
    :goto_71
    invoke-interface {p1, v4}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw p0
.end method

.method public static final c(Lads_mobile_sdk/q7;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 30
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    instance-of v2, v1, Lads_mobile_sdk/h7;

    if-eqz v2, :cond_1a

    move-object v2, v1

    check-cast v2, Lads_mobile_sdk/h7;

    iget v3, v2, Lads_mobile_sdk/h7;->f:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_1a

    sub-int/2addr v3, v4

    iput v3, v2, Lads_mobile_sdk/h7;->f:I

    goto :goto_1f

    :cond_1a
    new-instance v2, Lads_mobile_sdk/h7;

    invoke-direct {v2, v0, v1}, Lads_mobile_sdk/h7;-><init>(Lads_mobile_sdk/q7;Lkotlin/coroutines/Continuation;)V

    :goto_1f
    iget-object v1, v2, Lads_mobile_sdk/h7;->d:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v3

    .line 237
    iget v4, v2, Lads_mobile_sdk/h7;->f:I

    const/4 v5, 0x5

    const/4 v6, 0x4

    const/4 v7, 0x3

    const/4 v8, 0x2

    const/4 v9, 0x1

    const/4 v10, 0x0

    if-eqz v4, :cond_71

    if-eq v4, v9, :cond_6b

    if-eq v4, v8, :cond_60

    if-eq v4, v7, :cond_51

    if-eq v4, v6, :cond_46

    if-ne v4, v5, :cond_3e

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_139

    :cond_3e
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_46
    iget-object v0, v2, Lads_mobile_sdk/h7;->b:Ljava/lang/Object;

    check-cast v0, Lads_mobile_sdk/o6;

    iget-object v4, v2, Lads_mobile_sdk/h7;->a:Lads_mobile_sdk/q7;

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_116

    :cond_51
    iget-wide v7, v2, Lads_mobile_sdk/h7;->c:J

    iget-object v0, v2, Lads_mobile_sdk/h7;->b:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/sync/Mutex;

    iget-object v4, v2, Lads_mobile_sdk/h7;->a:Lads_mobile_sdk/q7;

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-wide v15, v7

    move-object v8, v0

    move-wide v0, v15

    goto :goto_c1

    :cond_60
    iget-object v0, v2, Lads_mobile_sdk/h7;->b:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/sync/Mutex;

    iget-object v4, v2, Lads_mobile_sdk/h7;->a:Lads_mobile_sdk/q7;

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v1, v0

    goto :goto_91

    :cond_6b
    iget-object v0, v2, Lads_mobile_sdk/h7;->a:Lads_mobile_sdk/q7;

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_80

    :cond_71
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 238
    iput-object v0, v2, Lads_mobile_sdk/h7;->a:Lads_mobile_sdk/q7;

    iput v9, v2, Lads_mobile_sdk/h7;->f:I

    invoke-virtual {v0, v2}, Lads_mobile_sdk/q7;->a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v3, :cond_80

    goto/16 :goto_138

    .line 239
    :cond_80
    :goto_80
    iget-object v1, v0, Lads_mobile_sdk/q7;->f:Lkotlinx/coroutines/sync/Mutex;

    .line 473
    iput-object v0, v2, Lads_mobile_sdk/h7;->a:Lads_mobile_sdk/q7;

    iput-object v1, v2, Lads_mobile_sdk/h7;->b:Ljava/lang/Object;

    iput v8, v2, Lads_mobile_sdk/h7;->f:I

    invoke-interface {v1, v10, v2}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v3, :cond_90

    goto/16 :goto_138

    :cond_90
    move-object v4, v0

    .line 474
    :goto_91
    :try_start_91
    iget-boolean v0, v4, Lads_mobile_sdk/q7;->i:Z

    if-nez v0, :cond_9e

    .line 475
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_97
    .catchall {:try_start_91 .. :try_end_97} :catchall_9b

    .line 711
    invoke-interface {v1, v10}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    return-object v0

    :catchall_9b
    move-exception v0

    goto/16 :goto_140

    :cond_9e
    const/4 v0, 0x0

    .line 712
    :try_start_9f
    iput-boolean v0, v4, Lads_mobile_sdk/q7;->i:Z

    .line 713
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_a3
    .catchall {:try_start_9f .. :try_end_a3} :catchall_9b

    .line 946
    invoke-interface {v1, v10}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    .line 947
    iget-object v0, v4, Lads_mobile_sdk/q7;->b:Lads_mobile_sdk/ux;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 948
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 949
    iget-object v8, v4, Lads_mobile_sdk/q7;->f:Lkotlinx/coroutines/sync/Mutex;

    .line 1187
    iput-object v4, v2, Lads_mobile_sdk/h7;->a:Lads_mobile_sdk/q7;

    iput-object v8, v2, Lads_mobile_sdk/h7;->b:Ljava/lang/Object;

    iput-wide v0, v2, Lads_mobile_sdk/h7;->c:J

    iput v7, v2, Lads_mobile_sdk/h7;->f:I

    invoke-interface {v8, v10, v2}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v7

    if-ne v7, v3, :cond_c1

    goto/16 :goto_138

    .line 1188
    :cond_c1
    :goto_c1
    :try_start_c1
    iget-object v7, v4, Lads_mobile_sdk/q7;->j:Lads_mobile_sdk/n6;
    :try_end_c3
    .catchall {:try_start_c1 .. :try_end_c3} :catchall_cc

    const-string v9, "adQualityDataBuilder"

    if-nez v7, :cond_cf

    :try_start_c7
    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v7, v10

    goto :goto_cf

    :catchall_cc
    move-exception v0

    goto/16 :goto_13c

    .line 1190
    :cond_cf
    :goto_cf
    iget-object v11, v4, Lads_mobile_sdk/q7;->j:Lads_mobile_sdk/n6;

    if-nez v11, :cond_d7

    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v11, v10

    :cond_d7
    invoke-virtual {v11}, Lads_mobile_sdk/n6;->m()J

    move-result-wide v11

    sub-long v11, v0, v11

    .line 1191
    iget-object v13, v4, Lads_mobile_sdk/q7;->j:Lads_mobile_sdk/n6;

    if-nez v13, :cond_e5

    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v13, v10

    :cond_e5
    invoke-virtual {v13}, Lads_mobile_sdk/n6;->p()J

    move-result-wide v13

    sub-long/2addr v11, v13

    .line 1192
    invoke-virtual {v7, v11, v12}, Lads_mobile_sdk/n6;->e(J)V

    .line 1196
    iget-object v7, v4, Lads_mobile_sdk/q7;->j:Lads_mobile_sdk/n6;

    if-nez v7, :cond_f5

    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v7, v10

    :cond_f5
    invoke-virtual {v7, v0, v1}, Lads_mobile_sdk/n6;->d(J)V

    .line 1197
    iget-object v0, v4, Lads_mobile_sdk/q7;->j:Lads_mobile_sdk/n6;

    if-nez v0, :cond_100

    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v10

    :cond_100
    invoke-virtual {v0}, Lads_mobile_sdk/vz0$a;->b()Lads_mobile_sdk/vz0;

    move-result-object v0

    check-cast v0, Lads_mobile_sdk/o6;
    :try_end_106
    .catchall {:try_start_c7 .. :try_end_106} :catchall_cc

    .line 1433
    invoke-interface {v8, v10}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    .line 1434
    iput-object v4, v2, Lads_mobile_sdk/h7;->a:Lads_mobile_sdk/q7;

    iput-object v0, v2, Lads_mobile_sdk/h7;->b:Ljava/lang/Object;

    iput v6, v2, Lads_mobile_sdk/h7;->f:I

    invoke-virtual {v4, v2}, Lads_mobile_sdk/q7;->c(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v3, :cond_116

    goto :goto_138

    .line 1437
    :cond_116
    :goto_116
    iget-object v1, v4, Lads_mobile_sdk/q7;->a:Lads_mobile_sdk/v7;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v1, Lads_mobile_sdk/w7;

    invoke-virtual {v1, v0}, Lads_mobile_sdk/w7;->a(Lads_mobile_sdk/o6;)Z

    move-result v1

    if-eqz v1, :cond_139

    .line 1438
    invoke-virtual {v0}, Lads_mobile_sdk/o6;->B()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getGwsQueryId(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v10, v2, Lads_mobile_sdk/h7;->a:Lads_mobile_sdk/q7;

    iput-object v10, v2, Lads_mobile_sdk/h7;->b:Ljava/lang/Object;

    iput v5, v2, Lads_mobile_sdk/h7;->f:I

    invoke-virtual {v4, v0, v2}, Lads_mobile_sdk/q7;->a(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v3, :cond_139

    :goto_138
    return-object v3

    .line 1440
    :cond_139
    :goto_139
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    .line 1666
    :goto_13c
    invoke-interface {v8, v10}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw v0

    .line 1667
    :goto_140
    invoke-interface {v1, v10}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw v0
.end method

.method public static final d(Lads_mobile_sdk/q7;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 30
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    instance-of v2, v1, Lads_mobile_sdk/j7;

    if-eqz v2, :cond_1a

    move-object v2, v1

    check-cast v2, Lads_mobile_sdk/j7;

    iget v3, v2, Lads_mobile_sdk/j7;->e:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_1a

    sub-int/2addr v3, v4

    iput v3, v2, Lads_mobile_sdk/j7;->e:I

    goto :goto_1f

    :cond_1a
    new-instance v2, Lads_mobile_sdk/j7;

    invoke-direct {v2, v0, v1}, Lads_mobile_sdk/j7;-><init>(Lads_mobile_sdk/q7;Lkotlin/coroutines/Continuation;)V

    :goto_1f
    iget-object v1, v2, Lads_mobile_sdk/j7;->c:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v3

    .line 112
    iget v4, v2, Lads_mobile_sdk/j7;->e:I

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz v4, :cond_58

    if-eq v4, v7, :cond_4b

    if-eq v4, v6, :cond_40

    if-ne v4, v5, :cond_38

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_11c

    :cond_38
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_40
    iget-object v4, v2, Lads_mobile_sdk/j7;->b:Lkotlinx/coroutines/sync/Mutex;

    iget-object v0, v2, Lads_mobile_sdk/j7;->a:Lads_mobile_sdk/q7;

    :try_start_44
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_47
    .catchall {:try_start_44 .. :try_end_47} :catchall_48

    goto :goto_80

    :catchall_48
    move-exception v0

    goto/16 :goto_122

    :cond_4b
    iget-object v0, v2, Lads_mobile_sdk/j7;->b:Lkotlinx/coroutines/sync/Mutex;

    iget-object v4, v2, Lads_mobile_sdk/j7;->a:Lads_mobile_sdk/q7;

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v17, v4

    move-object v4, v0

    move-object/from16 v0, v17

    goto :goto_6c

    :cond_58
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 113
    iget-object v1, v0, Lads_mobile_sdk/q7;->h:Lkotlinx/coroutines/sync/Mutex;

    .line 396
    iput-object v0, v2, Lads_mobile_sdk/j7;->a:Lads_mobile_sdk/q7;

    iput-object v1, v2, Lads_mobile_sdk/j7;->b:Lkotlinx/coroutines/sync/Mutex;

    iput v7, v2, Lads_mobile_sdk/j7;->e:I

    invoke-interface {v1, v8, v2}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v3, :cond_6b

    goto/16 :goto_11b

    :cond_6b
    move-object v4, v1

    .line 397
    :goto_6c
    :try_start_6c
    iget-object v1, v0, Lads_mobile_sdk/q7;->l:Landroidx/datastore/core/DataStore;

    invoke-interface {v1}, Landroidx/datastore/core/DataStore;->getData()Lkotlinx/coroutines/flow/Flow;

    move-result-object v1

    iput-object v0, v2, Lads_mobile_sdk/j7;->a:Lads_mobile_sdk/q7;

    iput-object v4, v2, Lads_mobile_sdk/j7;->b:Lkotlinx/coroutines/sync/Mutex;

    iput v6, v2, Lads_mobile_sdk/j7;->e:I

    invoke-static {v1, v2}, Lkotlinx/coroutines/flow/FlowKt;->firstOrNull(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v3, :cond_80

    goto/16 :goto_11b

    :cond_80
    :goto_80
    check-cast v1, Lads_mobile_sdk/u7;
    :try_end_82
    .catchall {:try_start_6c .. :try_end_82} :catchall_48

    .line 684
    invoke-interface {v4, v8}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    if-eqz v1, :cond_11f

    .line 685
    invoke-virtual {v1}, Lads_mobile_sdk/u7;->w()I

    move-result v4

    if-nez v4, :cond_8f

    goto/16 :goto_11f

    .line 690
    :cond_8f
    invoke-virtual {v1}, Lads_mobile_sdk/u7;->x()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_10f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 691
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lads_mobile_sdk/o6;

    invoke-virtual {v6}, Lads_mobile_sdk/vz0;->u()Lads_mobile_sdk/vz0$a;

    move-result-object v6

    check-cast v6, Lads_mobile_sdk/n6;

    .line 692
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    const-string v9, "<get-value>(...)"

    invoke-static {v4, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Lads_mobile_sdk/o6;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 693
    invoke-virtual {v4}, Lads_mobile_sdk/o6;->x()Ljava/util/List;

    move-result-object v9

    if-eqz v9, :cond_ce

    invoke-static {v9}, Lkotlin/collections/CollectionsKt___CollectionsKt;->lastOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    goto :goto_cf

    :cond_ce
    move-object v9, v8

    .line 697
    :goto_cf
    invoke-virtual {v4}, Lads_mobile_sdk/o6;->w()I

    move-result v10

    invoke-virtual {v4}, Lads_mobile_sdk/o6;->y()I

    move-result v11

    const/4 v12, 0x0

    if-le v10, v11, :cond_e2

    invoke-virtual {v4}, Lads_mobile_sdk/o6;->C()Z

    move-result v10

    if-nez v10, :cond_e2

    move v10, v7

    goto :goto_e3

    :cond_e2
    move v10, v12

    :goto_e3
    if-eqz v9, :cond_f5

    .line 704
    invoke-virtual {v9}, Ljava/lang/Number;->longValue()J

    move-result-wide v13

    invoke-virtual {v4}, Lads_mobile_sdk/o6;->z()J

    move-result-wide v15

    sub-long/2addr v15, v13

    const-wide/16 v13, 0x1388

    cmp-long v4, v15, v13

    if-lez v4, :cond_f5

    move v12, v7

    :cond_f5
    if-nez v10, :cond_f9

    if-eqz v12, :cond_fc

    .line 705
    :cond_f9
    invoke-virtual {v6}, Lads_mobile_sdk/n6;->r()V

    .line 707
    :cond_fc
    iget-object v4, v0, Lads_mobile_sdk/q7;->a:Lads_mobile_sdk/v7;

    invoke-virtual {v6}, Lads_mobile_sdk/vz0$a;->b()Lads_mobile_sdk/vz0;

    move-result-object v6

    const-string v9, "build(...)"

    invoke-static {v6, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v6, Lads_mobile_sdk/o6;

    check-cast v4, Lads_mobile_sdk/w7;

    invoke-virtual {v4, v6}, Lads_mobile_sdk/w7;->a(Lads_mobile_sdk/o6;)Z

    goto :goto_9b

    .line 715
    :cond_10f
    iput-object v8, v2, Lads_mobile_sdk/j7;->a:Lads_mobile_sdk/q7;

    iput-object v8, v2, Lads_mobile_sdk/j7;->b:Lkotlinx/coroutines/sync/Mutex;

    iput v5, v2, Lads_mobile_sdk/j7;->e:I

    invoke-virtual {v0, v2}, Lads_mobile_sdk/q7;->b(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v3, :cond_11c

    :goto_11b
    return-object v3

    .line 716
    :cond_11c
    :goto_11c
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    .line 717
    :cond_11f
    :goto_11f
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    .line 1000
    :goto_122
    invoke-interface {v4, v8}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw v0
.end method

.method public static final e(Lads_mobile_sdk/q7;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 30
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    instance-of v2, v1, Lads_mobile_sdk/l7;

    if-eqz v2, :cond_1a

    move-object v2, v1

    check-cast v2, Lads_mobile_sdk/l7;

    iget v3, v2, Lads_mobile_sdk/l7;->f:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_1a

    sub-int/2addr v3, v4

    iput v3, v2, Lads_mobile_sdk/l7;->f:I

    goto :goto_1f

    :cond_1a
    new-instance v2, Lads_mobile_sdk/l7;

    invoke-direct {v2, v0, v1}, Lads_mobile_sdk/l7;-><init>(Lads_mobile_sdk/q7;Lkotlin/coroutines/Continuation;)V

    :goto_1f
    iget-object v1, v2, Lads_mobile_sdk/l7;->d:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v3

    .line 268
    iget v4, v2, Lads_mobile_sdk/l7;->f:I

    const/4 v5, 0x5

    const/4 v6, 0x4

    const/4 v7, 0x3

    const/4 v8, 0x2

    const/4 v9, 0x1

    const/4 v10, 0x0

    if-eqz v4, :cond_71

    if-eq v4, v9, :cond_6b

    if-eq v4, v8, :cond_60

    if-eq v4, v7, :cond_51

    if-eq v4, v6, :cond_46

    if-ne v4, v5, :cond_3e

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_144

    :cond_3e
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_46
    iget-object v0, v2, Lads_mobile_sdk/l7;->b:Ljava/lang/Object;

    check-cast v0, Lads_mobile_sdk/o6;

    iget-object v4, v2, Lads_mobile_sdk/l7;->a:Lads_mobile_sdk/q7;

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_121

    :cond_51
    iget-wide v7, v2, Lads_mobile_sdk/l7;->c:J

    iget-object v0, v2, Lads_mobile_sdk/l7;->b:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/sync/Mutex;

    iget-object v4, v2, Lads_mobile_sdk/l7;->a:Lads_mobile_sdk/q7;

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-wide v15, v7

    move-object v8, v0

    move-wide v0, v15

    goto :goto_c1

    :cond_60
    iget-object v0, v2, Lads_mobile_sdk/l7;->b:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/sync/Mutex;

    iget-object v4, v2, Lads_mobile_sdk/l7;->a:Lads_mobile_sdk/q7;

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v1, v0

    goto :goto_91

    :cond_6b
    iget-object v0, v2, Lads_mobile_sdk/l7;->a:Lads_mobile_sdk/q7;

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_80

    :cond_71
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 269
    iput-object v0, v2, Lads_mobile_sdk/l7;->a:Lads_mobile_sdk/q7;

    iput v9, v2, Lads_mobile_sdk/l7;->f:I

    invoke-virtual {v0, v2}, Lads_mobile_sdk/q7;->a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v3, :cond_80

    goto/16 :goto_143

    .line 270
    :cond_80
    :goto_80
    iget-object v1, v0, Lads_mobile_sdk/q7;->f:Lkotlinx/coroutines/sync/Mutex;

    .line 495
    iput-object v0, v2, Lads_mobile_sdk/l7;->a:Lads_mobile_sdk/q7;

    iput-object v1, v2, Lads_mobile_sdk/l7;->b:Ljava/lang/Object;

    iput v8, v2, Lads_mobile_sdk/l7;->f:I

    invoke-interface {v1, v10, v2}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v3, :cond_90

    goto/16 :goto_143

    :cond_90
    move-object v4, v0

    .line 496
    :goto_91
    :try_start_91
    iget-boolean v0, v4, Lads_mobile_sdk/q7;->i:Z

    if-nez v0, :cond_9e

    .line 497
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_97
    .catchall {:try_start_91 .. :try_end_97} :catchall_9b

    .line 724
    invoke-interface {v1, v10}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    return-object v0

    :catchall_9b
    move-exception v0

    goto/16 :goto_14b

    :cond_9e
    const/4 v0, 0x0

    .line 725
    :try_start_9f
    iput-boolean v0, v4, Lads_mobile_sdk/q7;->i:Z

    .line 726
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_a3
    .catchall {:try_start_9f .. :try_end_a3} :catchall_9b

    .line 950
    invoke-interface {v1, v10}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    .line 951
    iget-object v0, v4, Lads_mobile_sdk/q7;->b:Lads_mobile_sdk/ux;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 952
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 953
    iget-object v8, v4, Lads_mobile_sdk/q7;->f:Lkotlinx/coroutines/sync/Mutex;

    .line 1181
    iput-object v4, v2, Lads_mobile_sdk/l7;->a:Lads_mobile_sdk/q7;

    iput-object v8, v2, Lads_mobile_sdk/l7;->b:Ljava/lang/Object;

    iput-wide v0, v2, Lads_mobile_sdk/l7;->c:J

    iput v7, v2, Lads_mobile_sdk/l7;->f:I

    invoke-interface {v8, v10, v2}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v7

    if-ne v7, v3, :cond_c1

    goto/16 :goto_143

    .line 1182
    :cond_c1
    :goto_c1
    :try_start_c1
    iget-object v7, v4, Lads_mobile_sdk/q7;->j:Lads_mobile_sdk/n6;
    :try_end_c3
    .catchall {:try_start_c1 .. :try_end_c3} :catchall_cc

    const-string v9, "adQualityDataBuilder"

    if-nez v7, :cond_cf

    :try_start_c7
    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v7, v10

    goto :goto_cf

    :catchall_cc
    move-exception v0

    goto/16 :goto_147

    .line 1184
    :cond_cf
    :goto_cf
    iget-object v11, v4, Lads_mobile_sdk/q7;->j:Lads_mobile_sdk/n6;

    if-nez v11, :cond_d7

    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v11, v10

    :cond_d7
    invoke-virtual {v11}, Lads_mobile_sdk/n6;->m()J

    move-result-wide v11

    sub-long v11, v0, v11

    .line 1185
    iget-object v13, v4, Lads_mobile_sdk/q7;->j:Lads_mobile_sdk/n6;

    if-nez v13, :cond_e5

    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v13, v10

    :cond_e5
    invoke-virtual {v13}, Lads_mobile_sdk/n6;->p()J

    move-result-wide v13

    sub-long/2addr v11, v13

    .line 1186
    invoke-virtual {v7, v11, v12}, Lads_mobile_sdk/n6;->e(J)V

    .line 1190
    iget-object v7, v4, Lads_mobile_sdk/q7;->j:Lads_mobile_sdk/n6;

    if-nez v7, :cond_f5

    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v7, v10

    :cond_f5
    invoke-virtual {v7, v0, v1}, Lads_mobile_sdk/n6;->g(J)V

    .line 1191
    iget-object v0, v4, Lads_mobile_sdk/q7;->j:Lads_mobile_sdk/n6;

    if-nez v0, :cond_100

    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v10

    :cond_100
    invoke-virtual {v0}, Lads_mobile_sdk/n6;->q()V

    .line 1192
    iget-object v0, v4, Lads_mobile_sdk/q7;->j:Lads_mobile_sdk/n6;

    if-nez v0, :cond_10b

    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v10

    :cond_10b
    invoke-virtual {v0}, Lads_mobile_sdk/vz0$a;->b()Lads_mobile_sdk/vz0;

    move-result-object v0

    check-cast v0, Lads_mobile_sdk/o6;
    :try_end_111
    .catchall {:try_start_c7 .. :try_end_111} :catchall_cc

    .line 1417
    invoke-interface {v8, v10}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    .line 1418
    iput-object v4, v2, Lads_mobile_sdk/l7;->a:Lads_mobile_sdk/q7;

    iput-object v0, v2, Lads_mobile_sdk/l7;->b:Ljava/lang/Object;

    iput v6, v2, Lads_mobile_sdk/l7;->f:I

    invoke-virtual {v4, v2}, Lads_mobile_sdk/q7;->c(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v3, :cond_121

    goto :goto_143

    .line 1421
    :cond_121
    :goto_121
    iget-object v1, v4, Lads_mobile_sdk/q7;->a:Lads_mobile_sdk/v7;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v1, Lads_mobile_sdk/w7;

    invoke-virtual {v1, v0}, Lads_mobile_sdk/w7;->a(Lads_mobile_sdk/o6;)Z

    move-result v1

    if-eqz v1, :cond_144

    .line 1422
    invoke-virtual {v0}, Lads_mobile_sdk/o6;->B()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getGwsQueryId(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v10, v2, Lads_mobile_sdk/l7;->a:Lads_mobile_sdk/q7;

    iput-object v10, v2, Lads_mobile_sdk/l7;->b:Ljava/lang/Object;

    iput v5, v2, Lads_mobile_sdk/l7;->f:I

    invoke-virtual {v4, v0, v2}, Lads_mobile_sdk/q7;->a(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v3, :cond_144

    :goto_143
    return-object v3

    .line 1424
    :cond_144
    :goto_144
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    .line 1638
    :goto_147
    invoke-interface {v8, v10}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw v0

    .line 1639
    :goto_14b
    invoke-interface {v1, v10}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw v0
.end method

.method public static final f(Lads_mobile_sdk/q7;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 30
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    instance-of v2, v1, Lads_mobile_sdk/n7;

    if-eqz v2, :cond_1a

    move-object v2, v1

    check-cast v2, Lads_mobile_sdk/n7;

    iget v3, v2, Lads_mobile_sdk/n7;->f:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_1a

    sub-int/2addr v3, v4

    iput v3, v2, Lads_mobile_sdk/n7;->f:I

    goto :goto_1f

    :cond_1a
    new-instance v2, Lads_mobile_sdk/n7;

    invoke-direct {v2, v0, v1}, Lads_mobile_sdk/n7;-><init>(Lads_mobile_sdk/q7;Lkotlin/coroutines/Continuation;)V

    :goto_1f
    iget-object v1, v2, Lads_mobile_sdk/n7;->d:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v3

    .line 203
    iget v4, v2, Lads_mobile_sdk/n7;->f:I

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz v4, :cond_55

    if-eq v4, v7, :cond_4b

    if-eq v4, v6, :cond_40

    if-ne v4, v5, :cond_38

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_16c

    :cond_38
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_40
    iget-wide v9, v2, Lads_mobile_sdk/n7;->c:J

    iget-object v0, v2, Lads_mobile_sdk/n7;->b:Lkotlinx/coroutines/sync/Mutex;

    iget-object v4, v2, Lads_mobile_sdk/n7;->a:Lads_mobile_sdk/q7;

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v1, v0

    goto :goto_99

    :cond_4b
    iget-object v0, v2, Lads_mobile_sdk/n7;->b:Lkotlinx/coroutines/sync/Mutex;

    iget-object v4, v2, Lads_mobile_sdk/n7;->a:Lads_mobile_sdk/q7;

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v1, v0

    move-object v0, v4

    goto :goto_68

    :cond_55
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 204
    iget-object v1, v0, Lads_mobile_sdk/q7;->g:Lkotlinx/coroutines/sync/Mutex;

    .line 451
    iput-object v0, v2, Lads_mobile_sdk/n7;->a:Lads_mobile_sdk/q7;

    iput-object v1, v2, Lads_mobile_sdk/n7;->b:Lkotlinx/coroutines/sync/Mutex;

    iput v7, v2, Lads_mobile_sdk/n7;->f:I

    invoke-interface {v1, v8, v2}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v3, :cond_68

    goto/16 :goto_16b

    .line 452
    :cond_68
    :goto_68
    :try_start_68
    iget-boolean v4, v0, Lads_mobile_sdk/q7;->k:Z

    if-nez v4, :cond_75

    .line 454
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_6e
    .catchall {:try_start_68 .. :try_end_6e} :catchall_72

    .line 702
    invoke-interface {v1, v8}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    return-object v0

    :catchall_72
    move-exception v0

    goto/16 :goto_173

    :cond_75
    const/4 v4, 0x0

    .line 703
    :try_start_76
    iput-boolean v4, v0, Lads_mobile_sdk/q7;->k:Z

    .line 704
    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_7a
    .catchall {:try_start_76 .. :try_end_7a} :catchall_72

    .line 949
    invoke-interface {v1, v8}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    .line 950
    iget-object v1, v0, Lads_mobile_sdk/q7;->b:Lads_mobile_sdk/ux;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 951
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    .line 952
    iget-object v1, v0, Lads_mobile_sdk/q7;->f:Lkotlinx/coroutines/sync/Mutex;

    .line 1202
    iput-object v0, v2, Lads_mobile_sdk/n7;->a:Lads_mobile_sdk/q7;

    iput-object v1, v2, Lads_mobile_sdk/n7;->b:Lkotlinx/coroutines/sync/Mutex;

    iput-wide v9, v2, Lads_mobile_sdk/n7;->c:J

    iput v6, v2, Lads_mobile_sdk/n7;->f:I

    invoke-interface {v1, v8, v2}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v3, :cond_98

    goto/16 :goto_16b

    :cond_98
    move-object v4, v0

    .line 1203
    :goto_99
    :try_start_99
    iget-object v0, v4, Lads_mobile_sdk/q7;->j:Lads_mobile_sdk/n6;
    :try_end_9b
    .catchall {:try_start_99 .. :try_end_9b} :catchall_a4

    const-string v6, "adQualityDataBuilder"

    if-nez v0, :cond_a7

    :try_start_9f
    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v8

    goto :goto_a7

    :catchall_a4
    move-exception v0

    goto/16 :goto_16f

    :cond_a7
    :goto_a7
    invoke-virtual {v0}, Lads_mobile_sdk/n6;->k()I

    move-result v0
    :try_end_ab
    .catchall {:try_start_9f .. :try_end_ab} :catchall_a4

    const-string v11, "last(...)"

    if-lez v0, :cond_113

    .line 1205
    :try_start_af
    iget-object v0, v4, Lads_mobile_sdk/q7;->j:Lads_mobile_sdk/n6;

    if-nez v0, :cond_b7

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v8

    :cond_b7
    invoke-virtual {v0}, Lads_mobile_sdk/n6;->l()Ljava/util/List;

    move-result-object v0

    const-string v12, "getAdClickTimestampsMsList(...)"

    invoke-static {v0, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v12

    sub-long v12, v9, v12

    .line 1208
    iget-object v0, v4, Lads_mobile_sdk/q7;->j:Lads_mobile_sdk/n6;

    if-nez v0, :cond_d7

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v8

    :cond_d7
    invoke-virtual {v0}, Lads_mobile_sdk/n6;->h()V

    .line 1209
    iget-object v0, v4, Lads_mobile_sdk/q7;->c:Lads_mobile_sdk/d8;

    check-cast v0, Lads_mobile_sdk/e8;

    .line 1210
    iget-object v0, v0, Lads_mobile_sdk/e8;->a:Lads_mobile_sdk/ex0;

    .line 1211
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1212
    const-string v14, "gads:ad_quality_metrics:bounce_time_threshold_ms"

    const-string v15, "key"

    invoke-static {v14, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v15, 0x1388

    .line 1213
    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    move/from16 p1, v7

    sget-object v7, Lads_mobile_sdk/yr;->d:Lads_mobile_sdk/rr;

    invoke-virtual {v0, v14, v15, v7}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v14

    cmp-long v0, v12, v14

    if-gez v0, :cond_113

    .line 1214
    iget-object v0, v4, Lads_mobile_sdk/q7;->j:Lads_mobile_sdk/n6;

    if-nez v0, :cond_10a

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v8

    :cond_10a
    invoke-virtual {v0}, Lads_mobile_sdk/n6;->j()I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v0, v7}, Lads_mobile_sdk/n6;->a(I)V

    .line 1217
    :cond_113
    iget-object v0, v4, Lads_mobile_sdk/q7;->j:Lads_mobile_sdk/n6;

    if-nez v0, :cond_11b

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v8

    :cond_11b
    invoke-virtual {v0}, Lads_mobile_sdk/n6;->n()I

    move-result v0

    if-lez v0, :cond_151

    .line 1218
    iget-object v0, v4, Lads_mobile_sdk/q7;->j:Lads_mobile_sdk/n6;

    if-nez v0, :cond_129

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v8

    :cond_129
    invoke-virtual {v0}, Lads_mobile_sdk/n6;->o()Ljava/util/List;

    move-result-object v0

    const-string v7, "getAppBackgroundTimestampsMsList(...)"

    invoke-static {v0, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v11

    sub-long v11, v9, v11

    .line 1219
    iget-object v0, v4, Lads_mobile_sdk/q7;->j:Lads_mobile_sdk/n6;

    if-nez v0, :cond_149

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v8

    :cond_149
    invoke-virtual {v0}, Lads_mobile_sdk/n6;->p()J

    move-result-wide v13

    add-long/2addr v13, v11

    invoke-virtual {v0, v13, v14}, Lads_mobile_sdk/n6;->h(J)V

    .line 1221
    :cond_151
    iget-object v0, v4, Lads_mobile_sdk/q7;->j:Lads_mobile_sdk/n6;

    if-nez v0, :cond_159

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v8

    :cond_159
    invoke-virtual {v0, v9, v10}, Lads_mobile_sdk/n6;->c(J)V
    :try_end_15c
    .catchall {:try_start_af .. :try_end_15c} :catchall_a4

    .line 1459
    invoke-interface {v1, v8}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    .line 1460
    iput-object v8, v2, Lads_mobile_sdk/n7;->a:Lads_mobile_sdk/q7;

    iput-object v8, v2, Lads_mobile_sdk/n7;->b:Lkotlinx/coroutines/sync/Mutex;

    iput v5, v2, Lads_mobile_sdk/n7;->f:I

    invoke-virtual {v4, v2}, Lads_mobile_sdk/q7;->d(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v3, :cond_16c

    :goto_16b
    return-object v3

    .line 1461
    :cond_16c
    :goto_16c
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    .line 1696
    :goto_16f
    invoke-interface {v1, v8}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw v0

    .line 1697
    :goto_173
    invoke-interface {v1, v8}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw v0
.end method


# virtual methods
.method public final a(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 11

    .line 4376
    instance-of v0, p3, Lads_mobile_sdk/u6;

    if-eqz v0, :cond_13

    move-object v0, p3

    check-cast v0, Lads_mobile_sdk/u6;

    iget v1, v0, Lads_mobile_sdk/u6;->f:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/u6;->f:I

    goto :goto_18

    :cond_13
    new-instance v0, Lads_mobile_sdk/u6;

    invoke-direct {v0, p0, p3}, Lads_mobile_sdk/u6;-><init>(Lads_mobile_sdk/q7;Lkotlin/coroutines/Continuation;)V

    :goto_18
    iget-object p3, v0, Lads_mobile_sdk/u6;->d:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 4667
    iget v2, v0, Lads_mobile_sdk/u6;->f:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_38

    if-ne v2, v3, :cond_30

    iget-wide p1, v0, Lads_mobile_sdk/u6;->c:J

    iget-object v1, v0, Lads_mobile_sdk/u6;->b:Lkotlinx/coroutines/sync/Mutex;

    iget-object v0, v0, Lads_mobile_sdk/u6;->a:Lads_mobile_sdk/q7;

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_4e

    :cond_30
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_38
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 4668
    iget-object p3, p0, Lads_mobile_sdk/q7;->f:Lkotlinx/coroutines/sync/Mutex;

    .line 4895
    iput-object p0, v0, Lads_mobile_sdk/u6;->a:Lads_mobile_sdk/q7;

    iput-object p3, v0, Lads_mobile_sdk/u6;->b:Lkotlinx/coroutines/sync/Mutex;

    iput-wide p1, v0, Lads_mobile_sdk/u6;->c:J

    iput v3, v0, Lads_mobile_sdk/u6;->f:I

    invoke-interface {p3, v4, v0}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_4c

    return-object v1

    :cond_4c
    move-object v0, p0

    move-object v1, p3

    .line 4896
    :goto_4e
    :try_start_4e
    iget-object p3, v0, Lads_mobile_sdk/q7;->j:Lads_mobile_sdk/n6;
    :try_end_50
    .catchall {:try_start_4e .. :try_end_50} :catchall_59

    const-string v2, "adQualityDataBuilder"

    if-nez p3, :cond_5b

    :try_start_54
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p3, v4

    goto :goto_5b

    :catchall_59
    move-exception p1

    goto :goto_7e

    .line 4897
    :cond_5b
    :goto_5b
    iget-object v3, v0, Lads_mobile_sdk/q7;->j:Lads_mobile_sdk/n6;

    if-nez v3, :cond_63

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v3, v4

    .line 4898
    :cond_63
    invoke-virtual {v3}, Lads_mobile_sdk/n6;->m()J

    move-result-wide v5

    sub-long/2addr p1, v5

    .line 4899
    iget-object v0, v0, Lads_mobile_sdk/q7;->j:Lads_mobile_sdk/n6;

    if-nez v0, :cond_70

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v4

    .line 4900
    :cond_70
    invoke-virtual {v0}, Lads_mobile_sdk/n6;->p()J

    move-result-wide v2

    sub-long/2addr p1, v2

    .line 4901
    invoke-virtual {p3, p1, p2}, Lads_mobile_sdk/n6;->e(J)V
    :try_end_78
    .catchall {:try_start_54 .. :try_end_78} :catchall_59

    .line 5131
    invoke-interface {v1, v4}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    .line 5132
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 5357
    :goto_7e
    invoke-interface {v1, v4}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw p1
.end method

.method public final a(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 9

    .line 3438
    instance-of v0, p2, Lads_mobile_sdk/s6;

    if-eqz v0, :cond_13

    move-object v0, p2

    check-cast v0, Lads_mobile_sdk/s6;

    iget v1, v0, Lads_mobile_sdk/s6;->f:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/s6;->f:I

    goto :goto_18

    :cond_13
    new-instance v0, Lads_mobile_sdk/s6;

    invoke-direct {v0, p0, p2}, Lads_mobile_sdk/s6;-><init>(Lads_mobile_sdk/q7;Lkotlin/coroutines/Continuation;)V

    :goto_18
    iget-object p2, v0, Lads_mobile_sdk/s6;->d:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 3718
    iget v2, v0, Lads_mobile_sdk/s6;->f:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_47

    if-eq v2, v4, :cond_3b

    if-ne v2, v3, :cond_33

    iget-object p1, v0, Lads_mobile_sdk/s6;->a:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/sync/Mutex;

    :try_start_2d
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_30
    .catchall {:try_start_2d .. :try_end_30} :catchall_31

    goto :goto_74

    :catchall_31
    move-exception p2

    goto :goto_7c

    .line 3719
    :cond_33
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3b
    iget-object p1, v0, Lads_mobile_sdk/s6;->c:Lkotlinx/coroutines/sync/Mutex;

    iget-object v2, v0, Lads_mobile_sdk/s6;->b:Ljava/lang/String;

    iget-object v4, v0, Lads_mobile_sdk/s6;->a:Ljava/lang/Object;

    check-cast v4, Lads_mobile_sdk/q7;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_5e

    :cond_47
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 3720
    iget-object p2, p0, Lads_mobile_sdk/q7;->h:Lkotlinx/coroutines/sync/Mutex;

    .line 3936
    iput-object p0, v0, Lads_mobile_sdk/s6;->a:Ljava/lang/Object;

    iput-object p1, v0, Lads_mobile_sdk/s6;->b:Ljava/lang/String;

    iput-object p2, v0, Lads_mobile_sdk/s6;->c:Lkotlinx/coroutines/sync/Mutex;

    iput v4, v0, Lads_mobile_sdk/s6;->f:I

    invoke-interface {p2, v5, v0}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_5b

    goto :goto_73

    :cond_5b
    move-object v4, p0

    move-object v2, p1

    move-object p1, p2

    .line 3937
    :goto_5e
    :try_start_5e
    iget-object p2, v4, Lads_mobile_sdk/q7;->l:Landroidx/datastore/core/DataStore;

    new-instance v4, Lads_mobile_sdk/t6;

    invoke-direct {v4, v2, v5}, Lads_mobile_sdk/t6;-><init>(Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lads_mobile_sdk/s6;->a:Ljava/lang/Object;

    iput-object v5, v0, Lads_mobile_sdk/s6;->b:Ljava/lang/String;

    iput-object v5, v0, Lads_mobile_sdk/s6;->c:Lkotlinx/coroutines/sync/Mutex;

    iput v3, v0, Lads_mobile_sdk/s6;->f:I

    invoke-interface {p2, v4, v0}, Landroidx/datastore/core/DataStore;->updateData(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_74

    :goto_73
    return-object v1

    .line 3938
    :cond_74
    :goto_74
    check-cast p2, Lads_mobile_sdk/u7;
    :try_end_76
    .catchall {:try_start_5e .. :try_end_76} :catchall_31

    .line 4157
    invoke-interface {p1, v5}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    .line 4158
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 4375
    :goto_7c
    invoke-interface {p1, v5}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw p2
.end method

.method public final a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 7

    .line 5358
    instance-of v0, p1, Lads_mobile_sdk/v6;

    if-eqz v0, :cond_13

    move-object v0, p1

    check-cast v0, Lads_mobile_sdk/v6;

    iget v1, v0, Lads_mobile_sdk/v6;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/v6;->e:I

    goto :goto_18

    :cond_13
    new-instance v0, Lads_mobile_sdk/v6;

    invoke-direct {v0, p0, p1}, Lads_mobile_sdk/v6;-><init>(Lads_mobile_sdk/q7;Lkotlin/coroutines/Continuation;)V

    :goto_18
    iget-object p1, v0, Lads_mobile_sdk/v6;->c:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 5432
    iget v2, v0, Lads_mobile_sdk/v6;->e:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_36

    if-ne v2, v3, :cond_2e

    iget-object v1, v0, Lads_mobile_sdk/v6;->b:Lkotlinx/coroutines/sync/Mutex;

    iget-object v0, v0, Lads_mobile_sdk/v6;->a:Lads_mobile_sdk/q7;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_4a

    :cond_2e
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_36
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 5433
    iget-object p1, p0, Lads_mobile_sdk/q7;->m:Lkotlinx/coroutines/sync/Mutex;

    .line 5712
    iput-object p0, v0, Lads_mobile_sdk/v6;->a:Lads_mobile_sdk/q7;

    iput-object p1, v0, Lads_mobile_sdk/v6;->b:Lkotlinx/coroutines/sync/Mutex;

    iput v3, v0, Lads_mobile_sdk/v6;->e:I

    invoke-interface {p1, v4, v0}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_48

    return-object v1

    :cond_48
    move-object v0, p0

    move-object v1, p1

    .line 5713
    :goto_4a
    :try_start_4a
    iget-object p1, v0, Lads_mobile_sdk/q7;->n:Lkotlinx/coroutines/Job;

    if-eqz p1, :cond_54

    invoke-static {p1, v4, v3, v4}, Lkotlinx/coroutines/Job$DefaultImpls;->cancel$default(Lkotlinx/coroutines/Job;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    goto :goto_54

    :catchall_52
    move-exception p1

    goto :goto_5c

    .line 5714
    :cond_54
    :goto_54
    iput-object v4, v0, Lads_mobile_sdk/q7;->n:Lkotlinx/coroutines/Job;

    .line 5715
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_58
    .catchall {:try_start_4a .. :try_end_58} :catchall_52

    .line 5995
    invoke-interface {v1, v4}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    return-object p1

    .line 5996
    :goto_5c
    invoke-interface {v1, v4}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw p1
.end method

.method public final b(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 9

    .line 954
    instance-of v0, p1, Lads_mobile_sdk/w6;

    if-eqz v0, :cond_13

    move-object v0, p1

    check-cast v0, Lads_mobile_sdk/w6;

    iget v1, v0, Lads_mobile_sdk/w6;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/w6;->e:I

    goto :goto_18

    :cond_13
    new-instance v0, Lads_mobile_sdk/w6;

    invoke-direct {v0, p0, p1}, Lads_mobile_sdk/w6;-><init>(Lads_mobile_sdk/q7;Lkotlin/coroutines/Continuation;)V

    :goto_18
    iget-object p1, v0, Lads_mobile_sdk/w6;->c:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 1240
    iget v2, v0, Lads_mobile_sdk/w6;->e:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_46

    if-eq v2, v4, :cond_3b

    if-ne v2, v3, :cond_33

    iget-object v0, v0, Lads_mobile_sdk/w6;->a:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/sync/Mutex;

    :try_start_2d
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_30
    .catchall {:try_start_2d .. :try_end_30} :catchall_31

    goto :goto_70

    :catchall_31
    move-exception p1

    goto :goto_7c

    .line 1241
    :cond_33
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3b
    iget-object v2, v0, Lads_mobile_sdk/w6;->b:Lkotlinx/coroutines/sync/Mutex;

    iget-object v4, v0, Lads_mobile_sdk/w6;->a:Ljava/lang/Object;

    check-cast v4, Lads_mobile_sdk/q7;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object p1, v2

    goto :goto_59

    :cond_46
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1242
    iget-object p1, p0, Lads_mobile_sdk/q7;->h:Lkotlinx/coroutines/sync/Mutex;

    .line 1463
    iput-object p0, v0, Lads_mobile_sdk/w6;->a:Ljava/lang/Object;

    iput-object p1, v0, Lads_mobile_sdk/w6;->b:Lkotlinx/coroutines/sync/Mutex;

    iput v4, v0, Lads_mobile_sdk/w6;->e:I

    invoke-interface {p1, v5, v0}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_58

    goto :goto_6c

    :cond_58
    move-object v4, p0

    .line 1464
    :goto_59
    :try_start_59
    iget-object v2, v4, Lads_mobile_sdk/q7;->l:Landroidx/datastore/core/DataStore;

    new-instance v4, Lads_mobile_sdk/x6;

    invoke-direct {v4, v5}, Lads_mobile_sdk/x6;-><init>(Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lads_mobile_sdk/w6;->a:Ljava/lang/Object;

    iput-object v5, v0, Lads_mobile_sdk/w6;->b:Lkotlinx/coroutines/sync/Mutex;

    iput v3, v0, Lads_mobile_sdk/w6;->e:I

    invoke-interface {v2, v4, v0}, Landroidx/datastore/core/DataStore;->updateData(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0
    :try_end_6a
    .catchall {:try_start_59 .. :try_end_6a} :catchall_78

    if-ne v0, v1, :cond_6d

    :goto_6c
    return-object v1

    :cond_6d
    move-object v6, v0

    move-object v0, p1

    move-object p1, v6

    .line 1465
    :goto_70
    :try_start_70
    check-cast p1, Lads_mobile_sdk/u7;
    :try_end_72
    .catchall {:try_start_70 .. :try_end_72} :catchall_31

    .line 1690
    invoke-interface {v0, v5}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    .line 1691
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    :catchall_78
    move-exception v0

    move-object v6, v0

    move-object v0, p1

    move-object p1, v6

    .line 1915
    :goto_7c
    invoke-interface {v0, v5}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw p1
.end method

.method public final c(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 9

    .line 1668
    instance-of v0, p1, Lads_mobile_sdk/a7;

    if-eqz v0, :cond_13

    move-object v0, p1

    check-cast v0, Lads_mobile_sdk/a7;

    iget v1, v0, Lads_mobile_sdk/a7;->f:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/a7;->f:I

    goto :goto_18

    :cond_13
    new-instance v0, Lads_mobile_sdk/a7;

    invoke-direct {v0, p0, p1}, Lads_mobile_sdk/a7;-><init>(Lads_mobile_sdk/q7;Lkotlin/coroutines/Continuation;)V

    :goto_18
    iget-object p1, v0, Lads_mobile_sdk/a7;->d:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 1968
    iget v2, v0, Lads_mobile_sdk/a7;->f:I

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v2, :cond_5a

    if-eq v2, v5, :cond_4e

    if-eq v2, v4, :cond_40

    if-ne v2, v3, :cond_38

    iget-object v0, v0, Lads_mobile_sdk/a7;->a:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/sync/Mutex;

    :try_start_30
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_33
    .catchall {:try_start_30 .. :try_end_33} :catchall_35

    goto/16 :goto_ac

    :catchall_35
    move-exception p1

    goto/16 :goto_b6

    :cond_38
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1969
    :cond_40
    iget-object v2, v0, Lads_mobile_sdk/a7;->c:Lkotlinx/coroutines/sync/Mutex;

    iget-object v4, v0, Lads_mobile_sdk/a7;->b:Ljava/lang/Object;

    check-cast v4, Lads_mobile_sdk/o6;

    iget-object v5, v0, Lads_mobile_sdk/a7;->a:Ljava/lang/Object;

    check-cast v5, Lads_mobile_sdk/q7;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_95

    :cond_4e
    iget-object v2, v0, Lads_mobile_sdk/a7;->b:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/sync/Mutex;

    iget-object v5, v0, Lads_mobile_sdk/a7;->a:Ljava/lang/Object;

    check-cast v5, Lads_mobile_sdk/q7;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_6d

    :cond_5a
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1970
    iget-object v2, p0, Lads_mobile_sdk/q7;->f:Lkotlinx/coroutines/sync/Mutex;

    .line 2199
    iput-object p0, v0, Lads_mobile_sdk/a7;->a:Ljava/lang/Object;

    iput-object v2, v0, Lads_mobile_sdk/a7;->b:Ljava/lang/Object;

    iput v5, v0, Lads_mobile_sdk/a7;->f:I

    invoke-interface {v2, v6, v0}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_6c

    goto :goto_aa

    :cond_6c
    move-object v5, p0

    .line 2200
    :goto_6d
    :try_start_6d
    iget-object p1, v5, Lads_mobile_sdk/q7;->j:Lads_mobile_sdk/n6;

    if-nez p1, :cond_7a

    const-string p1, "adQualityDataBuilder"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v6

    goto :goto_7a

    :catchall_78
    move-exception p1

    goto :goto_ba

    .line 2201
    :cond_7a
    :goto_7a
    invoke-virtual {p1}, Lads_mobile_sdk/vz0$a;->b()Lads_mobile_sdk/vz0;

    move-result-object p1

    check-cast p1, Lads_mobile_sdk/o6;
    :try_end_80
    .catchall {:try_start_6d .. :try_end_80} :catchall_78

    .line 2434
    invoke-interface {v2, v6}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    .line 2435
    iget-object v2, v5, Lads_mobile_sdk/q7;->h:Lkotlinx/coroutines/sync/Mutex;

    .line 2674
    iput-object v5, v0, Lads_mobile_sdk/a7;->a:Ljava/lang/Object;

    iput-object p1, v0, Lads_mobile_sdk/a7;->b:Ljava/lang/Object;

    iput-object v2, v0, Lads_mobile_sdk/a7;->c:Lkotlinx/coroutines/sync/Mutex;

    iput v4, v0, Lads_mobile_sdk/a7;->f:I

    invoke-interface {v2, v6, v0}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v1, :cond_94

    goto :goto_aa

    :cond_94
    move-object v4, p1

    .line 2675
    :goto_95
    :try_start_95
    iget-object p1, v5, Lads_mobile_sdk/q7;->l:Landroidx/datastore/core/DataStore;

    new-instance v5, Lads_mobile_sdk/b7;

    invoke-direct {v5, v4, v6}, Lads_mobile_sdk/b7;-><init>(Lads_mobile_sdk/o6;Lkotlin/coroutines/Continuation;)V

    iput-object v2, v0, Lads_mobile_sdk/a7;->a:Ljava/lang/Object;

    iput-object v6, v0, Lads_mobile_sdk/a7;->b:Ljava/lang/Object;

    iput-object v6, v0, Lads_mobile_sdk/a7;->c:Lkotlinx/coroutines/sync/Mutex;

    iput v3, v0, Lads_mobile_sdk/a7;->f:I

    invoke-interface {p1, v5, v0}, Landroidx/datastore/core/DataStore;->updateData(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1
    :try_end_a8
    .catchall {:try_start_95 .. :try_end_a8} :catchall_b4

    if-ne p1, v1, :cond_ab

    :goto_aa
    return-object v1

    :cond_ab
    move-object v0, v2

    .line 2676
    :goto_ac
    :try_start_ac
    check-cast p1, Lads_mobile_sdk/u7;
    :try_end_ae
    .catchall {:try_start_ac .. :try_end_ae} :catchall_35

    .line 2918
    invoke-interface {v0, v6}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    .line 2919
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    :catchall_b4
    move-exception p1

    move-object v0, v2

    .line 3157
    :goto_b6
    invoke-interface {v0, v6}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw p1

    .line 3158
    :goto_ba
    invoke-interface {v2, v6}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw p1
.end method

.method public final d(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 14

    .line 1001
    instance-of v0, p1, Lads_mobile_sdk/o7;

    if-eqz v0, :cond_13

    move-object v0, p1

    check-cast v0, Lads_mobile_sdk/o7;

    iget v1, v0, Lads_mobile_sdk/o7;->f:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/o7;->f:I

    goto :goto_18

    :cond_13
    new-instance v0, Lads_mobile_sdk/o7;

    invoke-direct {v0, p0, p1}, Lads_mobile_sdk/o7;-><init>(Lads_mobile_sdk/q7;Lkotlin/coroutines/Continuation;)V

    :goto_18
    iget-object p1, v0, Lads_mobile_sdk/o7;->d:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 1058
    iget v2, v0, Lads_mobile_sdk/o7;->f:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_38

    if-ne v2, v3, :cond_30

    iget-wide v1, v0, Lads_mobile_sdk/o7;->c:J

    iget-object v5, v0, Lads_mobile_sdk/o7;->b:Lkotlinx/coroutines/sync/Mutex;

    iget-object v0, v0, Lads_mobile_sdk/o7;->a:Lads_mobile_sdk/q7;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_9b

    :cond_30
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_38
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1059
    iget-object p1, p0, Lads_mobile_sdk/q7;->c:Lads_mobile_sdk/d8;

    check-cast p1, Lads_mobile_sdk/e8;

    .line 1060
    iget-object p1, p1, Lads_mobile_sdk/e8;->a:Lads_mobile_sdk/ex0;

    .line 1061
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1063
    const-string v2, "gads:ad_quality_metrics:heartbeat_enabled"

    const-string v5, "key"

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1079
    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sget-object v7, Lads_mobile_sdk/yr;->b:Lads_mobile_sdk/ir;

    invoke-virtual {p1, v2, v6, v7}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_5e

    .line 1080
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 1081
    :cond_5e
    iget-object p1, p0, Lads_mobile_sdk/q7;->c:Lads_mobile_sdk/d8;

    check-cast p1, Lads_mobile_sdk/e8;

    .line 1082
    iget-object p1, p1, Lads_mobile_sdk/e8;->a:Lads_mobile_sdk/ex0;

    .line 1083
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1084
    const-string v2, "gads:ad_quality_metrics:heartbeat_interval_ms"

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v5, 0x2710

    .line 1085
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    sget-object v6, Lads_mobile_sdk/yr;->d:Lads_mobile_sdk/rr;

    invoke-virtual {p1, v2, v5, v6}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long p1, v5, v7

    if-gtz p1, :cond_87

    .line 1086
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 1087
    :cond_87
    iget-object p1, p0, Lads_mobile_sdk/q7;->m:Lkotlinx/coroutines/sync/Mutex;

    .line 1369
    iput-object p0, v0, Lads_mobile_sdk/o7;->a:Lads_mobile_sdk/q7;

    iput-object p1, v0, Lads_mobile_sdk/o7;->b:Lkotlinx/coroutines/sync/Mutex;

    iput-wide v5, v0, Lads_mobile_sdk/o7;->c:J

    iput v3, v0, Lads_mobile_sdk/o7;->f:I

    invoke-interface {p1, v4, v0}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_98

    return-object v1

    :cond_98
    move-object v0, p0

    move-wide v1, v5

    move-object v5, p1

    .line 1370
    :goto_9b
    :try_start_9b
    iget-object p1, v0, Lads_mobile_sdk/q7;->n:Lkotlinx/coroutines/Job;

    if-eqz p1, :cond_a6

    invoke-static {p1, v4, v3, v4}, Lkotlinx/coroutines/Job$DefaultImpls;->cancel$default(Lkotlinx/coroutines/Job;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    goto :goto_a6

    :catchall_a3
    move-exception v0

    move-object p1, v0

    goto :goto_bd

    .line 1371
    :cond_a6
    :goto_a6
    iget-object v6, v0, Lads_mobile_sdk/q7;->d:Lkotlinx/coroutines/CoroutineScope;

    new-instance v9, Lads_mobile_sdk/p7;

    invoke-direct {v9, v1, v2, v0, v4}, Lads_mobile_sdk/p7;-><init>(JLads_mobile_sdk/q7;Lkotlin/coroutines/Continuation;)V

    const/4 v10, 0x3

    const/4 v11, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v6 .. v11}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    move-result-object p1

    iput-object p1, v0, Lads_mobile_sdk/q7;->n:Lkotlinx/coroutines/Job;

    .line 1379
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_b9
    .catchall {:try_start_9b .. :try_end_b9} :catchall_a3

    .line 1655
    invoke-interface {v5, v4}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    return-object p1

    .line 1656
    :goto_bd
    invoke-interface {v5, v4}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw p1
.end method
