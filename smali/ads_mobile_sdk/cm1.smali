###### Class ads_mobile_sdk.cm1 (ads_mobile_sdk.cm1)
.class public final Lads_mobile_sdk/cm1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final A:Lkotlinx/coroutines/CompletableJob;

.field public final B:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public C:J

.field public final a:Landroid/content/Context;

.field public final b:Lkotlinx/coroutines/CoroutineScope;

.field public final c:Lkotlin/coroutines/CoroutineContext;

.field public final d:Ljava/util/Set;

.field public final e:Lads_mobile_sdk/ks1;

.field public final f:Ljava/util/Set;

.field public final g:Lads_mobile_sdk/g83;

.field public final h:Lads_mobile_sdk/sz;

.field public final i:Lads_mobile_sdk/hf;

.field public final j:Lads_mobile_sdk/ur3;

.field public final k:Lads_mobile_sdk/e01;

.field public final l:Lads_mobile_sdk/ex0;

.field public final m:Lads_mobile_sdk/tx;

.field public final n:Lads_mobile_sdk/ks1;

.field public final o:Lads_mobile_sdk/f0;

.field public final p:Lads_mobile_sdk/l43;

.field public final q:Lads_mobile_sdk/ks1;

.field public final r:Lads_mobile_sdk/cb3;

.field public final s:Lads_mobile_sdk/ja1;

.field public final t:Lads_mobile_sdk/ks1;

.field public final u:Lads_mobile_sdk/pn;

.field public final v:Lads_mobile_sdk/cw2;

.field public final w:Lads_mobile_sdk/ks1;

.field public final x:Lkotlinx/coroutines/sync/Mutex;

.field public y:Lads_mobile_sdk/kl1;

.field public final z:Lkotlinx/coroutines/CompletableJob;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Ljava/util/Set;Lads_mobile_sdk/ks1;Ljava/util/Set;Lads_mobile_sdk/g83;Lads_mobile_sdk/sz;Lads_mobile_sdk/hf;Lads_mobile_sdk/ur3;Lads_mobile_sdk/e01;Lads_mobile_sdk/ex0;Lads_mobile_sdk/tx;Lads_mobile_sdk/ks1;Lads_mobile_sdk/f0;Lads_mobile_sdk/l43;Lads_mobile_sdk/ks1;Lads_mobile_sdk/cb3;Lads_mobile_sdk/ja1;Lads_mobile_sdk/ks1;Lads_mobile_sdk/pn;Lads_mobile_sdk/dw2;Lads_mobile_sdk/ks1;)V
    .registers 40

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move-object/from16 v12, p12

    move-object/from16 v13, p13

    move-object/from16 v14, p14

    move-object/from16 v15, p15

    .line 1
    const-string v0, "context"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "backgroundScope"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "backgroundContext"

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "initializationTasks"

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dependencyInjectors"

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "postInitializationTasks"

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rootTraceCreator"

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "concurrencyObjects"

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adapterInitializer"

    invoke-static {v9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "traceLogger"

    invoke-static {v10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "httpClient"

    invoke-static {v11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "flags"

    invoke-static {v12, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clock"

    invoke-static {v13, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "debugDialogManager"

    invoke-static {v14, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "activityTracker"

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "requestConfigurationWrapper"

    move-object/from16 v15, p16

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "inspectorManager"

    move-object/from16 v15, p17

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sdkCoreDataStore"

    move-object/from16 v15, p18

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "initializationConfigWrapper"

    move-object/from16 v15, p19

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sdkCoreEngine"

    move-object/from16 v15, p20

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "appState"

    move-object/from16 v15, p21

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "singletonEngineProvider"

    move-object/from16 v15, p22

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "anrWatchdog"

    move-object/from16 v15, p23

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    move-object/from16 v0, p0

    .line 7
    iput-object v1, v0, Lads_mobile_sdk/cm1;->a:Landroid/content/Context;

    .line 8
    iput-object v2, v0, Lads_mobile_sdk/cm1;->b:Lkotlinx/coroutines/CoroutineScope;

    .line 9
    iput-object v3, v0, Lads_mobile_sdk/cm1;->c:Lkotlin/coroutines/CoroutineContext;

    .line 10
    iput-object v4, v0, Lads_mobile_sdk/cm1;->d:Ljava/util/Set;

    .line 11
    iput-object v5, v0, Lads_mobile_sdk/cm1;->e:Lads_mobile_sdk/ks1;

    .line 12
    iput-object v6, v0, Lads_mobile_sdk/cm1;->f:Ljava/util/Set;

    .line 13
    iput-object v7, v0, Lads_mobile_sdk/cm1;->g:Lads_mobile_sdk/g83;

    .line 14
    iput-object v8, v0, Lads_mobile_sdk/cm1;->h:Lads_mobile_sdk/sz;

    .line 15
    iput-object v9, v0, Lads_mobile_sdk/cm1;->i:Lads_mobile_sdk/hf;

    .line 16
    iput-object v10, v0, Lads_mobile_sdk/cm1;->j:Lads_mobile_sdk/ur3;

    .line 17
    iput-object v11, v0, Lads_mobile_sdk/cm1;->k:Lads_mobile_sdk/e01;

    .line 18
    iput-object v12, v0, Lads_mobile_sdk/cm1;->l:Lads_mobile_sdk/ex0;

    .line 19
    iput-object v13, v0, Lads_mobile_sdk/cm1;->m:Lads_mobile_sdk/tx;

    .line 20
    iput-object v14, v0, Lads_mobile_sdk/cm1;->n:Lads_mobile_sdk/ks1;

    move-object/from16 v1, p15

    .line 21
    iput-object v1, v0, Lads_mobile_sdk/cm1;->o:Lads_mobile_sdk/f0;

    move-object/from16 v1, p16

    .line 22
    iput-object v1, v0, Lads_mobile_sdk/cm1;->p:Lads_mobile_sdk/l43;

    move-object/from16 v1, p17

    .line 23
    iput-object v1, v0, Lads_mobile_sdk/cm1;->q:Lads_mobile_sdk/ks1;

    move-object/from16 v1, p18

    .line 24
    iput-object v1, v0, Lads_mobile_sdk/cm1;->r:Lads_mobile_sdk/cb3;

    move-object/from16 v1, p19

    .line 25
    iput-object v1, v0, Lads_mobile_sdk/cm1;->s:Lads_mobile_sdk/ja1;

    move-object/from16 v1, p20

    .line 26
    iput-object v1, v0, Lads_mobile_sdk/cm1;->t:Lads_mobile_sdk/ks1;

    move-object/from16 v1, p21

    .line 27
    iput-object v1, v0, Lads_mobile_sdk/cm1;->u:Lads_mobile_sdk/pn;

    move-object/from16 v1, p22

    .line 28
    iput-object v1, v0, Lads_mobile_sdk/cm1;->v:Lads_mobile_sdk/cw2;

    .line 29
    iput-object v15, v0, Lads_mobile_sdk/cm1;->w:Lads_mobile_sdk/ks1;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 38
    invoke-static {v1, v2, v3}, Lkotlinx/coroutines/sync/MutexKt;->Mutex$default(ZILjava/lang/Object;)Lkotlinx/coroutines/sync/Mutex;

    move-result-object v4

    iput-object v4, v0, Lads_mobile_sdk/cm1;->x:Lkotlinx/coroutines/sync/Mutex;

    .line 41
    sget-object v4, Lads_mobile_sdk/kl1;->a:Lads_mobile_sdk/kl1;

    iput-object v4, v0, Lads_mobile_sdk/cm1;->y:Lads_mobile_sdk/kl1;

    .line 42
    invoke-static {v3, v2, v3}, Lkotlinx/coroutines/JobKt;->Job$default(Lkotlinx/coroutines/Job;ILjava/lang/Object;)Lkotlinx/coroutines/CompletableJob;

    move-result-object v4

    iput-object v4, v0, Lads_mobile_sdk/cm1;->z:Lkotlinx/coroutines/CompletableJob;

    .line 43
    invoke-static {v3, v2, v3}, Lkotlinx/coroutines/JobKt;->Job$default(Lkotlinx/coroutines/Job;ILjava/lang/Object;)Lkotlinx/coroutines/CompletableJob;

    move-result-object v2

    iput-object v2, v0, Lads_mobile_sdk/cm1;->A:Lkotlinx/coroutines/CompletableJob;

    .line 44
    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v2, v0, Lads_mobile_sdk/cm1;->B:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 46
    sget-object v1, Lkotlin/time/Duration;->Companion:Lkotlin/time/Duration$Companion;

    invoke-virtual {v1}, Lkotlin/time/Duration$Companion;->getZERO-UwyO8pc()J

    move-result-wide v1

    iput-wide v1, v0, Lads_mobile_sdk/cm1;->C:J

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/libraries/ads/mobile/sdk/initialization/OnAdapterInitializationCompleteListener;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 22

    move-object/from16 v1, p0

    move-object/from16 v0, p2

    .line 499
    instance-of v2, v0, Lads_mobile_sdk/ml1;

    if-eqz v2, :cond_17

    move-object v2, v0

    check-cast v2, Lads_mobile_sdk/ml1;

    iget v3, v2, Lads_mobile_sdk/ml1;->g:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_17

    sub-int/2addr v3, v4

    iput v3, v2, Lads_mobile_sdk/ml1;->g:I

    goto :goto_1c

    :cond_17
    new-instance v2, Lads_mobile_sdk/ml1;

    invoke-direct {v2, v1, v0}, Lads_mobile_sdk/ml1;-><init>(Lads_mobile_sdk/cm1;Lkotlin/coroutines/Continuation;)V

    :goto_1c
    iget-object v0, v2, Lads_mobile_sdk/ml1;->e:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v3

    .line 635
    iget v4, v2, Lads_mobile_sdk/ml1;->g:I

    const/4 v5, 0x5

    const/4 v6, 0x3

    const/4 v7, 0x2

    const/4 v8, 0x4

    const/4 v9, 0x1

    const/4 v10, 0x0

    if-eqz v4, :cond_89

    if-eq v4, v9, :cond_76

    if-eq v4, v7, :cond_63

    if-eq v4, v6, :cond_53

    if-eq v4, v8, :cond_43

    if-ne v4, v5, :cond_3b

    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_236

    :cond_3b
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_43
    iget-object v3, v2, Lads_mobile_sdk/ml1;->b:Ljava/lang/Object;

    check-cast v3, Ljava/io/Closeable;

    iget-object v2, v2, Lads_mobile_sdk/ml1;->a:Ljava/lang/Object;

    check-cast v2, Lads_mobile_sdk/rr3;

    :try_start_4b
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_4e
    .catchall {:try_start_4b .. :try_end_4e} :catchall_50

    goto/16 :goto_1d7

    :catchall_50
    move-exception v0

    goto/16 :goto_1df

    .line 636
    :cond_53
    iget-object v3, v2, Lads_mobile_sdk/ml1;->b:Ljava/lang/Object;

    check-cast v3, Ljava/io/Closeable;

    iget-object v2, v2, Lads_mobile_sdk/ml1;->a:Ljava/lang/Object;

    check-cast v2, Lads_mobile_sdk/rr3;

    :try_start_5b
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_5e
    .catchall {:try_start_5b .. :try_end_5e} :catchall_60

    goto/16 :goto_171

    :catchall_60
    move-exception v0

    goto/16 :goto_178

    .line 637
    :cond_63
    iget-object v4, v2, Lads_mobile_sdk/ml1;->d:Lkotlinx/coroutines/sync/Mutex;

    iget-object v7, v2, Lads_mobile_sdk/ml1;->c:Lkotlin/jvm/internal/Ref$BooleanRef;

    iget-object v11, v2, Lads_mobile_sdk/ml1;->b:Ljava/lang/Object;

    check-cast v11, Lcom/google/android/libraries/ads/mobile/sdk/initialization/OnAdapterInitializationCompleteListener;

    iget-object v12, v2, Lads_mobile_sdk/ml1;->a:Ljava/lang/Object;

    check-cast v12, Lads_mobile_sdk/cm1;

    :try_start_6f
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_72
    .catchall {:try_start_6f .. :try_end_72} :catchall_73

    goto :goto_d7

    :catchall_73
    move-exception v0

    goto/16 :goto_239

    .line 638
    :cond_76
    iget-object v4, v2, Lads_mobile_sdk/ml1;->d:Lkotlinx/coroutines/sync/Mutex;

    iget-object v11, v2, Lads_mobile_sdk/ml1;->c:Lkotlin/jvm/internal/Ref$BooleanRef;

    iget-object v12, v2, Lads_mobile_sdk/ml1;->b:Ljava/lang/Object;

    check-cast v12, Lcom/google/android/libraries/ads/mobile/sdk/initialization/OnAdapterInitializationCompleteListener;

    iget-object v13, v2, Lads_mobile_sdk/ml1;->a:Ljava/lang/Object;

    check-cast v13, Lads_mobile_sdk/cm1;

    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v0, v11

    move-object v11, v12

    move-object v12, v13

    goto :goto_a8

    :cond_89
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 639
    new-instance v0, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    .line 640
    iget-object v4, v1, Lads_mobile_sdk/cm1;->x:Lkotlinx/coroutines/sync/Mutex;

    .line 930
    iput-object v1, v2, Lads_mobile_sdk/ml1;->a:Ljava/lang/Object;

    move-object/from16 v11, p1

    iput-object v11, v2, Lads_mobile_sdk/ml1;->b:Ljava/lang/Object;

    iput-object v0, v2, Lads_mobile_sdk/ml1;->c:Lkotlin/jvm/internal/Ref$BooleanRef;

    iput-object v4, v2, Lads_mobile_sdk/ml1;->d:Lkotlinx/coroutines/sync/Mutex;

    iput v9, v2, Lads_mobile_sdk/ml1;->g:I

    invoke-interface {v4, v10, v2}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v12

    if-ne v12, v3, :cond_a7

    goto/16 :goto_235

    :cond_a7
    move-object v12, v1

    .line 931
    :goto_a8
    :try_start_a8
    iget-object v13, v12, Lads_mobile_sdk/cm1;->y:Lads_mobile_sdk/kl1;

    sget-object v14, Lads_mobile_sdk/kl1;->b:Lads_mobile_sdk/kl1;

    if-eq v13, v14, :cond_fb

    .line 932
    sget-object v14, Lads_mobile_sdk/kl1;->c:Lads_mobile_sdk/kl1;

    if-ne v13, v14, :cond_b3

    goto :goto_fb

    .line 936
    :cond_b3
    iput-boolean v9, v0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 941
    iget-object v13, v12, Lads_mobile_sdk/cm1;->i:Lads_mobile_sdk/hf;

    .line 942
    sget-object v14, Lads_mobile_sdk/hf;->A:Ljava/util/List;

    sget-object v14, Lcom/google/android/libraries/ads/mobile/sdk/initialization/AdapterStatus$InitializationState;->INITIALIZING:Lcom/google/android/libraries/ads/mobile/sdk/initialization/AdapterStatus$InitializationState;

    const-string v15, "The Google Mobile Ads SDK is still initializing."

    invoke-static {v14, v15, v8}, Lads_mobile_sdk/le;->b(Lcom/google/android/libraries/ads/mobile/sdk/initialization/AdapterStatus$InitializationState;Ljava/lang/String;I)Lads_mobile_sdk/ke;

    move-result-object v14

    .line 943
    iput-object v12, v2, Lads_mobile_sdk/ml1;->a:Ljava/lang/Object;

    iput-object v11, v2, Lads_mobile_sdk/ml1;->b:Ljava/lang/Object;

    iput-object v0, v2, Lads_mobile_sdk/ml1;->c:Lkotlin/jvm/internal/Ref$BooleanRef;

    iput-object v4, v2, Lads_mobile_sdk/ml1;->d:Lkotlinx/coroutines/sync/Mutex;

    iput v7, v2, Lads_mobile_sdk/ml1;->g:I

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 944
    invoke-static {v13, v14, v2}, Lads_mobile_sdk/hf;->a(Lads_mobile_sdk/hf;Lads_mobile_sdk/ke;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v7

    if-ne v7, v3, :cond_d6

    goto/16 :goto_235

    :cond_d6
    move-object v7, v0

    .line 945
    :goto_d7
    sget-object v0, Lkotlin/time/Duration;->Companion:Lkotlin/time/Duration$Companion;

    iget-object v0, v12, Lads_mobile_sdk/cm1;->m:Lads_mobile_sdk/tx;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 946
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v13

    .line 947
    sget-object v0, Lkotlin/time/DurationUnit;->MILLISECONDS:Lkotlin/time/DurationUnit;

    invoke-static {v13, v14, v0}, Lkotlin/time/DurationKt;->toDuration(JLkotlin/time/DurationUnit;)J

    move-result-wide v13

    iput-wide v13, v12, Lads_mobile_sdk/cm1;->C:J

    .line 948
    iget-object v0, v12, Lads_mobile_sdk/cm1;->m:Lads_mobile_sdk/tx;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 949
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    .line 950
    sput-wide v13, Lads_mobile_sdk/xl;->a:J

    .line 951
    sget-object v0, Lads_mobile_sdk/kl1;->b:Lads_mobile_sdk/kl1;

    iput-object v0, v12, Lads_mobile_sdk/cm1;->y:Lads_mobile_sdk/kl1;

    move-object v0, v7

    goto :goto_100

    .line 952
    :cond_fb
    :goto_fb
    const-string v7, "MobileAds.initialize was called already, any different settings will be ignored."

    .line 953
    invoke-static {v7, v10}, Lads_mobile_sdk/f01;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 954
    :goto_100
    sget-object v7, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_102
    .catchall {:try_start_a8 .. :try_end_102} :catchall_73

    .line 1230
    invoke-interface {v4, v10}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    .line 1231
    iget-object v13, v12, Lads_mobile_sdk/cm1;->b:Lkotlinx/coroutines/CoroutineScope;

    new-instance v4, Lads_mobile_sdk/nl1;

    invoke-direct {v4, v12, v11, v10}, Lads_mobile_sdk/nl1;-><init>(Lads_mobile_sdk/cm1;Lcom/google/android/libraries/ads/mobile/sdk/initialization/OnAdapterInitializationCompleteListener;Lkotlin/coroutines/Continuation;)V

    .line 1232
    sget-object v14, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    .line 1233
    const-string v7, "<this>"

    invoke-static {v13, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "context"

    invoke-static {v14, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "block"

    invoke-static {v4, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1491
    new-instance v7, Lads_mobile_sdk/ws3;

    invoke-direct {v7, v4, v10}, Lads_mobile_sdk/ws3;-><init>(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)V

    const/16 v17, 0x2

    const/16 v18, 0x0

    const/4 v15, 0x0

    move-object/from16 v16, v7

    invoke-static/range {v13 .. v18}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 1492
    iget-boolean v0, v0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    if-eqz v0, :cond_223

    .line 1493
    iget-object v0, v12, Lads_mobile_sdk/cm1;->g:Lads_mobile_sdk/g83;

    sget-object v4, Lads_mobile_sdk/s11;->c:Lads_mobile_sdk/s11;

    .line 1764
    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v5

    .line 1765
    new-instance v7, Lads_mobile_sdk/ks3;

    .line 1766
    new-instance v11, Lads_mobile_sdk/n03;

    invoke-direct {v11}, Lads_mobile_sdk/n03;-><init>()V

    .line 1767
    new-instance v13, Lads_mobile_sdk/tn1;

    invoke-direct {v13}, Lads_mobile_sdk/tn1;-><init>()V

    .line 1768
    new-instance v14, Lads_mobile_sdk/m33;

    invoke-direct {v14}, Lads_mobile_sdk/m33;-><init>()V

    .line 1769
    new-instance v15, Lads_mobile_sdk/zb;

    invoke-direct {v15}, Lads_mobile_sdk/zb;-><init>()V

    .line 1770
    invoke-direct {v7, v11, v13, v14, v15}, Lads_mobile_sdk/ks3;-><init>(Lads_mobile_sdk/n03;Lads_mobile_sdk/tn1;Lads_mobile_sdk/m33;Lads_mobile_sdk/zb;)V

    .line 1771
    invoke-static {}, Lads_mobile_sdk/hs3;->b()Lads_mobile_sdk/gs3;

    move-result-object v11

    .line 1772
    iget-object v11, v11, Lads_mobile_sdk/gs3;->a:Lads_mobile_sdk/rr3;

    if-nez v11, :cond_1bc

    .line 1773
    invoke-static {v0, v4, v5, v7}, Lads_mobile_sdk/g83;->a(Lads_mobile_sdk/g83;Lads_mobile_sdk/s11;Ljava/util/List;Lads_mobile_sdk/ks3;)Lads_mobile_sdk/tu2;

    move-result-object v4

    .line 1774
    :try_start_15d
    iput-object v4, v2, Lads_mobile_sdk/ml1;->a:Ljava/lang/Object;

    iput-object v4, v2, Lads_mobile_sdk/ml1;->b:Ljava/lang/Object;

    iput-object v10, v2, Lads_mobile_sdk/ml1;->c:Lkotlin/jvm/internal/Ref$BooleanRef;

    iput-object v10, v2, Lads_mobile_sdk/ml1;->d:Lkotlinx/coroutines/sync/Mutex;

    iput v6, v2, Lads_mobile_sdk/ml1;->g:I

    invoke-virtual {v12, v2}, Lads_mobile_sdk/cm1;->a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0
    :try_end_16b
    .catchall {:try_start_15d .. :try_end_16b} :catchall_17a

    if-ne v0, v3, :cond_16f

    goto/16 :goto_235

    :cond_16f
    move-object v2, v4

    move-object v3, v2

    .line 1775
    :goto_171
    :try_start_171
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_173
    .catchall {:try_start_171 .. :try_end_173} :catchall_60

    .line 2055
    invoke-static {v3, v10}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    goto/16 :goto_1dc

    :goto_178
    move-object v4, v2

    goto :goto_17c

    :catchall_17a
    move-exception v0

    move-object v3, v4

    .line 2063
    :goto_17c
    :try_start_17c
    invoke-virtual {v4, v0}, Lads_mobile_sdk/rr3;->b(Ljava/lang/Throwable;)V

    .line 2067
    instance-of v2, v0, Lads_mobile_sdk/v24;

    if-nez v2, :cond_1b5

    .line 2069
    instance-of v2, v0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v2, :cond_192

    instance-of v2, v0, Ljava/util/concurrent/CancellationException;

    if-nez v2, :cond_192

    .line 2075
    invoke-virtual {v4, v0}, Lads_mobile_sdk/rr3;->a(Ljava/lang/Throwable;)V

    goto :goto_192

    :catchall_18f
    move-exception v0

    move-object v2, v0

    goto :goto_1b6

    .line 2081
    :cond_192
    :goto_192
    instance-of v2, v0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v2, :cond_1ad

    .line 2082
    instance-of v2, v0, Ljava/util/concurrent/CancellationException;

    if-nez v2, :cond_1a5

    .line 2083
    instance-of v2, v0, Lads_mobile_sdk/w01;

    if-eqz v2, :cond_19f

    throw v0

    .line 2084
    :cond_19f
    new-instance v2, Lads_mobile_sdk/b01;

    invoke-direct {v2, v0}, Lads_mobile_sdk/b01;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 2085
    :cond_1a5
    new-instance v2, Lads_mobile_sdk/wz0;

    check-cast v0, Ljava/util/concurrent/CancellationException;

    invoke-direct {v2, v0}, Lads_mobile_sdk/wz0;-><init>(Ljava/util/concurrent/CancellationException;)V

    throw v2

    .line 2086
    :cond_1ad
    new-instance v2, Lads_mobile_sdk/i21;

    check-cast v0, Lkotlinx/coroutines/TimeoutCancellationException;

    invoke-direct {v2, v0}, Lads_mobile_sdk/i21;-><init>(Lkotlinx/coroutines/TimeoutCancellationException;)V

    throw v2

    .line 2087
    :cond_1b5
    throw v0
    :try_end_1b6
    .catchall {:try_start_17c .. :try_end_1b6} :catchall_18f

    .line 2088
    :goto_1b6
    :try_start_1b6
    throw v2
    :try_end_1b7
    .catchall {:try_start_1b6 .. :try_end_1b7} :catchall_1b7

    :catchall_1b7
    move-exception v0

    invoke-static {v3, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0

    .line 2122
    :cond_1bc
    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-static {v4, v0, v9}, Lads_mobile_sdk/hs3;->a(Lads_mobile_sdk/s11;Ljava/util/List;Z)Lads_mobile_sdk/rr3;

    move-result-object v4

    .line 2123
    :try_start_1c4
    iput-object v4, v2, Lads_mobile_sdk/ml1;->a:Ljava/lang/Object;

    iput-object v4, v2, Lads_mobile_sdk/ml1;->b:Ljava/lang/Object;

    iput-object v10, v2, Lads_mobile_sdk/ml1;->c:Lkotlin/jvm/internal/Ref$BooleanRef;

    iput-object v10, v2, Lads_mobile_sdk/ml1;->d:Lkotlinx/coroutines/sync/Mutex;

    iput v8, v2, Lads_mobile_sdk/ml1;->g:I

    invoke-virtual {v12, v2}, Lads_mobile_sdk/cm1;->a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0
    :try_end_1d2
    .catchall {:try_start_1c4 .. :try_end_1d2} :catchall_1e1

    if-ne v0, v3, :cond_1d5

    goto :goto_235

    :cond_1d5
    move-object v2, v4

    move-object v3, v2

    .line 2124
    :goto_1d7
    :try_start_1d7
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1d9
    .catchall {:try_start_1d7 .. :try_end_1d9} :catchall_50

    .line 2441
    invoke-static {v3, v10}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 2442
    :goto_1dc
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    :goto_1df
    move-object v4, v2

    goto :goto_1e3

    :catchall_1e1
    move-exception v0

    move-object v3, v4

    .line 2755
    :goto_1e3
    :try_start_1e3
    invoke-virtual {v4, v0}, Lads_mobile_sdk/rr3;->b(Ljava/lang/Throwable;)V

    .line 2759
    instance-of v2, v0, Lads_mobile_sdk/v24;

    if-nez v2, :cond_21c

    .line 2761
    instance-of v2, v0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v2, :cond_1f9

    instance-of v2, v0, Ljava/util/concurrent/CancellationException;

    if-nez v2, :cond_1f9

    .line 2767
    invoke-virtual {v4, v0}, Lads_mobile_sdk/rr3;->a(Ljava/lang/Throwable;)V

    goto :goto_1f9

    :catchall_1f6
    move-exception v0

    move-object v2, v0

    goto :goto_21d

    .line 2773
    :cond_1f9
    :goto_1f9
    instance-of v2, v0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v2, :cond_214

    .line 2774
    instance-of v2, v0, Ljava/util/concurrent/CancellationException;

    if-nez v2, :cond_20c

    .line 2775
    instance-of v2, v0, Lads_mobile_sdk/w01;

    if-eqz v2, :cond_206

    throw v0

    .line 2776
    :cond_206
    new-instance v2, Lads_mobile_sdk/b01;

    invoke-direct {v2, v0}, Lads_mobile_sdk/b01;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 2777
    :cond_20c
    new-instance v2, Lads_mobile_sdk/wz0;

    check-cast v0, Ljava/util/concurrent/CancellationException;

    invoke-direct {v2, v0}, Lads_mobile_sdk/wz0;-><init>(Ljava/util/concurrent/CancellationException;)V

    throw v2

    .line 2778
    :cond_214
    new-instance v2, Lads_mobile_sdk/i21;

    check-cast v0, Lkotlinx/coroutines/TimeoutCancellationException;

    invoke-direct {v2, v0}, Lads_mobile_sdk/i21;-><init>(Lkotlinx/coroutines/TimeoutCancellationException;)V

    throw v2

    .line 2779
    :cond_21c
    throw v0
    :try_end_21d
    .catchall {:try_start_1e3 .. :try_end_21d} :catchall_1f6

    .line 2780
    :goto_21d
    :try_start_21d
    throw v2
    :try_end_21e
    .catchall {:try_start_21d .. :try_end_21e} :catchall_21e

    :catchall_21e
    move-exception v0

    invoke-static {v3, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0

    .line 2781
    :cond_223
    iget-object v0, v12, Lads_mobile_sdk/cm1;->z:Lkotlinx/coroutines/CompletableJob;

    iput-object v10, v2, Lads_mobile_sdk/ml1;->a:Ljava/lang/Object;

    iput-object v10, v2, Lads_mobile_sdk/ml1;->b:Ljava/lang/Object;

    iput-object v10, v2, Lads_mobile_sdk/ml1;->c:Lkotlin/jvm/internal/Ref$BooleanRef;

    iput-object v10, v2, Lads_mobile_sdk/ml1;->d:Lkotlinx/coroutines/sync/Mutex;

    iput v5, v2, Lads_mobile_sdk/ml1;->g:I

    invoke-interface {v0, v2}, Lkotlinx/coroutines/Job;->join(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v3, :cond_236

    :goto_235
    return-object v3

    .line 2783
    :cond_236
    :goto_236
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    .line 3042
    :goto_239
    invoke-interface {v4, v10}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw v0
.end method

.method public final a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 3043
    instance-of v2, v1, Lads_mobile_sdk/ol1;

    if-eqz v2, :cond_17

    move-object v2, v1

    check-cast v2, Lads_mobile_sdk/ol1;

    iget v3, v2, Lads_mobile_sdk/ol1;->e:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_17

    sub-int/2addr v3, v4

    iput v3, v2, Lads_mobile_sdk/ol1;->e:I

    goto :goto_1c

    :cond_17
    new-instance v2, Lads_mobile_sdk/ol1;

    invoke-direct {v2, v0, v1}, Lads_mobile_sdk/ol1;-><init>(Lads_mobile_sdk/cm1;Lkotlin/coroutines/Continuation;)V

    :goto_1c
    iget-object v1, v2, Lads_mobile_sdk/ol1;->c:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v3

    .line 3218
    iget v4, v2, Lads_mobile_sdk/ol1;->e:I

    const/4 v6, 0x1

    const/4 v7, 0x2

    const/4 v8, 0x0

    const/4 v9, 0x0

    packed-switch v4, :pswitch_data_332

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_33
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_32f

    :pswitch_38
    iget-object v4, v2, Lads_mobile_sdk/ol1;->a:Lads_mobile_sdk/cm1;

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move/from16 v17, v8

    goto/16 :goto_2be

    :pswitch_41
    iget-object v4, v2, Lads_mobile_sdk/ol1;->b:Ljava/lang/Object;

    check-cast v4, Ljava/util/List;

    iget-object v7, v2, Lads_mobile_sdk/ol1;->a:Lads_mobile_sdk/cm1;

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move/from16 v17, v8

    const/16 v18, 0x5

    goto/16 :goto_287

    :pswitch_50
    iget-object v4, v2, Lads_mobile_sdk/ol1;->a:Lads_mobile_sdk/cm1;

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_b2

    :pswitch_56
    iget-object v4, v2, Lads_mobile_sdk/ol1;->b:Ljava/lang/Object;

    check-cast v4, Ljava/util/Iterator;

    iget-object v10, v2, Lads_mobile_sdk/ol1;->a:Lads_mobile_sdk/cm1;

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_70

    :pswitch_60
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 3221
    iget-object v1, v0, Lads_mobile_sdk/cm1;->e:Lads_mobile_sdk/ks1;

    invoke-interface {v1}, Lads_mobile_sdk/ks1;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v10, v0

    :cond_70
    :goto_70
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lads_mobile_sdk/lm0;

    .line 3222
    iput-object v10, v2, Lads_mobile_sdk/ol1;->a:Lads_mobile_sdk/cm1;

    iput-object v4, v2, Lads_mobile_sdk/ol1;->b:Ljava/lang/Object;

    iput v6, v2, Lads_mobile_sdk/ol1;->e:I

    invoke-interface {v1}, Lads_mobile_sdk/lm0;->a()Lkotlin/Unit;

    move-result-object v1

    if-ne v1, v3, :cond_70

    goto/16 :goto_32e

    .line 3227
    :cond_8a
    iget-object v1, v10, Lads_mobile_sdk/cm1;->B:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v8, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    if-nez v1, :cond_a2

    .line 3228
    iget-object v1, v10, Lads_mobile_sdk/cm1;->A:Lkotlinx/coroutines/CompletableJob;

    iput-object v10, v2, Lads_mobile_sdk/ol1;->a:Lads_mobile_sdk/cm1;

    iput-object v9, v2, Lads_mobile_sdk/ol1;->b:Ljava/lang/Object;

    iput v7, v2, Lads_mobile_sdk/ol1;->e:I

    invoke-interface {v1, v2}, Lkotlinx/coroutines/Job;->join(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v3, :cond_b1

    goto/16 :goto_32e

    .line 3230
    :cond_a2
    iput-object v10, v2, Lads_mobile_sdk/ol1;->a:Lads_mobile_sdk/cm1;

    iput-object v9, v2, Lads_mobile_sdk/ol1;->b:Ljava/lang/Object;

    const/4 v1, 0x3

    iput v1, v2, Lads_mobile_sdk/ol1;->e:I

    invoke-virtual {v10, v2}, Lads_mobile_sdk/cm1;->b(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v3, :cond_b1

    goto/16 :goto_32e

    :cond_b1
    move-object v4, v10

    .line 3235
    :goto_b2
    iget-object v1, v4, Lads_mobile_sdk/cm1;->h:Lads_mobile_sdk/sz;

    iget-object v10, v4, Lads_mobile_sdk/cm1;->l:Lads_mobile_sdk/ex0;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3236
    const-string v11, "flags"

    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3272
    iget-object v11, v1, Lads_mobile_sdk/sz;->a:Lads_mobile_sdk/ja1;

    invoke-virtual {v11}, Lads_mobile_sdk/ja1;->a()Lcom/google/android/libraries/ads/mobile/sdk/initialization/InitializationConfig;

    move-result-object v11

    if-eqz v11, :cond_d3

    .line 3273
    invoke-virtual {v11}, Lcom/google/android/libraries/ads/mobile/sdk/initialization/InitializationConfig;->getExtras()Landroid/os/Bundle;

    move-result-object v11

    if-eqz v11, :cond_d3

    .line 3274
    const-string v12, "background_worker_threads"

    invoke-virtual {v11, v12, v8}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v11

    goto :goto_d4

    :cond_d3
    move v11, v8

    .line 3276
    :goto_d4
    iget-object v12, v1, Lads_mobile_sdk/sz;->a:Lads_mobile_sdk/ja1;

    invoke-virtual {v12}, Lads_mobile_sdk/ja1;->a()Lcom/google/android/libraries/ads/mobile/sdk/initialization/InitializationConfig;

    move-result-object v12

    if-eqz v12, :cond_e9

    invoke-virtual {v12}, Lcom/google/android/libraries/ads/mobile/sdk/initialization/InitializationConfig;->getExtras()Landroid/os/Bundle;

    move-result-object v12

    if-eqz v12, :cond_e9

    const-string v13, "loader_worker_threads"

    invoke-virtual {v12, v13, v8}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v12

    goto :goto_ea

    :cond_e9
    move v12, v8

    .line 3280
    :goto_ea
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3282
    const-string v13, "gad:enable_custom_thread_pool_configuration"

    const-string v14, "key"

    invoke-static {v13, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3298
    sget-object v15, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v6, Lads_mobile_sdk/yr;->b:Lads_mobile_sdk/ir;

    invoke-virtual {v10, v13, v15, v6}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Boolean;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v16

    move/from16 v17, v8

    const-string v8, "gad:min_background_worker_threads"

    const/16 v18, 0x5

    const/16 v5, 0xa

    if-eqz v16, :cond_10f

    if-lez v11, :cond_10f

    goto :goto_122

    .line 3299
    :cond_10f
    invoke-static {v8, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3300
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    sget-object v9, Lads_mobile_sdk/yr;->f:Lads_mobile_sdk/nr;

    invoke-virtual {v10, v8, v11, v9}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Number;

    invoke-virtual {v9}, Ljava/lang/Number;->intValue()I

    move-result v11

    .line 3302
    :goto_122
    invoke-static {v13, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3318
    invoke-virtual {v10, v13, v15, v6}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_134

    if-lez v12, :cond_134

    goto :goto_149

    .line 3319
    :cond_134
    const-string v6, "gad:min_loader_worker_threads"

    invoke-static {v6, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3320
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    sget-object v12, Lads_mobile_sdk/yr;->f:Lads_mobile_sdk/nr;

    invoke-virtual {v10, v6, v9, v12}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    move-result v12

    .line 3321
    :goto_149
    iget-object v6, v1, Lads_mobile_sdk/sz;->e:Lads_mobile_sdk/uq0;

    .line 3322
    iget-object v6, v6, Lads_mobile_sdk/uq0;->a:Ljava/util/concurrent/AbstractExecutorService;

    .line 3323
    instance-of v9, v6, Ljava/util/concurrent/ThreadPoolExecutor;

    if-eqz v9, :cond_154

    check-cast v6, Ljava/util/concurrent/ThreadPoolExecutor;

    goto :goto_155

    :cond_154
    const/4 v6, 0x0

    :goto_155
    if-eqz v6, :cond_16c

    .line 3327
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v9

    invoke-static {v12, v9}, Ljava/lang/Math;->min(II)I

    move-result v9

    invoke-static {v7, v9}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 3329
    sget v12, Lads_mobile_sdk/sz;->$r8$clinit:I

    invoke-static {v6, v9, v10}, Lads_mobile_sdk/qz;->a(Ljava/util/concurrent/ThreadPoolExecutor;ILads_mobile_sdk/ex0;)V

    .line 3332
    :cond_16c
    iget-object v6, v1, Lads_mobile_sdk/sz;->b:Lads_mobile_sdk/uq0;

    .line 3333
    iget-object v6, v6, Lads_mobile_sdk/uq0;->a:Ljava/util/concurrent/AbstractExecutorService;

    .line 3334
    instance-of v9, v6, Ljava/util/concurrent/ThreadPoolExecutor;

    if-eqz v9, :cond_177

    check-cast v6, Ljava/util/concurrent/ThreadPoolExecutor;

    goto :goto_178

    :cond_177
    const/4 v6, 0x0

    :goto_178
    if-eqz v6, :cond_18f

    .line 3338
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v9

    invoke-static {v11, v9}, Ljava/lang/Math;->min(II)I

    move-result v9

    invoke-static {v7, v9}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 3340
    sget v11, Lads_mobile_sdk/sz;->$r8$clinit:I

    invoke-static {v6, v9, v10}, Lads_mobile_sdk/qz;->a(Ljava/util/concurrent/ThreadPoolExecutor;ILads_mobile_sdk/ex0;)V

    .line 3343
    :cond_18f
    iget-object v6, v1, Lads_mobile_sdk/sz;->g:Lads_mobile_sdk/uq0;

    .line 3344
    iget-object v6, v6, Lads_mobile_sdk/uq0;->a:Ljava/util/concurrent/AbstractExecutorService;

    .line 3345
    instance-of v9, v6, Ljava/util/concurrent/ThreadPoolExecutor;

    if-eqz v9, :cond_19a

    check-cast v6, Ljava/util/concurrent/ThreadPoolExecutor;

    goto :goto_19b

    :cond_19a
    const/4 v6, 0x0

    :goto_19b
    if-eqz v6, :cond_1e2

    .line 3346
    invoke-static {v8, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3347
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    sget-object v11, Lads_mobile_sdk/yr;->f:Lads_mobile_sdk/nr;

    invoke-virtual {v10, v8, v9, v11}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Number;

    invoke-virtual {v8}, Ljava/lang/Number;->intValue()I

    move-result v8

    .line 3348
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v9

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 3350
    sget v8, Lads_mobile_sdk/sz;->$r8$clinit:I

    invoke-static {v6, v7, v10}, Lads_mobile_sdk/qz;->a(Ljava/util/concurrent/ThreadPoolExecutor;ILads_mobile_sdk/ex0;)V

    .line 3352
    iget-object v1, v1, Lads_mobile_sdk/sz;->g:Lads_mobile_sdk/uq0;

    .line 3353
    iget-object v1, v1, Lads_mobile_sdk/uq0;->b:Lads_mobile_sdk/fr3;

    .line 3354
    const-string v6, "gads:webview_initialization_thread_priority_offset"

    invoke-static {v6, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3355
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v10, v6, v7, v11}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    move-result v6

    .line 3356
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 3357
    iput-object v6, v1, Lads_mobile_sdk/fr3;->b:Ljava/lang/Integer;

    .line 3358
    :cond_1e2
    iget-object v1, v4, Lads_mobile_sdk/cm1;->d:Ljava/util/Set;

    .line 3675
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 3676
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 3677
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1f2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_20b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    .line 3678
    move-object v9, v8

    check-cast v9, Lads_mobile_sdk/oc1;

    .line 3679
    iget-boolean v9, v9, Lads_mobile_sdk/oc1;->b:Z

    if-eqz v9, :cond_207

    .line 3680
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1f2

    .line 3682
    :cond_207
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1f2

    .line 3685
    :cond_20b
    new-instance v1, Lkotlin/Pair;

    invoke-direct {v1, v6, v7}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 3686
    invoke-virtual {v1}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-virtual {v1}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 4013
    new-instance v7, Ljava/util/ArrayList;

    invoke-static {v6, v5}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v8

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 4014
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_229
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_249

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    .line 4015
    check-cast v8, Lads_mobile_sdk/oc1;

    .line 4016
    iget-object v9, v4, Lads_mobile_sdk/cm1;->b:Lkotlinx/coroutines/CoroutineScope;

    new-instance v12, Lads_mobile_sdk/rl1;

    const/4 v10, 0x0

    invoke-direct {v12, v8, v10}, Lads_mobile_sdk/rl1;-><init>(Lads_mobile_sdk/oc1;Lkotlin/coroutines/Continuation;)V

    const/4 v13, 0x3

    const/4 v14, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static/range {v9 .. v14}, Lkotlinx/coroutines/BuildersKt;->async$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Deferred;

    move-result-object v8

    .line 4344
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_229

    .line 4346
    :cond_249
    new-instance v6, Ljava/util/ArrayList;

    invoke-static {v1, v5}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v5

    invoke-direct {v6, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 4347
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_256
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_276

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 4348
    check-cast v5, Lads_mobile_sdk/oc1;

    .line 4349
    iget-object v8, v4, Lads_mobile_sdk/cm1;->b:Lkotlinx/coroutines/CoroutineScope;

    new-instance v11, Lads_mobile_sdk/ql1;

    const/4 v10, 0x0

    invoke-direct {v11, v5, v10}, Lads_mobile_sdk/ql1;-><init>(Lads_mobile_sdk/oc1;Lkotlin/coroutines/Continuation;)V

    const/4 v12, 0x3

    const/4 v13, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static/range {v8 .. v13}, Lkotlinx/coroutines/BuildersKt;->async$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Deferred;

    move-result-object v5

    .line 4680
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_256

    .line 4681
    :cond_276
    iput-object v4, v2, Lads_mobile_sdk/ol1;->a:Lads_mobile_sdk/cm1;

    iput-object v6, v2, Lads_mobile_sdk/ol1;->b:Ljava/lang/Object;

    const/4 v1, 0x4

    iput v1, v2, Lads_mobile_sdk/ol1;->e:I

    invoke-static {v7, v2}, Lkotlinx/coroutines/AwaitKt;->awaitAll(Ljava/util/Collection;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v3, :cond_285

    goto/16 :goto_32e

    :cond_285
    move-object v7, v4

    move-object v4, v6

    .line 4682
    :goto_287
    check-cast v1, Ljava/lang/Iterable;

    .line 5037
    instance-of v5, v1, Ljava/util/Collection;

    if-eqz v5, :cond_297

    move-object v5, v1

    check-cast v5, Ljava/util/Collection;

    invoke-interface {v5}, Ljava/util/Collection;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_297

    goto :goto_2ac

    .line 5038
    :cond_297
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_29b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2ac

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lads_mobile_sdk/v01;

    .line 5039
    instance-of v5, v5, Lads_mobile_sdk/i01;

    if-eqz v5, :cond_29b

    goto :goto_2e3

    .line 5040
    :cond_2ac
    :goto_2ac
    iput-object v7, v2, Lads_mobile_sdk/ol1;->a:Lads_mobile_sdk/cm1;

    const/4 v10, 0x0

    iput-object v10, v2, Lads_mobile_sdk/ol1;->b:Ljava/lang/Object;

    move/from16 v1, v18

    iput v1, v2, Lads_mobile_sdk/ol1;->e:I

    invoke-static {v4, v2}, Lkotlinx/coroutines/AwaitKt;->awaitAll(Ljava/util/Collection;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v3, :cond_2bd

    goto/16 :goto_32e

    :cond_2bd
    move-object v4, v7

    .line 5041
    :goto_2be
    check-cast v1, Ljava/lang/Iterable;

    .line 5399
    instance-of v5, v1, Ljava/util/Collection;

    if-eqz v5, :cond_2ce

    move-object v5, v1

    check-cast v5, Ljava/util/Collection;

    invoke-interface {v5}, Ljava/util/Collection;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_2ce

    goto :goto_2e7

    .line 5400
    :cond_2ce
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2d2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2e7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lads_mobile_sdk/v01;

    .line 5401
    instance-of v5, v5, Lads_mobile_sdk/i01;

    if-eqz v5, :cond_2d2

    move-object v7, v4

    :goto_2e3
    move-object v4, v7

    move/from16 v6, v17

    goto :goto_2e8

    :cond_2e7
    :goto_2e7
    const/4 v6, 0x1

    .line 5405
    :goto_2e8
    iget-object v1, v4, Lads_mobile_sdk/cm1;->f:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2ee
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_320

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lads_mobile_sdk/gp2;

    .line 5406
    iget-object v7, v4, Lads_mobile_sdk/cm1;->b:Lkotlinx/coroutines/CoroutineScope;

    new-instance v8, Lads_mobile_sdk/pl1;

    const/4 v13, 0x0

    invoke-direct {v8, v5, v13}, Lads_mobile_sdk/pl1;-><init>(Lads_mobile_sdk/gp2;Lkotlin/coroutines/Continuation;)V

    .line 5407
    sget-object v5, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    .line 5408
    const-string v9, "<this>"

    invoke-static {v7, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v9, "context"

    invoke-static {v5, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v9, "block"

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5666
    new-instance v10, Lads_mobile_sdk/ws3;

    invoke-direct {v10, v8, v13}, Lads_mobile_sdk/ws3;-><init>(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)V

    const/4 v11, 0x2

    const/4 v12, 0x0

    const/4 v9, 0x0

    move-object v8, v5

    invoke-static/range {v7 .. v12}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    goto :goto_2ee

    :cond_320
    const/4 v13, 0x0

    .line 5667
    iput-object v13, v2, Lads_mobile_sdk/ol1;->a:Lads_mobile_sdk/cm1;

    iput-object v13, v2, Lads_mobile_sdk/ol1;->b:Ljava/lang/Object;

    const/4 v1, 0x6

    iput v1, v2, Lads_mobile_sdk/ol1;->e:I

    invoke-virtual {v4, v6, v2}, Lads_mobile_sdk/cm1;->a(ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v3, :cond_32f

    :goto_32e
    return-object v3

    .line 5668
    :cond_32f
    :goto_32f
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v1

    :pswitch_data_332
    .packed-switch 0x0
        :pswitch_60
        :pswitch_56
        :pswitch_50
        :pswitch_50
        :pswitch_41
        :pswitch_38
        :pswitch_33
    .end packed-switch
.end method

.method public final a(ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 16

    .line 6018
    instance-of v0, p2, Lads_mobile_sdk/vl1;

    if-eqz v0, :cond_13

    move-object v0, p2

    check-cast v0, Lads_mobile_sdk/vl1;

    iget v1, v0, Lads_mobile_sdk/vl1;->f:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/vl1;->f:I

    goto :goto_18

    :cond_13
    new-instance v0, Lads_mobile_sdk/vl1;

    invoke-direct {v0, p0, p2}, Lads_mobile_sdk/vl1;-><init>(Lads_mobile_sdk/cm1;Lkotlin/coroutines/Continuation;)V

    :goto_18
    iget-object p2, v0, Lads_mobile_sdk/vl1;->d:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 6231
    iget v2, v0, Lads_mobile_sdk/vl1;->f:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_49

    if-eq v2, v4, :cond_3e

    if-ne v2, v3, :cond_36

    iget-object p1, v0, Lads_mobile_sdk/vl1;->b:Lkotlinx/coroutines/sync/Mutex;

    iget-object v0, v0, Lads_mobile_sdk/vl1;->a:Lads_mobile_sdk/cm1;

    :try_start_2d
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_30
    .catchall {:try_start_2d .. :try_end_30} :catchall_32

    goto/16 :goto_b4

    :catchall_32
    move-exception v0

    move-object p2, v0

    goto/16 :goto_e8

    .line 6232
    :cond_36
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3e
    iget-boolean p1, v0, Lads_mobile_sdk/vl1;->c:Z

    iget-object v2, v0, Lads_mobile_sdk/vl1;->b:Lkotlinx/coroutines/sync/Mutex;

    iget-object v4, v0, Lads_mobile_sdk/vl1;->a:Lads_mobile_sdk/cm1;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object p2, v2

    goto :goto_5e

    :cond_49
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 6233
    iget-object p2, p0, Lads_mobile_sdk/cm1;->x:Lkotlinx/coroutines/sync/Mutex;

    .line 6560
    iput-object p0, v0, Lads_mobile_sdk/vl1;->a:Lads_mobile_sdk/cm1;

    iput-object p2, v0, Lads_mobile_sdk/vl1;->b:Lkotlinx/coroutines/sync/Mutex;

    iput-boolean p1, v0, Lads_mobile_sdk/vl1;->c:Z

    iput v4, v0, Lads_mobile_sdk/vl1;->f:I

    invoke-interface {p2, v5, v0}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_5d

    goto :goto_b1

    :cond_5d
    move-object v4, p0

    .line 6561
    :goto_5e
    :try_start_5e
    sget-object v2, Lads_mobile_sdk/kl1;->c:Lads_mobile_sdk/kl1;

    iput-object v2, v4, Lads_mobile_sdk/cm1;->y:Lads_mobile_sdk/kl1;

    .line 6563
    sget-object v2, Lkotlin/time/Duration;->Companion:Lkotlin/time/Duration$Companion;

    iget-object v2, v4, Lads_mobile_sdk/cm1;->m:Lads_mobile_sdk/tx;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6564
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 6565
    sget-object v2, Lkotlin/time/DurationUnit;->MILLISECONDS:Lkotlin/time/DurationUnit;

    invoke-static {v6, v7, v2}, Lkotlin/time/DurationKt;->toDuration(JLkotlin/time/DurationUnit;)J

    move-result-wide v6

    iget-wide v8, v4, Lads_mobile_sdk/cm1;->C:J

    invoke-static {v6, v7, v8, v9}, Lkotlin/time/Duration;->minus-LRDsOJo(JJ)J

    move-result-wide v6

    .line 6566
    iget-object v2, v4, Lads_mobile_sdk/cm1;->z:Lkotlinx/coroutines/CompletableJob;

    invoke-interface {v2}, Lkotlinx/coroutines/CompletableJob;->complete()Z

    .line 6568
    invoke-static {v6, v7}, Lkotlin/time/Duration;->getInWholeMilliseconds-impl(J)J

    move-result-wide v6

    long-to-int v2, v6

    .line 6569
    iget-object v6, v4, Lads_mobile_sdk/cm1;->i:Lads_mobile_sdk/hf;

    if-eqz p1, :cond_98

    .line 6571
    sget-object p1, Lads_mobile_sdk/hf;->A:Ljava/util/List;

    sget-object p1, Lcom/google/android/libraries/ads/mobile/sdk/initialization/AdapterStatus$InitializationState;->COMPLETE:Lcom/google/android/libraries/ads/mobile/sdk/initialization/AdapterStatus$InitializationState;

    const-string v7, "The Google Mobile Ads SDK has successfully initialized."

    invoke-static {p1, v7, v2}, Lads_mobile_sdk/le;->a(Lcom/google/android/libraries/ads/mobile/sdk/initialization/AdapterStatus$InitializationState;Ljava/lang/String;I)Lads_mobile_sdk/ke;

    move-result-object p1

    goto :goto_a2

    :catchall_92
    move-exception v0

    move-object p1, v0

    move-object v12, p2

    move-object p2, p1

    move-object p1, v12

    goto :goto_e8

    .line 6573
    :cond_98
    sget-object p1, Lads_mobile_sdk/hf;->A:Ljava/util/List;

    sget-object p1, Lcom/google/android/libraries/ads/mobile/sdk/initialization/AdapterStatus$InitializationState;->FAILED:Lcom/google/android/libraries/ads/mobile/sdk/initialization/AdapterStatus$InitializationState;

    const-string v7, "The Google Mobile Ads SDK has failed to initialize. Ad loading may be impacted."

    invoke-static {p1, v7, v2}, Lads_mobile_sdk/le;->a(Lcom/google/android/libraries/ads/mobile/sdk/initialization/AdapterStatus$InitializationState;Ljava/lang/String;I)Lads_mobile_sdk/ke;

    move-result-object p1

    .line 6574
    :goto_a2
    iput-object v4, v0, Lads_mobile_sdk/vl1;->a:Lads_mobile_sdk/cm1;

    iput-object p2, v0, Lads_mobile_sdk/vl1;->b:Lkotlinx/coroutines/sync/Mutex;

    iput v3, v0, Lads_mobile_sdk/vl1;->f:I

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6575
    invoke-static {v6, p1, v0}, Lads_mobile_sdk/hf;->a(Lads_mobile_sdk/hf;Lads_mobile_sdk/ke;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1
    :try_end_af
    .catchall {:try_start_5e .. :try_end_af} :catchall_92

    if-ne p1, v1, :cond_b2

    :goto_b1
    return-object v1

    :cond_b2
    move-object p1, p2

    move-object v0, v4

    .line 6576
    :goto_b4
    :try_start_b4
    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_b6
    .catchall {:try_start_b4 .. :try_end_b6} :catchall_32

    .line 6893
    invoke-interface {p1, v5}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    .line 6894
    iget-object v6, v0, Lads_mobile_sdk/cm1;->b:Lkotlinx/coroutines/CoroutineScope;

    new-instance p1, Lads_mobile_sdk/wl1;

    invoke-direct {p1, v0, v5}, Lads_mobile_sdk/wl1;-><init>(Lads_mobile_sdk/cm1;Lkotlin/coroutines/Continuation;)V

    .line 6895
    sget-object v7, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    .line 6896
    const-string v1, "<this>"

    invoke-static {v6, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "context"

    invoke-static {v7, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "block"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7154
    new-instance v9, Lads_mobile_sdk/ws3;

    invoke-direct {v9, p1, v5}, Lads_mobile_sdk/ws3;-><init>(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)V

    const/4 v10, 0x2

    const/4 v11, 0x0

    const/4 v8, 0x0

    invoke-static/range {v6 .. v11}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 7155
    iget-object p1, v0, Lads_mobile_sdk/cm1;->m:Lads_mobile_sdk/tx;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7156
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 7157
    sput-wide v0, Lads_mobile_sdk/xl;->b:J

    return-object p2

    .line 7471
    :goto_e8
    invoke-interface {p1, v5}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw p2
.end method

.method public final a()V
    .registers 6

    .line 6012
    iget-object v0, p0, Lads_mobile_sdk/cm1;->p:Lads_mobile_sdk/l43;

    invoke-virtual {v0}, Lads_mobile_sdk/l43;->a()Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration;

    move-result-object v0

    iget-object v1, p0, Lads_mobile_sdk/cm1;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration;->isTestDevice(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x6

    const/4 v2, 0x0

    if-eqz v0, :cond_16

    .line 6013
    const-string v0, "This RequestConfiguration is configured as a test device."

    invoke-static {v0, v2, v2, v1}, Lads_mobile_sdk/f01;->a(Ljava/lang/String;Ljava/lang/RuntimeException;Ljava/lang/String;I)V

    return-void

    .line 6015
    :cond_16
    sget-object v0, Lads_mobile_sdk/f01;->a:Lcom/google/common/base/Splitter;

    .line 6016
    sget-object v0, Lads_mobile_sdk/o21;->f:Lads_mobile_sdk/m21;

    iget-object v0, p0, Lads_mobile_sdk/cm1;->a:Landroid/content/Context;

    invoke-static {v0}, Lads_mobile_sdk/m21;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Use RequestConfiguration.Builder().setTestDeviceIds(Arrays.asList(\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\")) to get test ads on this device."

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 6017
    invoke-static {v0, v2, v2, v1}, Lads_mobile_sdk/f01;->a(Ljava/lang/String;Ljava/lang/RuntimeException;Ljava/lang/String;I)V

    return-void
.end method

.method public final a(Lkotlin/jvm/functions/Function1;)V
    .registers 9

    .line 7472
    const-string v0, "block"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7598
    iget-object v1, p0, Lads_mobile_sdk/cm1;->b:Lkotlinx/coroutines/CoroutineScope;

    new-instance v2, Lads_mobile_sdk/am1;

    const/4 v3, 0x0

    invoke-direct {v2, p0, p1, v3}, Lads_mobile_sdk/am1;-><init>(Lads_mobile_sdk/cm1;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V

    move-object p1, v2

    .line 7599
    sget-object v2, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    .line 7600
    const-string v4, "<this>"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "context"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7858
    new-instance v4, Lads_mobile_sdk/ws3;

    invoke-direct {v4, p1, v3}, Lads_mobile_sdk/ws3;-><init>(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)V

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final b(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 20

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    .line 1
    instance-of v2, v0, Lads_mobile_sdk/sl1;

    if-eqz v2, :cond_17

    move-object v2, v0

    check-cast v2, Lads_mobile_sdk/sl1;

    iget v3, v2, Lads_mobile_sdk/sl1;->f:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_17

    sub-int/2addr v3, v4

    iput v3, v2, Lads_mobile_sdk/sl1;->f:I

    goto :goto_1c

    :cond_17
    new-instance v2, Lads_mobile_sdk/sl1;

    invoke-direct {v2, v1, v0}, Lads_mobile_sdk/sl1;-><init>(Lads_mobile_sdk/cm1;Lkotlin/coroutines/Continuation;)V

    :goto_1c
    iget-object v0, v2, Lads_mobile_sdk/sl1;->d:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v3

    .line 258
    iget v4, v2, Lads_mobile_sdk/sl1;->f:I

    const/4 v5, 0x0

    const/4 v6, 0x5

    const/4 v7, 0x4

    const/4 v8, 0x3

    const/4 v9, 0x2

    const/4 v10, 0x1

    const/4 v11, 0x0

    if-eqz v4, :cond_8c

    if-eq v4, v10, :cond_7c

    if-eq v4, v9, :cond_6f

    if-eq v4, v8, :cond_5e

    if-eq v4, v7, :cond_4d

    if-ne v4, v6, :cond_45

    iget-object v3, v2, Lads_mobile_sdk/sl1;->c:Ljava/io/Closeable;

    iget-object v4, v2, Lads_mobile_sdk/sl1;->b:Lads_mobile_sdk/rr3;

    iget-object v2, v2, Lads_mobile_sdk/sl1;->a:Lads_mobile_sdk/cm1;

    :try_start_3d
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_40
    .catchall {:try_start_3d .. :try_end_40} :catchall_42

    goto/16 :goto_14e

    :catchall_42
    move-exception v0

    goto/16 :goto_167

    :cond_45
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 259
    :cond_4d
    iget-object v4, v2, Lads_mobile_sdk/sl1;->c:Ljava/io/Closeable;

    iget-object v7, v2, Lads_mobile_sdk/sl1;->b:Lads_mobile_sdk/rr3;

    iget-object v8, v2, Lads_mobile_sdk/sl1;->a:Lads_mobile_sdk/cm1;

    :try_start_53
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_56
    .catchall {:try_start_53 .. :try_end_56} :catchall_58

    goto/16 :goto_12b

    :catchall_58
    move-exception v0

    move-object v3, v4

    move-object v4, v7

    move-object v2, v8

    goto/16 :goto_167

    .line 260
    :cond_5e
    iget-object v4, v2, Lads_mobile_sdk/sl1;->c:Ljava/io/Closeable;

    iget-object v8, v2, Lads_mobile_sdk/sl1;->b:Lads_mobile_sdk/rr3;

    iget-object v9, v2, Lads_mobile_sdk/sl1;->a:Lads_mobile_sdk/cm1;

    :try_start_64
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_67
    .catchall {:try_start_64 .. :try_end_67} :catchall_69

    goto/16 :goto_e9

    :catchall_69
    move-exception v0

    move-object v3, v4

    move-object v4, v8

    move-object v2, v9

    goto/16 :goto_167

    .line 261
    :cond_6f
    iget-object v4, v2, Lads_mobile_sdk/sl1;->c:Ljava/io/Closeable;

    iget-object v9, v2, Lads_mobile_sdk/sl1;->b:Lads_mobile_sdk/rr3;

    iget-object v10, v2, Lads_mobile_sdk/sl1;->a:Lads_mobile_sdk/cm1;

    :try_start_75
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_78
    .catchall {:try_start_75 .. :try_end_78} :catchall_79

    goto :goto_c6

    :catchall_79
    move-exception v0

    goto/16 :goto_e2

    .line 262
    :cond_7c
    iget-object v4, v2, Lads_mobile_sdk/sl1;->c:Ljava/io/Closeable;

    iget-object v10, v2, Lads_mobile_sdk/sl1;->b:Lads_mobile_sdk/rr3;

    iget-object v12, v2, Lads_mobile_sdk/sl1;->a:Lads_mobile_sdk/cm1;

    :try_start_82
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_85
    .catchall {:try_start_82 .. :try_end_85} :catchall_86

    goto :goto_b4

    :catchall_86
    move-exception v0

    move-object v3, v4

    move-object v4, v10

    move-object v2, v12

    goto/16 :goto_167

    .line 263
    :cond_8c
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 265
    :try_start_8f
    sget-object v0, Lads_mobile_sdk/s11;->d:Lads_mobile_sdk/s11;

    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v4

    .line 558
    invoke-static {v0, v4, v10}, Lads_mobile_sdk/hs3;->a(Lads_mobile_sdk/s11;Ljava/util/List;Z)Lads_mobile_sdk/rr3;

    move-result-object v4
    :try_end_99
    .catchall {:try_start_8f .. :try_end_99} :catchall_1a9

    .line 559
    :try_start_99
    iget-object v0, v1, Lads_mobile_sdk/cm1;->l:Lads_mobile_sdk/ex0;

    iget-object v12, v1, Lads_mobile_sdk/cm1;->c:Lkotlin/coroutines/CoroutineContext;

    iget-object v13, v1, Lads_mobile_sdk/cm1;->b:Lkotlinx/coroutines/CoroutineScope;

    iput-object v1, v2, Lads_mobile_sdk/sl1;->a:Lads_mobile_sdk/cm1;

    iput-object v4, v2, Lads_mobile_sdk/sl1;->b:Lads_mobile_sdk/rr3;

    iput-object v4, v2, Lads_mobile_sdk/sl1;->c:Ljava/io/Closeable;

    iput v10, v2, Lads_mobile_sdk/sl1;->f:I

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 560
    invoke-static {v0, v12, v13, v2}, Lads_mobile_sdk/ex0;->a(Lads_mobile_sdk/ex0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0
    :try_end_ae
    .catchall {:try_start_99 .. :try_end_ae} :catchall_164

    if-ne v0, v3, :cond_b2

    goto/16 :goto_14a

    :cond_b2
    move-object v12, v1

    move-object v10, v4

    .line 561
    :goto_b4
    :try_start_b4
    iput-object v12, v2, Lads_mobile_sdk/sl1;->a:Lads_mobile_sdk/cm1;

    iput-object v10, v2, Lads_mobile_sdk/sl1;->b:Lads_mobile_sdk/rr3;

    iput-object v4, v2, Lads_mobile_sdk/sl1;->c:Ljava/io/Closeable;

    iput v9, v2, Lads_mobile_sdk/sl1;->f:I

    invoke-virtual {v12, v2}, Lads_mobile_sdk/cm1;->c(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0
    :try_end_c0
    .catchall {:try_start_b4 .. :try_end_c0} :catchall_86

    if-ne v0, v3, :cond_c4

    goto/16 :goto_14a

    :cond_c4
    move-object v9, v10

    move-object v10, v12

    .line 563
    :goto_c6
    :try_start_c6
    iget-object v0, v10, Lads_mobile_sdk/cm1;->l:Lads_mobile_sdk/ex0;

    invoke-virtual {v0}, Lads_mobile_sdk/ex0;->O()Z

    move-result v0

    if-eqz v0, :cond_e7

    .line 564
    iget-object v0, v10, Lads_mobile_sdk/cm1;->u:Lads_mobile_sdk/pn;

    iput-object v10, v2, Lads_mobile_sdk/sl1;->a:Lads_mobile_sdk/cm1;

    iput-object v9, v2, Lads_mobile_sdk/sl1;->b:Lads_mobile_sdk/rr3;

    iput-object v4, v2, Lads_mobile_sdk/sl1;->c:Ljava/io/Closeable;

    iput v8, v2, Lads_mobile_sdk/sl1;->f:I

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 565
    invoke-static {v0, v5, v2}, Lads_mobile_sdk/pn;->a(Lads_mobile_sdk/pn;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0
    :try_end_df
    .catchall {:try_start_c6 .. :try_end_df} :catchall_79

    if-ne v0, v3, :cond_e7

    goto :goto_14a

    :goto_e2
    move-object v3, v4

    move-object v4, v9

    move-object v2, v10

    goto/16 :goto_167

    :cond_e7
    move-object v8, v9

    move-object v9, v10

    .line 566
    :goto_e9
    :try_start_e9
    iget-object v12, v9, Lads_mobile_sdk/cm1;->b:Lkotlinx/coroutines/CoroutineScope;

    new-instance v0, Lads_mobile_sdk/tl1;

    invoke-direct {v0, v9, v11}, Lads_mobile_sdk/tl1;-><init>(Lads_mobile_sdk/cm1;Lkotlin/coroutines/Continuation;)V

    .line 567
    sget-object v13, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    .line 568
    const-string v10, "<this>"

    invoke-static {v12, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v10, "context"

    invoke-static {v13, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v10, "block"

    invoke-static {v0, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 826
    new-instance v15, Lads_mobile_sdk/ws3;

    invoke-direct {v15, v0, v11}, Lads_mobile_sdk/ws3;-><init>(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)V

    const/16 v16, 0x2

    const/16 v17, 0x0

    const/4 v14, 0x0

    invoke-static/range {v12 .. v17}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 827
    sget-object v0, Lcom/google/android/gms/ads/MediationUtils;->INSTANCE:Lcom/google/android/gms/ads/MediationUtils;

    iget-object v10, v9, Lads_mobile_sdk/cm1;->l:Lads_mobile_sdk/ex0;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v10}, Lcom/google/android/gms/ads/MediationUtils;->a(Lads_mobile_sdk/ex0;)V

    .line 828
    iget-object v0, v9, Lads_mobile_sdk/cm1;->k:Lads_mobile_sdk/e01;

    iput-object v9, v2, Lads_mobile_sdk/sl1;->a:Lads_mobile_sdk/cm1;

    iput-object v8, v2, Lads_mobile_sdk/sl1;->b:Lads_mobile_sdk/rr3;

    iput-object v4, v2, Lads_mobile_sdk/sl1;->c:Ljava/io/Closeable;

    iput v7, v2, Lads_mobile_sdk/sl1;->f:I

    invoke-interface {v0, v2}, Lads_mobile_sdk/e01;->a(Lads_mobile_sdk/sl1;)Ljava/lang/Object;

    move-result-object v0
    :try_end_126
    .catchall {:try_start_e9 .. :try_end_126} :catchall_69

    if-ne v0, v3, :cond_129

    goto :goto_14a

    :cond_129
    move-object v7, v8

    move-object v8, v9

    .line 829
    :goto_12b
    :try_start_12b
    iget-object v0, v8, Lads_mobile_sdk/cm1;->j:Lads_mobile_sdk/ur3;

    iget-object v9, v8, Lads_mobile_sdk/cm1;->b:Lkotlinx/coroutines/CoroutineScope;

    check-cast v0, Lads_mobile_sdk/as3;

    invoke-virtual {v0, v9}, Lads_mobile_sdk/as3;->a(Lkotlinx/coroutines/CoroutineScope;)V

    .line 830
    iget-object v0, v8, Lads_mobile_sdk/cm1;->w:Lads_mobile_sdk/ks1;

    invoke-interface {v0}, Lads_mobile_sdk/ks1;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lads_mobile_sdk/sj;

    iput-object v8, v2, Lads_mobile_sdk/sl1;->a:Lads_mobile_sdk/cm1;

    iput-object v7, v2, Lads_mobile_sdk/sl1;->b:Lads_mobile_sdk/rr3;

    iput-object v4, v2, Lads_mobile_sdk/sl1;->c:Ljava/io/Closeable;

    iput v6, v2, Lads_mobile_sdk/sl1;->f:I

    invoke-virtual {v0, v2}, Lads_mobile_sdk/nc1;->t(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0
    :try_end_148
    .catchall {:try_start_12b .. :try_end_148} :catchall_58

    if-ne v0, v3, :cond_14b

    :goto_14a
    return-object v3

    :cond_14b
    move-object v3, v4

    move-object v4, v7

    move-object v2, v8

    .line 831
    :goto_14e
    :try_start_14e
    check-cast v0, Lads_mobile_sdk/v01;

    .line 1111
    instance-of v6, v0, Lads_mobile_sdk/i01;

    if-eqz v6, :cond_159

    .line 1112
    check-cast v0, Lads_mobile_sdk/i01;

    .line 1113
    invoke-static {v0, v5}, Lads_mobile_sdk/xs3;->a(Lads_mobile_sdk/i01;Z)V
    :try_end_159
    .catchall {:try_start_14e .. :try_end_159} :catchall_42

    .line 1114
    :cond_159
    :try_start_159
    invoke-static {v3, v11}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_15c
    .catchall {:try_start_159 .. :try_end_15c} :catchall_1a7

    .line 1115
    iget-object v0, v2, Lads_mobile_sdk/cm1;->A:Lkotlinx/coroutines/CompletableJob;

    invoke-interface {v0}, Lkotlinx/coroutines/CompletableJob;->complete()Z

    .line 1117
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    :catchall_164
    move-exception v0

    move-object v2, v1

    move-object v3, v4

    .line 1397
    :goto_167
    :try_start_167
    invoke-virtual {v4, v0}, Lads_mobile_sdk/rr3;->b(Ljava/lang/Throwable;)V

    .line 1401
    instance-of v5, v0, Lads_mobile_sdk/v24;

    if-nez v5, :cond_1a0

    .line 1403
    instance-of v5, v0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v5, :cond_17d

    instance-of v5, v0, Ljava/util/concurrent/CancellationException;

    if-nez v5, :cond_17d

    .line 1409
    invoke-virtual {v4, v0}, Lads_mobile_sdk/rr3;->a(Ljava/lang/Throwable;)V

    goto :goto_17d

    :catchall_17a
    move-exception v0

    move-object v4, v0

    goto :goto_1a1

    .line 1415
    :cond_17d
    :goto_17d
    instance-of v4, v0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v4, :cond_198

    .line 1416
    instance-of v4, v0, Ljava/util/concurrent/CancellationException;

    if-nez v4, :cond_190

    .line 1417
    instance-of v4, v0, Lads_mobile_sdk/w01;

    if-eqz v4, :cond_18a

    throw v0

    .line 1418
    :cond_18a
    new-instance v4, Lads_mobile_sdk/b01;

    invoke-direct {v4, v0}, Lads_mobile_sdk/b01;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 1419
    :cond_190
    new-instance v4, Lads_mobile_sdk/wz0;

    check-cast v0, Ljava/util/concurrent/CancellationException;

    invoke-direct {v4, v0}, Lads_mobile_sdk/wz0;-><init>(Ljava/util/concurrent/CancellationException;)V

    throw v4

    .line 1420
    :cond_198
    new-instance v4, Lads_mobile_sdk/i21;

    check-cast v0, Lkotlinx/coroutines/TimeoutCancellationException;

    invoke-direct {v4, v0}, Lads_mobile_sdk/i21;-><init>(Lkotlinx/coroutines/TimeoutCancellationException;)V

    throw v4

    .line 1421
    :cond_1a0
    throw v0
    :try_end_1a1
    .catchall {:try_start_167 .. :try_end_1a1} :catchall_17a

    .line 1422
    :goto_1a1
    :try_start_1a1
    throw v4
    :try_end_1a2
    .catchall {:try_start_1a1 .. :try_end_1a2} :catchall_1a2

    :catchall_1a2
    move-exception v0

    :try_start_1a3
    invoke-static {v3, v4}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
    :try_end_1a7
    .catchall {:try_start_1a3 .. :try_end_1a7} :catchall_1a7

    :catchall_1a7
    move-exception v0

    goto :goto_1ab

    :catchall_1a9
    move-exception v0

    move-object v2, v1

    .line 1423
    :goto_1ab
    iget-object v2, v2, Lads_mobile_sdk/cm1;->A:Lkotlinx/coroutines/CompletableJob;

    invoke-interface {v2}, Lkotlinx/coroutines/CompletableJob;->complete()Z

    throw v0
.end method

.method public final c(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 7

    .line 1
    instance-of v0, p1, Lads_mobile_sdk/zl1;

    if-eqz v0, :cond_13

    move-object v0, p1

    check-cast v0, Lads_mobile_sdk/zl1;

    iget v1, v0, Lads_mobile_sdk/zl1;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/zl1;->d:I

    goto :goto_18

    :cond_13
    new-instance v0, Lads_mobile_sdk/zl1;

    invoke-direct {v0, p0, p1}, Lads_mobile_sdk/zl1;-><init>(Lads_mobile_sdk/cm1;Lkotlin/coroutines/Continuation;)V

    :goto_18
    iget-object p1, v0, Lads_mobile_sdk/zl1;->b:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 315
    iget v2, v0, Lads_mobile_sdk/zl1;->d:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3a

    if-eq v2, v4, :cond_34

    if-ne v2, v3, :cond_2c

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_86

    :cond_2c
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_34
    iget-object v2, v0, Lads_mobile_sdk/zl1;->a:Lads_mobile_sdk/cm1;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_4e

    :cond_3a
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 318
    iget-object p1, p0, Lads_mobile_sdk/cm1;->u:Lads_mobile_sdk/pn;

    iput-object p0, v0, Lads_mobile_sdk/zl1;->a:Lads_mobile_sdk/cm1;

    iput v4, v0, Lads_mobile_sdk/zl1;->d:I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 319
    invoke-static {p1, v0}, Lads_mobile_sdk/pn;->c(Lads_mobile_sdk/pn;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_4d

    goto :goto_85

    :cond_4d
    move-object v2, p0

    .line 320
    :goto_4e
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const/4 v4, 0x0

    if-eqz p1, :cond_6d

    .line 321
    iget-object p1, v2, Lads_mobile_sdk/cm1;->v:Lads_mobile_sdk/cw2;

    invoke-interface {p1}, Lads_mobile_sdk/cw2;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lads_mobile_sdk/mk3;

    .line 322
    iput-boolean v4, p1, Lads_mobile_sdk/rp0;->b:Z

    .line 323
    iget-object p1, v2, Lads_mobile_sdk/cm1;->t:Lads_mobile_sdk/ks1;

    invoke-interface {p1}, Lads_mobile_sdk/ks1;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lads_mobile_sdk/jb3;

    check-cast p1, Lads_mobile_sdk/rp0;

    .line 324
    iput-boolean v4, p1, Lads_mobile_sdk/rp0;->b:Z

    .line 325
    :cond_6d
    iget-object p1, v2, Lads_mobile_sdk/cm1;->l:Lads_mobile_sdk/ex0;

    invoke-virtual {p1}, Lads_mobile_sdk/ex0;->O()Z

    move-result p1

    if-eqz p1, :cond_89

    .line 326
    iget-object p1, v2, Lads_mobile_sdk/cm1;->u:Lads_mobile_sdk/pn;

    const/4 v2, 0x0

    iput-object v2, v0, Lads_mobile_sdk/zl1;->a:Lads_mobile_sdk/cm1;

    iput v3, v0, Lads_mobile_sdk/zl1;->d:I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 327
    invoke-static {p1, v4, v0}, Lads_mobile_sdk/pn;->a(Lads_mobile_sdk/pn;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_86

    :goto_85
    return-object v1

    .line 328
    :cond_86
    :goto_86
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    :cond_89
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
