###### Class ads_mobile_sdk.if2 (ads_mobile_sdk.if2)
.class public final Lads_mobile_sdk/if2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public a:Ljava/lang/Object;

.field public b:Ljava/lang/Object;

.field public c:Lkotlinx/coroutines/sync/Mutex;

.field public d:Lads_mobile_sdk/vf2;

.field public e:I

.field public final synthetic f:Lkotlin/jvm/internal/Ref$ObjectRef;

.field public final synthetic g:Lads_mobile_sdk/vf2;

.field public final synthetic h:Ljava/lang/String;

.field public final synthetic i:Lkotlin/jvm/internal/Ref$ObjectRef;

.field public final synthetic j:Lads_mobile_sdk/x91;

.field public final synthetic k:Lkotlin/jvm/internal/Ref$ObjectRef;

.field public final synthetic l:Z


# direct methods
.method public constructor <init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lads_mobile_sdk/vf2;Ljava/lang/String;Lkotlin/jvm/internal/Ref$ObjectRef;Lads_mobile_sdk/x91;Lkotlin/jvm/internal/Ref$ObjectRef;ZLkotlin/coroutines/Continuation;)V
    .registers 9

    .line 1
    iput-object p1, p0, Lads_mobile_sdk/if2;->f:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p2, p0, Lads_mobile_sdk/if2;->g:Lads_mobile_sdk/vf2;

    iput-object p3, p0, Lads_mobile_sdk/if2;->h:Ljava/lang/String;

    iput-object p4, p0, Lads_mobile_sdk/if2;->i:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p5, p0, Lads_mobile_sdk/if2;->j:Lads_mobile_sdk/x91;

    iput-object p6, p0, Lads_mobile_sdk/if2;->k:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-boolean p7, p0, Lads_mobile_sdk/if2;->l:Z

    const/4 p1, 0x2

    invoke-direct {p0, p1, p8}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 12

    .line 1
    new-instance v0, Lads_mobile_sdk/if2;

    iget-object v1, p0, Lads_mobile_sdk/if2;->f:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v2, p0, Lads_mobile_sdk/if2;->g:Lads_mobile_sdk/vf2;

    iget-object v3, p0, Lads_mobile_sdk/if2;->h:Ljava/lang/String;

    iget-object v4, p0, Lads_mobile_sdk/if2;->i:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v5, p0, Lads_mobile_sdk/if2;->j:Lads_mobile_sdk/x91;

    iget-object v6, p0, Lads_mobile_sdk/if2;->k:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-boolean v7, p0, Lads_mobile_sdk/if2;->l:Z

    move-object v8, p2

    invoke-direct/range {v0 .. v8}, Lads_mobile_sdk/if2;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lads_mobile_sdk/vf2;Ljava/lang/String;Lkotlin/jvm/internal/Ref$ObjectRef;Lads_mobile_sdk/x91;Lkotlin/jvm/internal/Ref$ObjectRef;ZLkotlin/coroutines/Continuation;)V

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 1
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 2
    invoke-virtual {p0, p1, p2}, Lads_mobile_sdk/if2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lads_mobile_sdk/if2;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lads_mobile_sdk/if2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 19

    move-object/from16 v1, p0

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 144
    iget v2, v1, Lads_mobile_sdk/if2;->e:I

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v2, :cond_4e

    if-eq v2, v6, :cond_48

    if-eq v2, v5, :cond_3c

    if-eq v2, v4, :cond_30

    if-ne v2, v3, :cond_28

    iget-object v0, v1, Lads_mobile_sdk/if2;->d:Lads_mobile_sdk/vf2;

    iget-object v2, v1, Lads_mobile_sdk/if2;->c:Lkotlinx/coroutines/sync/Mutex;

    iget-object v3, v1, Lads_mobile_sdk/if2;->b:Ljava/lang/Object;

    check-cast v3, Lads_mobile_sdk/k9;

    iget-object v4, v1, Lads_mobile_sdk/if2;->a:Ljava/lang/Object;

    check-cast v4, Lads_mobile_sdk/r31;

    :try_start_23
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_26
    .catch Ljava/util/concurrent/CancellationException; {:try_start_23 .. :try_end_26} :catch_d8

    goto/16 :goto_c9

    :cond_28
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 145
    :cond_30
    iget-object v2, v1, Lads_mobile_sdk/if2;->a:Ljava/lang/Object;

    check-cast v2, Lads_mobile_sdk/r31;

    :try_start_34
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_37
    .catch Ljava/util/concurrent/CancellationException; {:try_start_34 .. :try_end_37} :catch_d8

    move-object v4, v2

    move-object/from16 v2, p1

    goto/16 :goto_af

    .line 146
    :cond_3c
    iget-object v0, v1, Lads_mobile_sdk/if2;->b:Ljava/lang/Object;

    check-cast v0, Lads_mobile_sdk/vf2;

    iget-object v2, v1, Lads_mobile_sdk/if2;->a:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/sync/Mutex;

    :try_start_44
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_81

    .line 147
    :cond_48
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_4b
    .catch Ljava/util/concurrent/CancellationException; {:try_start_44 .. :try_end_4b} :catch_d8

    move-object/from16 v2, p1

    goto :goto_69

    .line 148
    :cond_4e
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 150
    :try_start_51
    iget-object v2, v1, Lads_mobile_sdk/if2;->f:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v2, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    if-nez v2, :cond_5e

    const-string v2, "deferredWebView"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v2, v7

    goto :goto_60

    .line 151
    :cond_5e
    check-cast v2, Lkotlinx/coroutines/Deferred;

    :goto_60
    iput v6, v1, Lads_mobile_sdk/if2;->e:I

    invoke-interface {v2, v1}, Lkotlinx/coroutines/Deferred;->await(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v0, :cond_69

    goto :goto_c5

    .line 152
    :cond_69
    :goto_69
    move-object v10, v2

    check-cast v10, Lads_mobile_sdk/r31;

    if-nez v10, :cond_8e

    .line 157
    iget-object v2, v1, Lads_mobile_sdk/if2;->g:Lads_mobile_sdk/vf2;

    .line 158
    iget-object v3, v2, Lads_mobile_sdk/vf2;->i:Lkotlinx/coroutines/sync/Mutex;

    .line 159
    iput-object v3, v1, Lads_mobile_sdk/if2;->a:Ljava/lang/Object;

    iput-object v2, v1, Lads_mobile_sdk/if2;->b:Ljava/lang/Object;

    iput v5, v1, Lads_mobile_sdk/if2;->e:I

    invoke-interface {v3, v7, v1}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v4
    :try_end_7c
    .catch Ljava/util/concurrent/CancellationException; {:try_start_51 .. :try_end_7c} :catch_d8

    if-ne v4, v0, :cond_7f

    goto :goto_c5

    :cond_7f
    move-object v0, v2

    move-object v2, v3

    .line 160
    :goto_81
    :try_start_81
    iput-object v7, v0, Lads_mobile_sdk/vf2;->j:Lkotlinx/coroutines/Job;

    .line 161
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_85
    .catchall {:try_start_81 .. :try_end_85} :catchall_89

    .line 333
    :try_start_85
    invoke-interface {v2, v7}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    return-object v0

    :catchall_89
    move-exception v0

    .line 334
    invoke-interface {v2, v7}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw v0

    .line 335
    :cond_8e
    iget-object v9, v1, Lads_mobile_sdk/if2;->g:Lads_mobile_sdk/vf2;

    .line 336
    iget-object v2, v9, Lads_mobile_sdk/es;->b:Lkotlin/coroutines/CoroutineContext;

    .line 337
    new-instance v8, Lads_mobile_sdk/hf2;

    iget-object v11, v1, Lads_mobile_sdk/if2;->h:Ljava/lang/String;

    iget-object v12, v1, Lads_mobile_sdk/if2;->i:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v13, v1, Lads_mobile_sdk/if2;->j:Lads_mobile_sdk/x91;

    iget-object v14, v1, Lads_mobile_sdk/if2;->k:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-boolean v15, v1, Lads_mobile_sdk/if2;->l:Z

    const/16 v16, 0x0

    invoke-direct/range {v8 .. v16}, Lads_mobile_sdk/hf2;-><init>(Lads_mobile_sdk/vf2;Lads_mobile_sdk/r31;Ljava/lang/String;Lkotlin/jvm/internal/Ref$ObjectRef;Lads_mobile_sdk/x91;Lkotlin/jvm/internal/Ref$ObjectRef;ZLkotlin/coroutines/Continuation;)V

    iput-object v10, v1, Lads_mobile_sdk/if2;->a:Ljava/lang/Object;

    iput v4, v1, Lads_mobile_sdk/if2;->e:I

    invoke-static {v2, v8, v1}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v0, :cond_ae

    goto :goto_c5

    :cond_ae
    move-object v4, v10

    .line 338
    :goto_af
    check-cast v2, Lads_mobile_sdk/k9;

    .line 370
    iget-object v5, v1, Lads_mobile_sdk/if2;->g:Lads_mobile_sdk/vf2;

    .line 371
    iget-object v6, v5, Lads_mobile_sdk/vf2;->i:Lkotlinx/coroutines/sync/Mutex;

    .line 372
    iput-object v4, v1, Lads_mobile_sdk/if2;->a:Ljava/lang/Object;

    iput-object v2, v1, Lads_mobile_sdk/if2;->b:Ljava/lang/Object;

    iput-object v6, v1, Lads_mobile_sdk/if2;->c:Lkotlinx/coroutines/sync/Mutex;

    iput-object v5, v1, Lads_mobile_sdk/if2;->d:Lads_mobile_sdk/vf2;

    iput v3, v1, Lads_mobile_sdk/if2;->e:I

    invoke-interface {v6, v7, v1}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3
    :try_end_c3
    .catch Ljava/util/concurrent/CancellationException; {:try_start_85 .. :try_end_c3} :catch_d8

    if-ne v3, v0, :cond_c6

    :goto_c5
    return-object v0

    :cond_c6
    move-object v3, v2

    move-object v0, v5

    move-object v2, v6

    .line 373
    :goto_c9
    :try_start_c9
    iput-object v3, v0, Lads_mobile_sdk/vf2;->l:Lads_mobile_sdk/k9;

    .line 374
    iput-object v4, v0, Lads_mobile_sdk/vf2;->k:Lads_mobile_sdk/r31;

    .line 375
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_cf
    .catchall {:try_start_c9 .. :try_end_cf} :catchall_d3

    .line 528
    :try_start_cf
    invoke-interface {v2, v7}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    goto :goto_dd

    :catchall_d3
    move-exception v0

    .line 529
    invoke-interface {v2, v7}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw v0
    :try_end_d8
    .catch Ljava/util/concurrent/CancellationException; {:try_start_cf .. :try_end_d8} :catch_d8

    .line 530
    :catch_d8
    const-string v0, "omid session creation was cancelled in onAdWillBeReturned"

    .line 531
    invoke-static {v0, v7}, Lads_mobile_sdk/f01;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 532
    :goto_dd
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method
