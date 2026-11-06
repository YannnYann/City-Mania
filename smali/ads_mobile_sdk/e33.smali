###### Class ads_mobile_sdk.e33 (ads_mobile_sdk.e33)
.class public final Lads_mobile_sdk/e33;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/gj1;
.implements Lads_mobile_sdk/g33;


# instance fields
.field public final a:Lkotlinx/coroutines/CoroutineScope;

.field public final b:Lads_mobile_sdk/tx;

.field public final c:Lads_mobile_sdk/ex0;

.field public d:Lads_mobile_sdk/wy2;

.field public final e:Lkotlinx/coroutines/sync/Mutex;

.field public f:Lkotlinx/coroutines/Job;

.field public g:Lkotlinx/coroutines/CompletableJob;

.field public h:Lkotlinx/coroutines/CompletableJob;

.field public i:Z

.field public j:Z

.field public k:Z

.field public l:J

.field public m:J

.field public n:J

.field public o:J

.field public p:J


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/CoroutineScope;Lads_mobile_sdk/tx;Lads_mobile_sdk/ex0;)V
    .registers 6

    .line 1
    const-string v0, "backgroundScope"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clock"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "flags"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 361
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 365
    iput-object p1, p0, Lads_mobile_sdk/e33;->a:Lkotlinx/coroutines/CoroutineScope;

    .line 366
    iput-object p2, p0, Lads_mobile_sdk/e33;->b:Lads_mobile_sdk/tx;

    .line 367
    iput-object p3, p0, Lads_mobile_sdk/e33;->c:Lads_mobile_sdk/ex0;

    const/4 p1, 0x0

    const/4 p2, 0x1

    const/4 v0, 0x0

    .line 371
    invoke-static {p1, p2, v0}, Lkotlinx/coroutines/sync/MutexKt;->Mutex$default(ZILjava/lang/Object;)Lkotlinx/coroutines/sync/Mutex;

    move-result-object p1

    iput-object p1, p0, Lads_mobile_sdk/e33;->e:Lkotlinx/coroutines/sync/Mutex;

    .line 380
    invoke-static {v0, p2, v0}, Lkotlinx/coroutines/JobKt;->Job$default(Lkotlinx/coroutines/Job;ILjava/lang/Object;)Lkotlinx/coroutines/CompletableJob;

    move-result-object p1

    invoke-interface {p1}, Lkotlinx/coroutines/CompletableJob;->complete()Z

    iput-object p1, p0, Lads_mobile_sdk/e33;->g:Lkotlinx/coroutines/CompletableJob;

    .line 388
    invoke-static {v0, p2, v0}, Lkotlinx/coroutines/JobKt;->Job$default(Lkotlinx/coroutines/Job;ILjava/lang/Object;)Lkotlinx/coroutines/CompletableJob;

    move-result-object p1

    invoke-interface {p1}, Lkotlinx/coroutines/CompletableJob;->complete()Z

    iput-object p1, p0, Lads_mobile_sdk/e33;->h:Lkotlinx/coroutines/CompletableJob;

    .line 415
    sget-object p1, Lkotlin/time/Duration;->Companion:Lkotlin/time/Duration$Companion;

    invoke-virtual {p1}, Lkotlin/time/Duration$Companion;->getZERO-UwyO8pc()J

    move-result-wide v0

    iput-wide v0, p0, Lads_mobile_sdk/e33;->l:J

    .line 418
    invoke-virtual {p1}, Lkotlin/time/Duration$Companion;->getZERO-UwyO8pc()J

    move-result-wide v0

    iput-wide v0, p0, Lads_mobile_sdk/e33;->m:J

    .line 421
    invoke-virtual {p1}, Lkotlin/time/Duration$Companion;->getZERO-UwyO8pc()J

    move-result-wide p1

    iput-wide p1, p0, Lads_mobile_sdk/e33;->n:J

    .line 429
    invoke-virtual {p3}, Lads_mobile_sdk/ex0;->B()J

    move-result-wide p1

    iput-wide p1, p0, Lads_mobile_sdk/e33;->o:J

    .line 436
    invoke-virtual {p3}, Lads_mobile_sdk/ex0;->D()J

    move-result-wide p1

    iput-wide p1, p0, Lads_mobile_sdk/e33;->p:J

    return-void
.end method

.method public static final a(JLads_mobile_sdk/e33;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 21

    move-wide/from16 v0, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    .line 1918
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1919
    instance-of v4, v3, Lads_mobile_sdk/a33;

    if-eqz v4, :cond_1c

    move-object v4, v3

    check-cast v4, Lads_mobile_sdk/a33;

    iget v5, v4, Lads_mobile_sdk/a33;->f:I

    const/high16 v6, -0x80000000

    and-int v7, v5, v6

    if-eqz v7, :cond_1c

    sub-int/2addr v5, v6

    iput v5, v4, Lads_mobile_sdk/a33;->f:I

    goto :goto_21

    :cond_1c
    new-instance v4, Lads_mobile_sdk/a33;

    invoke-direct {v4, v2, v3}, Lads_mobile_sdk/a33;-><init>(Lads_mobile_sdk/e33;Lkotlin/coroutines/Continuation;)V

    :goto_21
    iget-object v3, v4, Lads_mobile_sdk/a33;->d:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v5

    .line 2483
    iget v6, v4, Lads_mobile_sdk/a33;->f:I

    const/4 v7, 0x3

    const/4 v8, 0x2

    const/4 v9, 0x1

    const/4 v10, 0x0

    if-eqz v6, :cond_59

    if-eq v6, v9, :cond_4d

    if-eq v6, v8, :cond_42

    if-ne v6, v7, :cond_3a

    invoke-static {v3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_cf

    :cond_3a
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_42
    iget-object v0, v4, Lads_mobile_sdk/a33;->b:Lkotlinx/coroutines/sync/Mutex;

    iget-object v1, v4, Lads_mobile_sdk/a33;->a:Lads_mobile_sdk/e33;

    invoke-static {v3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v2, v1

    :cond_4a
    move-object v1, v0

    goto/16 :goto_bd

    :cond_4d
    iget-wide v0, v4, Lads_mobile_sdk/a33;->c:J

    iget-object v2, v4, Lads_mobile_sdk/a33;->b:Lkotlinx/coroutines/sync/Mutex;

    iget-object v6, v4, Lads_mobile_sdk/a33;->a:Lads_mobile_sdk/e33;

    invoke-static {v3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v3, v2

    move-object v2, v6

    goto :goto_7c

    :cond_59
    invoke-static {v3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 2484
    sget-object v3, Lkotlin/time/Duration;->Companion:Lkotlin/time/Duration$Companion;

    invoke-virtual {v3}, Lkotlin/time/Duration$Companion;->getZERO-UwyO8pc()J

    move-result-wide v11

    invoke-static {v0, v1, v11, v12}, Lkotlin/time/Duration;->compareTo-LRDsOJo(JJ)I

    move-result v3

    if-gtz v3, :cond_6b

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    .line 2486
    :cond_6b
    iget-object v3, v2, Lads_mobile_sdk/e33;->e:Lkotlinx/coroutines/sync/Mutex;

    .line 2678
    iput-object v2, v4, Lads_mobile_sdk/a33;->a:Lads_mobile_sdk/e33;

    iput-object v3, v4, Lads_mobile_sdk/a33;->b:Lkotlinx/coroutines/sync/Mutex;

    iput-wide v0, v4, Lads_mobile_sdk/a33;->c:J

    iput v9, v4, Lads_mobile_sdk/a33;->f:I

    invoke-interface {v3, v10, v4}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v6

    if-ne v6, v5, :cond_7c

    goto :goto_ce

    .line 2679
    :cond_7c
    :goto_7c
    :try_start_7c
    iget-object v6, v2, Lads_mobile_sdk/e33;->h:Lkotlinx/coroutines/CompletableJob;

    invoke-interface {v6}, Lkotlinx/coroutines/CompletableJob;->complete()Z

    .line 2680
    invoke-static {v10, v9, v10}, Lkotlinx/coroutines/JobKt;->Job$default(Lkotlinx/coroutines/Job;ILjava/lang/Object;)Lkotlinx/coroutines/CompletableJob;

    move-result-object v6

    iput-object v6, v2, Lads_mobile_sdk/e33;->h:Lkotlinx/coroutines/CompletableJob;

    .line 2681
    iget-object v11, v2, Lads_mobile_sdk/e33;->a:Lkotlinx/coroutines/CoroutineScope;

    new-instance v6, Lads_mobile_sdk/b33;

    invoke-direct {v6, v0, v1, v2, v10}, Lads_mobile_sdk/b33;-><init>(JLads_mobile_sdk/e33;Lkotlin/coroutines/Continuation;)V

    .line 2682
    sget-object v12, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    .line 2683
    const-string v0, "<this>"

    invoke-static {v11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {v12, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "block"

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2941
    new-instance v14, Lads_mobile_sdk/ws3;

    invoke-direct {v14, v6, v10}, Lads_mobile_sdk/ws3;-><init>(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)V

    const/4 v15, 0x2

    const/16 v16, 0x0

    const/4 v13, 0x0

    invoke-static/range {v11 .. v16}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;
    :try_end_ab
    .catchall {:try_start_7c .. :try_end_ab} :catchall_d7

    .line 2942
    invoke-interface {v3, v10}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    .line 2943
    iget-object v0, v2, Lads_mobile_sdk/e33;->e:Lkotlinx/coroutines/sync/Mutex;

    .line 3138
    iput-object v2, v4, Lads_mobile_sdk/a33;->a:Lads_mobile_sdk/e33;

    iput-object v0, v4, Lads_mobile_sdk/a33;->b:Lkotlinx/coroutines/sync/Mutex;

    iput v8, v4, Lads_mobile_sdk/a33;->f:I

    invoke-interface {v0, v10, v4}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v5, :cond_4a

    goto :goto_ce

    .line 3139
    :goto_bd
    :try_start_bd
    iget-object v0, v2, Lads_mobile_sdk/e33;->h:Lkotlinx/coroutines/CompletableJob;
    :try_end_bf
    .catchall {:try_start_bd .. :try_end_bf} :catchall_d2

    .line 3338
    invoke-interface {v1, v10}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    .line 3339
    iput-object v10, v4, Lads_mobile_sdk/a33;->a:Lads_mobile_sdk/e33;

    iput-object v10, v4, Lads_mobile_sdk/a33;->b:Lkotlinx/coroutines/sync/Mutex;

    iput v7, v4, Lads_mobile_sdk/a33;->f:I

    invoke-interface {v0, v4}, Lkotlinx/coroutines/Job;->join(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v5, :cond_cf

    :goto_ce
    return-object v5

    .line 3340
    :cond_cf
    :goto_cf
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    :catchall_d2
    move-exception v0

    .line 3538
    invoke-interface {v1, v10}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw v0

    :catchall_d7
    move-exception v0

    .line 3539
    invoke-interface {v3, v10}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw v0
.end method

.method public static final a(Lads_mobile_sdk/e33;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 14

    .line 361
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 362
    instance-of v0, p1, Lads_mobile_sdk/k23;

    if-eqz v0, :cond_16

    move-object v0, p1

    check-cast v0, Lads_mobile_sdk/k23;

    iget v1, v0, Lads_mobile_sdk/k23;->g:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_16

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/k23;->g:I

    goto :goto_1b

    :cond_16
    new-instance v0, Lads_mobile_sdk/k23;

    invoke-direct {v0, p0, p1}, Lads_mobile_sdk/k23;-><init>(Lads_mobile_sdk/e33;Lkotlin/coroutines/Continuation;)V

    :goto_1b
    iget-object p1, v0, Lads_mobile_sdk/k23;->e:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 862
    iget v2, v0, Lads_mobile_sdk/k23;->g:I

    const-string v3, "adLoader"

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    packed-switch v2, :pswitch_data_1aa

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_33
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_1a6

    :pswitch_38
    iget-object p0, v0, Lads_mobile_sdk/k23;->a:Lads_mobile_sdk/e33;

    :try_start_3a
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_3d
    .catch Lads_mobile_sdk/dz2; {:try_start_3a .. :try_end_3d} :catch_42
    .catch Ljava/util/concurrent/CancellationException; {:try_start_3a .. :try_end_3d} :catch_3f

    goto/16 :goto_9d

    :catch_3f
    move-exception p1

    goto/16 :goto_16e

    :catch_42
    move-exception p1

    goto/16 :goto_18a

    :pswitch_45
    iget-object p0, v0, Lads_mobile_sdk/k23;->b:Ljava/lang/Object;

    check-cast p0, Lads_mobile_sdk/v01;

    iget-object v2, v0, Lads_mobile_sdk/k23;->a:Lads_mobile_sdk/e33;

    :try_start_4b
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_4e
    .catch Lads_mobile_sdk/dz2; {:try_start_4b .. :try_end_4e} :catch_54
    .catch Ljava/util/concurrent/CancellationException; {:try_start_4b .. :try_end_4e} :catch_52

    move-object v7, p0

    move-object p0, v2

    goto/16 :goto_154

    :catch_52
    move-exception p0

    goto :goto_94

    :catch_54
    move-exception p0

    goto :goto_97

    :pswitch_56
    iget-object p0, v0, Lads_mobile_sdk/k23;->d:Lkotlinx/coroutines/sync/Mutex;

    iget-object v2, v0, Lads_mobile_sdk/k23;->c:Lcom/google/android/libraries/ads/mobile/sdk/common/ResponseInfo;

    iget-object v7, v0, Lads_mobile_sdk/k23;->b:Ljava/lang/Object;

    check-cast v7, Lads_mobile_sdk/v01;

    iget-object v8, v0, Lads_mobile_sdk/k23;->a:Lads_mobile_sdk/e33;

    :try_start_60
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_63
    .catch Lads_mobile_sdk/dz2; {:try_start_60 .. :try_end_63} :catch_68
    .catch Ljava/util/concurrent/CancellationException; {:try_start_60 .. :try_end_63} :catch_65

    goto/16 :goto_132

    :catch_65
    move-exception p0

    goto/16 :goto_170

    :catch_68
    move-exception p0

    goto/16 :goto_18c

    :pswitch_6b
    iget-object p0, v0, Lads_mobile_sdk/k23;->c:Lcom/google/android/libraries/ads/mobile/sdk/common/ResponseInfo;

    iget-object v2, v0, Lads_mobile_sdk/k23;->b:Ljava/lang/Object;

    check-cast v2, Lads_mobile_sdk/v01;

    iget-object v8, v0, Lads_mobile_sdk/k23;->a:Lads_mobile_sdk/e33;

    :try_start_73
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_76
    .catch Lads_mobile_sdk/dz2; {:try_start_73 .. :try_end_76} :catch_68
    .catch Ljava/util/concurrent/CancellationException; {:try_start_73 .. :try_end_76} :catch_65

    move-object v11, v2

    move-object v2, p0

    move-object p0, v11

    goto/16 :goto_11c

    :pswitch_7b
    iget-object p0, v0, Lads_mobile_sdk/k23;->a:Lads_mobile_sdk/e33;

    :try_start_7d
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_80
    .catch Lads_mobile_sdk/dz2; {:try_start_7d .. :try_end_80} :catch_42
    .catch Ljava/util/concurrent/CancellationException; {:try_start_7d .. :try_end_80} :catch_3f

    goto/16 :goto_f6

    :pswitch_82
    iget-object p0, v0, Lads_mobile_sdk/k23;->a:Lads_mobile_sdk/e33;

    :try_start_84
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_87
    .catch Lads_mobile_sdk/dz2; {:try_start_84 .. :try_end_87} :catch_42
    .catch Ljava/util/concurrent/CancellationException; {:try_start_84 .. :try_end_87} :catch_3f

    goto :goto_da

    :pswitch_88
    iget-object p0, v0, Lads_mobile_sdk/k23;->b:Ljava/lang/Object;

    check-cast p0, Lkotlinx/coroutines/sync/Mutex;

    iget-object v2, v0, Lads_mobile_sdk/k23;->a:Lads_mobile_sdk/e33;

    :try_start_8e
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_91
    .catch Lads_mobile_sdk/dz2; {:try_start_8e .. :try_end_91} :catch_54
    .catch Ljava/util/concurrent/CancellationException; {:try_start_8e .. :try_end_91} :catch_52

    move-object p1, p0

    move-object p0, v2

    goto :goto_ad

    :goto_94
    move-object v8, v2

    goto/16 :goto_170

    :goto_97
    move-object v8, v2

    goto/16 :goto_18c

    :pswitch_9a
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 866
    :cond_9d
    :goto_9d
    :try_start_9d
    iget-object p1, p0, Lads_mobile_sdk/e33;->e:Lkotlinx/coroutines/sync/Mutex;

    .line 1066
    iput-object p0, v0, Lads_mobile_sdk/k23;->a:Lads_mobile_sdk/e33;

    iput-object p1, v0, Lads_mobile_sdk/k23;->b:Ljava/lang/Object;

    iput v5, v0, Lads_mobile_sdk/k23;->g:I

    invoke-interface {p1, v6, v0}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2
    :try_end_a9
    .catch Lads_mobile_sdk/dz2; {:try_start_9d .. :try_end_a9} :catch_42
    .catch Ljava/util/concurrent/CancellationException; {:try_start_9d .. :try_end_a9} :catch_3f

    if-ne v2, v1, :cond_ad

    goto/16 :goto_163

    .line 1067
    :cond_ad
    :goto_ad
    :try_start_ad
    iget-wide v7, p0, Lads_mobile_sdk/e33;->o:J

    sget-object v2, Lkotlin/time/Duration;->Companion:Lkotlin/time/Duration$Companion;

    invoke-virtual {v2}, Lkotlin/time/Duration$Companion;->getZERO-UwyO8pc()J

    move-result-wide v9

    invoke-static {v7, v8, v9, v10}, Lkotlin/time/Duration;->compareTo-LRDsOJo(JJ)I

    move-result v2
    :try_end_b9
    .catchall {:try_start_ad .. :try_end_b9} :catchall_169

    if-gtz v2, :cond_bd

    move v2, v5

    goto :goto_be

    :cond_bd
    move v2, v4

    .line 1271
    :goto_be
    :try_start_be
    invoke-interface {p1, v6}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    if-eqz v2, :cond_c6

    .line 1272
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    .line 1273
    :cond_c6
    new-instance p1, Lads_mobile_sdk/l23;

    invoke-direct {p1, p0, v6}, Lads_mobile_sdk/l23;-><init>(Lads_mobile_sdk/e33;Lkotlin/coroutines/Continuation;)V

    iput-object p0, v0, Lads_mobile_sdk/k23;->a:Lads_mobile_sdk/e33;

    iput-object v6, v0, Lads_mobile_sdk/k23;->b:Ljava/lang/Object;

    const/4 v2, 0x2

    iput v2, v0, Lads_mobile_sdk/k23;->g:I

    invoke-virtual {p0, p1, v0}, Lads_mobile_sdk/e33;->a(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_da

    goto/16 :goto_163

    .line 1275
    :cond_da
    :goto_da
    iget-object p1, p0, Lads_mobile_sdk/e33;->d:Lads_mobile_sdk/wy2;

    if-nez p1, :cond_e2

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v6

    :cond_e2
    iput-object p0, v0, Lads_mobile_sdk/k23;->a:Lads_mobile_sdk/e33;

    const/4 v2, 0x3

    iput v2, v0, Lads_mobile_sdk/k23;->g:I

    .line 1276
    iget-object v2, p1, Lads_mobile_sdk/wy2;->p:Lkotlin/coroutines/CoroutineContext;

    .line 1277
    new-instance v7, Lads_mobile_sdk/iy2;

    invoke-direct {v7, p1, v6}, Lads_mobile_sdk/iy2;-><init>(Lads_mobile_sdk/wy2;Lkotlin/coroutines/Continuation;)V

    invoke-static {v2, v7, v0}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_f6

    goto/16 :goto_163

    .line 1278
    :cond_f6
    :goto_f6
    check-cast p1, Lkotlin/Pair;

    invoke-virtual {p1}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lads_mobile_sdk/v01;

    invoke-virtual {p1}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/libraries/ads/mobile/sdk/common/ResponseInfo;

    .line 1279
    new-instance v7, Lads_mobile_sdk/m23;

    invoke-direct {v7, p0, v6}, Lads_mobile_sdk/m23;-><init>(Lads_mobile_sdk/e33;Lkotlin/coroutines/Continuation;)V

    iput-object p0, v0, Lads_mobile_sdk/k23;->a:Lads_mobile_sdk/e33;

    iput-object v2, v0, Lads_mobile_sdk/k23;->b:Ljava/lang/Object;

    iput-object p1, v0, Lads_mobile_sdk/k23;->c:Lcom/google/android/libraries/ads/mobile/sdk/common/ResponseInfo;

    const/4 v8, 0x4

    iput v8, v0, Lads_mobile_sdk/k23;->g:I

    invoke-virtual {p0, v7, v0}, Lads_mobile_sdk/e33;->a(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v7
    :try_end_116
    .catch Lads_mobile_sdk/dz2; {:try_start_be .. :try_end_116} :catch_42
    .catch Ljava/util/concurrent/CancellationException; {:try_start_be .. :try_end_116} :catch_3f

    if-ne v7, v1, :cond_119

    goto :goto_163

    :cond_119
    move-object v8, p0

    move-object p0, v2

    move-object v2, p1

    .line 1281
    :goto_11c
    :try_start_11c
    iget-object p1, v8, Lads_mobile_sdk/e33;->e:Lkotlinx/coroutines/sync/Mutex;

    .line 1486
    iput-object v8, v0, Lads_mobile_sdk/k23;->a:Lads_mobile_sdk/e33;

    iput-object p0, v0, Lads_mobile_sdk/k23;->b:Ljava/lang/Object;

    iput-object v2, v0, Lads_mobile_sdk/k23;->c:Lcom/google/android/libraries/ads/mobile/sdk/common/ResponseInfo;

    iput-object p1, v0, Lads_mobile_sdk/k23;->d:Lkotlinx/coroutines/sync/Mutex;

    const/4 v7, 0x5

    iput v7, v0, Lads_mobile_sdk/k23;->g:I

    invoke-interface {p1, v6, v0}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v7
    :try_end_12d
    .catch Lads_mobile_sdk/dz2; {:try_start_11c .. :try_end_12d} :catch_68
    .catch Ljava/util/concurrent/CancellationException; {:try_start_11c .. :try_end_12d} :catch_65

    if-ne v7, v1, :cond_130

    goto :goto_163

    :cond_130
    move-object v7, p0

    move-object p0, p1

    .line 1487
    :goto_132
    :try_start_132
    iput-boolean v4, v8, Lads_mobile_sdk/e33;->k:Z

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_136
    .catchall {:try_start_132 .. :try_end_136} :catchall_164

    .line 1696
    :try_start_136
    invoke-interface {p0, v6}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    .line 1697
    iget-object p0, v8, Lads_mobile_sdk/e33;->d:Lads_mobile_sdk/wy2;

    if-nez p0, :cond_141

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p0, v6

    :cond_141
    iput-object v8, v0, Lads_mobile_sdk/k23;->a:Lads_mobile_sdk/e33;

    iput-object v7, v0, Lads_mobile_sdk/k23;->b:Ljava/lang/Object;

    iput-object v6, v0, Lads_mobile_sdk/k23;->c:Lcom/google/android/libraries/ads/mobile/sdk/common/ResponseInfo;

    iput-object v6, v0, Lads_mobile_sdk/k23;->d:Lkotlinx/coroutines/sync/Mutex;

    const/4 p1, 0x6

    iput p1, v0, Lads_mobile_sdk/k23;->g:I

    invoke-virtual {p0, v7, v2, v0}, Lads_mobile_sdk/wy2;->a(Lads_mobile_sdk/v01;Lcom/google/android/libraries/ads/mobile/sdk/common/ResponseInfo;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0
    :try_end_150
    .catch Lads_mobile_sdk/dz2; {:try_start_136 .. :try_end_150} :catch_68
    .catch Ljava/util/concurrent/CancellationException; {:try_start_136 .. :try_end_150} :catch_65

    if-ne p0, v1, :cond_153

    goto :goto_163

    :cond_153
    move-object p0, v8

    .line 1698
    :goto_154
    :try_start_154
    instance-of p1, v7, Lads_mobile_sdk/q01;

    iput-object p0, v0, Lads_mobile_sdk/k23;->a:Lads_mobile_sdk/e33;

    iput-object v6, v0, Lads_mobile_sdk/k23;->b:Ljava/lang/Object;

    const/4 v2, 0x7

    iput v2, v0, Lads_mobile_sdk/k23;->g:I

    invoke-virtual {p0, p1, v0}, Lads_mobile_sdk/e33;->d(ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1
    :try_end_161
    .catch Lads_mobile_sdk/dz2; {:try_start_154 .. :try_end_161} :catch_42
    .catch Ljava/util/concurrent/CancellationException; {:try_start_154 .. :try_end_161} :catch_3f

    if-ne p1, v1, :cond_9d

    :goto_163
    return-object v1

    :catchall_164
    move-exception p1

    .line 1905
    :try_start_165
    invoke-interface {p0, v6}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw p1
    :try_end_169
    .catch Lads_mobile_sdk/dz2; {:try_start_165 .. :try_end_169} :catch_68
    .catch Ljava/util/concurrent/CancellationException; {:try_start_165 .. :try_end_169} :catch_65

    :catchall_169
    move-exception v2

    .line 1906
    :try_start_16a
    invoke-interface {p1, v6}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw v2
    :try_end_16e
    .catch Lads_mobile_sdk/dz2; {:try_start_16a .. :try_end_16e} :catch_42
    .catch Ljava/util/concurrent/CancellationException; {:try_start_16a .. :try_end_16e} :catch_3f

    :goto_16e
    move-object v8, p0

    move-object p0, p1

    .line 1907
    :goto_170
    sget-object p1, Lkotlinx/coroutines/NonCancellable;->INSTANCE:Lkotlinx/coroutines/NonCancellable;

    new-instance v2, Lads_mobile_sdk/o23;

    invoke-direct {v2, v8, p0, v6}, Lads_mobile_sdk/o23;-><init>(Lads_mobile_sdk/e33;Ljava/util/concurrent/CancellationException;Lkotlin/coroutines/Continuation;)V

    iput-object v6, v0, Lads_mobile_sdk/k23;->a:Lads_mobile_sdk/e33;

    iput-object v6, v0, Lads_mobile_sdk/k23;->b:Ljava/lang/Object;

    iput-object v6, v0, Lads_mobile_sdk/k23;->c:Lcom/google/android/libraries/ads/mobile/sdk/common/ResponseInfo;

    iput-object v6, v0, Lads_mobile_sdk/k23;->d:Lkotlinx/coroutines/sync/Mutex;

    const/16 p0, 0x9

    iput p0, v0, Lads_mobile_sdk/k23;->g:I

    invoke-static {p1, v2, v0}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_1a6

    goto :goto_1a8

    :goto_18a
    move-object v8, p0

    move-object p0, p1

    .line 1908
    :goto_18c
    sget-object p1, Lkotlinx/coroutines/NonCancellable;->INSTANCE:Lkotlinx/coroutines/NonCancellable;

    new-instance v2, Lads_mobile_sdk/n23;

    invoke-direct {v2, v8, p0, v6}, Lads_mobile_sdk/n23;-><init>(Lads_mobile_sdk/e33;Lads_mobile_sdk/dz2;Lkotlin/coroutines/Continuation;)V

    iput-object v6, v0, Lads_mobile_sdk/k23;->a:Lads_mobile_sdk/e33;

    iput-object v6, v0, Lads_mobile_sdk/k23;->b:Ljava/lang/Object;

    iput-object v6, v0, Lads_mobile_sdk/k23;->c:Lcom/google/android/libraries/ads/mobile/sdk/common/ResponseInfo;

    iput-object v6, v0, Lads_mobile_sdk/k23;->d:Lkotlinx/coroutines/sync/Mutex;

    const/16 p0, 0x8

    iput p0, v0, Lads_mobile_sdk/k23;->g:I

    invoke-static {p1, v2, v0}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_1a6

    goto :goto_1a8

    .line 1916
    :cond_1a6
    :goto_1a6
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :goto_1a8
    return-object v1

    nop

    :pswitch_data_1aa
    .packed-switch 0x0
        :pswitch_9a
        :pswitch_88
        :pswitch_82
        :pswitch_7b
        :pswitch_6b
        :pswitch_56
        :pswitch_45
        :pswitch_38
        :pswitch_33
        :pswitch_33
    .end packed-switch
.end method


# virtual methods
.method public final a(Lads_mobile_sdk/d33;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 12

    .line 5537
    instance-of v0, p2, Lads_mobile_sdk/t23;

    if-eqz v0, :cond_13

    move-object v0, p2

    check-cast v0, Lads_mobile_sdk/t23;

    iget v1, v0, Lads_mobile_sdk/t23;->f:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/t23;->f:I

    goto :goto_18

    :cond_13
    new-instance v0, Lads_mobile_sdk/t23;

    invoke-direct {v0, p0, p2}, Lads_mobile_sdk/t23;-><init>(Lads_mobile_sdk/e33;Lkotlin/coroutines/Continuation;)V

    :goto_18
    iget-object p2, v0, Lads_mobile_sdk/t23;->d:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 5538
    iget v2, v0, Lads_mobile_sdk/t23;->f:I

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v2, :cond_59

    if-eq v2, v6, :cond_4d

    if-eq v2, v5, :cond_45

    if-eq v2, v4, :cond_3c

    if-ne v2, v3, :cond_34

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_ad

    :cond_34
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3c
    iget-object p1, v0, Lads_mobile_sdk/t23;->b:Lkotlin/jvm/functions/Function1;

    iget-object v2, v0, Lads_mobile_sdk/t23;->a:Lads_mobile_sdk/e33;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    :cond_43
    move-object v8, v2

    goto :goto_92

    :cond_45
    iget-object p1, v0, Lads_mobile_sdk/t23;->b:Lkotlin/jvm/functions/Function1;

    iget-object v2, v0, Lads_mobile_sdk/t23;->a:Lads_mobile_sdk/e33;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_83

    :cond_4d
    iget-object p1, v0, Lads_mobile_sdk/t23;->c:Lkotlinx/coroutines/sync/Mutex;

    iget-object v2, v0, Lads_mobile_sdk/t23;->b:Lkotlin/jvm/functions/Function1;

    iget-object v8, v0, Lads_mobile_sdk/t23;->a:Lads_mobile_sdk/e33;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object p2, p1

    move-object p1, v2

    goto :goto_6e

    :cond_59
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v8, p0

    .line 5540
    :goto_5d
    iget-object p2, v8, Lads_mobile_sdk/e33;->e:Lkotlinx/coroutines/sync/Mutex;

    .line 5740
    iput-object v8, v0, Lads_mobile_sdk/t23;->a:Lads_mobile_sdk/e33;

    iput-object p1, v0, Lads_mobile_sdk/t23;->b:Lkotlin/jvm/functions/Function1;

    iput-object p2, v0, Lads_mobile_sdk/t23;->c:Lkotlinx/coroutines/sync/Mutex;

    iput v6, v0, Lads_mobile_sdk/t23;->f:I

    invoke-interface {p2, v7, v0}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_6e

    goto :goto_ac

    .line 5741
    :cond_6e
    :goto_6e
    :try_start_6e
    iget-object v2, v8, Lads_mobile_sdk/e33;->g:Lkotlinx/coroutines/CompletableJob;
    :try_end_70
    .catchall {:try_start_6e .. :try_end_70} :catchall_be

    .line 5945
    invoke-interface {p2, v7}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    .line 5946
    iput-object v8, v0, Lads_mobile_sdk/t23;->a:Lads_mobile_sdk/e33;

    iput-object p1, v0, Lads_mobile_sdk/t23;->b:Lkotlin/jvm/functions/Function1;

    iput-object v7, v0, Lads_mobile_sdk/t23;->c:Lkotlinx/coroutines/sync/Mutex;

    iput v5, v0, Lads_mobile_sdk/t23;->f:I

    invoke-interface {v2, v0}, Lkotlinx/coroutines/Job;->join(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_82

    goto :goto_ac

    :cond_82
    move-object v2, v8

    .line 5950
    :goto_83
    iget-object p2, v2, Lads_mobile_sdk/e33;->e:Lkotlinx/coroutines/sync/Mutex;

    iput-object v2, v0, Lads_mobile_sdk/t23;->a:Lads_mobile_sdk/e33;

    iput-object p1, v0, Lads_mobile_sdk/t23;->b:Lkotlin/jvm/functions/Function1;

    iput v4, v0, Lads_mobile_sdk/t23;->f:I

    invoke-static {p2, v7, v0, v6, v7}, Lkotlinx/coroutines/sync/Mutex$DefaultImpls;->lock$default(Lkotlinx/coroutines/sync/Mutex;Ljava/lang/Object;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_43

    goto :goto_ac

    .line 5952
    :goto_92
    :try_start_92
    iget-boolean p2, v8, Lads_mobile_sdk/e33;->i:Z

    if-nez p2, :cond_b2

    iget-boolean p2, v8, Lads_mobile_sdk/e33;->j:Z
    :try_end_98
    .catchall {:try_start_92 .. :try_end_98} :catchall_b0

    if-eqz p2, :cond_9b

    goto :goto_b2

    .line 5954
    :cond_9b
    iget-object p2, v8, Lads_mobile_sdk/e33;->e:Lkotlinx/coroutines/sync/Mutex;

    invoke-static {p2, v7, v6, v7}, Lkotlinx/coroutines/sync/Mutex$DefaultImpls;->unlock$default(Lkotlinx/coroutines/sync/Mutex;Ljava/lang/Object;ILjava/lang/Object;)V

    .line 5956
    iput-object v7, v0, Lads_mobile_sdk/t23;->a:Lads_mobile_sdk/e33;

    iput-object v7, v0, Lads_mobile_sdk/t23;->b:Lkotlin/jvm/functions/Function1;

    iput v3, v0, Lads_mobile_sdk/t23;->f:I

    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_ad

    :goto_ac
    return-object v1

    .line 5957
    :cond_ad
    :goto_ad
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    :catchall_b0
    move-exception p1

    goto :goto_b8

    .line 5958
    :cond_b2
    :goto_b2
    iget-object p2, v8, Lads_mobile_sdk/e33;->e:Lkotlinx/coroutines/sync/Mutex;

    invoke-static {p2, v7, v6, v7}, Lkotlinx/coroutines/sync/Mutex$DefaultImpls;->unlock$default(Lkotlinx/coroutines/sync/Mutex;Ljava/lang/Object;ILjava/lang/Object;)V

    goto :goto_5d

    :goto_b8
    iget-object p2, v8, Lads_mobile_sdk/e33;->e:Lkotlinx/coroutines/sync/Mutex;

    invoke-static {p2, v7, v6, v7}, Lkotlinx/coroutines/sync/Mutex$DefaultImpls;->unlock$default(Lkotlinx/coroutines/sync/Mutex;Ljava/lang/Object;ILjava/lang/Object;)V

    throw p1

    :catchall_be
    move-exception p1

    .line 6154
    invoke-interface {p2, v7}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw p1
.end method

.method public final a(Lads_mobile_sdk/ec3;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 8

    .line 3540
    instance-of v0, p2, Lads_mobile_sdk/p23;

    if-eqz v0, :cond_13

    move-object v0, p2

    check-cast v0, Lads_mobile_sdk/p23;

    iget v1, v0, Lads_mobile_sdk/p23;->f:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/p23;->f:I

    goto :goto_18

    :cond_13
    new-instance v0, Lads_mobile_sdk/p23;

    invoke-direct {v0, p0, p2}, Lads_mobile_sdk/p23;-><init>(Lads_mobile_sdk/e33;Lkotlin/coroutines/Continuation;)V

    :goto_18
    iget-object p2, v0, Lads_mobile_sdk/p23;->d:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 4188
    iget v2, v0, Lads_mobile_sdk/p23;->f:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_3a

    if-ne v2, v3, :cond_32

    iget-object p1, v0, Lads_mobile_sdk/p23;->c:Lkotlinx/coroutines/sync/Mutex;

    iget-object v1, v0, Lads_mobile_sdk/p23;->b:Lads_mobile_sdk/ec3;

    iget-object v0, v0, Lads_mobile_sdk/p23;->a:Lads_mobile_sdk/e33;

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

    .line 4189
    iget-object p2, p0, Lads_mobile_sdk/e33;->e:Lkotlinx/coroutines/sync/Mutex;

    .line 4365
    iput-object p0, v0, Lads_mobile_sdk/p23;->a:Lads_mobile_sdk/e33;

    iput-object p1, v0, Lads_mobile_sdk/p23;->b:Lads_mobile_sdk/ec3;

    iput-object p2, v0, Lads_mobile_sdk/p23;->c:Lkotlinx/coroutines/sync/Mutex;

    iput v3, v0, Lads_mobile_sdk/p23;->f:I

    invoke-interface {p2, v4, v0}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_4e

    return-object v1

    :cond_4e
    move-object v0, p0

    .line 4366
    :goto_4f
    :try_start_4f
    iget-object p1, p1, Lads_mobile_sdk/ec3;->b:Lads_mobile_sdk/ac3;

    iget-object p1, p1, Lads_mobile_sdk/ac3;->b:Lads_mobile_sdk/zy;

    .line 4367
    iget-wide v1, p1, Lads_mobile_sdk/zy;->o:J

    .line 4368
    iput-wide v1, v0, Lads_mobile_sdk/e33;->p:J

    .line 4369
    iget-wide v1, p1, Lads_mobile_sdk/zy;->n:J

    .line 4370
    iput-wide v1, v0, Lads_mobile_sdk/e33;->o:J

    .line 4371
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_5d
    .catchall {:try_start_4f .. :try_end_5d} :catchall_61

    .line 4546
    invoke-interface {p2, v4}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    return-object p1

    :catchall_61
    move-exception p1

    .line 4547
    invoke-interface {p2, v4}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw p1
.end method

.method public final a(Lads_mobile_sdk/wy2;Lkotlinx/coroutines/flow/SharedFlow;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 23

    move-object/from16 v1, p0

    move-object/from16 v0, p3

    .line 6155
    instance-of v2, v0, Lads_mobile_sdk/u23;

    if-eqz v2, :cond_17

    move-object v2, v0

    check-cast v2, Lads_mobile_sdk/u23;

    iget v3, v2, Lads_mobile_sdk/u23;->f:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_17

    sub-int/2addr v3, v4

    iput v3, v2, Lads_mobile_sdk/u23;->f:I

    goto :goto_1c

    :cond_17
    new-instance v2, Lads_mobile_sdk/u23;

    invoke-direct {v2, v1, v0}, Lads_mobile_sdk/u23;-><init>(Lads_mobile_sdk/e33;Lkotlin/coroutines/Continuation;)V

    :goto_1c
    iget-object v0, v2, Lads_mobile_sdk/u23;->d:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v3

    .line 6593
    iget v4, v2, Lads_mobile_sdk/u23;->f:I

    const-string v5, "block"

    const-string v6, "context"

    const-string v7, "<this>"

    const/4 v8, 0x3

    const/4 v9, 0x2

    const/4 v10, 0x1

    const/4 v11, 0x0

    if-eqz v4, :cond_61

    if-eq v4, v10, :cond_58

    if-eq v4, v9, :cond_49

    if-ne v4, v8, :cond_41

    iget-object v3, v2, Lads_mobile_sdk/u23;->c:Lkotlinx/coroutines/sync/Mutex;

    iget-object v4, v2, Lads_mobile_sdk/u23;->b:Lkotlinx/coroutines/flow/SharedFlow;

    iget-object v2, v2, Lads_mobile_sdk/u23;->a:Lads_mobile_sdk/e33;

    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_c7

    :cond_41
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_49
    iget-object v4, v2, Lads_mobile_sdk/u23;->c:Lkotlinx/coroutines/sync/Mutex;

    iget-object v9, v2, Lads_mobile_sdk/u23;->b:Lkotlinx/coroutines/flow/SharedFlow;

    iget-object v10, v2, Lads_mobile_sdk/u23;->a:Lads_mobile_sdk/e33;

    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v18, v9

    move-object v9, v4

    move-object/from16 v4, v18

    goto :goto_8b

    :cond_58
    iget-object v4, v2, Lads_mobile_sdk/u23;->b:Lkotlinx/coroutines/flow/SharedFlow;

    iget-object v10, v2, Lads_mobile_sdk/u23;->a:Lads_mobile_sdk/e33;

    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v0, v4

    goto :goto_78

    :cond_61
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v0, p1

    .line 6597
    iput-object v0, v1, Lads_mobile_sdk/e33;->d:Lads_mobile_sdk/wy2;

    .line 6598
    iput-object v1, v2, Lads_mobile_sdk/u23;->a:Lads_mobile_sdk/e33;

    move-object/from16 v0, p2

    iput-object v0, v2, Lads_mobile_sdk/u23;->b:Lkotlinx/coroutines/flow/SharedFlow;

    iput v10, v2, Lads_mobile_sdk/u23;->f:I

    invoke-virtual {v1, v10, v2}, Lads_mobile_sdk/e33;->d(ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v3, :cond_77

    goto :goto_c4

    :cond_77
    move-object v10, v1

    .line 6599
    :goto_78
    iget-object v4, v10, Lads_mobile_sdk/e33;->e:Lkotlinx/coroutines/sync/Mutex;

    .line 6826
    iput-object v10, v2, Lads_mobile_sdk/u23;->a:Lads_mobile_sdk/e33;

    iput-object v0, v2, Lads_mobile_sdk/u23;->b:Lkotlinx/coroutines/flow/SharedFlow;

    iput-object v4, v2, Lads_mobile_sdk/u23;->c:Lkotlinx/coroutines/sync/Mutex;

    iput v9, v2, Lads_mobile_sdk/u23;->f:I

    invoke-interface {v4, v11, v2}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v9

    if-ne v9, v3, :cond_89

    goto :goto_c4

    :cond_89
    move-object v9, v4

    move-object v4, v0

    .line 6827
    :goto_8b
    :try_start_8b
    iget-object v12, v10, Lads_mobile_sdk/e33;->a:Lkotlinx/coroutines/CoroutineScope;

    new-instance v0, Lads_mobile_sdk/v23;

    invoke-direct {v0, v10, v11}, Lads_mobile_sdk/v23;-><init>(Lads_mobile_sdk/e33;Lkotlin/coroutines/Continuation;)V

    .line 6828
    sget-object v13, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    .line 6829
    invoke-static {v12, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v13, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7087
    new-instance v15, Lads_mobile_sdk/ws3;

    invoke-direct {v15, v0, v11}, Lads_mobile_sdk/ws3;-><init>(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)V

    const/16 v16, 0x2

    const/16 v17, 0x0

    const/4 v14, 0x0

    invoke-static/range {v12 .. v17}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    move-result-object v0

    .line 7088
    iput-object v0, v10, Lads_mobile_sdk/e33;->f:Lkotlinx/coroutines/Job;

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_af
    .catchall {:try_start_8b .. :try_end_af} :catchall_101

    .line 7319
    invoke-interface {v9, v11}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    if-eqz v4, :cond_fe

    .line 7320
    iget-object v0, v10, Lads_mobile_sdk/e33;->e:Lkotlinx/coroutines/sync/Mutex;

    .line 7555
    iput-object v10, v2, Lads_mobile_sdk/u23;->a:Lads_mobile_sdk/e33;

    iput-object v4, v2, Lads_mobile_sdk/u23;->b:Lkotlinx/coroutines/flow/SharedFlow;

    iput-object v0, v2, Lads_mobile_sdk/u23;->c:Lkotlinx/coroutines/sync/Mutex;

    iput v8, v2, Lads_mobile_sdk/u23;->f:I

    invoke-interface {v0, v11, v2}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v3, :cond_c5

    :goto_c4
    return-object v3

    :cond_c5
    move-object v3, v0

    move-object v2, v10

    .line 7556
    :goto_c7
    :try_start_c7
    iget-object v0, v2, Lads_mobile_sdk/e33;->f:Lkotlinx/coroutines/Job;
    :try_end_c9
    .catchall {:try_start_c7 .. :try_end_c9} :catchall_f9

    .line 7795
    invoke-interface {v3, v11}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    if-nez v0, :cond_d1

    .line 7796
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    .line 7797
    :cond_d1
    iget-object v2, v2, Lads_mobile_sdk/e33;->a:Lkotlinx/coroutines/CoroutineScope;

    new-instance v3, Lads_mobile_sdk/y23;

    invoke-direct {v3, v4, v0, v11}, Lads_mobile_sdk/y23;-><init>(Lkotlinx/coroutines/flow/SharedFlow;Lkotlinx/coroutines/Job;Lkotlin/coroutines/Continuation;)V

    .line 7798
    sget-object v4, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    .line 7799
    invoke-static {v2, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8057
    new-instance v5, Lads_mobile_sdk/ws3;

    invoke-direct {v5, v3, v11}, Lads_mobile_sdk/ws3;-><init>(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)V

    const/4 v6, 0x2

    const/4 v7, 0x0

    move-object v3, v4

    const/4 v4, 0x0

    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    move-result-object v2

    .line 8058
    new-instance v3, Lads_mobile_sdk/w23;

    invoke-direct {v3, v2}, Lads_mobile_sdk/w23;-><init>(Lkotlinx/coroutines/Job;)V

    invoke-interface {v0, v3}, Lkotlinx/coroutines/Job;->invokeOnCompletion(Lkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/DisposableHandle;

    goto :goto_fe

    :catchall_f9
    move-exception v0

    .line 8287
    invoke-interface {v3, v11}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw v0

    .line 8288
    :cond_fe
    :goto_fe
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    :catchall_101
    move-exception v0

    .line 8504
    invoke-interface {v9, v11}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw v0
.end method

.method public final a(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 15

    .line 8505
    instance-of v0, p2, Lads_mobile_sdk/c33;

    if-eqz v0, :cond_13

    move-object v0, p2

    check-cast v0, Lads_mobile_sdk/c33;

    iget v1, v0, Lads_mobile_sdk/c33;->f:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/c33;->f:I

    goto :goto_18

    :cond_13
    new-instance v0, Lads_mobile_sdk/c33;

    invoke-direct {v0, p0, p2}, Lads_mobile_sdk/c33;-><init>(Lads_mobile_sdk/e33;Lkotlin/coroutines/Continuation;)V

    :goto_18
    iget-object p2, v0, Lads_mobile_sdk/c33;->d:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 9037
    iget v2, v0, Lads_mobile_sdk/c33;->f:I

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v2, :cond_5c

    if-eq v2, v6, :cond_54

    if-eq v2, v5, :cond_4c

    if-eq v2, v4, :cond_43

    if-ne v2, v3, :cond_3b

    iget-object p1, v0, Lads_mobile_sdk/c33;->c:Lkotlinx/coroutines/sync/Mutex;

    iget-object v2, v0, Lads_mobile_sdk/c33;->b:Lkotlin/jvm/functions/Function1;

    iget-object v8, v0, Lads_mobile_sdk/c33;->a:Lads_mobile_sdk/e33;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    :goto_38
    move-object p2, v8

    goto/16 :goto_bf

    :cond_3b
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_43
    iget-object p1, v0, Lads_mobile_sdk/c33;->b:Lkotlin/jvm/functions/Function1;

    iget-object v2, v0, Lads_mobile_sdk/c33;->a:Lads_mobile_sdk/e33;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    :cond_4a
    move-object v8, v2

    goto :goto_9f

    :cond_4c
    iget-object p1, v0, Lads_mobile_sdk/c33;->b:Lkotlin/jvm/functions/Function1;

    iget-object v2, v0, Lads_mobile_sdk/c33;->a:Lads_mobile_sdk/e33;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_82

    :cond_54
    iget-object p1, v0, Lads_mobile_sdk/c33;->b:Lkotlin/jvm/functions/Function1;

    iget-object v2, v0, Lads_mobile_sdk/c33;->a:Lads_mobile_sdk/e33;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_75

    :cond_5c
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object p2, p0

    .line 9039
    :goto_60
    new-instance v2, Lads_mobile_sdk/d33;

    invoke-direct {v2, p2, v7, p1}, Lads_mobile_sdk/d33;-><init>(Lads_mobile_sdk/e33;Lkotlin/coroutines/Continuation;Lkotlin/jvm/functions/Function1;)V

    iput-object p2, v0, Lads_mobile_sdk/c33;->a:Lads_mobile_sdk/e33;

    iput-object p1, v0, Lads_mobile_sdk/c33;->b:Lkotlin/jvm/functions/Function1;

    iput-object v7, v0, Lads_mobile_sdk/c33;->c:Lkotlinx/coroutines/sync/Mutex;

    iput v6, v0, Lads_mobile_sdk/c33;->f:I

    invoke-virtual {p2, v2, v0}, Lads_mobile_sdk/e33;->a(Lads_mobile_sdk/d33;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_74

    goto :goto_ba

    :cond_74
    move-object v2, p2

    .line 9048
    :goto_75
    iput-object v2, v0, Lads_mobile_sdk/c33;->a:Lads_mobile_sdk/e33;

    iput-object p1, v0, Lads_mobile_sdk/c33;->b:Lkotlin/jvm/functions/Function1;

    iput v5, v0, Lads_mobile_sdk/c33;->f:I

    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_82

    goto :goto_ba

    .line 9049
    :cond_82
    :goto_82
    check-cast p2, Lkotlin/time/Duration;

    invoke-virtual {p2}, Lkotlin/time/Duration;->unbox-impl()J

    move-result-wide v8

    invoke-virtual {v2}, Lads_mobile_sdk/e33;->g()J

    move-result-wide v10

    invoke-static {v8, v9, v10, v11}, Lkotlin/time/Duration;->compareTo-LRDsOJo(JJ)I

    move-result p2

    if-gtz p2, :cond_e3

    .line 9051
    iput-object v2, v0, Lads_mobile_sdk/c33;->a:Lads_mobile_sdk/e33;

    iput-object p1, v0, Lads_mobile_sdk/c33;->b:Lkotlin/jvm/functions/Function1;

    iput v4, v0, Lads_mobile_sdk/c33;->f:I

    invoke-virtual {v2, v0}, Lads_mobile_sdk/e33;->t(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_4a

    goto :goto_ba

    .line 9052
    :goto_9f
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_aa

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 9053
    :cond_aa
    iget-object p2, v8, Lads_mobile_sdk/e33;->e:Lkotlinx/coroutines/sync/Mutex;

    .line 9233
    iput-object v8, v0, Lads_mobile_sdk/c33;->a:Lads_mobile_sdk/e33;

    iput-object p1, v0, Lads_mobile_sdk/c33;->b:Lkotlin/jvm/functions/Function1;

    iput-object p2, v0, Lads_mobile_sdk/c33;->c:Lkotlinx/coroutines/sync/Mutex;

    iput v3, v0, Lads_mobile_sdk/c33;->f:I

    invoke-interface {p2, v7, v0}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_bb

    :goto_ba
    return-object v1

    :cond_bb
    move-object v2, p1

    move-object p1, p2

    goto/16 :goto_38

    .line 9234
    :goto_bf
    :try_start_bf
    iget-boolean v8, p2, Lads_mobile_sdk/e33;->i:Z

    if-nez v8, :cond_d8

    iget-boolean v8, p2, Lads_mobile_sdk/e33;->j:Z

    if-nez v8, :cond_d8

    .line 9235
    invoke-virtual {p2}, Lads_mobile_sdk/e33;->g()J

    move-result-wide v8

    iget-wide v10, p2, Lads_mobile_sdk/e33;->o:J

    invoke-static {v8, v9, v10, v11}, Lkotlin/time/Duration;->plus-LRDsOJo(JJ)J

    move-result-wide v8

    iput-wide v8, p2, Lads_mobile_sdk/e33;->m:J

    .line 9236
    iput-wide v8, p2, Lads_mobile_sdk/e33;->n:J

    goto :goto_d8

    :catchall_d6
    move-exception p2

    goto :goto_df

    .line 9238
    :cond_d8
    :goto_d8
    sget-object v8, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_da
    .catchall {:try_start_bf .. :try_end_da} :catchall_d6

    .line 9417
    invoke-interface {p1, v7}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    move-object p1, v2

    goto :goto_60

    .line 9418
    :goto_df
    invoke-interface {p1, v7}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw p2

    :cond_e3
    move-object p2, v2

    goto/16 :goto_60
.end method

.method public final a(ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 10

    .line 4548
    instance-of v0, p2, Lads_mobile_sdk/r23;

    if-eqz v0, :cond_13

    move-object v0, p2

    check-cast v0, Lads_mobile_sdk/r23;

    iget v1, v0, Lads_mobile_sdk/r23;->f:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/r23;->f:I

    goto :goto_18

    :cond_13
    new-instance v0, Lads_mobile_sdk/r23;

    invoke-direct {v0, p0, p2}, Lads_mobile_sdk/r23;-><init>(Lads_mobile_sdk/e33;Lkotlin/coroutines/Continuation;)V

    :goto_18
    iget-object p2, v0, Lads_mobile_sdk/r23;->d:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 5148
    iget v2, v0, Lads_mobile_sdk/r23;->f:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_38

    if-ne v2, v3, :cond_30

    iget-boolean p1, v0, Lads_mobile_sdk/r23;->c:Z

    iget-object v1, v0, Lads_mobile_sdk/r23;->b:Lkotlinx/coroutines/sync/Mutex;

    iget-object v0, v0, Lads_mobile_sdk/r23;->a:Lads_mobile_sdk/e33;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_4e

    :cond_30
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_38
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 5149
    iget-object p2, p0, Lads_mobile_sdk/e33;->e:Lkotlinx/coroutines/sync/Mutex;

    .line 5340
    iput-object p0, v0, Lads_mobile_sdk/r23;->a:Lads_mobile_sdk/e33;

    iput-object p2, v0, Lads_mobile_sdk/r23;->b:Lkotlinx/coroutines/sync/Mutex;

    iput-boolean p1, v0, Lads_mobile_sdk/r23;->c:Z

    iput v3, v0, Lads_mobile_sdk/r23;->f:I

    invoke-interface {p2, v4, v0}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_4c

    return-object v1

    :cond_4c
    move-object v0, p0

    move-object v1, p2

    .line 5341
    :goto_4e
    :try_start_4e
    iget-boolean p2, v0, Lads_mobile_sdk/e33;->i:Z

    if-nez p2, :cond_65

    iget-boolean p2, v0, Lads_mobile_sdk/e33;->j:Z

    if-nez p2, :cond_65

    .line 5342
    invoke-static {v4, v3, v4}, Lkotlinx/coroutines/JobKt;->Job$default(Lkotlinx/coroutines/Job;ILjava/lang/Object;)Lkotlinx/coroutines/CompletableJob;

    move-result-object p2

    iput-object p2, v0, Lads_mobile_sdk/e33;->g:Lkotlinx/coroutines/CompletableJob;

    .line 5343
    invoke-virtual {v0}, Lads_mobile_sdk/e33;->g()J

    move-result-wide v5

    iput-wide v5, v0, Lads_mobile_sdk/e33;->l:J

    goto :goto_65

    :catchall_63
    move-exception p1

    goto :goto_72

    :cond_65
    :goto_65
    if-eqz p1, :cond_6a

    .line 5346
    iput-boolean v3, v0, Lads_mobile_sdk/e33;->i:Z

    goto :goto_6c

    .line 5348
    :cond_6a
    iput-boolean v3, v0, Lads_mobile_sdk/e33;->j:Z

    .line 5350
    :goto_6c
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_6e
    .catchall {:try_start_4e .. :try_end_6e} :catchall_63

    .line 5535
    invoke-interface {v1, v4}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    return-object p1

    .line 5536
    :goto_72
    invoke-interface {v1, v4}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw p1
.end method

.method public final b(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 7

    .line 1
    instance-of v0, p1, Lads_mobile_sdk/q23;

    if-eqz v0, :cond_13

    move-object v0, p1

    check-cast v0, Lads_mobile_sdk/q23;

    iget v1, v0, Lads_mobile_sdk/q23;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/q23;->e:I

    goto :goto_18

    :cond_13
    new-instance v0, Lads_mobile_sdk/q23;

    invoke-direct {v0, p0, p1}, Lads_mobile_sdk/q23;-><init>(Lads_mobile_sdk/e33;Lkotlin/coroutines/Continuation;)V

    :goto_18
    iget-object p1, v0, Lads_mobile_sdk/q23;->c:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 636
    iget v2, v0, Lads_mobile_sdk/q23;->e:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_36

    if-ne v2, v3, :cond_2e

    iget-object v1, v0, Lads_mobile_sdk/q23;->b:Lkotlinx/coroutines/sync/Mutex;

    iget-object v0, v0, Lads_mobile_sdk/q23;->a:Lads_mobile_sdk/e33;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_4a

    :cond_2e
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_36
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 637
    iget-object p1, p0, Lads_mobile_sdk/e33;->e:Lkotlinx/coroutines/sync/Mutex;

    .line 815
    iput-object p0, v0, Lads_mobile_sdk/q23;->a:Lads_mobile_sdk/e33;

    iput-object p1, v0, Lads_mobile_sdk/q23;->b:Lkotlinx/coroutines/sync/Mutex;

    iput v3, v0, Lads_mobile_sdk/q23;->e:I

    invoke-interface {p1, v4, v0}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_48

    return-object v1

    :cond_48
    move-object v0, p0

    move-object v1, p1

    :goto_4a
    const/4 p1, 0x0

    .line 816
    :try_start_4b
    iput-boolean p1, v0, Lads_mobile_sdk/e33;->i:Z

    .line 817
    iput-boolean p1, v0, Lads_mobile_sdk/e33;->j:Z

    .line 818
    iput-boolean v3, v0, Lads_mobile_sdk/e33;->k:Z

    .line 819
    invoke-virtual {v0}, Lads_mobile_sdk/e33;->g()J

    move-result-wide v2

    iput-wide v2, v0, Lads_mobile_sdk/e33;->m:J

    .line 820
    iput-wide v2, v0, Lads_mobile_sdk/e33;->n:J

    .line 821
    iget-object p1, v0, Lads_mobile_sdk/e33;->g:Lkotlinx/coroutines/CompletableJob;

    invoke-interface {p1}, Lkotlinx/coroutines/CompletableJob;->complete()Z

    .line 822
    iget-object p1, v0, Lads_mobile_sdk/e33;->h:Lkotlinx/coroutines/CompletableJob;

    invoke-interface {p1}, Lkotlinx/coroutines/CompletableJob;->complete()Z
    :try_end_63
    .catchall {:try_start_4b .. :try_end_63} :catchall_69

    .line 996
    invoke-interface {v1, v4}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    .line 997
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    :catchall_69
    move-exception p1

    .line 1169
    invoke-interface {v1, v4}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw p1
.end method

.method public final c(ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 8

    .line 1
    instance-of v0, p2, Lads_mobile_sdk/s23;

    if-eqz v0, :cond_13

    move-object v0, p2

    check-cast v0, Lads_mobile_sdk/s23;

    iget v1, v0, Lads_mobile_sdk/s23;->f:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/s23;->f:I

    goto :goto_18

    :cond_13
    new-instance v0, Lads_mobile_sdk/s23;

    invoke-direct {v0, p0, p2}, Lads_mobile_sdk/s23;-><init>(Lads_mobile_sdk/e33;Lkotlin/coroutines/Continuation;)V

    :goto_18
    iget-object p2, v0, Lads_mobile_sdk/s23;->d:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 615
    iget v2, v0, Lads_mobile_sdk/s23;->f:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_38

    if-ne v2, v3, :cond_30

    iget-boolean p1, v0, Lads_mobile_sdk/s23;->c:Z

    iget-object v1, v0, Lads_mobile_sdk/s23;->b:Lkotlinx/coroutines/sync/Mutex;

    iget-object v0, v0, Lads_mobile_sdk/s23;->a:Lads_mobile_sdk/e33;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_4e

    :cond_30
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_38
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 616
    iget-object p2, p0, Lads_mobile_sdk/e33;->e:Lkotlinx/coroutines/sync/Mutex;

    .line 804
    iput-object p0, v0, Lads_mobile_sdk/s23;->a:Lads_mobile_sdk/e33;

    iput-object p2, v0, Lads_mobile_sdk/s23;->b:Lkotlinx/coroutines/sync/Mutex;

    iput-boolean p1, v0, Lads_mobile_sdk/s23;->c:Z

    iput v3, v0, Lads_mobile_sdk/s23;->f:I

    invoke-interface {p2, v4, v0}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_4c

    return-object v1

    :cond_4c
    move-object v0, p0

    move-object v1, p2

    :goto_4e
    const/4 p2, 0x0

    if-eqz p1, :cond_56

    .line 805
    :try_start_51
    iput-boolean p2, v0, Lads_mobile_sdk/e33;->i:Z

    goto :goto_58

    :catchall_54
    move-exception p1

    goto :goto_8d

    .line 807
    :cond_56
    iput-boolean p2, v0, Lads_mobile_sdk/e33;->j:Z

    .line 811
    :goto_58
    iget-boolean p1, v0, Lads_mobile_sdk/e33;->i:Z

    if-nez p1, :cond_87

    iget-boolean p1, v0, Lads_mobile_sdk/e33;->j:Z

    if-nez p1, :cond_87

    iget-object p1, v0, Lads_mobile_sdk/e33;->g:Lkotlinx/coroutines/CompletableJob;

    invoke-interface {p1}, Lkotlinx/coroutines/Job;->isCompleted()Z

    move-result p1

    if-nez p1, :cond_87

    .line 814
    invoke-virtual {v0}, Lads_mobile_sdk/e33;->g()J

    move-result-wide p1

    iget-wide v2, v0, Lads_mobile_sdk/e33;->l:J

    invoke-static {p1, p2, v2, v3}, Lkotlin/time/Duration;->minus-LRDsOJo(JJ)J

    move-result-wide p1

    .line 815
    iget-wide v2, v0, Lads_mobile_sdk/e33;->n:J

    invoke-static {v2, v3, p1, p2}, Lkotlin/time/Duration;->plus-LRDsOJo(JJ)J

    move-result-wide v2

    iput-wide v2, v0, Lads_mobile_sdk/e33;->n:J

    .line 816
    iget-wide v2, v0, Lads_mobile_sdk/e33;->m:J

    invoke-static {v2, v3, p1, p2}, Lkotlin/time/Duration;->plus-LRDsOJo(JJ)J

    move-result-wide p1

    iput-wide p1, v0, Lads_mobile_sdk/e33;->m:J

    .line 818
    iget-object p1, v0, Lads_mobile_sdk/e33;->g:Lkotlinx/coroutines/CompletableJob;

    invoke-interface {p1}, Lkotlinx/coroutines/CompletableJob;->complete()Z

    .line 820
    :cond_87
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_89
    .catchall {:try_start_51 .. :try_end_89} :catchall_54

    .line 995
    invoke-interface {v1, v4}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    return-object p1

    .line 996
    :goto_8d
    invoke-interface {v1, v4}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw p1
.end method

.method public final d(ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 12

    .line 1
    instance-of v0, p2, Lads_mobile_sdk/j23;

    if-eqz v0, :cond_13

    move-object v0, p2

    check-cast v0, Lads_mobile_sdk/j23;

    iget v1, v0, Lads_mobile_sdk/j23;->f:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/j23;->f:I

    goto :goto_18

    :cond_13
    new-instance v0, Lads_mobile_sdk/j23;

    invoke-direct {v0, p0, p2}, Lads_mobile_sdk/j23;-><init>(Lads_mobile_sdk/e33;Lkotlin/coroutines/Continuation;)V

    :goto_18
    iget-object p2, v0, Lads_mobile_sdk/j23;->d:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 466
    iget v2, v0, Lads_mobile_sdk/j23;->f:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_38

    if-ne v2, v3, :cond_30

    iget-boolean p1, v0, Lads_mobile_sdk/j23;->c:Z

    iget-object v1, v0, Lads_mobile_sdk/j23;->b:Lkotlinx/coroutines/sync/Mutex;

    iget-object v0, v0, Lads_mobile_sdk/j23;->a:Lads_mobile_sdk/e33;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_4e

    :cond_30
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_38
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 467
    iget-object p2, p0, Lads_mobile_sdk/e33;->e:Lkotlinx/coroutines/sync/Mutex;

    .line 694
    iput-object p0, v0, Lads_mobile_sdk/j23;->a:Lads_mobile_sdk/e33;

    iput-object p2, v0, Lads_mobile_sdk/j23;->b:Lkotlinx/coroutines/sync/Mutex;

    iput-boolean p1, v0, Lads_mobile_sdk/j23;->c:Z

    iput v3, v0, Lads_mobile_sdk/j23;->f:I

    invoke-interface {p2, v4, v0}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_4c

    return-object v1

    :cond_4c
    move-object v0, p0

    move-object v1, p2

    .line 695
    :goto_4e
    :try_start_4e
    invoke-virtual {v0}, Lads_mobile_sdk/e33;->g()J

    move-result-wide v2

    .line 697
    iget-object p2, v0, Lads_mobile_sdk/e33;->c:Lads_mobile_sdk/ex0;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 698
    const-string v5, "gads:proactive_banner_refresh:enabled"

    .line 699
    const-string v6, "key"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 715
    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sget-object v7, Lads_mobile_sdk/yr;->b:Lads_mobile_sdk/ir;

    invoke-virtual {p2, v5, v6, v7}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_b5

    .line 716
    iget-wide v5, v0, Lads_mobile_sdk/e33;->p:J

    sget-object p2, Lkotlin/time/Duration;->Companion:Lkotlin/time/Duration$Companion;

    invoke-virtual {p2}, Lkotlin/time/Duration$Companion;->getZERO-UwyO8pc()J

    move-result-wide v7

    invoke-static {v5, v6, v7, v8}, Lkotlin/time/Duration;->compareTo-LRDsOJo(JJ)I

    move-result p2

    if-lez p2, :cond_b5

    if-eqz p1, :cond_89

    .line 720
    iget-wide p1, v0, Lads_mobile_sdk/e33;->p:J

    invoke-static {v2, v3, p1, p2}, Lkotlin/time/Duration;->plus-LRDsOJo(JJ)J

    move-result-wide p1

    iput-wide p1, v0, Lads_mobile_sdk/e33;->m:J

    goto :goto_a4

    :catchall_87
    move-exception p1

    goto :goto_c5

    .line 726
    :cond_89
    iget-wide p1, v0, Lads_mobile_sdk/e33;->n:J

    invoke-static {v2, v3, p1, p2}, Lkotlin/time/Duration;->minus-LRDsOJo(JJ)J

    move-result-wide p1

    .line 728
    iget-wide v5, v0, Lads_mobile_sdk/e33;->p:J

    invoke-static {p1, p2, v5, v6}, Lkotlin/time/Duration;->compareTo-LRDsOJo(JJ)I

    move-result v5

    if-ltz v5, :cond_98

    goto :goto_a2

    .line 731
    :cond_98
    iget-wide v5, v0, Lads_mobile_sdk/e33;->p:J

    invoke-static {v2, v3, v5, v6}, Lkotlin/time/Duration;->plus-LRDsOJo(JJ)J

    move-result-wide v2

    invoke-static {v2, v3, p1, p2}, Lkotlin/time/Duration;->minus-LRDsOJo(JJ)J

    move-result-wide v2

    .line 732
    :goto_a2
    iput-wide v2, v0, Lads_mobile_sdk/e33;->m:J

    .line 742
    :goto_a4
    iget-wide p1, v0, Lads_mobile_sdk/e33;->m:J

    iget-wide v2, v0, Lads_mobile_sdk/e33;->o:J

    invoke-static {p1, p2, v2, v3}, Lkotlin/time/Duration;->plus-LRDsOJo(JJ)J

    move-result-wide p1

    iget-wide v2, v0, Lads_mobile_sdk/e33;->p:J

    invoke-static {p1, p2, v2, v3}, Lkotlin/time/Duration;->minus-LRDsOJo(JJ)J

    move-result-wide p1

    iput-wide p1, v0, Lads_mobile_sdk/e33;->n:J

    goto :goto_bf

    .line 746
    :cond_b5
    iget-wide p1, v0, Lads_mobile_sdk/e33;->o:J

    invoke-static {v2, v3, p1, p2}, Lkotlin/time/Duration;->plus-LRDsOJo(JJ)J

    move-result-wide p1

    iput-wide p1, v0, Lads_mobile_sdk/e33;->n:J

    .line 747
    iput-wide p1, v0, Lads_mobile_sdk/e33;->m:J

    .line 749
    :goto_bf
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_c1
    .catchall {:try_start_4e .. :try_end_c1} :catchall_87

    .line 949
    invoke-interface {v1, v4}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    return-object p1

    .line 950
    :goto_c5
    invoke-interface {v1, v4}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw p1
.end method

.method public final g()J
    .registers 4

    .line 663
    sget-object v0, Lkotlin/time/Duration;->Companion:Lkotlin/time/Duration$Companion;

    iget-object v0, p0, Lads_mobile_sdk/e33;->b:Lads_mobile_sdk/tx;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 664
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 665
    sget-object v2, Lkotlin/time/DurationUnit;->MILLISECONDS:Lkotlin/time/DurationUnit;

    invoke-static {v0, v1, v2}, Lkotlin/time/DurationKt;->toDuration(JLkotlin/time/DurationUnit;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final s(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 7

    .line 1
    instance-of v0, p1, Lads_mobile_sdk/i23;

    if-eqz v0, :cond_13

    move-object v0, p1

    check-cast v0, Lads_mobile_sdk/i23;

    iget v1, v0, Lads_mobile_sdk/i23;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/i23;->e:I

    goto :goto_18

    :cond_13
    new-instance v0, Lads_mobile_sdk/i23;

    invoke-direct {v0, p0, p1}, Lads_mobile_sdk/i23;-><init>(Lads_mobile_sdk/e33;Lkotlin/coroutines/Continuation;)V

    :goto_18
    iget-object p1, v0, Lads_mobile_sdk/i23;->c:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 658
    iget v2, v0, Lads_mobile_sdk/i23;->e:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_36

    if-ne v2, v3, :cond_2e

    iget-object v1, v0, Lads_mobile_sdk/i23;->b:Lkotlinx/coroutines/sync/Mutex;

    iget-object v0, v0, Lads_mobile_sdk/i23;->a:Lads_mobile_sdk/e33;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_4a

    :cond_2e
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_36
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lads_mobile_sdk/e33;->e:Lkotlinx/coroutines/sync/Mutex;

    .line 837
    iput-object p0, v0, Lads_mobile_sdk/i23;->a:Lads_mobile_sdk/e33;

    iput-object p1, v0, Lads_mobile_sdk/i23;->b:Lkotlinx/coroutines/sync/Mutex;

    iput v3, v0, Lads_mobile_sdk/i23;->e:I

    invoke-interface {p1, v4, v0}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_48

    return-object v1

    :cond_48
    move-object v0, p0

    move-object v1, p1

    .line 838
    :goto_4a
    :try_start_4a
    iget-object p1, v0, Lads_mobile_sdk/e33;->f:Lkotlinx/coroutines/Job;

    if-eqz p1, :cond_54

    invoke-static {p1, v4, v3, v4}, Lkotlinx/coroutines/Job$DefaultImpls;->cancel$default(Lkotlinx/coroutines/Job;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    goto :goto_54

    :catchall_52
    move-exception p1

    goto :goto_5c

    .line 839
    :cond_54
    :goto_54
    iput-boolean v3, v0, Lads_mobile_sdk/e33;->j:Z

    .line 840
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_58
    .catchall {:try_start_4a .. :try_end_58} :catchall_52

    .line 1020
    invoke-interface {v1, v4}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    return-object p1

    .line 1021
    :goto_5c
    invoke-interface {v1, v4}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw p1
.end method

.method public final t(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 10

    .line 1
    instance-of v0, p1, Lads_mobile_sdk/z23;

    if-eqz v0, :cond_13

    move-object v0, p1

    check-cast v0, Lads_mobile_sdk/z23;

    iget v1, v0, Lads_mobile_sdk/z23;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/z23;->e:I

    goto :goto_18

    :cond_13
    new-instance v0, Lads_mobile_sdk/z23;

    invoke-direct {v0, p0, p1}, Lads_mobile_sdk/z23;-><init>(Lads_mobile_sdk/e33;Lkotlin/coroutines/Continuation;)V

    :goto_18
    iget-object p1, v0, Lads_mobile_sdk/z23;->c:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 556
    iget v2, v0, Lads_mobile_sdk/z23;->e:I

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v2, :cond_48

    if-eq v2, v5, :cond_40

    if-eq v2, v4, :cond_38

    if-ne v2, v3, :cond_30

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    return-object p1

    :cond_30
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_38
    iget-object v2, v0, Lads_mobile_sdk/z23;->b:Lkotlinx/coroutines/sync/Mutex;

    iget-object v4, v0, Lads_mobile_sdk/z23;->a:Lads_mobile_sdk/e33;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_72

    :cond_40
    iget-object v2, v0, Lads_mobile_sdk/z23;->b:Lkotlinx/coroutines/sync/Mutex;

    iget-object v7, v0, Lads_mobile_sdk/z23;->a:Lads_mobile_sdk/e33;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_5b

    :cond_48
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 557
    iget-object v2, p0, Lads_mobile_sdk/e33;->e:Lkotlinx/coroutines/sync/Mutex;

    .line 738
    iput-object p0, v0, Lads_mobile_sdk/z23;->a:Lads_mobile_sdk/e33;

    iput-object v2, v0, Lads_mobile_sdk/z23;->b:Lkotlinx/coroutines/sync/Mutex;

    iput v5, v0, Lads_mobile_sdk/z23;->e:I

    invoke-interface {v2, v6, v0}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_5a

    goto :goto_9a

    :cond_5a
    move-object v7, p0

    .line 739
    :goto_5b
    :try_start_5b
    iget-boolean p1, v7, Lads_mobile_sdk/e33;->k:Z
    :try_end_5d
    .catchall {:try_start_5b .. :try_end_5d} :catchall_a7

    .line 924
    invoke-interface {v2, v6}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    if-nez p1, :cond_a2

    .line 925
    iget-object v2, v7, Lads_mobile_sdk/e33;->e:Lkotlinx/coroutines/sync/Mutex;

    .line 1116
    iput-object v7, v0, Lads_mobile_sdk/z23;->a:Lads_mobile_sdk/e33;

    iput-object v2, v0, Lads_mobile_sdk/z23;->b:Lkotlinx/coroutines/sync/Mutex;

    iput v4, v0, Lads_mobile_sdk/z23;->e:I

    invoke-interface {v2, v6, v0}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_71

    goto :goto_9a

    :cond_71
    move-object v4, v7

    .line 1117
    :goto_72
    :try_start_72
    iget-boolean p1, v4, Lads_mobile_sdk/e33;->i:Z

    const/4 v7, 0x0

    if-nez p1, :cond_7e

    iget-boolean p1, v4, Lads_mobile_sdk/e33;->j:Z
    :try_end_79
    .catchall {:try_start_72 .. :try_end_79} :catchall_7c

    if-nez p1, :cond_7e

    goto :goto_7f

    :catchall_7c
    move-exception p1

    goto :goto_9e

    :cond_7e
    move v5, v7

    .line 1312
    :goto_7f
    invoke-interface {v2, v6}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    if-eqz v5, :cond_9c

    .line 1313
    iget-object p1, v4, Lads_mobile_sdk/e33;->d:Lads_mobile_sdk/wy2;

    if-nez p1, :cond_8e

    const-string p1, "adLoader"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v6

    :cond_8e
    iput-object v6, v0, Lads_mobile_sdk/z23;->a:Lads_mobile_sdk/e33;

    iput-object v6, v0, Lads_mobile_sdk/z23;->b:Lkotlinx/coroutines/sync/Mutex;

    iput v3, v0, Lads_mobile_sdk/z23;->e:I

    invoke-virtual {p1, v0}, Lads_mobile_sdk/wy2;->e(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_9b

    :goto_9a
    return-object v1

    :cond_9b
    return-object p1

    :cond_9c
    move v5, v7

    goto :goto_a2

    .line 1507
    :goto_9e
    invoke-interface {v2, v6}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw p1

    .line 1508
    :cond_a2
    :goto_a2
    invoke-static {v5}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :catchall_a7
    move-exception p1

    .line 1691
    invoke-interface {v2, v6}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw p1
.end method
