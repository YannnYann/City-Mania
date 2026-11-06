###### Class ads_mobile_sdk.vi2 (ads_mobile_sdk.vi2)
.class public final Lads_mobile_sdk/vi2;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lkotlinx/coroutines/CoroutineScope;

.field public final b:Lkotlin/coroutines/CoroutineContext;

.field public final c:Lads_mobile_sdk/u43;

.field public final d:Lads_mobile_sdk/tx;

.field public final e:Lads_mobile_sdk/v33;

.field public final f:Lads_mobile_sdk/k8;

.field public g:Ljava/util/List;

.field public h:Lads_mobile_sdk/ec3;

.field public final i:Lkotlinx/coroutines/sync/Mutex;

.field public j:Lads_mobile_sdk/q01;

.field public k:I

.field public l:Z

.field public final m:Ljava/util/HashSet;

.field public final n:Ljava/util/ArrayList;

.field public o:Lkotlinx/coroutines/CompletableJob;

.field public p:Ljava/util/List;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lads_mobile_sdk/u43;Lads_mobile_sdk/tx;Lads_mobile_sdk/v33;Lads_mobile_sdk/k8;)V
    .registers 8

    .line 1
    const-string v0, "backgroundScope"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "backgroundContext"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "requestThrottler"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clock"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "renderingMonitor"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adRendererProvider"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lads_mobile_sdk/vi2;->a:Lkotlinx/coroutines/CoroutineScope;

    .line 48
    iput-object p2, p0, Lads_mobile_sdk/vi2;->b:Lkotlin/coroutines/CoroutineContext;

    .line 49
    iput-object p3, p0, Lads_mobile_sdk/vi2;->c:Lads_mobile_sdk/u43;

    .line 50
    iput-object p4, p0, Lads_mobile_sdk/vi2;->d:Lads_mobile_sdk/tx;

    .line 51
    iput-object p5, p0, Lads_mobile_sdk/vi2;->e:Lads_mobile_sdk/v33;

    .line 52
    iput-object p6, p0, Lads_mobile_sdk/vi2;->f:Lads_mobile_sdk/k8;

    const/4 p1, 0x0

    const/4 p2, 0x1

    const/4 p3, 0x0

    .line 58
    invoke-static {p1, p2, p3}, Lkotlinx/coroutines/sync/MutexKt;->Mutex$default(ZILjava/lang/Object;)Lkotlinx/coroutines/sync/Mutex;

    move-result-object p1

    iput-object p1, p0, Lads_mobile_sdk/vi2;->i:Lkotlinx/coroutines/sync/Mutex;

    const p1, 0x7fffffff

    .line 61
    iput p1, p0, Lads_mobile_sdk/vi2;->k:I

    .line 63
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lads_mobile_sdk/vi2;->m:Ljava/util/HashSet;

    .line 64
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lads_mobile_sdk/vi2;->n:Ljava/util/ArrayList;

    .line 65
    invoke-static {p3, p2, p3}, Lkotlinx/coroutines/JobKt;->Job$default(Lkotlinx/coroutines/Job;ILjava/lang/Object;)Lkotlinx/coroutines/CompletableJob;

    move-result-object p1

    invoke-interface {p1}, Lkotlinx/coroutines/CompletableJob;->complete()Z

    iput-object p1, p0, Lads_mobile_sdk/vi2;->o:Lkotlinx/coroutines/CompletableJob;

    return-void
.end method

.method public static final a(Lads_mobile_sdk/vi2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 18

    move-object/from16 v0, p1

    .line 44
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 45
    instance-of v1, v0, Lads_mobile_sdk/si2;

    if-eqz v1, :cond_1a

    move-object v1, v0

    check-cast v1, Lads_mobile_sdk/si2;

    iget v2, v1, Lads_mobile_sdk/si2;->g:I

    const/high16 v3, -0x80000000

    and-int v4, v2, v3

    if-eqz v4, :cond_1a

    sub-int/2addr v2, v3

    iput v2, v1, Lads_mobile_sdk/si2;->g:I

    move-object/from16 v2, p0

    goto :goto_21

    :cond_1a
    new-instance v1, Lads_mobile_sdk/si2;

    move-object/from16 v2, p0

    invoke-direct {v1, v2, v0}, Lads_mobile_sdk/si2;-><init>(Lads_mobile_sdk/vi2;Lkotlin/coroutines/Continuation;)V

    :goto_21
    iget-object v0, v1, Lads_mobile_sdk/si2;->e:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v3

    .line 169
    iget v4, v1, Lads_mobile_sdk/si2;->g:I

    const/4 v5, 0x4

    const/4 v6, 0x3

    const/4 v7, 0x2

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-eqz v4, :cond_6b

    if-eq v4, v8, :cond_64

    if-eq v4, v7, :cond_5c

    if-eq v4, v6, :cond_50

    if-ne v4, v5, :cond_48

    iget-object v2, v1, Lads_mobile_sdk/si2;->d:Lkotlinx/coroutines/sync/Mutex;

    iget-object v4, v1, Lads_mobile_sdk/si2;->c:Lads_mobile_sdk/v01;

    iget-object v10, v1, Lads_mobile_sdk/si2;->b:Lads_mobile_sdk/i2;

    iget-object v11, v1, Lads_mobile_sdk/si2;->a:Lads_mobile_sdk/vi2;

    :try_start_40
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_43
    .catchall {:try_start_40 .. :try_end_43} :catchall_45

    goto/16 :goto_f7

    :catchall_45
    move-exception v0

    goto/16 :goto_13b

    :cond_48
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_50
    iget-object v2, v1, Lads_mobile_sdk/si2;->d:Lkotlinx/coroutines/sync/Mutex;

    iget-object v4, v1, Lads_mobile_sdk/si2;->c:Lads_mobile_sdk/v01;

    iget-object v10, v1, Lads_mobile_sdk/si2;->b:Lads_mobile_sdk/i2;

    iget-object v11, v1, Lads_mobile_sdk/si2;->a:Lads_mobile_sdk/vi2;

    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_af

    :cond_5c
    iget-object v2, v1, Lads_mobile_sdk/si2;->b:Lads_mobile_sdk/i2;

    iget-object v4, v1, Lads_mobile_sdk/si2;->a:Lads_mobile_sdk/vi2;

    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_95

    :cond_64
    iget-object v2, v1, Lads_mobile_sdk/si2;->a:Lads_mobile_sdk/vi2;

    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    :cond_69
    move-object v4, v2

    goto :goto_80

    :cond_6b
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 171
    :goto_6e
    iput-object v2, v1, Lads_mobile_sdk/si2;->a:Lads_mobile_sdk/vi2;

    iput-object v9, v1, Lads_mobile_sdk/si2;->b:Lads_mobile_sdk/i2;

    iput-object v9, v1, Lads_mobile_sdk/si2;->c:Lads_mobile_sdk/v01;

    iput-object v9, v1, Lads_mobile_sdk/si2;->d:Lkotlinx/coroutines/sync/Mutex;

    iput v8, v1, Lads_mobile_sdk/si2;->g:I

    invoke-virtual {v2, v1}, Lads_mobile_sdk/vi2;->a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v3, :cond_69

    goto/16 :goto_f6

    :goto_80
    move-object v2, v0

    check-cast v2, Lads_mobile_sdk/i2;

    if-nez v2, :cond_88

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    .line 172
    :cond_88
    iput-object v4, v1, Lads_mobile_sdk/si2;->a:Lads_mobile_sdk/vi2;

    iput-object v2, v1, Lads_mobile_sdk/si2;->b:Lads_mobile_sdk/i2;

    iput v7, v1, Lads_mobile_sdk/si2;->g:I

    invoke-virtual {v4, v2, v1}, Lads_mobile_sdk/vi2;->a(Lads_mobile_sdk/i2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v3, :cond_95

    goto :goto_f6

    .line 173
    :cond_95
    :goto_95
    check-cast v0, Lads_mobile_sdk/v01;

    .line 178
    iget-object v10, v4, Lads_mobile_sdk/vi2;->i:Lkotlinx/coroutines/sync/Mutex;

    .line 399
    iput-object v4, v1, Lads_mobile_sdk/si2;->a:Lads_mobile_sdk/vi2;

    iput-object v2, v1, Lads_mobile_sdk/si2;->b:Lads_mobile_sdk/i2;

    iput-object v0, v1, Lads_mobile_sdk/si2;->c:Lads_mobile_sdk/v01;

    iput-object v10, v1, Lads_mobile_sdk/si2;->d:Lkotlinx/coroutines/sync/Mutex;

    iput v6, v1, Lads_mobile_sdk/si2;->g:I

    invoke-interface {v10, v9, v1}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v11

    if-ne v11, v3, :cond_aa

    goto :goto_f6

    :cond_aa
    move-object v11, v10

    move-object v10, v2

    move-object v2, v11

    move-object v11, v4

    move-object v4, v0

    .line 400
    :goto_af
    :try_start_af
    iget-boolean v0, v10, Lads_mobile_sdk/i2;->c0:Z

    if-eqz v0, :cond_b8

    .line 401
    iget-object v0, v11, Lads_mobile_sdk/vi2;->o:Lkotlinx/coroutines/CompletableJob;

    invoke-interface {v0}, Lkotlinx/coroutines/CompletableJob;->complete()Z

    .line 403
    :cond_b8
    iget-object v0, v11, Lads_mobile_sdk/vi2;->n:Ljava/util/ArrayList;

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 404
    iget-object v0, v11, Lads_mobile_sdk/vi2;->m:Ljava/util/HashSet;

    iget-object v12, v10, Lads_mobile_sdk/i2;->U:Ljava/lang/String;

    invoke-static {v0}, Lkotlin/jvm/internal/TypeIntrinsics;->asMutableCollection(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0, v12}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 406
    instance-of v0, v4, Lads_mobile_sdk/q01;

    if-eqz v0, :cond_106

    iget v0, v10, Lads_mobile_sdk/i2;->w:I

    iget v12, v11, Lads_mobile_sdk/vi2;->k:I

    if-ge v0, v12, :cond_106

    .line 407
    iget-boolean v12, v10, Lads_mobile_sdk/i2;->A0:Z

    if-eqz v12, :cond_df

    .line 411
    iput v0, v11, Lads_mobile_sdk/vi2;->k:I

    .line 412
    check-cast v4, Lads_mobile_sdk/q01;

    iput-object v4, v11, Lads_mobile_sdk/vi2;->j:Lads_mobile_sdk/q01;

    .line 413
    iput-boolean v8, v11, Lads_mobile_sdk/vi2;->l:Z

    goto :goto_106

    .line 417
    :cond_df
    move-object v0, v4

    check-cast v0, Lads_mobile_sdk/q01;

    .line 418
    iget-object v0, v0, Lads_mobile_sdk/q01;->b:Ljava/lang/Object;

    .line 419
    check-cast v0, Lkotlinx/coroutines/flow/Flow;

    iput-object v11, v1, Lads_mobile_sdk/si2;->a:Lads_mobile_sdk/vi2;

    iput-object v10, v1, Lads_mobile_sdk/si2;->b:Lads_mobile_sdk/i2;

    iput-object v4, v1, Lads_mobile_sdk/si2;->c:Lads_mobile_sdk/v01;

    iput-object v2, v1, Lads_mobile_sdk/si2;->d:Lkotlinx/coroutines/sync/Mutex;

    iput v5, v1, Lads_mobile_sdk/si2;->g:I

    invoke-static {v0, v1}, Lkotlinx/coroutines/flow/FlowKt;->first(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v3, :cond_f7

    :goto_f6
    return-object v3

    :cond_f7
    :goto_f7
    instance-of v0, v0, Lads_mobile_sdk/q01;

    if-eqz v0, :cond_106

    .line 420
    iget v0, v10, Lads_mobile_sdk/i2;->w:I

    iput v0, v11, Lads_mobile_sdk/vi2;->k:I

    .line 421
    check-cast v4, Lads_mobile_sdk/q01;

    iput-object v4, v11, Lads_mobile_sdk/vi2;->j:Lads_mobile_sdk/q01;

    const/4 v0, 0x0

    .line 422
    iput-boolean v0, v11, Lads_mobile_sdk/vi2;->l:Z
    :try_end_106
    .catchall {:try_start_af .. :try_end_106} :catchall_45

    :cond_106
    :goto_106
    move-object v4, v2

    move-object v2, v11

    .line 431
    :try_start_108
    invoke-virtual {v2}, Lads_mobile_sdk/vi2;->a()Z

    move-result v0

    if-nez v0, :cond_134

    .line 432
    iget-object v10, v2, Lads_mobile_sdk/vi2;->a:Lkotlinx/coroutines/CoroutineScope;

    new-instance v0, Lads_mobile_sdk/ti2;

    invoke-direct {v0, v2, v9}, Lads_mobile_sdk/ti2;-><init>(Lads_mobile_sdk/vi2;Lkotlin/coroutines/Continuation;)V

    .line 433
    sget-object v11, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    .line 434
    const-string v12, "<this>"

    invoke-static {v10, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v12, "context"

    invoke-static {v11, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v12, "block"

    invoke-static {v0, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 692
    new-instance v13, Lads_mobile_sdk/ws3;

    invoke-direct {v13, v0, v9}, Lads_mobile_sdk/ws3;-><init>(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)V

    const/4 v14, 0x2

    const/4 v15, 0x0

    const/4 v12, 0x0

    invoke-static/range {v10 .. v15}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    goto :goto_134

    :catchall_132
    move-exception v0

    goto :goto_13c

    .line 693
    :cond_134
    :goto_134
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_136
    .catchall {:try_start_108 .. :try_end_136} :catchall_132

    .line 885
    invoke-interface {v4, v9}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    goto/16 :goto_6e

    :goto_13b
    move-object v4, v2

    :goto_13c
    invoke-interface {v4, v9}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw v0
.end method


# virtual methods
.method public final a(Lads_mobile_sdk/ec3;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 12

    .line 2778
    instance-of v0, p2, Lads_mobile_sdk/mi2;

    if-eqz v0, :cond_13

    move-object v0, p2

    check-cast v0, Lads_mobile_sdk/mi2;

    iget v1, v0, Lads_mobile_sdk/mi2;->g:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/mi2;->g:I

    goto :goto_18

    :cond_13
    new-instance v0, Lads_mobile_sdk/mi2;

    invoke-direct {v0, p0, p2}, Lads_mobile_sdk/mi2;-><init>(Lads_mobile_sdk/vi2;Lkotlin/coroutines/Continuation;)V

    :goto_18
    iget-object p2, v0, Lads_mobile_sdk/mi2;->e:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 2845
    iget v2, v0, Lads_mobile_sdk/mi2;->g:I

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v2, :cond_6b

    if-eq v2, v5, :cond_5b

    if-eq v2, v4, :cond_44

    if-ne v2, v3, :cond_3c

    iget-object p1, v0, Lads_mobile_sdk/mi2;->b:Ljava/lang/Object;

    check-cast p1, Ljava/io/Closeable;

    iget-object v0, v0, Lads_mobile_sdk/mi2;->a:Ljava/lang/Object;

    check-cast v0, Lads_mobile_sdk/rr3;

    :try_start_34
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_37
    .catchall {:try_start_34 .. :try_end_37} :catchall_39

    goto/16 :goto_ed

    :catchall_39
    move-exception p2

    goto/16 :goto_fe

    :cond_3c
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2846
    :cond_44
    iget-object p1, v0, Lads_mobile_sdk/mi2;->d:Lads_mobile_sdk/rr3;

    iget-object v2, v0, Lads_mobile_sdk/mi2;->c:Lads_mobile_sdk/rr3;

    iget-object v4, v0, Lads_mobile_sdk/mi2;->b:Ljava/lang/Object;

    check-cast v4, Lads_mobile_sdk/ec3;

    iget-object v5, v0, Lads_mobile_sdk/mi2;->a:Ljava/lang/Object;

    check-cast v5, Lads_mobile_sdk/vi2;

    :try_start_50
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_53
    .catchall {:try_start_50 .. :try_end_53} :catchall_57

    :goto_53
    move-object p2, p1

    move-object p1, v4

    goto/16 :goto_d6

    :catchall_57
    move-exception p2

    move-object v0, v2

    goto/16 :goto_fe

    .line 2847
    :cond_5b
    iget-object p1, v0, Lads_mobile_sdk/mi2;->d:Lads_mobile_sdk/rr3;

    iget-object v2, v0, Lads_mobile_sdk/mi2;->c:Lads_mobile_sdk/rr3;

    iget-object v4, v0, Lads_mobile_sdk/mi2;->b:Ljava/lang/Object;

    check-cast v4, Lads_mobile_sdk/ec3;

    iget-object v5, v0, Lads_mobile_sdk/mi2;->a:Ljava/lang/Object;

    check-cast v5, Lads_mobile_sdk/vi2;

    :try_start_67
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_6a
    .catchall {:try_start_67 .. :try_end_6a} :catchall_57

    goto :goto_53

    .line 2848
    :cond_6b
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 2849
    sget-object p2, Lads_mobile_sdk/s11;->K:Lads_mobile_sdk/s11;

    const-string v2, "Mediation"

    invoke-static {v2}, Lkotlin/collections/CollectionsKt__CollectionsJVMKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 3052
    invoke-static {p2, v2, v5}, Lads_mobile_sdk/hs3;->a(Lads_mobile_sdk/s11;Ljava/util/List;Z)Lads_mobile_sdk/rr3;

    move-result-object p2

    .line 3061
    :try_start_7a
    invoke-static {}, Lads_mobile_sdk/hs3;->a()Lads_mobile_sdk/rr3;

    move-result-object v2

    .line 3062
    iget-object v2, v2, Lads_mobile_sdk/rr3;->a:Lads_mobile_sdk/ks3;

    .line 3063
    iget-object v2, v2, Lads_mobile_sdk/ks3;->b:Lads_mobile_sdk/tn1;

    .line 3064
    iget-object v7, p1, Lads_mobile_sdk/ec3;->b:Lads_mobile_sdk/ac3;

    iget-object v7, v7, Lads_mobile_sdk/ac3;->a:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    iput v7, v2, Lads_mobile_sdk/tn1;->e:I

    .line 3065
    iget-object v2, p1, Lads_mobile_sdk/ec3;->b:Lads_mobile_sdk/ac3;

    iget-object v2, v2, Lads_mobile_sdk/ac3;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_b6

    .line 3066
    iget-object v2, p0, Lads_mobile_sdk/vi2;->c:Lads_mobile_sdk/u43;

    iget-object v4, p1, Lads_mobile_sdk/ec3;->a:Lads_mobile_sdk/wb3;

    iget-object v4, v4, Lads_mobile_sdk/wb3;->a:Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;

    invoke-virtual {v4}, Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;->getAdUnitId()Ljava/lang/String;

    move-result-object v4

    iput-object p0, v0, Lads_mobile_sdk/mi2;->a:Ljava/lang/Object;

    iput-object p1, v0, Lads_mobile_sdk/mi2;->b:Ljava/lang/Object;

    iput-object p2, v0, Lads_mobile_sdk/mi2;->c:Lads_mobile_sdk/rr3;

    iput-object p2, v0, Lads_mobile_sdk/mi2;->d:Lads_mobile_sdk/rr3;

    iput v5, v0, Lads_mobile_sdk/mi2;->g:I

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3067
    invoke-static {v2, v4, v0}, Lads_mobile_sdk/u43;->b(Lads_mobile_sdk/u43;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_d4

    goto :goto_e8

    :catchall_b4
    move-exception p1

    goto :goto_105

    .line 3068
    :cond_b6
    iget-object v2, p0, Lads_mobile_sdk/vi2;->c:Lads_mobile_sdk/u43;

    iget-object v5, p1, Lads_mobile_sdk/ec3;->a:Lads_mobile_sdk/wb3;

    iget-object v5, v5, Lads_mobile_sdk/wb3;->a:Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;

    invoke-virtual {v5}, Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;->getAdUnitId()Ljava/lang/String;

    move-result-object v5

    iput-object p0, v0, Lads_mobile_sdk/mi2;->a:Ljava/lang/Object;

    iput-object p1, v0, Lads_mobile_sdk/mi2;->b:Ljava/lang/Object;

    iput-object p2, v0, Lads_mobile_sdk/mi2;->c:Lads_mobile_sdk/rr3;

    iput-object p2, v0, Lads_mobile_sdk/mi2;->d:Lads_mobile_sdk/rr3;

    iput v4, v0, Lads_mobile_sdk/mi2;->g:I

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3069
    invoke-static {v2, v5, v0}, Lads_mobile_sdk/u43;->a(Lads_mobile_sdk/u43;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2
    :try_end_d1
    .catchall {:try_start_7a .. :try_end_d1} :catchall_b4

    if-ne v2, v1, :cond_d4

    goto :goto_e8

    :cond_d4
    move-object v5, p0

    move-object v2, p2

    .line 3070
    :goto_d6
    :try_start_d6
    iput-object p1, v5, Lads_mobile_sdk/vi2;->h:Lads_mobile_sdk/ec3;

    .line 3071
    iput-object v2, v0, Lads_mobile_sdk/mi2;->a:Ljava/lang/Object;

    iput-object p2, v0, Lads_mobile_sdk/mi2;->b:Ljava/lang/Object;

    iput-object v6, v0, Lads_mobile_sdk/mi2;->c:Lads_mobile_sdk/rr3;

    iput-object v6, v0, Lads_mobile_sdk/mi2;->d:Lads_mobile_sdk/rr3;

    iput v3, v0, Lads_mobile_sdk/mi2;->g:I

    invoke-virtual {v5, v0}, Lads_mobile_sdk/vi2;->b(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1
    :try_end_e6
    .catchall {:try_start_d6 .. :try_end_e6} :catchall_100

    if-ne p1, v1, :cond_e9

    :goto_e8
    return-object v1

    :cond_e9
    move-object v0, p2

    move-object p2, p1

    move-object p1, v0

    move-object v0, v2

    .line 3072
    :goto_ed
    :try_start_ed
    check-cast p2, Lads_mobile_sdk/v01;

    .line 3278
    instance-of v1, p2, Lads_mobile_sdk/i01;

    if-eqz v1, :cond_fa

    .line 3279
    move-object v1, p2

    check-cast v1, Lads_mobile_sdk/i01;

    const/4 v2, 0x0

    .line 3280
    invoke-static {v1, v2}, Lads_mobile_sdk/xs3;->a(Lads_mobile_sdk/i01;Z)V
    :try_end_fa
    .catchall {:try_start_ed .. :try_end_fa} :catchall_39

    .line 3281
    :cond_fa
    invoke-static {p1, v6}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object p2

    :goto_fe
    move-object v2, v0

    goto :goto_108

    :catchall_100
    move-exception p1

    move-object v8, p2

    move-object p2, p1

    move-object p1, v8

    goto :goto_108

    :goto_105
    move-object v2, p2

    move-object p2, p1

    move-object p1, v2

    .line 3291
    :goto_108
    :try_start_108
    invoke-virtual {v2, p2}, Lads_mobile_sdk/rr3;->b(Ljava/lang/Throwable;)V

    .line 3295
    instance-of v0, p2, Lads_mobile_sdk/v24;

    if-nez v0, :cond_140

    .line 3297
    instance-of v0, p2, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v0, :cond_11d

    instance-of v0, p2, Ljava/util/concurrent/CancellationException;

    if-nez v0, :cond_11d

    .line 3303
    invoke-virtual {v2, p2}, Lads_mobile_sdk/rr3;->a(Ljava/lang/Throwable;)V

    goto :goto_11d

    :catchall_11b
    move-exception p2

    goto :goto_141

    .line 3309
    :cond_11d
    :goto_11d
    instance-of v0, p2, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v0, :cond_138

    .line 3310
    instance-of v0, p2, Ljava/util/concurrent/CancellationException;

    if-nez v0, :cond_130

    .line 3311
    instance-of v0, p2, Lads_mobile_sdk/w01;

    if-eqz v0, :cond_12a

    throw p2

    .line 3312
    :cond_12a
    new-instance v0, Lads_mobile_sdk/b01;

    invoke-direct {v0, p2}, Lads_mobile_sdk/b01;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 3313
    :cond_130
    new-instance v0, Lads_mobile_sdk/wz0;

    check-cast p2, Ljava/util/concurrent/CancellationException;

    invoke-direct {v0, p2}, Lads_mobile_sdk/wz0;-><init>(Ljava/util/concurrent/CancellationException;)V

    throw v0

    .line 3314
    :cond_138
    new-instance v0, Lads_mobile_sdk/i21;

    check-cast p2, Lkotlinx/coroutines/TimeoutCancellationException;

    invoke-direct {v0, p2}, Lads_mobile_sdk/i21;-><init>(Lkotlinx/coroutines/TimeoutCancellationException;)V

    throw v0

    .line 3315
    :cond_140
    throw p2
    :try_end_141
    .catchall {:try_start_108 .. :try_end_141} :catchall_11b

    .line 3316
    :goto_141
    :try_start_141
    throw p2
    :try_end_142
    .catchall {:try_start_141 .. :try_end_142} :catchall_142

    :catchall_142
    move-exception v0

    invoke-static {p1, p2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final a(Lads_mobile_sdk/i2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 16

    .line 3317
    instance-of v0, p2, Lads_mobile_sdk/ni2;

    if-eqz v0, :cond_14

    move-object v0, p2

    check-cast v0, Lads_mobile_sdk/ni2;

    iget v1, v0, Lads_mobile_sdk/ni2;->h:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_14

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/ni2;->h:I

    :goto_12
    move-object v6, v0

    goto :goto_1a

    :cond_14
    new-instance v0, Lads_mobile_sdk/ni2;

    invoke-direct {v0, p0, p2}, Lads_mobile_sdk/ni2;-><init>(Lads_mobile_sdk/vi2;Lkotlin/coroutines/Continuation;)V

    goto :goto_12

    :goto_1a
    iget-object p2, v6, Lads_mobile_sdk/ni2;->f:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 3523
    iget v1, v6, Lads_mobile_sdk/ni2;->h:I

    const/4 v2, 0x5

    const/4 v7, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x1

    const/4 v8, 0x2

    const/4 v9, 0x0

    if-eqz v1, :cond_81

    if-eq v1, v4, :cond_6d

    if-eq v1, v8, :cond_55

    if-eq v1, v3, :cond_44

    if-eq v1, v7, :cond_34

    if-ne v1, v2, :cond_3c

    :cond_34
    iget-object p1, v6, Lads_mobile_sdk/ni2;->a:Ljava/lang/Object;

    check-cast p1, Lads_mobile_sdk/n01;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    return-object p1

    :cond_3c
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_44
    iget-object p1, v6, Lads_mobile_sdk/ni2;->c:Ljava/lang/Object;

    check-cast p1, Lads_mobile_sdk/v01;

    iget-object v1, v6, Lads_mobile_sdk/ni2;->b:Lads_mobile_sdk/i2;

    iget-object v2, v6, Lads_mobile_sdk/ni2;->a:Ljava/lang/Object;

    check-cast v2, Lads_mobile_sdk/vi2;

    :try_start_4e
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_51
    .catch Ljava/util/concurrent/CancellationException; {:try_start_4e .. :try_end_51} :catch_52

    return-object p1

    :catch_52
    move-object p1, v1

    goto/16 :goto_158

    .line 3524
    :cond_55
    iget-wide v1, v6, Lads_mobile_sdk/ni2;->e:J

    iget-object p1, v6, Lads_mobile_sdk/ni2;->c:Ljava/lang/Object;

    check-cast p1, Lads_mobile_sdk/tx;

    iget-object v4, v6, Lads_mobile_sdk/ni2;->b:Lads_mobile_sdk/i2;

    iget-object v5, v6, Lads_mobile_sdk/ni2;->a:Ljava/lang/Object;

    check-cast v5, Lads_mobile_sdk/vi2;

    :try_start_61
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_64
    .catch Ljava/util/concurrent/CancellationException; {:try_start_61 .. :try_end_64} :catch_69

    move-object v10, v5

    move v5, v3

    move-object v3, v4

    goto/16 :goto_f3

    :catch_69
    move-object p1, v4

    move-object v2, v5

    goto/16 :goto_158

    .line 3525
    :cond_6d
    iget-object p1, v6, Lads_mobile_sdk/ni2;->d:Lads_mobile_sdk/j2;

    iget-object v1, v6, Lads_mobile_sdk/ni2;->c:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v2, v6, Lads_mobile_sdk/ni2;->b:Lads_mobile_sdk/i2;

    iget-object v4, v6, Lads_mobile_sdk/ni2;->a:Ljava/lang/Object;

    check-cast v4, Lads_mobile_sdk/vi2;

    :try_start_79
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_7c
    .catch Ljava/util/concurrent/CancellationException; {:try_start_79 .. :try_end_7c} :catch_7d

    goto :goto_cb

    :catch_7d
    move-object p1, v2

    move-object v2, v4

    goto/16 :goto_158

    .line 3526
    :cond_81
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 3529
    iget-object p2, p0, Lads_mobile_sdk/vi2;->f:Lads_mobile_sdk/k8;

    iget-object v1, p0, Lads_mobile_sdk/vi2;->h:Lads_mobile_sdk/ec3;

    if-nez v1, :cond_90

    const-string v1, "serverTransaction"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v9

    :cond_90
    invoke-interface {p2, v1, p1}, Lads_mobile_sdk/k8;->a(Lads_mobile_sdk/ec3;Lads_mobile_sdk/i2;)Lads_mobile_sdk/h8;

    move-result-object p2

    .line 3532
    :try_start_94
    iget-object v1, p1, Lads_mobile_sdk/i2;->b0:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_9a
    :goto_9a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_137

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 3533
    invoke-interface {p2, v5}, Lads_mobile_sdk/h8;->a(Ljava/lang/String;)Lads_mobile_sdk/j2;

    move-result-object v10

    if-nez v10, :cond_ad

    goto :goto_9a

    .line 3534
    :cond_ad
    invoke-interface {v10}, Lads_mobile_sdk/j2;->b()Z

    move-result v11

    if-eqz v11, :cond_9a

    .line 3535
    iget-object p2, p0, Lads_mobile_sdk/vi2;->e:Lads_mobile_sdk/v33;

    iput-object p0, v6, Lads_mobile_sdk/ni2;->a:Ljava/lang/Object;

    iput-object p1, v6, Lads_mobile_sdk/ni2;->b:Lads_mobile_sdk/i2;

    iput-object v5, v6, Lads_mobile_sdk/ni2;->c:Ljava/lang/Object;

    iput-object v10, v6, Lads_mobile_sdk/ni2;->d:Lads_mobile_sdk/j2;

    iput v4, v6, Lads_mobile_sdk/ni2;->h:I

    invoke-virtual {p2, p1, v6}, Lads_mobile_sdk/v33;->a(Lads_mobile_sdk/i2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2
    :try_end_c3
    .catch Ljava/util/concurrent/CancellationException; {:try_start_94 .. :try_end_c3} :catch_135

    if-ne p2, v0, :cond_c7

    goto/16 :goto_178

    :cond_c7
    move-object v4, p0

    move-object v2, p1

    move-object v1, v5

    move-object p1, v10

    .line 3538
    :goto_cb
    :try_start_cb
    sget-object p2, Lads_mobile_sdk/o21;->f:Lads_mobile_sdk/m21;

    iget-object p2, v4, Lads_mobile_sdk/vi2;->d:Lads_mobile_sdk/tx;

    .line 3700
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3701
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    .line 3702
    iget v5, v2, Lads_mobile_sdk/i2;->w:I

    iput-object v4, v6, Lads_mobile_sdk/ni2;->a:Ljava/lang/Object;

    iput-object v2, v6, Lads_mobile_sdk/ni2;->b:Lads_mobile_sdk/i2;

    iput-object p2, v6, Lads_mobile_sdk/ni2;->c:Ljava/lang/Object;

    iput-object v9, v6, Lads_mobile_sdk/ni2;->d:Lads_mobile_sdk/j2;

    iput-wide v10, v6, Lads_mobile_sdk/ni2;->e:J

    iput v8, v6, Lads_mobile_sdk/ni2;->h:I

    invoke-interface {p1, v1, v5, v6}, Lads_mobile_sdk/j2;->a(Ljava/lang/String;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1
    :try_end_e8
    .catch Ljava/util/concurrent/CancellationException; {:try_start_cb .. :try_end_e8} :catch_7d

    if-ne p1, v0, :cond_ec

    goto/16 :goto_178

    :cond_ec
    move-object v1, p2

    move-object p2, p1

    move-object p1, v1

    move v5, v3

    move-object v3, v2

    move-wide v1, v10

    move-object v10, v4

    .line 3703
    :goto_f3
    :try_start_f3
    check-cast p2, Lads_mobile_sdk/v01;

    .line 3867
    new-instance v4, Lkotlin/Pair;

    sget-object v11, Lkotlin/time/Duration;->Companion:Lkotlin/time/Duration$Companion;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3868
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v11

    sub-long/2addr v11, v1

    .line 3869
    sget-object p1, Lkotlin/time/DurationUnit;->MILLISECONDS:Lkotlin/time/DurationUnit;

    invoke-static {v11, v12, p1}, Lkotlin/time/DurationKt;->toDuration(JLkotlin/time/DurationUnit;)J

    move-result-wide v1

    invoke-static {v1, v2}, Lkotlin/time/Duration;->box-impl(J)Lkotlin/time/Duration;

    move-result-object p1

    invoke-direct {v4, p2, p1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 3870
    invoke-virtual {v4}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Lads_mobile_sdk/v01;

    .line 3871
    invoke-virtual {v4}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlin/time/Duration;

    invoke-virtual {p1}, Lkotlin/time/Duration;->unbox-impl()J

    move-result-wide p1

    .line 3873
    iget-object v1, v10, Lads_mobile_sdk/vi2;->e:Lads_mobile_sdk/v33;

    iput-object v10, v6, Lads_mobile_sdk/ni2;->a:Ljava/lang/Object;

    iput-object v3, v6, Lads_mobile_sdk/ni2;->b:Lads_mobile_sdk/i2;

    iput-object v2, v6, Lads_mobile_sdk/ni2;->c:Ljava/lang/Object;

    iput v5, v6, Lads_mobile_sdk/ni2;->h:I

    move-wide v4, p1

    invoke-virtual/range {v1 .. v6}, Lads_mobile_sdk/v33;->a(Lads_mobile_sdk/v01;Lads_mobile_sdk/i2;JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1
    :try_end_12e
    .catch Ljava/util/concurrent/CancellationException; {:try_start_f3 .. :try_end_12e} :catch_132

    if-ne p1, v0, :cond_131

    goto :goto_178

    :cond_131
    return-object v2

    :catch_132
    move-object p1, v3

    move-object v2, v10

    goto :goto_158

    :catch_135
    move-object v3, p1

    goto :goto_156

    :cond_137
    move p2, v2

    .line 3889
    new-instance v2, Lads_mobile_sdk/n01;

    invoke-virtual {p0}, Lads_mobile_sdk/vi2;->b()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, v8}, Lads_mobile_sdk/n01;-><init>(Ljava/lang/String;I)V

    .line 3890
    iget-object v1, p0, Lads_mobile_sdk/vi2;->e:Lads_mobile_sdk/v33;

    sget-object v3, Lkotlin/time/Duration;->Companion:Lkotlin/time/Duration$Companion;

    invoke-virtual {v3}, Lkotlin/time/Duration$Companion;->getZERO-UwyO8pc()J

    move-result-wide v4

    iput-object v2, v6, Lads_mobile_sdk/ni2;->a:Ljava/lang/Object;

    iput p2, v6, Lads_mobile_sdk/ni2;->h:I

    move-object v3, p1

    invoke-virtual/range {v1 .. v6}, Lads_mobile_sdk/v33;->a(Lads_mobile_sdk/v01;Lads_mobile_sdk/i2;JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_155

    goto :goto_178

    :cond_155
    return-object v2

    :goto_156
    move-object v2, p0

    move-object p1, v3

    .line 3891
    :goto_158
    new-instance p2, Lads_mobile_sdk/n01;

    invoke-virtual {v2}, Lads_mobile_sdk/vi2;->b()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p2, v1, v8}, Lads_mobile_sdk/n01;-><init>(Ljava/lang/String;I)V

    .line 3892
    sget-object v1, Lkotlinx/coroutines/NonCancellable;->INSTANCE:Lkotlinx/coroutines/NonCancellable;

    new-instance v3, Lads_mobile_sdk/oi2;

    invoke-direct {v3, v2, p2, p1, v9}, Lads_mobile_sdk/oi2;-><init>(Lads_mobile_sdk/vi2;Lads_mobile_sdk/n01;Lads_mobile_sdk/i2;Lkotlin/coroutines/Continuation;)V

    iput-object p2, v6, Lads_mobile_sdk/ni2;->a:Ljava/lang/Object;

    iput-object v9, v6, Lads_mobile_sdk/ni2;->b:Lads_mobile_sdk/i2;

    iput-object v9, v6, Lads_mobile_sdk/ni2;->c:Ljava/lang/Object;

    iput-object v9, v6, Lads_mobile_sdk/ni2;->d:Lads_mobile_sdk/j2;

    iput v7, v6, Lads_mobile_sdk/ni2;->h:I

    invoke-static {v1, v3, v6}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_179

    :goto_178
    return-object v0

    :cond_179
    return-object p2
.end method

.method public final a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 11

    .line 1418
    instance-of v0, p1, Lads_mobile_sdk/li2;

    if-eqz v0, :cond_13

    move-object v0, p1

    check-cast v0, Lads_mobile_sdk/li2;

    iget v1, v0, Lads_mobile_sdk/li2;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/li2;->e:I

    goto :goto_18

    :cond_13
    new-instance v0, Lads_mobile_sdk/li2;

    invoke-direct {v0, p0, p1}, Lads_mobile_sdk/li2;-><init>(Lads_mobile_sdk/vi2;Lkotlin/coroutines/Continuation;)V

    :goto_18
    iget-object p1, v0, Lads_mobile_sdk/li2;->c:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 1584
    iget v2, v0, Lads_mobile_sdk/li2;->e:I

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v2, :cond_63

    if-eq v2, v6, :cond_57

    if-eq v2, v5, :cond_4c

    if-eq v2, v4, :cond_3f

    if-ne v2, v3, :cond_37

    iget-object v2, v0, Lads_mobile_sdk/li2;->a:Ljava/lang/Object;

    check-cast v2, Lads_mobile_sdk/vi2;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_67

    :cond_37
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3f
    iget-object v2, v0, Lads_mobile_sdk/li2;->b:Lkotlinx/coroutines/sync/Mutex;

    iget-object v8, v0, Lads_mobile_sdk/li2;->a:Ljava/lang/Object;

    check-cast v8, Lads_mobile_sdk/vi2;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    :goto_48
    move-object p1, v2

    move-object v2, v8

    goto/16 :goto_a9

    :cond_4c
    iget-object v0, v0, Lads_mobile_sdk/li2;->a:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/sync/Mutex;

    :try_start_50
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_53
    .catchall {:try_start_50 .. :try_end_53} :catchall_54

    goto :goto_8f

    :catchall_54
    move-exception p1

    goto/16 :goto_c0

    .line 1585
    :cond_57
    iget-object v2, v0, Lads_mobile_sdk/li2;->b:Lkotlinx/coroutines/sync/Mutex;

    iget-object v8, v0, Lads_mobile_sdk/li2;->a:Ljava/lang/Object;

    check-cast v8, Lads_mobile_sdk/vi2;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object p1, v0

    move-object v0, v2

    goto :goto_7a

    :cond_63
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v2, p0

    .line 1587
    :cond_67
    :goto_67
    iget-object p1, v2, Lads_mobile_sdk/vi2;->i:Lkotlinx/coroutines/sync/Mutex;

    .line 1780
    iput-object v2, v0, Lads_mobile_sdk/li2;->a:Ljava/lang/Object;

    iput-object p1, v0, Lads_mobile_sdk/li2;->b:Lkotlinx/coroutines/sync/Mutex;

    iput v6, v0, Lads_mobile_sdk/li2;->e:I

    invoke-interface {p1, v7, v0}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v8

    if-ne v8, v1, :cond_76

    goto :goto_ba

    :cond_76
    move-object v8, v0

    move-object v0, p1

    move-object p1, v8

    move-object v8, v2

    .line 1781
    :goto_7a
    :try_start_7a
    iget-object v2, v8, Lads_mobile_sdk/vi2;->o:Lkotlinx/coroutines/CompletableJob;

    invoke-interface {v2}, Lkotlinx/coroutines/Job;->isCompleted()Z

    move-result v2

    if-eqz v2, :cond_93

    .line 1782
    iput-object v0, p1, Lads_mobile_sdk/li2;->a:Ljava/lang/Object;

    iput-object v7, p1, Lads_mobile_sdk/li2;->b:Lkotlinx/coroutines/sync/Mutex;

    iput v5, p1, Lads_mobile_sdk/li2;->e:I

    invoke-virtual {v8}, Lads_mobile_sdk/vi2;->c()Lads_mobile_sdk/i2;

    move-result-object p1
    :try_end_8c
    .catchall {:try_start_7a .. :try_end_8c} :catchall_54

    if-ne p1, v1, :cond_8f

    goto :goto_ba

    .line 1977
    :cond_8f
    :goto_8f
    invoke-interface {v0, v7}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    return-object p1

    .line 1978
    :cond_93
    :try_start_93
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_95
    .catchall {:try_start_93 .. :try_end_95} :catchall_54

    .line 2171
    invoke-interface {v0, v7}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    .line 2172
    iget-object v2, v8, Lads_mobile_sdk/vi2;->i:Lkotlinx/coroutines/sync/Mutex;

    .line 2370
    iput-object v8, p1, Lads_mobile_sdk/li2;->a:Ljava/lang/Object;

    iput-object v2, p1, Lads_mobile_sdk/li2;->b:Lkotlinx/coroutines/sync/Mutex;

    iput v4, p1, Lads_mobile_sdk/li2;->e:I

    invoke-interface {v2, v7, p1}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_a7

    goto :goto_ba

    :cond_a7
    move-object v0, p1

    goto :goto_48

    .line 2371
    :goto_a9
    :try_start_a9
    iget-object v8, v2, Lads_mobile_sdk/vi2;->o:Lkotlinx/coroutines/CompletableJob;
    :try_end_ab
    .catchall {:try_start_a9 .. :try_end_ab} :catchall_bb

    .line 2573
    invoke-interface {p1, v7}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    .line 2574
    iput-object v2, v0, Lads_mobile_sdk/li2;->a:Ljava/lang/Object;

    iput-object v7, v0, Lads_mobile_sdk/li2;->b:Lkotlinx/coroutines/sync/Mutex;

    iput v3, v0, Lads_mobile_sdk/li2;->e:I

    invoke-interface {v8, v0}, Lkotlinx/coroutines/Job;->join(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_67

    :goto_ba
    return-object v1

    :catchall_bb
    move-exception v0

    .line 2776
    invoke-interface {p1, v7}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw v0

    .line 2777
    :goto_c0
    invoke-interface {v0, v7}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw p1
.end method

.method public final a()Z
    .registers 4

    .line 1128
    iget-object v0, p0, Lads_mobile_sdk/vi2;->n:Ljava/util/ArrayList;

    if-eqz v0, :cond_b

    .line 1269
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_b

    goto :goto_22

    .line 1270
    :cond_b
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_22

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lads_mobile_sdk/i2;

    .line 1271
    iget v1, v1, Lads_mobile_sdk/i2;->w:I

    iget v2, p0, Lads_mobile_sdk/vi2;->k:I

    if-ge v1, v2, :cond_f

    goto :goto_4d

    .line 1272
    :cond_22
    :goto_22
    iget-object v0, p0, Lads_mobile_sdk/vi2;->p:Ljava/util/List;

    if-nez v0, :cond_2c

    const-string v0, "remainingAdConfigs"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1415
    :cond_2c
    instance-of v1, v0, Ljava/util/Collection;

    if-eqz v1, :cond_37

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_37

    goto :goto_4f

    .line 1416
    :cond_37
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lads_mobile_sdk/i2;

    .line 1417
    iget v1, v1, Lads_mobile_sdk/i2;->w:I

    iget v2, p0, Lads_mobile_sdk/vi2;->k:I

    if-ge v1, v2, :cond_3b

    :goto_4d
    const/4 v0, 0x1

    return v0

    :cond_4f
    :goto_4f
    const/4 v0, 0x0

    return v0
.end method

.method public final b(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 10

    .line 263
    instance-of v0, p1, Lads_mobile_sdk/pi2;

    if-eqz v0, :cond_13

    move-object v0, p1

    check-cast v0, Lads_mobile_sdk/pi2;

    iget v1, v0, Lads_mobile_sdk/pi2;->f:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/pi2;->f:I

    goto :goto_18

    :cond_13
    new-instance v0, Lads_mobile_sdk/pi2;

    invoke-direct {v0, p0, p1}, Lads_mobile_sdk/pi2;-><init>(Lads_mobile_sdk/vi2;Lkotlin/coroutines/Continuation;)V

    :goto_18
    iget-object p1, v0, Lads_mobile_sdk/pi2;->d:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 349
    iget v2, v0, Lads_mobile_sdk/pi2;->f:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    packed-switch v2, :pswitch_data_130

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_2e
    iget-object v1, v0, Lads_mobile_sdk/pi2;->b:Ljava/lang/Object;

    check-cast v1, Lads_mobile_sdk/q01;

    iget-object v0, v0, Lads_mobile_sdk/pi2;->a:Lads_mobile_sdk/vi2;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_f1

    :pswitch_39
    iget-object v2, v0, Lads_mobile_sdk/pi2;->c:Lkotlinx/coroutines/sync/Mutex;

    iget-object v6, v0, Lads_mobile_sdk/pi2;->b:Ljava/lang/Object;

    check-cast v6, Lads_mobile_sdk/q01;

    iget-object v7, v0, Lads_mobile_sdk/pi2;->a:Lads_mobile_sdk/vi2;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object p1, v6

    move-object v6, v7

    goto/16 :goto_cf

    :pswitch_48
    iget-object v2, v0, Lads_mobile_sdk/pi2;->b:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/sync/Mutex;

    iget-object v6, v0, Lads_mobile_sdk/pi2;->a:Lads_mobile_sdk/vi2;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_b8

    :pswitch_53
    iget-object v2, v0, Lads_mobile_sdk/pi2;->a:Lads_mobile_sdk/vi2;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    :cond_58
    move-object v6, v2

    goto :goto_a8

    :pswitch_5a
    iget-object v2, v0, Lads_mobile_sdk/pi2;->a:Lads_mobile_sdk/vi2;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_9a

    :pswitch_60
    iget-object v2, v0, Lads_mobile_sdk/pi2;->a:Lads_mobile_sdk/vi2;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_76

    :pswitch_66
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 350
    iput-object p0, v0, Lads_mobile_sdk/pi2;->a:Lads_mobile_sdk/vi2;

    iput v4, v0, Lads_mobile_sdk/pi2;->f:I

    invoke-virtual {p0, v0}, Lads_mobile_sdk/vi2;->c(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_75

    goto/16 :goto_ed

    :cond_75
    move-object v2, p0

    .line 361
    :goto_76
    iget-object p1, v2, Lads_mobile_sdk/vi2;->h:Lads_mobile_sdk/ec3;

    if-nez p1, :cond_80

    const-string p1, "serverTransaction"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v5

    :cond_80
    iget-object p1, p1, Lads_mobile_sdk/ec3;->b:Lads_mobile_sdk/ac3;

    iget-object p1, p1, Lads_mobile_sdk/ac3;->b:Lads_mobile_sdk/zy;

    iget p1, p1, Lads_mobile_sdk/zy;->l:I

    invoke-static {v4, p1}, Ljava/lang/Integer;->max(II)I

    move-result p1

    .line 362
    new-instance v6, Lads_mobile_sdk/ri2;

    invoke-direct {v6, v2, p1, v5}, Lads_mobile_sdk/ri2;-><init>(Lads_mobile_sdk/vi2;ILkotlin/coroutines/Continuation;)V

    iput-object v2, v0, Lads_mobile_sdk/pi2;->a:Lads_mobile_sdk/vi2;

    iput v3, v0, Lads_mobile_sdk/pi2;->f:I

    invoke-static {v6, v0}, Lkotlinx/coroutines/SupervisorKt;->supervisorScope(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_9a

    goto :goto_ed

    .line 365
    :cond_9a
    :goto_9a
    iget-object p1, v2, Lads_mobile_sdk/vi2;->e:Lads_mobile_sdk/v33;

    iput-object v2, v0, Lads_mobile_sdk/pi2;->a:Lads_mobile_sdk/vi2;

    const/4 v6, 0x3

    iput v6, v0, Lads_mobile_sdk/pi2;->f:I

    invoke-virtual {p1, v0}, Lads_mobile_sdk/v33;->a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_58

    goto :goto_ed

    .line 367
    :goto_a8
    iget-object v2, v6, Lads_mobile_sdk/vi2;->i:Lkotlinx/coroutines/sync/Mutex;

    .line 591
    iput-object v6, v0, Lads_mobile_sdk/pi2;->a:Lads_mobile_sdk/vi2;

    iput-object v2, v0, Lads_mobile_sdk/pi2;->b:Ljava/lang/Object;

    const/4 p1, 0x4

    iput p1, v0, Lads_mobile_sdk/pi2;->f:I

    invoke-interface {v2, v5, v0}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_b8

    goto :goto_ed

    .line 592
    :cond_b8
    :goto_b8
    :try_start_b8
    iget-object p1, v6, Lads_mobile_sdk/vi2;->j:Lads_mobile_sdk/q01;
    :try_end_ba
    .catchall {:try_start_b8 .. :try_end_ba} :catchall_12b

    .line 820
    invoke-interface {v2, v5}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    .line 821
    iget-object v2, v6, Lads_mobile_sdk/vi2;->i:Lkotlinx/coroutines/sync/Mutex;

    .line 1055
    iput-object v6, v0, Lads_mobile_sdk/pi2;->a:Lads_mobile_sdk/vi2;

    iput-object p1, v0, Lads_mobile_sdk/pi2;->b:Ljava/lang/Object;

    iput-object v2, v0, Lads_mobile_sdk/pi2;->c:Lkotlinx/coroutines/sync/Mutex;

    const/4 v7, 0x5

    iput v7, v0, Lads_mobile_sdk/pi2;->f:I

    invoke-interface {v2, v5, v0}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v7

    if-ne v7, v1, :cond_cf

    goto :goto_ed

    .line 1056
    :cond_cf
    :goto_cf
    :try_start_cf
    iget-boolean v7, v6, Lads_mobile_sdk/vi2;->l:Z
    :try_end_d1
    .catchall {:try_start_cf .. :try_end_d1} :catchall_126

    .line 1294
    invoke-interface {v2, v5}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    if-nez v7, :cond_119

    if-eqz p1, :cond_f5

    .line 1295
    iget-object v2, p1, Lads_mobile_sdk/q01;->b:Ljava/lang/Object;

    .line 1296
    check-cast v2, Lkotlinx/coroutines/flow/Flow;

    if-eqz v2, :cond_f5

    iput-object v6, v0, Lads_mobile_sdk/pi2;->a:Lads_mobile_sdk/vi2;

    iput-object p1, v0, Lads_mobile_sdk/pi2;->b:Ljava/lang/Object;

    iput-object v5, v0, Lads_mobile_sdk/pi2;->c:Lkotlinx/coroutines/sync/Mutex;

    const/4 v7, 0x6

    iput v7, v0, Lads_mobile_sdk/pi2;->f:I

    invoke-static {v2, v0}, Lkotlinx/coroutines/flow/FlowKt;->first(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_ee

    :goto_ed
    return-object v1

    :cond_ee
    move-object v1, p1

    move-object p1, v0

    move-object v0, v6

    .line 1297
    :goto_f1
    check-cast p1, Lads_mobile_sdk/v01;

    move-object v6, v0

    goto :goto_f7

    :cond_f5
    move-object v1, p1

    move-object p1, v5

    :goto_f7
    instance-of v0, p1, Lads_mobile_sdk/q01;

    if-eqz v0, :cond_fe

    check-cast p1, Lads_mobile_sdk/q01;

    goto :goto_ff

    :cond_fe
    move-object p1, v5

    :goto_ff
    if-eqz p1, :cond_10f

    .line 1298
    iget-object p1, p1, Lads_mobile_sdk/q01;->b:Ljava/lang/Object;

    .line 1299
    check-cast p1, Lads_mobile_sdk/zh1;

    if-eqz p1, :cond_10f

    .line 1300
    invoke-interface {p1}, Lads_mobile_sdk/zh1;->a()Lads_mobile_sdk/ks3;

    move-result-object p1

    if-eqz p1, :cond_10f

    .line 1301
    iget-object v5, p1, Lads_mobile_sdk/ks3;->c:Lads_mobile_sdk/m33;

    :cond_10f
    if-nez v5, :cond_112

    goto :goto_118

    .line 1303
    :cond_112
    invoke-static {v4}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object p1

    .line 1304
    iput-object p1, v5, Lads_mobile_sdk/m33;->f:Ljava/lang/Boolean;

    :goto_118
    move-object p1, v1

    :cond_119
    if-eqz p1, :cond_11c

    return-object p1

    .line 1311
    :cond_11c
    new-instance p1, Lads_mobile_sdk/n01;

    invoke-virtual {v6}, Lads_mobile_sdk/vi2;->b()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0, v3}, Lads_mobile_sdk/n01;-><init>(Ljava/lang/String;I)V

    return-object p1

    :catchall_126
    move-exception p1

    .line 1537
    invoke-interface {v2, v5}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw p1

    :catchall_12b
    move-exception p1

    .line 1538
    invoke-interface {v2, v5}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw p1

    :pswitch_data_130
    .packed-switch 0x0
        :pswitch_66
        :pswitch_60
        :pswitch_5a
        :pswitch_53
        :pswitch_48
        :pswitch_39
        :pswitch_2e
    .end packed-switch
.end method

.method public final b()Ljava/lang/String;
    .registers 2

    .line 257
    iget-object v0, p0, Lads_mobile_sdk/vi2;->h:Lads_mobile_sdk/ec3;

    if-nez v0, :cond_a

    const-string v0, "serverTransaction"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_a
    iget-object v0, v0, Lads_mobile_sdk/ec3;->b:Lads_mobile_sdk/ac3;

    iget-object v0, v0, Lads_mobile_sdk/ac3;->b:Lads_mobile_sdk/zy;

    iget-object v0, v0, Lads_mobile_sdk/zy;->g:Lads_mobile_sdk/et;

    if-eqz v0, :cond_17

    .line 259
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 261
    :cond_17
    sget-object v0, Lads_mobile_sdk/ir0;->b:Lads_mobile_sdk/ir0;

    .line 262
    const-string v0, "No fill."

    return-object v0
.end method

.method public final c()Lads_mobile_sdk/i2;
    .registers 7

    .line 2
    iget-object v0, p0, Lads_mobile_sdk/vi2;->p:Ljava/util/List;

    const-string v1, "remainingAdConfigs"

    const/4 v2, 0x0

    if-nez v0, :cond_b

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    .line 199
    :cond_b
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_27

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lads_mobile_sdk/i2;

    .line 200
    iget-object v5, p0, Lads_mobile_sdk/vi2;->m:Ljava/util/HashSet;

    iget-object v4, v4, Lads_mobile_sdk/i2;->U:Ljava/lang/String;

    invoke-static {v5, v4}, Lkotlin/collections/CollectionsKt___CollectionsKt;->contains(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_f

    goto :goto_28

    :cond_27
    move-object v3, v2

    :goto_28
    check-cast v3, Lads_mobile_sdk/i2;

    if-nez v3, :cond_2d

    return-object v2

    .line 208
    :cond_2d
    iget v0, v3, Lads_mobile_sdk/i2;->w:I

    iget v4, p0, Lads_mobile_sdk/vi2;->k:I

    if-le v0, v4, :cond_34

    return-object v2

    .line 210
    :cond_34
    iget-object v0, p0, Lads_mobile_sdk/vi2;->n:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 211
    iget-object v0, p0, Lads_mobile_sdk/vi2;->p:Ljava/util/List;

    if-nez v0, :cond_41

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_41
    invoke-interface {v0, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 213
    iget-object v0, v3, Lads_mobile_sdk/i2;->U:Ljava/lang/String;

    if-eqz v0, :cond_54

    .line 214
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_4f

    goto :goto_54

    .line 215
    :cond_4f
    iget-object v1, p0, Lads_mobile_sdk/vi2;->m:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 218
    :cond_54
    :goto_54
    iget-boolean v0, v3, Lads_mobile_sdk/i2;->c0:Z

    if-eqz v0, :cond_5f

    const/4 v0, 0x1

    .line 219
    invoke-static {v2, v0, v2}, Lkotlinx/coroutines/JobKt;->Job$default(Lkotlinx/coroutines/Job;ILjava/lang/Object;)Lkotlinx/coroutines/CompletableJob;

    move-result-object v0

    iput-object v0, p0, Lads_mobile_sdk/vi2;->o:Lkotlinx/coroutines/CompletableJob;

    :cond_5f
    return-object v3
.end method

.method public final c(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 9

    .line 220
    instance-of v0, p1, Lads_mobile_sdk/ui2;

    if-eqz v0, :cond_13

    move-object v0, p1

    check-cast v0, Lads_mobile_sdk/ui2;

    iget v1, v0, Lads_mobile_sdk/ui2;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/ui2;->e:I

    goto :goto_18

    :cond_13
    new-instance v0, Lads_mobile_sdk/ui2;

    invoke-direct {v0, p0, p1}, Lads_mobile_sdk/ui2;-><init>(Lads_mobile_sdk/vi2;Lkotlin/coroutines/Continuation;)V

    :goto_18
    iget-object p1, v0, Lads_mobile_sdk/ui2;->c:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 299
    iget v2, v0, Lads_mobile_sdk/ui2;->e:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_3d

    if-eq v2, v4, :cond_35

    if-ne v2, v3, :cond_2d

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_83

    :cond_2d
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_35
    iget-object v2, v0, Lads_mobile_sdk/ui2;->b:Lkotlinx/coroutines/sync/Mutex;

    iget-object v4, v0, Lads_mobile_sdk/ui2;->a:Lads_mobile_sdk/vi2;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_50

    :cond_3d
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 300
    iget-object v2, p0, Lads_mobile_sdk/vi2;->i:Lkotlinx/coroutines/sync/Mutex;

    .line 537
    iput-object p0, v0, Lads_mobile_sdk/ui2;->a:Lads_mobile_sdk/vi2;

    iput-object v2, v0, Lads_mobile_sdk/ui2;->b:Lkotlinx/coroutines/sync/Mutex;

    iput v4, v0, Lads_mobile_sdk/ui2;->e:I

    invoke-interface {v2, v5, v0}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_4f

    goto :goto_82

    :cond_4f
    move-object v4, p0

    .line 538
    :goto_50
    :try_start_50
    iget-object p1, v4, Lads_mobile_sdk/vi2;->h:Lads_mobile_sdk/ec3;
    :try_end_52
    .catchall {:try_start_50 .. :try_end_52} :catchall_5b

    const-string v6, "serverTransaction"

    if-nez p1, :cond_5d

    :try_start_56
    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v5

    goto :goto_5d

    :catchall_5b
    move-exception p1

    goto :goto_86

    .line 539
    :cond_5d
    :goto_5d
    iget-object p1, p1, Lads_mobile_sdk/ec3;->b:Lads_mobile_sdk/ac3;

    iget-object p1, p1, Lads_mobile_sdk/ac3;->a:Ljava/util/List;

    invoke-static {p1}, Lkotlin/collections/CollectionsKt___CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p1

    iput-object p1, v4, Lads_mobile_sdk/vi2;->p:Ljava/util/List;

    .line 540
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_69
    .catchall {:try_start_56 .. :try_end_69} :catchall_5b

    .line 779
    invoke-interface {v2, v5}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    .line 780
    iget-object p1, v4, Lads_mobile_sdk/vi2;->e:Lads_mobile_sdk/v33;

    iget-object v2, v4, Lads_mobile_sdk/vi2;->h:Lads_mobile_sdk/ec3;

    if-nez v2, :cond_76

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v2, v5

    :cond_76
    iput-object v5, v0, Lads_mobile_sdk/ui2;->a:Lads_mobile_sdk/vi2;

    iput-object v5, v0, Lads_mobile_sdk/ui2;->b:Lkotlinx/coroutines/sync/Mutex;

    iput v3, v0, Lads_mobile_sdk/ui2;->e:I

    invoke-virtual {p1, v2, v0}, Lads_mobile_sdk/v33;->a(Lads_mobile_sdk/ec3;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_83

    :goto_82
    return-object v1

    .line 781
    :cond_83
    :goto_83
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 1018
    :goto_86
    invoke-interface {v2, v5}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw p1
.end method
