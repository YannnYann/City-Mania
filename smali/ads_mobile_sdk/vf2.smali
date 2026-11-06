###### Class ads_mobile_sdk.vf2 (ads_mobile_sdk.vf2)
.class public final Lads_mobile_sdk/vf2;
.super Lads_mobile_sdk/es;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/df2;


# instance fields
.field public final c:Lkotlinx/coroutines/CoroutineScope;

.field public final d:Lcom/google/gson/JsonObject;

.field public final e:Lads_mobile_sdk/i2;

.field public final f:Lads_mobile_sdk/kd2;

.field public final g:Lads_mobile_sdk/s02;

.field public final h:Lads_mobile_sdk/s93;

.field public final i:Lkotlinx/coroutines/sync/Mutex;

.field public j:Lkotlinx/coroutines/Job;

.field public k:Lads_mobile_sdk/r31;

.field public l:Lads_mobile_sdk/k9;

.field public final m:Z

.field public final n:Ljava/util/List;


# direct methods
.method public constructor <init>(Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineScope;Lcom/google/gson/JsonObject;Lads_mobile_sdk/i2;Lads_mobile_sdk/kd2;Lads_mobile_sdk/s02;Lads_mobile_sdk/ex0;Lads_mobile_sdk/s93;)V
    .registers 10

    .line 1
    const-string v0, "uiContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "backgroundScope"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nativeAdJson"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adConfiguration"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "omid"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nativeAdAssets"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "flags"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "safeBrowsingManager"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    invoke-direct {p0, p7, p1}, Lads_mobile_sdk/es;-><init>(Lads_mobile_sdk/ex0;Lkotlin/coroutines/CoroutineContext;)V

    .line 66
    iput-object p2, p0, Lads_mobile_sdk/vf2;->c:Lkotlinx/coroutines/CoroutineScope;

    .line 67
    iput-object p3, p0, Lads_mobile_sdk/vf2;->d:Lcom/google/gson/JsonObject;

    .line 68
    iput-object p4, p0, Lads_mobile_sdk/vf2;->e:Lads_mobile_sdk/i2;

    .line 69
    iput-object p5, p0, Lads_mobile_sdk/vf2;->f:Lads_mobile_sdk/kd2;

    .line 70
    iput-object p6, p0, Lads_mobile_sdk/vf2;->g:Lads_mobile_sdk/s02;

    .line 72
    iput-object p8, p0, Lads_mobile_sdk/vf2;->h:Lads_mobile_sdk/s93;

    const/4 p1, 0x0

    const/4 p2, 0x1

    const/4 p3, 0x0

    .line 75
    invoke-static {p1, p2, p3}, Lkotlinx/coroutines/sync/MutexKt;->Mutex$default(ZILjava/lang/Object;)Lkotlinx/coroutines/sync/Mutex;

    move-result-object p4

    iput-object p4, p0, Lads_mobile_sdk/vf2;->i:Lkotlinx/coroutines/sync/Mutex;

    .line 83
    iget-object p4, p6, Lads_mobile_sdk/s02;->n:Lads_mobile_sdk/dg2;

    if-eqz p4, :cond_46

    iget-object p3, p4, Lads_mobile_sdk/dg2;->a:Lads_mobile_sdk/cg2;

    :cond_46
    sget-object p4, Lads_mobile_sdk/cg2;->a:Lads_mobile_sdk/cg2;

    if-ne p3, p4, :cond_4b

    move p1, p2

    :cond_4b
    iput-boolean p1, p0, Lads_mobile_sdk/vf2;->m:Z

    .line 89
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p1}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lads_mobile_sdk/vf2;->n:Ljava/util/List;

    return-void
.end method

.method public static b(Lads_mobile_sdk/vf2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 13

    .line 1
    instance-of v0, p1, Lads_mobile_sdk/mf2;

    if-eqz v0, :cond_13

    move-object v0, p1

    check-cast v0, Lads_mobile_sdk/mf2;

    iget v1, v0, Lads_mobile_sdk/mf2;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/mf2;->e:I

    goto :goto_18

    :cond_13
    new-instance v0, Lads_mobile_sdk/mf2;

    invoke-direct {v0, p0, p1}, Lads_mobile_sdk/mf2;-><init>(Lads_mobile_sdk/vf2;Lkotlin/coroutines/Continuation;)V

    :goto_18
    iget-object p1, v0, Lads_mobile_sdk/mf2;->c:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 286
    iget v2, v0, Lads_mobile_sdk/mf2;->e:I

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v2, :cond_5e

    if-eq v2, v6, :cond_54

    if-eq v2, v5, :cond_4c

    if-eq v2, v4, :cond_43

    if-ne v2, v3, :cond_3b

    iget-object p0, v0, Lads_mobile_sdk/mf2;->b:Lkotlinx/coroutines/sync/Mutex;

    iget-object v0, v0, Lads_mobile_sdk/mf2;->a:Lads_mobile_sdk/vf2;

    :try_start_33
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_36
    .catchall {:try_start_33 .. :try_end_36} :catchall_38

    goto/16 :goto_e7

    :catchall_38
    move-exception p1

    goto/16 :goto_f3

    :cond_3b
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 287
    :cond_43
    iget-object p0, v0, Lads_mobile_sdk/mf2;->b:Lkotlinx/coroutines/sync/Mutex;

    iget-object v2, v0, Lads_mobile_sdk/mf2;->a:Lads_mobile_sdk/vf2;

    :try_start_47
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_4a
    .catchall {:try_start_47 .. :try_end_4a} :catchall_38

    goto/16 :goto_d5

    .line 288
    :cond_4c
    iget-object p0, v0, Lads_mobile_sdk/mf2;->b:Lkotlinx/coroutines/sync/Mutex;

    iget-object v2, v0, Lads_mobile_sdk/mf2;->a:Lads_mobile_sdk/vf2;

    :try_start_50
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_53
    .catchall {:try_start_50 .. :try_end_53} :catchall_38

    goto :goto_a0

    .line 289
    :cond_54
    iget-object p0, v0, Lads_mobile_sdk/mf2;->b:Lkotlinx/coroutines/sync/Mutex;

    iget-object v2, v0, Lads_mobile_sdk/mf2;->a:Lads_mobile_sdk/vf2;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object p1, p0

    move-object p0, v2

    goto :goto_71

    :cond_5e
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lads_mobile_sdk/vf2;->i:Lkotlinx/coroutines/sync/Mutex;

    .line 364
    iput-object p0, v0, Lads_mobile_sdk/mf2;->a:Lads_mobile_sdk/vf2;

    iput-object p1, v0, Lads_mobile_sdk/mf2;->b:Lkotlinx/coroutines/sync/Mutex;

    iput v6, v0, Lads_mobile_sdk/mf2;->e:I

    invoke-interface {p1, v7, v0}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_71

    goto/16 :goto_e5

    .line 365
    :cond_71
    :goto_71
    :try_start_71
    iget-object v2, p0, Lads_mobile_sdk/vf2;->j:Lkotlinx/coroutines/Job;

    if-eqz v2, :cond_78

    invoke-static {v2, v7, v6, v7}, Lkotlinx/coroutines/Job$DefaultImpls;->cancel$default(Lkotlinx/coroutines/Job;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 366
    :cond_78
    iget-object v2, p0, Lads_mobile_sdk/vf2;->g:Lads_mobile_sdk/s02;

    iget-object v2, v2, Lads_mobile_sdk/s02;->o:Lkotlinx/coroutines/Deferred;

    if-eqz v2, :cond_81

    invoke-static {v2, v7, v6, v7}, Lkotlinx/coroutines/Job$DefaultImpls;->cancel$default(Lkotlinx/coroutines/Job;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 367
    :cond_81
    iget-object v2, p0, Lads_mobile_sdk/vf2;->n:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 368
    iget-object v2, p0, Lads_mobile_sdk/vf2;->l:Lads_mobile_sdk/k9;

    if-eqz v2, :cond_d3

    .line 369
    iget-object v6, p0, Lads_mobile_sdk/es;->b:Lkotlin/coroutines/CoroutineContext;

    .line 370
    new-instance v8, Lads_mobile_sdk/nf2;

    invoke-direct {v8, p0, v2, v7}, Lads_mobile_sdk/nf2;-><init>(Lads_mobile_sdk/vf2;Lads_mobile_sdk/k9;Lkotlin/coroutines/Continuation;)V

    iput-object p0, v0, Lads_mobile_sdk/mf2;->a:Lads_mobile_sdk/vf2;

    iput-object p1, v0, Lads_mobile_sdk/mf2;->b:Lkotlinx/coroutines/sync/Mutex;

    iput v5, v0, Lads_mobile_sdk/mf2;->e:I

    invoke-static {v6, v8, v0}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2
    :try_end_9b
    .catchall {:try_start_71 .. :try_end_9b} :catchall_d1

    if-ne v2, v1, :cond_9e

    goto :goto_e5

    :cond_9e
    move-object v2, p0

    move-object p0, p1

    .line 371
    :goto_a0
    :try_start_a0
    iget-object p1, v2, Lads_mobile_sdk/es;->a:Lads_mobile_sdk/ex0;

    .line 372
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 373
    const-string v6, "gads:omid:destroy_webview_delay"

    sget-object v8, Lkotlin/time/Duration;->Companion:Lkotlin/time/Duration$Companion;

    sget-object v8, Lkotlin/time/DurationUnit;->SECONDS:Lkotlin/time/DurationUnit;

    invoke-static {v5, v8}, Lkotlin/time/DurationKt;->toDuration(ILkotlin/time/DurationUnit;)J

    move-result-wide v8

    const-string v5, "key"

    invoke-static {v6, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 374
    invoke-static {v8, v9}, Lkotlin/time/Duration;->box-impl(J)Lkotlin/time/Duration;

    move-result-object v5

    sget-object v8, Lads_mobile_sdk/yr;->j:Lads_mobile_sdk/sr;

    invoke-virtual {p1, v6, v5, v8}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlin/time/Duration;

    invoke-virtual {p1}, Lkotlin/time/Duration;->unbox-impl()J

    move-result-wide v5

    .line 375
    iput-object v2, v0, Lads_mobile_sdk/mf2;->a:Lads_mobile_sdk/vf2;

    iput-object p0, v0, Lads_mobile_sdk/mf2;->b:Lkotlinx/coroutines/sync/Mutex;

    iput v4, v0, Lads_mobile_sdk/mf2;->e:I

    invoke-static {v5, v6, v0}, Lkotlinx/coroutines/DelayKt;->delay-VtjQ1oo(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_d5

    goto :goto_e5

    :catchall_d1
    move-exception p0

    goto :goto_f6

    :cond_d3
    move-object v2, p0

    move-object p0, p1

    .line 378
    :cond_d5
    :goto_d5
    iget-object p1, v2, Lads_mobile_sdk/vf2;->k:Lads_mobile_sdk/r31;

    if-eqz p1, :cond_e6

    iput-object v2, v0, Lads_mobile_sdk/mf2;->a:Lads_mobile_sdk/vf2;

    iput-object p0, v0, Lads_mobile_sdk/mf2;->b:Lkotlinx/coroutines/sync/Mutex;

    iput v3, v0, Lads_mobile_sdk/mf2;->e:I

    invoke-virtual {p1, v0}, Lads_mobile_sdk/r31;->a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_e6

    :goto_e5
    return-object v1

    :cond_e6
    move-object v0, v2

    .line 379
    :goto_e7
    iput-object v7, v0, Lads_mobile_sdk/vf2;->j:Lkotlinx/coroutines/Job;

    .line 380
    iput-object v7, v0, Lads_mobile_sdk/vf2;->l:Lads_mobile_sdk/k9;

    .line 381
    iput-object v7, v0, Lads_mobile_sdk/vf2;->k:Lads_mobile_sdk/r31;

    .line 382
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_ef
    .catchall {:try_start_a0 .. :try_end_ef} :catchall_38

    .line 447
    invoke-interface {p0, v7}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    return-object p1

    :goto_f3
    move-object v10, p1

    move-object p1, p0

    move-object p0, v10

    .line 448
    :goto_f6
    invoke-interface {p1, v7}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw p0
.end method

.method public static synthetic c(Lads_mobile_sdk/vf2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 7

    .line 1
    instance-of v0, p1, Lads_mobile_sdk/of2;

    if-eqz v0, :cond_13

    move-object v0, p1

    check-cast v0, Lads_mobile_sdk/of2;

    iget v1, v0, Lads_mobile_sdk/of2;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/of2;->e:I

    goto :goto_18

    :cond_13
    new-instance v0, Lads_mobile_sdk/of2;

    invoke-direct {v0, p0, p1}, Lads_mobile_sdk/of2;-><init>(Lads_mobile_sdk/vf2;Lkotlin/coroutines/Continuation;)V

    :goto_18
    iget-object p1, v0, Lads_mobile_sdk/of2;->c:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 215
    iget v2, v0, Lads_mobile_sdk/of2;->e:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_38

    if-ne v2, v3, :cond_30

    iget-object p0, v0, Lads_mobile_sdk/of2;->b:Lkotlinx/coroutines/sync/Mutex;

    iget-object v0, v0, Lads_mobile_sdk/of2;->a:Lads_mobile_sdk/vf2;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object p1, p0

    move-object p0, v0

    goto :goto_4a

    :cond_30
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_38
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lads_mobile_sdk/vf2;->i:Lkotlinx/coroutines/sync/Mutex;

    .line 328
    iput-object p0, v0, Lads_mobile_sdk/of2;->a:Lads_mobile_sdk/vf2;

    iput-object p1, v0, Lads_mobile_sdk/of2;->b:Lkotlinx/coroutines/sync/Mutex;

    iput v3, v0, Lads_mobile_sdk/of2;->e:I

    invoke-interface {p1, v4, v0}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_4a

    return-object v1

    .line 329
    :cond_4a
    :goto_4a
    :try_start_4a
    iget-object v0, p0, Lads_mobile_sdk/vf2;->l:Lads_mobile_sdk/k9;

    if-nez v0, :cond_57

    iget-object p0, p0, Lads_mobile_sdk/vf2;->j:Lkotlinx/coroutines/Job;

    if-eqz p0, :cond_53

    goto :goto_57

    :cond_53
    const/4 v3, 0x0

    goto :goto_57

    :catchall_55
    move-exception p0

    goto :goto_5f

    .line 330
    :cond_57
    :goto_57
    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object p0
    :try_end_5b
    .catchall {:try_start_4a .. :try_end_5b} :catchall_55

    .line 446
    invoke-interface {p1, v4}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    return-object p0

    .line 447
    :goto_5f
    invoke-interface {p1, v4}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw p0
.end method

.method public static d(Lads_mobile_sdk/vf2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 9

    .line 1
    instance-of v0, p1, Lads_mobile_sdk/sf2;

    if-eqz v0, :cond_13

    move-object v0, p1

    check-cast v0, Lads_mobile_sdk/sf2;

    iget v1, v0, Lads_mobile_sdk/sf2;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/sf2;->d:I

    goto :goto_18

    :cond_13
    new-instance v0, Lads_mobile_sdk/sf2;

    invoke-direct {v0, p0, p1}, Lads_mobile_sdk/sf2;-><init>(Lads_mobile_sdk/vf2;Lkotlin/coroutines/Continuation;)V

    :goto_18
    iget-object p1, v0, Lads_mobile_sdk/sf2;->b:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 83
    iget v2, v0, Lads_mobile_sdk/sf2;->d:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3b

    if-eq v2, v4, :cond_35

    if-ne v2, v3, :cond_2d

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_99

    :cond_2d
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_35
    iget-object p0, v0, Lads_mobile_sdk/sf2;->a:Lads_mobile_sdk/vf2;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_6c

    :cond_3b
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 85
    iget-object p1, p0, Lads_mobile_sdk/vf2;->f:Lads_mobile_sdk/kd2;

    .line 86
    iget-object p1, p1, Lads_mobile_sdk/kd2;->f:Lads_mobile_sdk/ur3;

    .line 87
    sget-object v2, Lads_mobile_sdk/fd2;->a:Lads_mobile_sdk/fd2;

    const-string v5, "IsActive"

    invoke-interface {p1, v5, v2}, Lads_mobile_sdk/ur3;->a(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    if-eqz p1, :cond_9c

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_9c

    .line 88
    sget-object p1, Lads_mobile_sdk/ds1;->a:Lads_mobile_sdk/ds1;

    iget-object p1, p0, Lads_mobile_sdk/vf2;->d:Lcom/google/gson/JsonObject;

    const-string v2, "enable_omid"

    const/4 v5, 0x0

    .line 89
    invoke-static {p1, v2, v5}, Lads_mobile_sdk/ds1;->a(Lcom/google/gson/JsonObject;Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_9c

    .line 90
    iput-object p0, v0, Lads_mobile_sdk/sf2;->a:Lads_mobile_sdk/vf2;

    iput v4, v0, Lads_mobile_sdk/sf2;->d:I

    .line 91
    invoke-static {p0, v0}, Lads_mobile_sdk/vf2;->c(Lads_mobile_sdk/vf2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_6c

    goto :goto_98

    .line 92
    :cond_6c
    :goto_6c
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_9c

    .line 93
    iget-object p1, p0, Lads_mobile_sdk/vf2;->g:Lads_mobile_sdk/s02;

    .line 94
    iget-object v2, p1, Lads_mobile_sdk/s02;->b:Lads_mobile_sdk/q02;

    sget-object v5, Lads_mobile_sdk/q02;->b:Lads_mobile_sdk/q02;

    const/4 v6, 0x0

    if-ne v2, v5, :cond_8a

    .line 95
    iget-object p1, p1, Lads_mobile_sdk/s02;->n:Lads_mobile_sdk/dg2;

    if-eqz p1, :cond_84

    iget-object p1, p1, Lads_mobile_sdk/dg2;->a:Lads_mobile_sdk/cg2;

    goto :goto_85

    :cond_84
    move-object p1, v6

    :goto_85
    sget-object v2, Lads_mobile_sdk/cg2;->b:Lads_mobile_sdk/cg2;

    if-ne p1, v2, :cond_8a

    goto :goto_9c

    .line 96
    :cond_8a
    iput-object v6, v0, Lads_mobile_sdk/sf2;->a:Lads_mobile_sdk/vf2;

    iput v3, v0, Lads_mobile_sdk/sf2;->d:I

    .line 97
    const-string p1, "Google"

    .line 99
    sget-object v2, Lads_mobile_sdk/x91;->e:Lads_mobile_sdk/x91;

    .line 100
    invoke-virtual {p0, p1, v4, v2, v0}, Lads_mobile_sdk/vf2;->a(Ljava/lang/String;ZLads_mobile_sdk/x91;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_99

    :goto_98
    return-object v1

    .line 101
    :cond_99
    :goto_99
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    .line 102
    :cond_9c
    :goto_9c
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method


# virtual methods
.method public final a(Lads_mobile_sdk/c04;)Ljava/lang/Object;
    .registers 2

    .line 3133
    invoke-static {p0, p1}, Lads_mobile_sdk/vf2;->b(Lads_mobile_sdk/vf2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final a(Landroid/view/View;Lads_mobile_sdk/tx0;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 11

    .line 2
    new-instance v0, Lads_mobile_sdk/ef2;

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lads_mobile_sdk/ef2;-><init>(Lads_mobile_sdk/vf2;Landroid/view/View;Lads_mobile_sdk/tx0;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    const-string p1, "addFriendlyObstruction"

    invoke-virtual {p0, p1, v0, p4}, Lads_mobile_sdk/vf2;->a(Ljava/lang/String;Lkotlin/jvm/functions/Function3;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_17

    return-object p1

    :cond_17
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final a(Landroid/view/View;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 5

    .line 3138
    iget-boolean v0, p0, Lads_mobile_sdk/vf2;->m:Z

    if-eqz v0, :cond_7

    .line 3140
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 3142
    :cond_7
    new-instance v0, Lads_mobile_sdk/uf2;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lads_mobile_sdk/uf2;-><init>(Lads_mobile_sdk/vf2;Landroid/view/View;Lkotlin/coroutines/Continuation;)V

    const-string p1, "updateRegisteredAdView"

    invoke-virtual {p0, p1, v0, p2}, Lads_mobile_sdk/vf2;->a(Ljava/lang/String;Lkotlin/jvm/functions/Function3;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_1a

    return-object p1

    :cond_1a
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final a(Ljava/lang/String;Lkotlin/jvm/functions/Function3;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 12

    .line 2345
    instance-of v0, p3, Lads_mobile_sdk/kf2;

    if-eqz v0, :cond_13

    move-object v0, p3

    check-cast v0, Lads_mobile_sdk/kf2;

    iget v1, v0, Lads_mobile_sdk/kf2;->g:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/kf2;->g:I

    goto :goto_18

    :cond_13
    new-instance v0, Lads_mobile_sdk/kf2;

    invoke-direct {v0, p0, p3}, Lads_mobile_sdk/kf2;-><init>(Lads_mobile_sdk/vf2;Lkotlin/coroutines/Continuation;)V

    :goto_18
    iget-object p3, v0, Lads_mobile_sdk/kf2;->e:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 2612
    iget v2, v0, Lads_mobile_sdk/kf2;->g:I

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v2, :cond_79

    if-eq v2, v6, :cond_69

    if-eq v2, v5, :cond_58

    if-eq v2, v4, :cond_47

    if-ne v2, v3, :cond_3f

    iget-object p1, v0, Lads_mobile_sdk/kf2;->b:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/sync/Mutex;

    iget-object p2, v0, Lads_mobile_sdk/kf2;->a:Ljava/lang/Object;

    check-cast p2, Ljava/lang/String;

    :try_start_37
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_3a
    .catchall {:try_start_37 .. :try_end_3a} :catchall_3c

    goto/16 :goto_ef

    :catchall_3c
    move-exception p3

    goto/16 :goto_f8

    :cond_3f
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2613
    :cond_47
    iget-object p1, v0, Lads_mobile_sdk/kf2;->d:Lkotlinx/coroutines/sync/Mutex;

    iget-object p2, v0, Lads_mobile_sdk/kf2;->c:Lkotlin/jvm/functions/Function3;

    iget-object v2, v0, Lads_mobile_sdk/kf2;->b:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget-object v4, v0, Lads_mobile_sdk/kf2;->a:Ljava/lang/Object;

    check-cast v4, Lads_mobile_sdk/vf2;

    :try_start_53
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_56
    .catch Ljava/util/concurrent/CancellationException; {:try_start_53 .. :try_end_56} :catch_fc

    goto/16 :goto_c1

    .line 2614
    :cond_58
    iget-object p1, v0, Lads_mobile_sdk/kf2;->c:Lkotlin/jvm/functions/Function3;

    iget-object p2, v0, Lads_mobile_sdk/kf2;->b:Ljava/lang/Object;

    move-object v2, p2

    check-cast v2, Ljava/lang/String;

    iget-object p2, v0, Lads_mobile_sdk/kf2;->a:Ljava/lang/Object;

    check-cast p2, Lads_mobile_sdk/vf2;

    :try_start_63
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_66
    .catch Ljava/util/concurrent/CancellationException; {:try_start_63 .. :try_end_66} :catch_fc

    move-object v6, p2

    move-object p2, p1

    goto :goto_ad

    .line 2615
    :cond_69
    iget-object p1, v0, Lads_mobile_sdk/kf2;->d:Lkotlinx/coroutines/sync/Mutex;

    iget-object p2, v0, Lads_mobile_sdk/kf2;->c:Lkotlin/jvm/functions/Function3;

    iget-object v2, v0, Lads_mobile_sdk/kf2;->b:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget-object v6, v0, Lads_mobile_sdk/kf2;->a:Ljava/lang/Object;

    check-cast v6, Lads_mobile_sdk/vf2;

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_92

    :cond_79
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 2619
    iget-object p3, p0, Lads_mobile_sdk/vf2;->i:Lkotlinx/coroutines/sync/Mutex;

    .line 2686
    iput-object p0, v0, Lads_mobile_sdk/kf2;->a:Ljava/lang/Object;

    iput-object p1, v0, Lads_mobile_sdk/kf2;->b:Ljava/lang/Object;

    iput-object p2, v0, Lads_mobile_sdk/kf2;->c:Lkotlin/jvm/functions/Function3;

    iput-object p3, v0, Lads_mobile_sdk/kf2;->d:Lkotlinx/coroutines/sync/Mutex;

    iput v6, v0, Lads_mobile_sdk/kf2;->g:I

    invoke-interface {p3, v7, v0}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_8f

    goto :goto_ed

    :cond_8f
    move-object v6, p0

    move-object v2, p1

    move-object p1, p3

    .line 2687
    :goto_92
    :try_start_92
    iget-object p3, v6, Lads_mobile_sdk/vf2;->j:Lkotlinx/coroutines/Job;
    :try_end_94
    .catchall {:try_start_92 .. :try_end_94} :catchall_116

    .line 2758
    invoke-interface {p1, v7}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    if-nez p3, :cond_9c

    .line 2759
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 2762
    :cond_9c
    :try_start_9c
    iput-object v6, v0, Lads_mobile_sdk/kf2;->a:Ljava/lang/Object;

    iput-object v2, v0, Lads_mobile_sdk/kf2;->b:Ljava/lang/Object;

    iput-object p2, v0, Lads_mobile_sdk/kf2;->c:Lkotlin/jvm/functions/Function3;

    iput-object v7, v0, Lads_mobile_sdk/kf2;->d:Lkotlinx/coroutines/sync/Mutex;

    iput v5, v0, Lads_mobile_sdk/kf2;->g:I

    invoke-interface {p3, v0}, Lkotlinx/coroutines/Job;->join(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_ad

    goto :goto_ed

    .line 2763
    :cond_ad
    :goto_ad
    iget-object p1, v6, Lads_mobile_sdk/vf2;->i:Lkotlinx/coroutines/sync/Mutex;

    .line 2837
    iput-object v6, v0, Lads_mobile_sdk/kf2;->a:Ljava/lang/Object;

    iput-object v2, v0, Lads_mobile_sdk/kf2;->b:Ljava/lang/Object;

    iput-object p2, v0, Lads_mobile_sdk/kf2;->c:Lkotlin/jvm/functions/Function3;

    iput-object p1, v0, Lads_mobile_sdk/kf2;->d:Lkotlinx/coroutines/sync/Mutex;

    iput v4, v0, Lads_mobile_sdk/kf2;->g:I

    invoke-interface {p1, v7, v0}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p3
    :try_end_bd
    .catch Ljava/util/concurrent/CancellationException; {:try_start_9c .. :try_end_bd} :catch_fc

    if-ne p3, v1, :cond_c0

    goto :goto_ed

    :cond_c0
    move-object v4, v6

    .line 2838
    :goto_c1
    :try_start_c1
    iget-object p3, v4, Lads_mobile_sdk/vf2;->k:Lads_mobile_sdk/r31;

    if-nez p3, :cond_ce

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_c7
    .catchall {:try_start_c1 .. :try_end_c7} :catchall_cb

    .line 2915
    :try_start_c7
    invoke-interface {p1, v7}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V
    :try_end_ca
    .catch Ljava/util/concurrent/CancellationException; {:try_start_c7 .. :try_end_ca} :catch_fc

    return-object p2

    :catchall_cb
    move-exception p2

    move-object p3, p2

    goto :goto_f7

    .line 2916
    :cond_ce
    :try_start_ce
    iget-object v5, v4, Lads_mobile_sdk/vf2;->l:Lads_mobile_sdk/k9;

    if-nez v5, :cond_d8

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_d4
    .catchall {:try_start_ce .. :try_end_d4} :catchall_cb

    .line 2992
    :try_start_d4
    invoke-interface {p1, v7}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V
    :try_end_d7
    .catch Ljava/util/concurrent/CancellationException; {:try_start_d4 .. :try_end_d7} :catch_fc

    return-object p2

    .line 2993
    :cond_d8
    :try_start_d8
    new-instance v6, Lads_mobile_sdk/lf2;

    invoke-direct {v6, p2, p3, v5, v7}, Lads_mobile_sdk/lf2;-><init>(Lkotlin/jvm/functions/Function3;Lads_mobile_sdk/r31;Lads_mobile_sdk/k9;Lkotlin/coroutines/Continuation;)V

    iput-object v2, v0, Lads_mobile_sdk/kf2;->a:Ljava/lang/Object;

    iput-object p1, v0, Lads_mobile_sdk/kf2;->b:Ljava/lang/Object;

    iput-object v7, v0, Lads_mobile_sdk/kf2;->c:Lkotlin/jvm/functions/Function3;

    iput-object v7, v0, Lads_mobile_sdk/kf2;->d:Lkotlinx/coroutines/sync/Mutex;

    iput v3, v0, Lads_mobile_sdk/kf2;->g:I

    invoke-virtual {v4, v6, v0}, Lads_mobile_sdk/es;->a(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p2
    :try_end_eb
    .catchall {:try_start_d8 .. :try_end_eb} :catchall_cb

    if-ne p2, v1, :cond_ee

    :goto_ed
    return-object v1

    :cond_ee
    move-object p2, v2

    .line 2994
    :goto_ef
    :try_start_ef
    sget-object p3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_f1
    .catchall {:try_start_ef .. :try_end_f1} :catchall_3c

    .line 3068
    :try_start_f1
    invoke-interface {p1, v7}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V
    :try_end_f4
    .catch Ljava/util/concurrent/CancellationException; {:try_start_f1 .. :try_end_f4} :catch_f5

    goto :goto_113

    :catch_f5
    move-object v2, p2

    goto :goto_fc

    :goto_f7
    move-object p2, v2

    .line 3069
    :goto_f8
    :try_start_f8
    invoke-interface {p1, v7}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw p3
    :try_end_fc
    .catch Ljava/util/concurrent/CancellationException; {:try_start_f8 .. :try_end_fc} :catch_fd

    :catch_fc
    :goto_fc
    move-object p2, v2

    .line 3070
    :catch_fd
    sget-object p1, Lads_mobile_sdk/f01;->a:Lcom/google/common/base/Splitter;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Ad session was cancelled in "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lads_mobile_sdk/f01;->c(Ljava/lang/String;)V

    .line 3072
    :goto_113
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    :catchall_116
    move-exception p2

    .line 3131
    invoke-interface {p1, v7}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw p2
.end method

.method public final a(Ljava/lang/String;ZLads_mobile_sdk/x91;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 26

    move-object/from16 v1, p0

    move-object/from16 v0, p4

    .line 3
    instance-of v2, v0, Lads_mobile_sdk/ff2;

    if-eqz v2, :cond_17

    move-object v2, v0

    check-cast v2, Lads_mobile_sdk/ff2;

    iget v3, v2, Lads_mobile_sdk/ff2;->h:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_17

    sub-int/2addr v3, v4

    iput v3, v2, Lads_mobile_sdk/ff2;->h:I

    goto :goto_1c

    :cond_17
    new-instance v2, Lads_mobile_sdk/ff2;

    invoke-direct {v2, v1, v0}, Lads_mobile_sdk/ff2;-><init>(Lads_mobile_sdk/vf2;Lkotlin/coroutines/Continuation;)V

    :goto_1c
    iget-object v0, v2, Lads_mobile_sdk/ff2;->f:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v3

    .line 99
    iget v4, v2, Lads_mobile_sdk/ff2;->h:I

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v4, :cond_44

    if-ne v4, v5, :cond_3c

    iget-boolean v3, v2, Lads_mobile_sdk/ff2;->e:Z

    iget-object v4, v2, Lads_mobile_sdk/ff2;->d:Lkotlinx/coroutines/sync/Mutex;

    iget-object v7, v2, Lads_mobile_sdk/ff2;->c:Lads_mobile_sdk/x91;

    iget-object v8, v2, Lads_mobile_sdk/ff2;->b:Ljava/lang/String;

    iget-object v2, v2, Lads_mobile_sdk/ff2;->a:Lads_mobile_sdk/vf2;

    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v9, v2

    move v14, v3

    move-object v10, v8

    :goto_3a
    move-object v12, v7

    goto :goto_66

    :cond_3c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_44
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 104
    iget-object v4, v1, Lads_mobile_sdk/vf2;->i:Lkotlinx/coroutines/sync/Mutex;

    .line 319
    iput-object v1, v2, Lads_mobile_sdk/ff2;->a:Lads_mobile_sdk/vf2;

    move-object/from16 v0, p1

    iput-object v0, v2, Lads_mobile_sdk/ff2;->b:Ljava/lang/String;

    move-object/from16 v7, p3

    iput-object v7, v2, Lads_mobile_sdk/ff2;->c:Lads_mobile_sdk/x91;

    iput-object v4, v2, Lads_mobile_sdk/ff2;->d:Lkotlinx/coroutines/sync/Mutex;

    move/from16 v8, p2

    iput-boolean v8, v2, Lads_mobile_sdk/ff2;->e:Z

    iput v5, v2, Lads_mobile_sdk/ff2;->h:I

    invoke-interface {v4, v6, v2}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v3, :cond_62

    return-object v3

    :cond_62
    move-object v10, v0

    move-object v9, v1

    move v14, v8

    goto :goto_3a

    .line 320
    :goto_66
    :try_start_66
    iget-object v0, v9, Lads_mobile_sdk/vf2;->g:Lads_mobile_sdk/s02;

    iget-object v0, v0, Lads_mobile_sdk/s02;->n:Lads_mobile_sdk/dg2;
    :try_end_6a
    .catchall {:try_start_66 .. :try_end_6a} :catchall_107

    if-nez v0, :cond_76

    :try_start_6c
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_6e
    .catchall {:try_start_6c .. :try_end_6e} :catchall_72

    .line 538
    invoke-interface {v4, v6}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    return-object v0

    :catchall_72
    move-exception v0

    move-object v5, v6

    goto/16 :goto_16f

    .line 539
    :cond_76
    :try_start_76
    new-instance v8, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v8}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 540
    new-instance v11, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v11}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 541
    new-instance v13, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v13}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 542
    iget-object v0, v0, Lads_mobile_sdk/dg2;->a:Lads_mobile_sdk/cg2;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0
    :try_end_8b
    .catchall {:try_start_76 .. :try_end_8b} :catchall_107

    const-string v2, "block"

    const-string v3, "context"

    const-string v7, "<this>"

    if-eqz v0, :cond_10a

    if-eq v0, v5, :cond_a9

    const/4 v2, 0x2

    if-ne v0, v2, :cond_a3

    .line 574
    :try_start_98
    const-string v0, "Unknown media type in OmidNativeMonitor"

    .line 575
    invoke-static {v0, v6}, Lads_mobile_sdk/f01;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 576
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_9f
    .catchall {:try_start_98 .. :try_end_9f} :catchall_72

    .line 757
    invoke-interface {v4, v6}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    return-object v0

    :cond_a3
    :try_start_a3
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0
    :try_end_a9
    .catchall {:try_start_a3 .. :try_end_a9} :catchall_72

    .line 758
    :cond_a9
    :try_start_a9
    iget-object v0, v9, Lads_mobile_sdk/vf2;->g:Lads_mobile_sdk/s02;

    iget-object v0, v0, Lads_mobile_sdk/s02;->o:Lkotlinx/coroutines/Deferred;
    :try_end_ad
    .catchall {:try_start_a9 .. :try_end_ad} :catchall_107

    if-nez v0, :cond_ba

    .line 760
    :try_start_af
    const-string v0, "No omid webview in OmidNativeMonitor"

    .line 761
    invoke-static {v0, v6}, Lads_mobile_sdk/f01;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 762
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_b6
    .catchall {:try_start_af .. :try_end_b6} :catchall_72

    .line 957
    invoke-interface {v4, v6}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    return-object v0

    .line 958
    :cond_ba
    :try_start_ba
    iput-object v0, v8, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 959
    sget-object v5, Lads_mobile_sdk/l40;->d:Lads_mobile_sdk/l40;

    iput-object v5, v11, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 960
    sget-object v5, Lads_mobile_sdk/xh2;->d:Lads_mobile_sdk/xh2;

    iput-object v5, v13, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 961
    iget-object v5, v9, Lads_mobile_sdk/es;->a:Lads_mobile_sdk/ex0;

    .line 962
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 963
    const-string v15, "gads:native_click_protection:enabled"

    .line 964
    const-string v6, "key"

    invoke-static {v15, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 980
    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sget-object v1, Lads_mobile_sdk/yr;->b:Lads_mobile_sdk/ir;

    invoke-virtual {v5, v15, v6, v1}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_13e

    .line 981
    iget-object v15, v9, Lads_mobile_sdk/vf2;->c:Lkotlinx/coroutines/CoroutineScope;

    new-instance v1, Lads_mobile_sdk/gf2;

    const/4 v5, 0x0

    invoke-direct {v1, v0, v9, v5}, Lads_mobile_sdk/gf2;-><init>(Lkotlinx/coroutines/Deferred;Lads_mobile_sdk/vf2;Lkotlin/coroutines/Continuation;)V

    .line 982
    sget-object v0, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    .line 983
    invoke-static {v15, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1241
    new-instance v5, Lads_mobile_sdk/ws3;

    const/4 v6, 0x0

    invoke-direct {v5, v1, v6}, Lads_mobile_sdk/ws3;-><init>(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)V

    const/16 v19, 0x2

    const/16 v20, 0x0

    const/16 v17, 0x0

    move-object/from16 v16, v0

    move-object/from16 v18, v5

    invoke-static/range {v15 .. v20}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    goto :goto_13e

    :catchall_107
    move-exception v0

    const/4 v5, 0x0

    goto :goto_16f

    .line 1242
    :cond_10a
    iget-object v0, v9, Lads_mobile_sdk/vf2;->g:Lads_mobile_sdk/s02;

    iget-object v0, v0, Lads_mobile_sdk/s02;->j:Lads_mobile_sdk/r31;

    if-nez v0, :cond_11c

    .line 1244
    const-string v0, "No media webview in OmidNativeMonitor"

    const/4 v5, 0x0

    .line 1245
    invoke-static {v0, v5}, Lads_mobile_sdk/f01;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1246
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_118
    .catchall {:try_start_ba .. :try_end_118} :catchall_107

    .line 1455
    invoke-interface {v4, v5}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    return-object v0

    .line 1456
    :cond_11c
    :try_start_11c
    invoke-virtual {v0}, Lads_mobile_sdk/r31;->d()Lads_mobile_sdk/q41;

    move-result-object v1

    if-nez v1, :cond_12e

    .line 1457
    const-string v0, "No video controller in OmidNativeMonitor"

    const/4 v5, 0x0

    .line 1458
    invoke-static {v0, v5}, Lads_mobile_sdk/f01;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1459
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_12a
    .catchall {:try_start_11c .. :try_end_12a} :catchall_107

    .line 1665
    invoke-interface {v4, v5}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    return-object v0

    .line 1666
    :cond_12e
    :try_start_12e
    invoke-static {v0}, Lkotlinx/coroutines/CompletableDeferredKt;->CompletableDeferred(Ljava/lang/Object;)Lkotlinx/coroutines/CompletableDeferred;

    move-result-object v1

    iput-object v1, v8, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 1667
    iput-object v0, v9, Lads_mobile_sdk/vf2;->k:Lads_mobile_sdk/r31;

    .line 1668
    sget-object v0, Lads_mobile_sdk/l40;->e:Lads_mobile_sdk/l40;

    iput-object v0, v11, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 1669
    sget-object v0, Lads_mobile_sdk/xh2;->c:Lads_mobile_sdk/xh2;

    iput-object v0, v13, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 1693
    :cond_13e
    :goto_13e
    iget-object v0, v9, Lads_mobile_sdk/vf2;->c:Lkotlinx/coroutines/CoroutineScope;

    move-object v1, v7

    new-instance v7, Lads_mobile_sdk/if2;

    const/4 v15, 0x0

    invoke-direct/range {v7 .. v15}, Lads_mobile_sdk/if2;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lads_mobile_sdk/vf2;Ljava/lang/String;Lkotlin/jvm/internal/Ref$ObjectRef;Lads_mobile_sdk/x91;Lkotlin/jvm/internal/Ref$ObjectRef;ZLkotlin/coroutines/Continuation;)V

    .line 1694
    sget-object v5, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    .line 1695
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v5, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v7, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1953
    new-instance v1, Lads_mobile_sdk/ws3;

    const/4 v6, 0x0

    invoke-direct {v1, v7, v6}, Lads_mobile_sdk/ws3;-><init>(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)V

    const/16 v19, 0x2

    const/16 v20, 0x0

    const/16 v17, 0x0

    move-object v15, v0

    move-object/from16 v18, v1

    move-object/from16 v16, v5

    invoke-static/range {v15 .. v20}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    move-result-object v0

    .line 1954
    iput-object v0, v9, Lads_mobile_sdk/vf2;->j:Lkotlinx/coroutines/Job;

    .line 1994
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_16b
    .catchall {:try_start_12e .. :try_end_16b} :catchall_107

    .line 2131
    invoke-interface {v4, v6}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    return-object v0

    .line 2132
    :goto_16f
    invoke-interface {v4, v5}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw v0
.end method

.method public final a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 3

    .line 3135
    invoke-static {p0, p1}, Lads_mobile_sdk/vf2;->b(Lads_mobile_sdk/vf2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    .line 3136
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    if-ne p1, v0, :cond_b

    return-object p1

    :cond_b
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final j(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-static {p0, p1}, Lads_mobile_sdk/vf2;->d(Lads_mobile_sdk/vf2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final m(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-static {p0, p1}, Lads_mobile_sdk/vf2;->c(Lads_mobile_sdk/vf2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final n(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 4

    .line 2
    new-instance v0, Lads_mobile_sdk/pf2;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lads_mobile_sdk/pf2;-><init>(Lads_mobile_sdk/vf2;Lkotlin/coroutines/Continuation;)V

    const-string v1, "measurePreviousView"

    invoke-virtual {p0, v1, v0, p1}, Lads_mobile_sdk/vf2;->a(Ljava/lang/String;Lkotlin/jvm/functions/Function3;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    if-ne p1, v0, :cond_13

    return-object p1

    :cond_13
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final o(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 5

    .line 2
    iget-object v0, p0, Lads_mobile_sdk/vf2;->g:Lads_mobile_sdk/s02;

    iget-object v0, v0, Lads_mobile_sdk/s02;->n:Lads_mobile_sdk/dg2;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    iget-object v0, v0, Lads_mobile_sdk/dg2;->a:Lads_mobile_sdk/cg2;

    goto :goto_b

    :cond_a
    move-object v0, v1

    :goto_b
    sget-object v2, Lads_mobile_sdk/cg2;->a:Lads_mobile_sdk/cg2;

    if-ne v0, v2, :cond_24

    .line 3
    new-instance v0, Lads_mobile_sdk/qf2;

    invoke-direct {v0, v1}, Lads_mobile_sdk/qf2;-><init>(Lkotlin/coroutines/Continuation;)V

    const-string v1, "onAdClicked"

    invoke-virtual {p0, v1, v0, p1}, Lads_mobile_sdk/vf2;->a(Ljava/lang/String;Lkotlin/jvm/functions/Function3;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    if-ne p1, v0, :cond_21

    return-object p1

    :cond_21
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 7
    :cond_24
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final r(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 4

    .line 2
    new-instance v0, Lads_mobile_sdk/rf2;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lads_mobile_sdk/rf2;-><init>(Lkotlin/coroutines/Continuation;)V

    const-string v1, "onAdImpression"

    invoke-virtual {p0, v1, v0, p1}, Lads_mobile_sdk/vf2;->a(Ljava/lang/String;Lkotlin/jvm/functions/Function3;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    if-ne p1, v0, :cond_13

    return-object p1

    :cond_13
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
