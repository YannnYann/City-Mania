###### Class ads_mobile_sdk.xb0 (ads_mobile_sdk.xb0)
.class public final Lads_mobile_sdk/xb0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lads_mobile_sdk/ks1;

.field public final b:Lkotlinx/coroutines/sync/Mutex;

.field public c:Lads_mobile_sdk/qb0;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/ks1;)V
    .registers 4

    .line 1
    const-string v0, "dataStore"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lads_mobile_sdk/xb0;->a:Lads_mobile_sdk/ks1;

    const/4 p1, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 25
    invoke-static {v1, p1, v0}, Lkotlinx/coroutines/sync/MutexKt;->Mutex$default(ZILjava/lang/Object;)Lkotlinx/coroutines/sync/Mutex;

    move-result-object p1

    iput-object p1, p0, Lads_mobile_sdk/xb0;->b:Lkotlinx/coroutines/sync/Mutex;

    return-void
.end method

.method public static a(Lads_mobile_sdk/xb0;Lads_mobile_sdk/qb0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 9

    .line 520
    instance-of v0, p2, Lads_mobile_sdk/vb0;

    if-eqz v0, :cond_13

    move-object v0, p2

    check-cast v0, Lads_mobile_sdk/vb0;

    iget v1, v0, Lads_mobile_sdk/vb0;->f:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/vb0;->f:I

    goto :goto_18

    :cond_13
    new-instance v0, Lads_mobile_sdk/vb0;

    invoke-direct {v0, p0, p2}, Lads_mobile_sdk/vb0;-><init>(Lads_mobile_sdk/xb0;Lkotlin/coroutines/Continuation;)V

    :goto_18
    iget-object p2, v0, Lads_mobile_sdk/vb0;->d:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 558
    iget v2, v0, Lads_mobile_sdk/vb0;->f:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_41

    if-eq v2, v4, :cond_3b

    if-ne v2, v3, :cond_33

    iget-object p0, v0, Lads_mobile_sdk/vb0;->c:Lkotlinx/coroutines/sync/Mutex;

    iget-object p1, v0, Lads_mobile_sdk/vb0;->b:Lads_mobile_sdk/qb0;

    iget-object v0, v0, Lads_mobile_sdk/vb0;->a:Lads_mobile_sdk/xb0;

    :try_start_2f
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_32} :catch_7f

    goto :goto_72

    .line 559
    :cond_33
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3b
    iget-object p0, v0, Lads_mobile_sdk/vb0;->a:Lads_mobile_sdk/xb0;

    :try_start_3d
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_40} :catch_7f

    goto :goto_5c

    .line 560
    :cond_41
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 562
    :try_start_44
    iget-object p2, p0, Lads_mobile_sdk/xb0;->a:Lads_mobile_sdk/ks1;

    invoke-interface {p2}, Lads_mobile_sdk/ks1;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/datastore/core/DataStore;

    new-instance v2, Lads_mobile_sdk/wb0;

    invoke-direct {v2, p1, v5}, Lads_mobile_sdk/wb0;-><init>(Lads_mobile_sdk/qb0;Lkotlin/coroutines/Continuation;)V

    iput-object p0, v0, Lads_mobile_sdk/vb0;->a:Lads_mobile_sdk/xb0;

    iput v4, v0, Lads_mobile_sdk/vb0;->f:I

    invoke-interface {p2, v2, v0}, Landroidx/datastore/core/DataStore;->updateData(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_5c

    goto :goto_6f

    .line 563
    :cond_5c
    :goto_5c
    move-object p1, p2

    check-cast p1, Lads_mobile_sdk/qb0;

    .line 566
    iget-object p2, p0, Lads_mobile_sdk/xb0;->b:Lkotlinx/coroutines/sync/Mutex;

    .line 627
    iput-object p0, v0, Lads_mobile_sdk/vb0;->a:Lads_mobile_sdk/xb0;

    iput-object p1, v0, Lads_mobile_sdk/vb0;->b:Lads_mobile_sdk/qb0;

    iput-object p2, v0, Lads_mobile_sdk/vb0;->c:Lkotlinx/coroutines/sync/Mutex;

    iput v3, v0, Lads_mobile_sdk/vb0;->f:I

    invoke-interface {p2, v5, v0}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0
    :try_end_6d
    .catch Ljava/lang/Exception; {:try_start_44 .. :try_end_6d} :catch_7f

    if-ne v0, v1, :cond_70

    :goto_6f
    return-object v1

    :cond_70
    move-object v0, p0

    move-object p0, p2

    .line 628
    :goto_72
    :try_start_72
    iput-object p1, v0, Lads_mobile_sdk/xb0;->c:Lads_mobile_sdk/qb0;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_76
    .catchall {:try_start_72 .. :try_end_76} :catchall_7a

    .line 693
    :try_start_76
    invoke-interface {p0, v5}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    goto :goto_93

    :catchall_7a
    move-exception p1

    .line 694
    invoke-interface {p0, v5}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw p1
    :try_end_7f
    .catch Ljava/lang/Exception; {:try_start_76 .. :try_end_7f} :catch_7f

    :catch_7f
    move-exception p0

    .line 695
    const-string p1, "exception"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 696
    invoke-static {}, Lads_mobile_sdk/hs3;->a()Lads_mobile_sdk/rr3;

    move-result-object p1

    .line 699
    invoke-virtual {p1}, Lads_mobile_sdk/rr3;->e()Lads_mobile_sdk/uj2;

    move-result-object p2

    const/4 v0, 0x0

    iput-boolean v0, p2, Lads_mobile_sdk/uj2;->m:Z

    .line 700
    invoke-virtual {p1, p0}, Lads_mobile_sdk/rr3;->a(Ljava/lang/Throwable;)V

    .line 701
    :goto_93
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public static synthetic a(Lads_mobile_sdk/xb0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 9

    .line 1
    instance-of v0, p1, Lads_mobile_sdk/sb0;

    if-eqz v0, :cond_13

    move-object v0, p1

    check-cast v0, Lads_mobile_sdk/sb0;

    iget v1, v0, Lads_mobile_sdk/sb0;->f:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/sb0;->f:I

    goto :goto_18

    :cond_13
    new-instance v0, Lads_mobile_sdk/sb0;

    invoke-direct {v0, p0, p1}, Lads_mobile_sdk/sb0;-><init>(Lads_mobile_sdk/xb0;Lkotlin/coroutines/Continuation;)V

    :goto_18
    iget-object p1, v0, Lads_mobile_sdk/sb0;->d:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 29
    iget v2, v0, Lads_mobile_sdk/sb0;->f:I

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v2, :cond_53

    if-eq v2, v5, :cond_47

    if-eq v2, v4, :cond_41

    if-ne v2, v3, :cond_39

    iget-object p0, v0, Lads_mobile_sdk/sb0;->c:Lkotlinx/coroutines/sync/Mutex;

    iget-object v1, v0, Lads_mobile_sdk/sb0;->b:Ljava/lang/Object;

    check-cast v1, Lads_mobile_sdk/qb0;

    iget-object v0, v0, Lads_mobile_sdk/sb0;->a:Lads_mobile_sdk/xb0;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_a2

    :cond_39
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_41
    iget-object p0, v0, Lads_mobile_sdk/sb0;->a:Lads_mobile_sdk/xb0;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_86

    :cond_47
    iget-object p0, v0, Lads_mobile_sdk/sb0;->b:Ljava/lang/Object;

    check-cast p0, Lkotlinx/coroutines/sync/Mutex;

    iget-object v2, v0, Lads_mobile_sdk/sb0;->a:Lads_mobile_sdk/xb0;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object p1, p0

    move-object p0, v2

    goto :goto_65

    :cond_53
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 30
    iget-object p1, p0, Lads_mobile_sdk/xb0;->b:Lkotlinx/coroutines/sync/Mutex;

    .line 81
    iput-object p0, v0, Lads_mobile_sdk/sb0;->a:Lads_mobile_sdk/xb0;

    iput-object p1, v0, Lads_mobile_sdk/sb0;->b:Ljava/lang/Object;

    iput v5, v0, Lads_mobile_sdk/sb0;->f:I

    invoke-interface {p1, v6, v0}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_65

    goto :goto_9e

    .line 82
    :cond_65
    :goto_65
    :try_start_65
    iget-object v2, p0, Lads_mobile_sdk/xb0;->c:Lads_mobile_sdk/qb0;
    :try_end_67
    .catchall {:try_start_65 .. :try_end_67} :catchall_b2

    .line 137
    invoke-interface {p1, v6}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    if-eqz v2, :cond_6d

    return-object v2

    .line 138
    :cond_6d
    iget-object p1, p0, Lads_mobile_sdk/xb0;->a:Lads_mobile_sdk/ks1;

    invoke-interface {p1}, Lads_mobile_sdk/ks1;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/datastore/core/DataStore;

    invoke-interface {p1}, Landroidx/datastore/core/DataStore;->getData()Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    iput-object p0, v0, Lads_mobile_sdk/sb0;->a:Lads_mobile_sdk/xb0;

    iput-object v6, v0, Lads_mobile_sdk/sb0;->b:Ljava/lang/Object;

    iput v4, v0, Lads_mobile_sdk/sb0;->f:I

    invoke-static {p1, v0}, Lkotlinx/coroutines/flow/FlowKt;->firstOrNull(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_86

    goto :goto_9e

    .line 139
    :cond_86
    :goto_86
    check-cast p1, Lads_mobile_sdk/qb0;

    if-nez p1, :cond_8e

    invoke-static {}, Lads_mobile_sdk/qb0;->w()Lads_mobile_sdk/qb0;

    move-result-object p1

    .line 140
    :cond_8e
    iget-object v2, p0, Lads_mobile_sdk/xb0;->b:Lkotlinx/coroutines/sync/Mutex;

    .line 198
    iput-object p0, v0, Lads_mobile_sdk/sb0;->a:Lads_mobile_sdk/xb0;

    iput-object p1, v0, Lads_mobile_sdk/sb0;->b:Ljava/lang/Object;

    iput-object v2, v0, Lads_mobile_sdk/sb0;->c:Lkotlinx/coroutines/sync/Mutex;

    iput v3, v0, Lads_mobile_sdk/sb0;->f:I

    invoke-interface {v2, v6, v0}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_9f

    :goto_9e
    return-object v1

    :cond_9f
    move-object v0, p0

    move-object v1, p1

    move-object p0, v2

    .line 199
    :goto_a2
    :try_start_a2
    iput-object v1, v0, Lads_mobile_sdk/xb0;->c:Lads_mobile_sdk/qb0;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_a6
    .catchall {:try_start_a2 .. :try_end_a6} :catchall_ad

    .line 261
    invoke-interface {p0, v6}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    .line 262
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v1

    :catchall_ad
    move-exception p1

    .line 323
    invoke-interface {p0, v6}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw p1

    :catchall_b2
    move-exception p0

    .line 324
    invoke-interface {p1, v6}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw p0
.end method


# virtual methods
.method public final a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 8

    .line 325
    instance-of v0, p1, Lads_mobile_sdk/tb0;

    if-eqz v0, :cond_13

    move-object v0, p1

    check-cast v0, Lads_mobile_sdk/tb0;

    iget v1, v0, Lads_mobile_sdk/tb0;->f:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/tb0;->f:I

    goto :goto_18

    :cond_13
    new-instance v0, Lads_mobile_sdk/tb0;

    invoke-direct {v0, p0, p1}, Lads_mobile_sdk/tb0;-><init>(Lads_mobile_sdk/xb0;Lkotlin/coroutines/Continuation;)V

    :goto_18
    iget-object p1, v0, Lads_mobile_sdk/tb0;->d:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 372
    iget v2, v0, Lads_mobile_sdk/tb0;->f:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_43

    if-eq v2, v4, :cond_3d

    if-ne v2, v3, :cond_35

    iget-object v1, v0, Lads_mobile_sdk/tb0;->c:Lkotlinx/coroutines/sync/Mutex;

    iget-object v2, v0, Lads_mobile_sdk/tb0;->b:Lads_mobile_sdk/qb0;

    iget-object v0, v0, Lads_mobile_sdk/tb0;->a:Lads_mobile_sdk/xb0;

    :try_start_2f
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_32} :catch_33

    goto :goto_75

    :catch_33
    move-exception p1

    goto :goto_82

    .line 373
    :cond_35
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3d
    iget-object v2, v0, Lads_mobile_sdk/tb0;->a:Lads_mobile_sdk/xb0;

    :try_start_3f
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_3f .. :try_end_42} :catch_33

    goto :goto_5f

    .line 374
    :cond_43
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 376
    :try_start_46
    iget-object p1, p0, Lads_mobile_sdk/xb0;->a:Lads_mobile_sdk/ks1;

    invoke-interface {p1}, Lads_mobile_sdk/ks1;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/datastore/core/DataStore;

    new-instance v2, Lads_mobile_sdk/ub0;

    invoke-direct {v2, v5}, Lads_mobile_sdk/ub0;-><init>(Lkotlin/coroutines/Continuation;)V

    iput-object p0, v0, Lads_mobile_sdk/tb0;->a:Lads_mobile_sdk/xb0;

    iput v4, v0, Lads_mobile_sdk/tb0;->f:I

    invoke-interface {p1, v2, v0}, Landroidx/datastore/core/DataStore;->updateData(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_5e

    goto :goto_71

    :cond_5e
    move-object v2, p0

    .line 377
    :goto_5f
    check-cast p1, Lads_mobile_sdk/qb0;

    .line 380
    iget-object v4, v2, Lads_mobile_sdk/xb0;->b:Lkotlinx/coroutines/sync/Mutex;

    .line 443
    iput-object v2, v0, Lads_mobile_sdk/tb0;->a:Lads_mobile_sdk/xb0;

    iput-object p1, v0, Lads_mobile_sdk/tb0;->b:Lads_mobile_sdk/qb0;

    iput-object v4, v0, Lads_mobile_sdk/tb0;->c:Lkotlinx/coroutines/sync/Mutex;

    iput v3, v0, Lads_mobile_sdk/tb0;->f:I

    invoke-interface {v4, v5, v0}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0
    :try_end_6f
    .catch Ljava/lang/Exception; {:try_start_46 .. :try_end_6f} :catch_33

    if-ne v0, v1, :cond_72

    :goto_71
    return-object v1

    :cond_72
    move-object v0, v2

    move-object v1, v4

    move-object v2, p1

    .line 444
    :goto_75
    :try_start_75
    iput-object v2, v0, Lads_mobile_sdk/xb0;->c:Lads_mobile_sdk/qb0;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_79
    .catchall {:try_start_75 .. :try_end_79} :catchall_7d

    .line 511
    :try_start_79
    invoke-interface {v1, v5}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    goto :goto_95

    :catchall_7d
    move-exception p1

    .line 512
    invoke-interface {v1, v5}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw p1
    :try_end_82
    .catch Ljava/lang/Exception; {:try_start_79 .. :try_end_82} :catch_33

    .line 513
    :goto_82
    const-string v0, "exception"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 514
    invoke-static {}, Lads_mobile_sdk/hs3;->a()Lads_mobile_sdk/rr3;

    move-result-object v0

    .line 517
    invoke-virtual {v0}, Lads_mobile_sdk/rr3;->e()Lads_mobile_sdk/uj2;

    move-result-object v1

    const/4 v2, 0x0

    iput-boolean v2, v1, Lads_mobile_sdk/uj2;->m:Z

    .line 518
    invoke-virtual {v0, p1}, Lads_mobile_sdk/rr3;->a(Ljava/lang/Throwable;)V

    .line 519
    :goto_95
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
