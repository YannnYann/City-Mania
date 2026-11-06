###### Class ads_mobile_sdk.yy0 (ads_mobile_sdk.yy0)
.class public abstract Lads_mobile_sdk/yy0;
.super Landroidx/activity/OnBackPressedCallback;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/h0;
.implements Lads_mobile_sdk/ay0;


# static fields
.field public static final synthetic E:[Lkotlin/reflect/KProperty;


# instance fields
.field public final A:Lkotlinx/coroutines/sync/Mutex;

.field public B:Z

.field public C:Lkotlinx/coroutines/Job;

.field public D:Z

.field public final a:Landroid/content/Context;

.field public final b:Lkotlinx/coroutines/CoroutineScope;

.field public final c:Lkotlin/coroutines/CoroutineContext;

.field public final d:Lkotlinx/coroutines/CoroutineScope;

.field public final e:Lads_mobile_sdk/ex0;

.field public final f:Lads_mobile_sdk/ur3;

.field public final g:Ljava/lang/String;

.field public final h:Lads_mobile_sdk/o21;

.field public final i:Lads_mobile_sdk/lo;

.field public final j:Ljava/util/Optional;

.field public k:Lkotlinx/coroutines/Job;

.field public final l:Lads_mobile_sdk/tn3;

.field public final m:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final n:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public o:Lads_mobile_sdk/ky;

.field public p:Landroidx/activity/ComponentActivity;

.field public q:Landroid/widget/RelativeLayout;

.field public r:Landroid/view/View;

.field public s:Lads_mobile_sdk/dy;

.field public t:Landroid/widget/Toolbar;

.field public u:Z

.field public v:Z

.field public w:Z

.field public x:Z

.field public final y:Lads_mobile_sdk/yy;

.field public z:I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 1
    const-string v0, "getHasContentViewBeenSet()Z"

    const/4 v1, 0x0

    const-class v2, Lads_mobile_sdk/yy0;

    const-string v3, "hasContentViewBeenSet"

    invoke-static {v2, v3, v0, v1}, Lads_mobile_sdk/kk;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)Lkotlin/reflect/KMutableProperty1;

    move-result-object v0

    const/4 v2, 0x1

    .line 101
    new-array v2, v2, [Lkotlin/reflect/KProperty;

    aput-object v0, v2, v1

    sput-object v2, Lads_mobile_sdk/yy0;->E:[Lkotlin/reflect/KProperty;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lads_mobile_sdk/ex0;Lads_mobile_sdk/ur3;Ljava/lang/String;Lads_mobile_sdk/o21;Lads_mobile_sdk/lo;)V
    .registers 23

    .line 2
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v11

    const-string v0, "empty(...)"

    invoke-static {v11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    .line 3
    invoke-direct/range {v0 .. v11}, Lads_mobile_sdk/yy0;-><init>(Landroid/content/Context;Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lads_mobile_sdk/ex0;Lads_mobile_sdk/ur3;Ljava/lang/String;Lads_mobile_sdk/o21;Lads_mobile_sdk/lo;Ljava/util/Optional;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lads_mobile_sdk/ex0;Lads_mobile_sdk/ur3;Ljava/lang/String;Lads_mobile_sdk/o21;Lads_mobile_sdk/lo;Ljava/util/Optional;)V
    .registers 13

    .line 4
    const-string v0, "applicationContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uiScope"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uiContext"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "backgroundScope"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "backgroundContext"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p5, "flags"

    invoke-static {p6, p5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p5, "traceLogger"

    invoke-static {p7, p5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p5, "afmaVersion"

    invoke-static {p8, p5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p5, "gmaUtil"

    invoke-static {p9, p5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p5, "backButtonStateDelegate"

    invoke-static {p10, p5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p5, "adActivityLifecycleEventEmitter"

    invoke-static {p11, p5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p5, 0x1

    .line 95
    invoke-direct {p0, p5}, Landroidx/activity/OnBackPressedCallback;-><init>(Z)V

    .line 96
    iput-object p1, p0, Lads_mobile_sdk/yy0;->a:Landroid/content/Context;

    .line 97
    iput-object p2, p0, Lads_mobile_sdk/yy0;->b:Lkotlinx/coroutines/CoroutineScope;

    .line 98
    iput-object p3, p0, Lads_mobile_sdk/yy0;->c:Lkotlin/coroutines/CoroutineContext;

    .line 99
    iput-object p4, p0, Lads_mobile_sdk/yy0;->d:Lkotlinx/coroutines/CoroutineScope;

    .line 101
    iput-object p6, p0, Lads_mobile_sdk/yy0;->e:Lads_mobile_sdk/ex0;

    .line 102
    iput-object p7, p0, Lads_mobile_sdk/yy0;->f:Lads_mobile_sdk/ur3;

    .line 103
    iput-object p8, p0, Lads_mobile_sdk/yy0;->g:Ljava/lang/String;

    .line 104
    iput-object p9, p0, Lads_mobile_sdk/yy0;->h:Lads_mobile_sdk/o21;

    .line 105
    iput-object p10, p0, Lads_mobile_sdk/yy0;->i:Lads_mobile_sdk/lo;

    .line 106
    iput-object p11, p0, Lads_mobile_sdk/yy0;->j:Ljava/util/Optional;

    .line 117
    new-instance p1, Lads_mobile_sdk/tn3;

    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {p1, p2}, Lads_mobile_sdk/tn3;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lads_mobile_sdk/yy0;->l:Lads_mobile_sdk/tn3;

    .line 120
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lads_mobile_sdk/yy0;->m:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 126
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lads_mobile_sdk/yy0;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 184
    sget-object p1, Lads_mobile_sdk/yy;->d:Lads_mobile_sdk/yy;

    iput-object p1, p0, Lads_mobile_sdk/yy0;->y:Lads_mobile_sdk/yy;

    const/4 p1, 0x0

    .line 193
    invoke-static {p2, p5, p1}, Lkotlinx/coroutines/sync/MutexKt;->Mutex$default(ZILjava/lang/Object;)Lkotlinx/coroutines/sync/Mutex;

    move-result-object p1

    iput-object p1, p0, Lads_mobile_sdk/yy0;->A:Lkotlinx/coroutines/sync/Mutex;

    return-void
.end method

.method public static a(Lads_mobile_sdk/yy0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1819
    instance-of v2, v1, Lads_mobile_sdk/ey0;

    if-eqz v2, :cond_17

    move-object v2, v1

    check-cast v2, Lads_mobile_sdk/ey0;

    iget v3, v2, Lads_mobile_sdk/ey0;->e:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_17

    sub-int/2addr v3, v4

    iput v3, v2, Lads_mobile_sdk/ey0;->e:I

    goto :goto_1c

    :cond_17
    new-instance v2, Lads_mobile_sdk/ey0;

    invoke-direct {v2, v0, v1}, Lads_mobile_sdk/ey0;-><init>(Lads_mobile_sdk/yy0;Lkotlin/coroutines/Continuation;)V

    :goto_1c
    iget-object v1, v2, Lads_mobile_sdk/ey0;->c:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v3

    .line 2375
    iget v4, v2, Lads_mobile_sdk/ey0;->e:I

    const/4 v5, 0x5

    const/4 v6, 0x4

    const/4 v7, 0x3

    const/4 v8, 0x2

    const/4 v9, 0x1

    const/4 v10, 0x0

    if-eqz v4, :cond_71

    if-eq v4, v9, :cond_69

    if-eq v4, v8, :cond_61

    if-eq v4, v7, :cond_57

    if-eq v4, v6, :cond_4b

    if-ne v4, v5, :cond_43

    iget-object v0, v2, Lads_mobile_sdk/ey0;->a:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Lkotlinx/coroutines/sync/Mutex;

    :try_start_3b
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_3e
    .catchall {:try_start_3b .. :try_end_3e} :catchall_40

    goto/16 :goto_15e

    :catchall_40
    move-exception v0

    goto/16 :goto_168

    :cond_43
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2376
    :cond_4b
    iget-object v0, v2, Lads_mobile_sdk/ey0;->b:Lkotlinx/coroutines/sync/Mutex;

    iget-object v4, v2, Lads_mobile_sdk/ey0;->a:Ljava/lang/Object;

    check-cast v4, Lads_mobile_sdk/yy0;

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    :cond_54
    move-object v1, v0

    goto/16 :goto_112

    :cond_57
    iget-object v0, v2, Lads_mobile_sdk/ey0;->a:Ljava/lang/Object;

    check-cast v0, Lads_mobile_sdk/yy0;

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    :cond_5e
    move-object v4, v0

    goto/16 :goto_103

    :cond_61
    iget-object v0, v2, Lads_mobile_sdk/ey0;->a:Ljava/lang/Object;

    check-cast v0, Lads_mobile_sdk/yy0;

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_c4

    :cond_69
    iget-object v0, v2, Lads_mobile_sdk/ey0;->a:Ljava/lang/Object;

    check-cast v0, Lads_mobile_sdk/yy0;

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_a9

    :cond_71
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 2377
    iget-object v1, v0, Lads_mobile_sdk/yy0;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v9}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v1

    if-eqz v1, :cond_82

    const/4 v0, 0x0

    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 2379
    :cond_82
    iget-object v1, v0, Lads_mobile_sdk/yy0;->k:Lkotlinx/coroutines/Job;

    if-eqz v1, :cond_89

    invoke-static {v1, v10, v9, v10}, Lkotlinx/coroutines/Job$DefaultImpls;->cancel$default(Lkotlinx/coroutines/Job;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 2380
    :cond_89
    iget-object v1, v0, Lads_mobile_sdk/yy0;->i:Lads_mobile_sdk/lo;

    check-cast v1, Lads_mobile_sdk/mo;

    .line 2381
    iget-object v1, v1, Lads_mobile_sdk/mo;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2382
    invoke-virtual {v1, v9}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 2383
    iget-object v1, v0, Lads_mobile_sdk/yy0;->p:Landroidx/activity/ComponentActivity;

    if-eqz v1, :cond_a9

    iget-object v4, v0, Lads_mobile_sdk/yy0;->c:Lkotlin/coroutines/CoroutineContext;

    new-instance v11, Lads_mobile_sdk/fy0;

    invoke-direct {v11, v1, v10}, Lads_mobile_sdk/fy0;-><init>(Landroidx/activity/ComponentActivity;Lkotlin/coroutines/Continuation;)V

    iput-object v0, v2, Lads_mobile_sdk/ey0;->a:Ljava/lang/Object;

    iput v9, v2, Lads_mobile_sdk/ey0;->e:I

    invoke-static {v4, v11, v2}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v3, :cond_a9

    goto/16 :goto_15c

    .line 2384
    :cond_a9
    :goto_a9
    iput-object v10, v0, Lads_mobile_sdk/yy0;->p:Landroidx/activity/ComponentActivity;

    .line 2386
    iput-object v0, v2, Lads_mobile_sdk/ey0;->a:Ljava/lang/Object;

    iput v8, v2, Lads_mobile_sdk/ey0;->e:I

    .line 2387
    invoke-virtual {v0}, Lads_mobile_sdk/yy0;->j()Lads_mobile_sdk/r31;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lads_mobile_sdk/yy0;->a(Lads_mobile_sdk/r31;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v4

    if-ne v1, v4, :cond_be

    goto :goto_c0

    :cond_be
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :goto_c0
    if-ne v1, v3, :cond_c4

    goto/16 :goto_15c

    .line 2388
    :cond_c4
    :goto_c4
    iget-object v1, v0, Lads_mobile_sdk/yy0;->q:Landroid/widget/RelativeLayout;

    if-eqz v1, :cond_cf

    invoke-virtual {v0}, Lads_mobile_sdk/yy0;->g()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 2389
    :cond_cf
    iget-object v1, v0, Lads_mobile_sdk/yy0;->s:Lads_mobile_sdk/dy;

    if-eqz v1, :cond_da

    iget-object v4, v0, Lads_mobile_sdk/yy0;->q:Landroid/widget/RelativeLayout;

    if-eqz v4, :cond_da

    invoke-virtual {v4, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 2390
    :cond_da
    iput-object v10, v0, Lads_mobile_sdk/yy0;->s:Lads_mobile_sdk/dy;

    .line 2392
    iget-object v1, v0, Lads_mobile_sdk/yy0;->e:Lads_mobile_sdk/ex0;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2394
    const-string v4, "key"

    const-string v8, "gad:interstitial_notify_publisher_without_delay"

    invoke-static {v8, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2410
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sget-object v11, Lads_mobile_sdk/yr;->b:Lads_mobile_sdk/ir;

    invoke-virtual {v1, v8, v4, v11}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_5e

    .line 2411
    iput-object v0, v2, Lads_mobile_sdk/ey0;->a:Ljava/lang/Object;

    iput v7, v2, Lads_mobile_sdk/ey0;->e:I

    invoke-virtual {v0, v2}, Lads_mobile_sdk/yy0;->d(Lkotlin/coroutines/Continuation;)Lkotlin/Unit;

    move-result-object v1

    if-ne v1, v3, :cond_5e

    goto :goto_15c

    .line 2416
    :goto_103
    iget-object v0, v4, Lads_mobile_sdk/yy0;->A:Lkotlinx/coroutines/sync/Mutex;

    .line 2513
    iput-object v4, v2, Lads_mobile_sdk/ey0;->a:Ljava/lang/Object;

    iput-object v0, v2, Lads_mobile_sdk/ey0;->b:Lkotlinx/coroutines/sync/Mutex;

    iput v6, v2, Lads_mobile_sdk/ey0;->e:I

    invoke-interface {v0, v10, v2}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v3, :cond_54

    goto :goto_15c

    .line 2514
    :goto_112
    :try_start_112
    iget-boolean v0, v4, Lads_mobile_sdk/yy0;->B:Z

    if-eqz v0, :cond_145

    iget-boolean v0, v4, Lads_mobile_sdk/yy0;->D:Z

    if-nez v0, :cond_145

    .line 2515
    iget-object v11, v4, Lads_mobile_sdk/yy0;->d:Lkotlinx/coroutines/CoroutineScope;

    new-instance v0, Lads_mobile_sdk/gy0;

    invoke-direct {v0, v4, v10}, Lads_mobile_sdk/gy0;-><init>(Lads_mobile_sdk/yy0;Lkotlin/coroutines/Continuation;)V

    .line 2516
    sget-object v12, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    .line 2517
    const-string v2, "<this>"

    invoke-static {v11, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "context"

    invoke-static {v12, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "block"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2775
    new-instance v14, Lads_mobile_sdk/ws3;

    invoke-direct {v14, v0, v10}, Lads_mobile_sdk/ws3;-><init>(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)V

    const/4 v15, 0x2

    const/16 v16, 0x0

    const/4 v13, 0x0

    invoke-static/range {v11 .. v16}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    move-result-object v0

    .line 2776
    iput-object v0, v4, Lads_mobile_sdk/yy0;->C:Lkotlinx/coroutines/Job;

    goto :goto_15d

    :catchall_142
    move-exception v0

    move-object v2, v1

    goto :goto_168

    .line 2785
    :cond_145
    iget-object v0, v4, Lads_mobile_sdk/yy0;->d:Lkotlinx/coroutines/CoroutineScope;

    invoke-interface {v0}, Lkotlinx/coroutines/CoroutineScope;->getCoroutineContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    new-instance v6, Lads_mobile_sdk/hy0;

    invoke-direct {v6, v4, v10}, Lads_mobile_sdk/hy0;-><init>(Lads_mobile_sdk/yy0;Lkotlin/coroutines/Continuation;)V

    iput-object v1, v2, Lads_mobile_sdk/ey0;->a:Ljava/lang/Object;

    iput-object v10, v2, Lads_mobile_sdk/ey0;->b:Lkotlinx/coroutines/sync/Mutex;

    iput v5, v2, Lads_mobile_sdk/ey0;->e:I

    invoke-static {v0, v6, v2}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0
    :try_end_15a
    .catchall {:try_start_112 .. :try_end_15a} :catchall_142

    if-ne v0, v3, :cond_15d

    :goto_15c
    return-object v3

    :cond_15d
    :goto_15d
    move-object v2, v1

    .line 2787
    :goto_15e
    :try_start_15e
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_160
    .catchall {:try_start_15e .. :try_end_160} :catchall_40

    .line 2875
    invoke-interface {v2, v10}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    .line 2876
    invoke-static {v9}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 2962
    :goto_168
    invoke-interface {v2, v10}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw v0
.end method

.method public static final a(Lads_mobile_sdk/yy0;Landroid/view/View;)V
    .registers 2

    .line 1424
    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1818
    sget-object p1, Lads_mobile_sdk/ky;->b:Lads_mobile_sdk/ky;

    invoke-virtual {p0, p1}, Lads_mobile_sdk/yy0;->a(Lads_mobile_sdk/ky;)V

    return-void
.end method

.method public static final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .registers 6

    .line 0
    return-void
.end method

.method public static final a(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .registers 3

    .line 4994
    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5267
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static final b(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .registers 3

    .line 202
    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 736
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static final c(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .registers 3

    .line 2
    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 523
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static final d(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .registers 3

    .line 1
    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 469
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static final e(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .registers 3

    .line 1
    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 484
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static final f(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .registers 3

    .line 2
    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 477
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static final g(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .registers 3

    .line 123
    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 652
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static final h(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .registers 3

    .line 2
    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 518
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a(Landroid/widget/RelativeLayout;)Landroid/widget/Toolbar;
    .registers 3

    .line 648
    const-string v0, "expandableLayout"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1014
    const-string v0, ""

    invoke-virtual {p0, p1, v0}, Lads_mobile_sdk/yy0;->a(Landroid/widget/RelativeLayout;Ljava/lang/String;)Landroid/widget/Toolbar;

    move-result-object p1

    return-object p1
.end method

.method public final a(Landroid/widget/RelativeLayout;Ljava/lang/String;)Landroid/widget/Toolbar;
    .registers 8

    .line 1015
    const-string v0, "Error obtaining close icon."

    const-string v1, "expandableLayout"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1387
    new-instance v1, Landroid/widget/Toolbar;

    iget-object v2, p0, Lads_mobile_sdk/yy0;->p:Landroidx/activity/ComponentActivity;

    invoke-direct {v1, v2}, Landroid/widget/Toolbar;-><init>(Landroid/content/Context;)V

    .line 1388
    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setId(I)V

    .line 1389
    invoke-virtual {p0}, Lads_mobile_sdk/yy0;->g()Landroid/view/View;

    move-result-object v2

    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setId(I)V

    const v2, -0xbbbbbc

    .line 1390
    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    const/4 v2, 0x0

    .line 1391
    invoke-virtual {v1, v2}, Landroid/widget/Toolbar;->setTitleMarginStart(I)V

    .line 1392
    invoke-virtual {v1, p2}, Landroid/widget/Toolbar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 1393
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1394
    const-string p2, "gma_custom_webview_toolbar"

    invoke-virtual {v1, p2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    const/4 p2, 0x4

    const/4 v2, 0x0

    .line 1398
    :try_start_37
    iget-object v3, p0, Lads_mobile_sdk/yy0;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 1399
    sget v4, Lcom/google/android/libraries/ads/mobile/sdk/R$drawable;->admob_close_button_white_cross:I

    .line 1400
    invoke-virtual {v3, v4, v2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 1404
    invoke-virtual {v1, v3}, Landroid/widget/Toolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V
    :try_end_46
    .catch Ljava/lang/NullPointerException; {:try_start_37 .. :try_end_46} :catch_49
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_37 .. :try_end_46} :catch_47

    goto :goto_52

    :catch_47
    move-exception v3

    goto :goto_4b

    :catch_49
    move-exception v3

    goto :goto_4f

    .line 1408
    :goto_4b
    invoke-static {v0, v3, v2, p2}, Lads_mobile_sdk/f01;->a(Ljava/lang/String;Ljava/lang/RuntimeException;Ljava/lang/String;I)V

    goto :goto_52

    .line 1409
    :goto_4f
    invoke-static {v0, v3, v2, p2}, Lads_mobile_sdk/f01;->a(Ljava/lang/String;Ljava/lang/RuntimeException;Ljava/lang/String;I)V

    .line 1414
    :goto_52
    new-instance p2, Lads_mobile_sdk/yy0$$ExternalSyntheticLambda13;

    invoke-direct {p2, p0}, Lads_mobile_sdk/yy0$$ExternalSyntheticLambda13;-><init>(Lads_mobile_sdk/yy0;)V

    invoke-virtual {v1, p2}, Landroid/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1415
    new-instance p2, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v0, -0x1

    const/4 v2, -0x2

    invoke-direct {p2, v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v3, 0xa

    .line 1416
    invoke-virtual {p2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1417
    invoke-virtual {p1, v1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1419
    new-instance p2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {p2, v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1420
    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v0

    const/4 v2, 0x3

    invoke-virtual {p2, v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 v0, 0xc

    .line 1421
    invoke-virtual {p2, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1423
    invoke-virtual {p0}, Lads_mobile_sdk/yy0;->g()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-object v1
.end method

.method public final a(Lads_mobile_sdk/r31;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 13

    .line 2963
    instance-of v0, p2, Lads_mobile_sdk/iy0;

    if-eqz v0, :cond_13

    move-object v0, p2

    check-cast v0, Lads_mobile_sdk/iy0;

    iget v1, v0, Lads_mobile_sdk/iy0;->f:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/iy0;->f:I

    goto :goto_18

    :cond_13
    new-instance v0, Lads_mobile_sdk/iy0;

    invoke-direct {v0, p0, p2}, Lads_mobile_sdk/iy0;-><init>(Lads_mobile_sdk/yy0;Lkotlin/coroutines/Continuation;)V

    :goto_18
    iget-object p2, v0, Lads_mobile_sdk/iy0;->d:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 3569
    iget v2, v0, Lads_mobile_sdk/iy0;->f:I

    const/4 v3, 0x4

    const/4 v4, 0x2

    const/4 v5, 0x3

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v2, :cond_5d

    if-eq v2, v6, :cond_51

    if-eq v2, v4, :cond_44

    if-eq v2, v5, :cond_3b

    if-ne v2, v3, :cond_33

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    return-object p2

    :cond_33
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3b
    iget-object p1, v0, Lads_mobile_sdk/iy0;->b:Lads_mobile_sdk/r31;

    iget-object v2, v0, Lads_mobile_sdk/iy0;->a:Lads_mobile_sdk/yy0;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_c5

    :cond_44
    iget-object p1, v0, Lads_mobile_sdk/iy0;->c:Ljava/lang/String;

    iget-object v2, v0, Lads_mobile_sdk/iy0;->b:Lads_mobile_sdk/r31;

    iget-object v4, v0, Lads_mobile_sdk/iy0;->a:Lads_mobile_sdk/yy0;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object p2, p1

    move-object p1, v2

    move-object v2, v4

    goto :goto_a5

    :cond_51
    iget-object p1, v0, Lads_mobile_sdk/iy0;->c:Ljava/lang/String;

    iget-object v2, v0, Lads_mobile_sdk/iy0;->b:Lads_mobile_sdk/r31;

    iget-object v8, v0, Lads_mobile_sdk/iy0;->a:Lads_mobile_sdk/yy0;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object p2, p1

    move-object p1, v2

    goto :goto_93

    :cond_5d
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 3570
    iget-object p2, p0, Lads_mobile_sdk/yy0;->o:Lads_mobile_sdk/ky;

    if-eqz p2, :cond_69

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    goto :goto_6c

    :cond_69
    sget-object p2, Lads_mobile_sdk/ky;->a:Lads_mobile_sdk/ky;

    move p2, v5

    :goto_6c
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    .line 3572
    new-instance v2, Lcom/google/gson/JsonObject;

    invoke-direct {v2}, Lcom/google/gson/JsonObject;-><init>()V

    .line 3573
    const-string v8, "closetype"

    invoke-virtual {v2, v8, p2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 3574
    iget-object v8, p0, Lads_mobile_sdk/yy0;->g:Ljava/lang/String;

    const-string v9, "version"

    invoke-virtual {v2, v9, v8}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 3576
    iput-object p0, v0, Lads_mobile_sdk/iy0;->a:Lads_mobile_sdk/yy0;

    iput-object p1, v0, Lads_mobile_sdk/iy0;->b:Lads_mobile_sdk/r31;

    iput-object p2, v0, Lads_mobile_sdk/iy0;->c:Ljava/lang/String;

    iput v6, v0, Lads_mobile_sdk/iy0;->f:I

    const-string v8, "onhide"

    invoke-virtual {p1, v2, v8, v0}, Lads_mobile_sdk/r31;->a(Lcom/google/gson/JsonObject;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_92

    goto :goto_d9

    :cond_92
    move-object v8, p0

    .line 3577
    :goto_93
    iput-object v8, v0, Lads_mobile_sdk/iy0;->a:Lads_mobile_sdk/yy0;

    iput-object p1, v0, Lads_mobile_sdk/iy0;->b:Lads_mobile_sdk/r31;

    iput-object p2, v0, Lads_mobile_sdk/iy0;->c:Ljava/lang/String;

    iput v4, v0, Lads_mobile_sdk/iy0;->f:I

    const-string v2, "aeh2"

    invoke-virtual {p1, v2, v0}, Lads_mobile_sdk/r31;->d(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_a4

    goto :goto_d9

    :cond_a4
    move-object v2, v8

    .line 3578
    :goto_a5
    iput-object v2, v0, Lads_mobile_sdk/iy0;->a:Lads_mobile_sdk/yy0;

    iput-object p1, v0, Lads_mobile_sdk/iy0;->b:Lads_mobile_sdk/r31;

    iput-object v7, v0, Lads_mobile_sdk/iy0;->c:Ljava/lang/String;

    iput v5, v0, Lads_mobile_sdk/iy0;->f:I

    .line 3579
    iget-object v4, p1, Lads_mobile_sdk/r31;->d:Lads_mobile_sdk/mb0;

    if-eqz v4, :cond_c1

    .line 3580
    const-string v5, "close_type"

    invoke-virtual {v4, v5, p2, v6, v0}, Lads_mobile_sdk/mb0;->a(Ljava/lang/String;Ljava/lang/String;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    .line 3581
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v4

    if-ne p2, v4, :cond_be

    goto :goto_c2

    :cond_be
    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_c2

    :cond_c1
    move-object p2, v7

    :goto_c2
    if-ne p2, v1, :cond_c5

    goto :goto_d9

    .line 3582
    :cond_c5
    :goto_c5
    iget-object p2, v2, Lads_mobile_sdk/yy0;->o:Lads_mobile_sdk/ky;

    sget-object v2, Lads_mobile_sdk/ky;->a:Lads_mobile_sdk/ky;

    if-ne p2, v2, :cond_db

    .line 3583
    iput-object v7, v0, Lads_mobile_sdk/iy0;->a:Lads_mobile_sdk/yy0;

    iput-object v7, v0, Lads_mobile_sdk/iy0;->b:Lads_mobile_sdk/r31;

    iput v3, v0, Lads_mobile_sdk/iy0;->f:I

    const-string p2, "aebb2"

    invoke-virtual {p1, p2, v0}, Lads_mobile_sdk/r31;->d(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_da

    :goto_d9
    return-object v1

    :cond_da
    return-object p1

    .line 3585
    :cond_db
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public a(Landroid/view/View;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 3

    .line 6937
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public a(Lcom/google/android/libraries/ads/mobile/sdk/common/FullScreenContentError;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 3

    .line 6936
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final a(ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 11

    .line 5892
    instance-of v0, p2, Lads_mobile_sdk/xy0;

    if-eqz v0, :cond_13

    move-object v0, p2

    check-cast v0, Lads_mobile_sdk/xy0;

    iget v1, v0, Lads_mobile_sdk/xy0;->f:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/xy0;->f:I

    goto :goto_18

    :cond_13
    new-instance v0, Lads_mobile_sdk/xy0;

    invoke-direct {v0, p0, p2}, Lads_mobile_sdk/xy0;-><init>(Lads_mobile_sdk/yy0;Lkotlin/coroutines/Continuation;)V

    :goto_18
    iget-object p2, v0, Lads_mobile_sdk/xy0;->d:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 6177
    iget v2, v0, Lads_mobile_sdk/xy0;->f:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_46

    if-eq v2, v4, :cond_3b

    if-ne v2, v3, :cond_33

    iget-object p1, v0, Lads_mobile_sdk/xy0;->b:Lkotlinx/coroutines/sync/Mutex;

    iget-object v0, v0, Lads_mobile_sdk/xy0;->a:Lads_mobile_sdk/yy0;

    :try_start_2d
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_30
    .catchall {:try_start_2d .. :try_end_30} :catchall_31

    goto :goto_7d

    :catchall_31
    move-exception p2

    goto :goto_8e

    .line 6178
    :cond_33
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3b
    iget-boolean p1, v0, Lads_mobile_sdk/xy0;->c:Z

    iget-object v2, v0, Lads_mobile_sdk/xy0;->b:Lkotlinx/coroutines/sync/Mutex;

    iget-object v6, v0, Lads_mobile_sdk/xy0;->a:Lads_mobile_sdk/yy0;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object p2, v2

    goto :goto_5b

    :cond_46
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p2, p0, Lads_mobile_sdk/yy0;->A:Lkotlinx/coroutines/sync/Mutex;

    .line 6554
    iput-object p0, v0, Lads_mobile_sdk/xy0;->a:Lads_mobile_sdk/yy0;

    iput-object p2, v0, Lads_mobile_sdk/xy0;->b:Lkotlinx/coroutines/sync/Mutex;

    iput-boolean p1, v0, Lads_mobile_sdk/xy0;->c:Z

    iput v4, v0, Lads_mobile_sdk/xy0;->f:I

    invoke-interface {p2, v5, v0}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_5a

    goto :goto_75

    :cond_5a
    move-object v6, p0

    .line 6555
    :goto_5b
    :try_start_5b
    iget-boolean v2, v6, Lads_mobile_sdk/yy0;->D:Z

    if-nez v2, :cond_87

    .line 6556
    iput-boolean p1, v6, Lads_mobile_sdk/yy0;->B:Z

    if-nez p1, :cond_87

    .line 6558
    iput-boolean v4, v6, Lads_mobile_sdk/yy0;->D:Z

    .line 6559
    iget-object p1, v6, Lads_mobile_sdk/yy0;->C:Lkotlinx/coroutines/Job;

    if-eqz p1, :cond_7b

    .line 6560
    iput-object v6, v0, Lads_mobile_sdk/xy0;->a:Lads_mobile_sdk/yy0;

    iput-object p2, v0, Lads_mobile_sdk/xy0;->b:Lkotlinx/coroutines/sync/Mutex;

    iput v3, v0, Lads_mobile_sdk/xy0;->f:I

    invoke-virtual {v6, v0}, Lads_mobile_sdk/yy0;->b(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1
    :try_end_73
    .catchall {:try_start_5b .. :try_end_73} :catchall_76

    if-ne p1, v1, :cond_7b

    :goto_75
    return-object v1

    :catchall_76
    move-exception p1

    move-object v7, p2

    move-object p2, p1

    move-object p1, v7

    goto :goto_8e

    :cond_7b
    move-object p1, p2

    move-object v0, v6

    .line 6562
    :goto_7d
    :try_start_7d
    iget-object p2, v0, Lads_mobile_sdk/yy0;->C:Lkotlinx/coroutines/Job;

    if-eqz p2, :cond_84

    invoke-static {p2, v5, v4, v5}, Lkotlinx/coroutines/Job$DefaultImpls;->cancel$default(Lkotlinx/coroutines/Job;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 6563
    :cond_84
    iput-object v5, v0, Lads_mobile_sdk/yy0;->C:Lkotlinx/coroutines/Job;

    goto :goto_88

    :cond_87
    move-object p1, p2

    .line 6566
    :goto_88
    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_8a
    .catchall {:try_start_7d .. :try_end_8a} :catchall_31

    .line 6934
    invoke-interface {p1, v5}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    return-object p2

    .line 6935
    :goto_8e
    invoke-interface {p1, v5}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw p2
.end method

.method public final a()V
    .registers 4

    .line 5740
    invoke-virtual {p0}, Lads_mobile_sdk/yy0;->j()Lads_mobile_sdk/r31;

    move-result-object v0

    .line 5741
    iget-object v0, v0, Lads_mobile_sdk/r31;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 5742
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_13

    .line 5743
    invoke-virtual {p0}, Lads_mobile_sdk/yy0;->j()Lads_mobile_sdk/r31;

    move-result-object v0

    invoke-virtual {v0}, Lads_mobile_sdk/r31;->onResume()V

    .line 5745
    :cond_13
    iget-object v0, p0, Lads_mobile_sdk/yy0;->j:Ljava/util/Optional;

    sget-object v1, Lads_mobile_sdk/ty0;->a:Lads_mobile_sdk/ty0;

    new-instance v2, Lads_mobile_sdk/yy0$$ExternalSyntheticLambda9;

    invoke-direct {v2, v1}, Lads_mobile_sdk/yy0$$ExternalSyntheticLambda9;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public abstract a(I)V
.end method

.method public final a(IZ)V
    .registers 6

    .line 5869
    iget-object v0, p0, Lads_mobile_sdk/yy0;->q:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_d

    if-eqz p2, :cond_8

    const/4 v1, 0x0

    goto :goto_a

    :cond_8
    const/high16 v1, -0x1000000

    :goto_a
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 5870
    :cond_d
    iput-boolean p2, p0, Lads_mobile_sdk/yy0;->w:Z

    .line 5871
    iput p1, p0, Lads_mobile_sdk/yy0;->z:I

    .line 5872
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1f

    if-lt p2, v0, :cond_40

    iget-object p2, p0, Lads_mobile_sdk/yy0;->e:Lads_mobile_sdk/ex0;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5874
    const-string v0, "key"

    const-string v1, "gads:enable_blur_transparent_background"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5890
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v2, Lads_mobile_sdk/yr;->b:Lads_mobile_sdk/ir;

    invoke-virtual {p2, v1, v0, v2}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_40

    .line 5891
    iget-object p2, p0, Lads_mobile_sdk/yy0;->p:Landroidx/activity/ComponentActivity;

    if-eqz p2, :cond_40

    invoke-virtual {p2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p2

    if-eqz p2, :cond_40

    invoke-static {p2, p1}, Lads_mobile_sdk/yy0$$ExternalSyntheticApiModelOutline0;->m(Landroid/view/Window;I)V

    :cond_40
    return-void
.end method

.method public a(Lads_mobile_sdk/dy;)V
    .registers 3

    .line 4460
    const-string v0, "closeButton"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public a(Lads_mobile_sdk/ky;)V
    .registers 3

    .line 2
    const-string v0, "closeReason"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 646
    iput-object p1, p0, Lads_mobile_sdk/yy0;->o:Lads_mobile_sdk/ky;

    .line 647
    iget-object p1, p0, Lads_mobile_sdk/yy0;->p:Landroidx/activity/ComponentActivity;

    if-eqz p1, :cond_e

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    :cond_e
    return-void
.end method

.method public final a(Landroid/view/View;)V
    .registers 3

    .line 5746
    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5867
    iput-object p1, p0, Lads_mobile_sdk/yy0;->r:Landroid/view/View;

    return-void
.end method

.method public final a(Landroidx/activity/ComponentActivity;)V
    .registers 11

    .line 4461
    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4708
    iput-object p1, p0, Lads_mobile_sdk/yy0;->p:Landroidx/activity/ComponentActivity;

    .line 4709
    iget-object v0, p0, Lads_mobile_sdk/yy0;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 4710
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void

    .line 4715
    :cond_13
    iget-object v0, p0, Lads_mobile_sdk/yy0;->m:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_52

    .line 4716
    iget-object v0, p0, Lads_mobile_sdk/yy0;->k:Lkotlinx/coroutines/Job;

    const/4 v2, 0x0

    if-eqz v0, :cond_24

    invoke-static {v0, v2, v1, v2}, Lkotlinx/coroutines/Job$DefaultImpls;->cancel$default(Lkotlinx/coroutines/Job;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 4729
    :cond_24
    invoke-virtual {p1}, Landroidx/activity/ComponentActivity;->getOnBackPressedDispatcher()Landroidx/activity/OnBackPressedDispatcher;

    move-result-object v0

    invoke-virtual {v0, p1, p0}, Landroidx/activity/OnBackPressedDispatcher;->addCallback(Landroidx/lifecycle/LifecycleOwner;Landroidx/activity/OnBackPressedCallback;)V

    .line 4731
    invoke-virtual {p0, p1}, Lads_mobile_sdk/yy0;->b(Landroidx/activity/ComponentActivity;)Landroid/widget/RelativeLayout;

    move-result-object p1

    .line 4732
    iget-object v3, p0, Lads_mobile_sdk/yy0;->d:Lkotlinx/coroutines/CoroutineScope;

    new-instance v0, Lads_mobile_sdk/ny0;

    invoke-direct {v0, p0, p1, v2}, Lads_mobile_sdk/ny0;-><init>(Lads_mobile_sdk/yy0;Landroid/view/View;Lkotlin/coroutines/Continuation;)V

    .line 4733
    sget-object v4, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    .line 4734
    const-string p1, "<this>"

    invoke-static {v3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "context"

    invoke-static {v4, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "block"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4992
    new-instance v6, Lads_mobile_sdk/ws3;

    invoke-direct {v6, v0, v2}, Lads_mobile_sdk/ws3;-><init>(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)V

    const/4 v7, 0x2

    const/4 v8, 0x0

    const/4 v5, 0x0

    invoke-static/range {v3 .. v8}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 4993
    :cond_52
    iget-object p1, p0, Lads_mobile_sdk/yy0;->j:Ljava/util/Optional;

    sget-object v0, Lads_mobile_sdk/oy0;->a:Lads_mobile_sdk/oy0;

    new-instance v1, Lads_mobile_sdk/yy0$$ExternalSyntheticLambda5;

    invoke-direct {v1, v0}, Lads_mobile_sdk/yy0$$ExternalSyntheticLambda5;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final a(Landroid/content/Context;)Z
    .registers 8

    .line 3586
    const-string v0, "AdActivityLauncher.show"

    const-string v1, "Exception starting Activity"

    const-string v2, "context"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x4

    const/4 v4, 0x0

    .line 3774
    :try_start_b
    invoke-virtual {p0}, Lads_mobile_sdk/yy0;->j()Lads_mobile_sdk/r31;

    move-result-object v5

    .line 3775
    iput-object p0, v5, Lads_mobile_sdk/r31;->p:Lads_mobile_sdk/ay0;

    .line 3776
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4424
    iget-object v2, p0, Lads_mobile_sdk/yy0;->h:Lads_mobile_sdk/o21;

    invoke-virtual {v2, p1, p0}, Lads_mobile_sdk/o21;->a(Landroid/content/Context;Lads_mobile_sdk/h0;)Landroid/content/Intent;

    move-result-object v2

    .line 4425
    invoke-virtual {p1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 4426
    invoke-virtual {p0}, Lads_mobile_sdk/yy0;->m()V
    :try_end_20
    .catch Landroid/content/ActivityNotFoundException; {:try_start_b .. :try_end_20} :catch_24
    .catch Ljava/lang/SecurityException; {:try_start_b .. :try_end_20} :catch_22

    const/4 p1, 0x1

    return p1

    :catch_22
    move-exception p1

    goto :goto_26

    :catch_24
    move-exception p1

    goto :goto_3b

    .line 4440
    :goto_26
    iget-object v2, p0, Lads_mobile_sdk/yy0;->d:Lkotlinx/coroutines/CoroutineScope;

    new-instance v5, Lads_mobile_sdk/ly0;

    invoke-direct {v5, p0, v4}, Lads_mobile_sdk/ly0;-><init>(Lads_mobile_sdk/yy0;Lkotlin/coroutines/Continuation;)V

    invoke-static {v2, v5}, Lads_mobile_sdk/xs3;->a(Lkotlinx/coroutines/CoroutineScope;Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/Job;

    .line 4448
    invoke-static {v1, p1, v3}, Lads_mobile_sdk/xs3;->a(Ljava/lang/String;Ljava/lang/Throwable;I)V

    .line 4449
    iget-object v1, p0, Lads_mobile_sdk/yy0;->f:Lads_mobile_sdk/ur3;

    check-cast v1, Lads_mobile_sdk/as3;

    invoke-virtual {v1, v0, p1}, Lads_mobile_sdk/as3;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4f

    .line 4450
    :goto_3b
    iget-object v2, p0, Lads_mobile_sdk/yy0;->d:Lkotlinx/coroutines/CoroutineScope;

    new-instance v5, Lads_mobile_sdk/ky0;

    invoke-direct {v5, p0, v4}, Lads_mobile_sdk/ky0;-><init>(Lads_mobile_sdk/yy0;Lkotlin/coroutines/Continuation;)V

    invoke-static {v2, v5}, Lads_mobile_sdk/xs3;->a(Lkotlinx/coroutines/CoroutineScope;Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/Job;

    .line 4458
    invoke-static {v1, p1, v3}, Lads_mobile_sdk/xs3;->a(Ljava/lang/String;Ljava/lang/Throwable;I)V

    .line 4459
    iget-object v1, p0, Lads_mobile_sdk/yy0;->f:Lads_mobile_sdk/ur3;

    check-cast v1, Lads_mobile_sdk/as3;

    invoke-virtual {v1, v0, p1}, Lads_mobile_sdk/as3;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_4f
    const/4 p1, 0x0

    return p1
.end method

.method public final b(Landroidx/activity/ComponentActivity;)Landroid/widget/RelativeLayout;
    .registers 16

    .line 2
    invoke-virtual {p0}, Lads_mobile_sdk/yy0;->p()V

    .line 5
    invoke-virtual {p0}, Lads_mobile_sdk/yy0;->i()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_13

    .line 6
    invoke-virtual {p0}, Lads_mobile_sdk/yy0;->j()Lads_mobile_sdk/r31;

    move-result-object v0

    invoke-virtual {v0, v2, v1}, Landroid/webkit/WebView;->setLayerType(ILandroid/graphics/Paint;)V

    goto :goto_1e

    .line 8
    :cond_13
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_1e

    const/high16 v3, 0x1000000

    invoke-virtual {v0, v3, v3}, Landroid/view/Window;->setFlags(II)V

    .line 12
    :cond_1e
    :goto_1e
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 13
    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/view/View;->setId(I)V

    .line 14
    iget-boolean v3, p0, Lads_mobile_sdk/yy0;->w:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_31

    move v3, v4

    goto :goto_33

    :cond_31
    const/high16 v3, -0x1000000

    :goto_33
    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 15
    iput-object v0, p0, Lads_mobile_sdk/yy0;->q:Landroid/widget/RelativeLayout;

    .line 16
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x1f

    const-string v6, "key"

    if-lt v3, v5, :cond_65

    iget-object v5, p0, Lads_mobile_sdk/yy0;->e:Lads_mobile_sdk/ex0;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    const-string v7, "gads:enable_blur_transparent_background"

    invoke-static {v7, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    sget-object v8, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v9, Lads_mobile_sdk/yr;->b:Lads_mobile_sdk/ir;

    invoke-virtual {v5, v7, v8, v9}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_65

    .line 35
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v5

    if-eqz v5, :cond_65

    iget v7, p0, Lads_mobile_sdk/yy0;->z:I

    invoke-static {v5, v7}, Lads_mobile_sdk/yy0$$ExternalSyntheticApiModelOutline0;->m(Landroid/view/Window;I)V

    .line 36
    :cond_65
    iget-boolean v5, p0, Lads_mobile_sdk/yy0;->x:Z

    const/16 v7, 0x9

    const/16 v8, 0xa

    const/4 v9, -0x1

    if-eqz v5, :cond_dd

    .line 37
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v5

    invoke-virtual {p0}, Lads_mobile_sdk/yy0;->j()Lads_mobile_sdk/r31;

    move-result-object v10

    invoke-virtual {v5, v10, v4}, Landroid/webkit/CookieManager;->setAcceptThirdPartyCookies(Landroid/webkit/WebView;Z)V

    .line 40
    iget-object v4, p0, Lads_mobile_sdk/yy0;->e:Lads_mobile_sdk/ex0;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 42
    const-string v5, "gads:custom_webview_disable_text_classifier:enabled"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    sget-object v10, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sget-object v11, Lads_mobile_sdk/yr;->b:Lads_mobile_sdk/ir;

    invoke-virtual {v4, v5, v10, v11}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_a2

    const/16 v4, 0x1b

    if-lt v3, v4, :cond_a2

    .line 59
    invoke-virtual {p0}, Lads_mobile_sdk/yy0;->j()Lads_mobile_sdk/r31;

    move-result-object v4

    invoke-static {}, Lads_mobile_sdk/yy0$$ExternalSyntheticApiModelOutline1;->m()Landroid/view/textclassifier/TextClassifier;

    move-result-object v5

    invoke-static {v4, v5}, Lads_mobile_sdk/yy0$$ExternalSyntheticApiModelOutline2;->m(Landroid/webkit/WebView;Landroid/view/textclassifier/TextClassifier;)V

    .line 61
    :cond_a2
    iget-object v4, p0, Lads_mobile_sdk/yy0;->e:Lads_mobile_sdk/ex0;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 63
    const-string v5, "gads:custom_webview_disable_downloads:enabled"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    invoke-virtual {v4, v5, v10, v11}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_c4

    .line 80
    invoke-virtual {p0}, Lads_mobile_sdk/yy0;->j()Lads_mobile_sdk/r31;

    move-result-object v4

    new-instance v5, Lads_mobile_sdk/yy0$$ExternalSyntheticLambda12;

    invoke-direct {v5}, Lads_mobile_sdk/yy0$$ExternalSyntheticLambda12;-><init>()V

    invoke-virtual {v4, v5}, Landroid/webkit/WebView;->setDownloadListener(Landroid/webkit/DownloadListener;)V

    :cond_c4
    const/16 v4, 0x1c

    if-lt v3, v4, :cond_cc

    .line 86
    invoke-static {p1, v2}, Lads_mobile_sdk/yy0$$ExternalSyntheticApiModelOutline3;->m(Landroidx/activity/ComponentActivity;Z)V

    goto :goto_d5

    .line 90
    :cond_cc
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/high16 v4, 0x80000

    invoke-virtual {v3, v4}, Landroid/view/Window;->addFlags(I)V

    .line 93
    :goto_d5
    invoke-virtual {p0, v0}, Lads_mobile_sdk/yy0;->a(Landroid/widget/RelativeLayout;)Landroid/widget/Toolbar;

    move-result-object v3

    .line 94
    iput-object v3, p0, Lads_mobile_sdk/yy0;->t:Landroid/widget/Toolbar;

    goto/16 :goto_18d

    .line 95
    :cond_dd
    invoke-virtual {p0}, Lads_mobile_sdk/yy0;->g()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v0, v3, v9, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 96
    iget-object v3, p0, Lads_mobile_sdk/yy0;->e:Lads_mobile_sdk/ex0;

    const/16 v5, 0x14

    .line 98
    const-string v10, "gad:interstitial:close_button_padding_dip"

    invoke-static {v3, v10, v6, v5}, Lads_mobile_sdk/by0;->a(Lads_mobile_sdk/ex0;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v5

    .line 99
    sget-object v11, Lads_mobile_sdk/yr;->f:Lads_mobile_sdk/nr;

    invoke-virtual {v3, v10, v5, v11}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    .line 100
    iget-object v5, p0, Lads_mobile_sdk/yy0;->e:Lads_mobile_sdk/ex0;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 102
    const-string v10, "gads:force_top_right_close_button:enabled"

    invoke-static {v10, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 118
    sget-object v11, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v12, Lads_mobile_sdk/yr;->b:Lads_mobile_sdk/ir;

    invoke-virtual {v5, v10, v11, v12}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    .line 119
    new-instance v10, Lads_mobile_sdk/ey;

    if-eqz v5, :cond_118

    move v11, v3

    goto :goto_119

    :cond_118
    move v11, v4

    :goto_119
    if-eqz v5, :cond_11d

    move v12, v4

    goto :goto_11e

    :cond_11d
    move v12, v3

    :goto_11e
    invoke-direct {v10, v11, v12, v3}, Lads_mobile_sdk/ey;-><init>(III)V

    .line 126
    new-instance v3, Lads_mobile_sdk/dy;

    iget-object v11, p0, Lads_mobile_sdk/yy0;->e:Lads_mobile_sdk/ex0;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 128
    const-string v12, "gads:close_button_asset_name"

    invoke-static {v12, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "defaultValue"

    const-string v13, "white"

    invoke-static {v13, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 170
    sget-object v6, Lads_mobile_sdk/yr;->o:Lads_mobile_sdk/wr;

    invoke-virtual {v11, v12, v13, v6}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 171
    invoke-direct {v3, p1, v6, v10}, Lads_mobile_sdk/dy;-><init>(Landroid/content/Context;Ljava/lang/String;Lads_mobile_sdk/ey;)V

    .line 172
    new-instance v6, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v10, -0x2

    invoke-direct {v6, v10, v10}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 173
    invoke-virtual {v6, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    if-eqz v5, :cond_150

    const/16 v5, 0xb

    .line 177
    invoke-virtual {v6, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_153

    .line 179
    :cond_150
    invoke-virtual {v6, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 181
    :goto_153
    iput-object v3, p0, Lads_mobile_sdk/yy0;->s:Lads_mobile_sdk/dy;

    .line 182
    new-instance v5, Lads_mobile_sdk/cy0;

    invoke-direct {v5, p0}, Lads_mobile_sdk/cy0;-><init>(Lads_mobile_sdk/yy0;)V

    .line 183
    iput-object v5, v3, Lads_mobile_sdk/dy;->a:Lkotlin/jvm/functions/Function0;

    .line 184
    iget-boolean v5, p0, Lads_mobile_sdk/yy0;->u:Z

    if-eqz v5, :cond_166

    .line 185
    invoke-virtual {p0}, Lads_mobile_sdk/yy0;->h()Z

    move-result v5

    if-eqz v5, :cond_16c

    :cond_166
    invoke-virtual {p0}, Lads_mobile_sdk/yy0;->f()Z

    move-result v5

    if-eqz v5, :cond_179

    .line 186
    :cond_16c
    iget-object v4, p0, Lads_mobile_sdk/yy0;->s:Lads_mobile_sdk/dy;

    if-nez v4, :cond_171

    goto :goto_176

    :cond_171
    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 187
    :goto_176
    iput-boolean v2, p0, Lads_mobile_sdk/yy0;->u:Z

    goto :goto_183

    .line 189
    :cond_179
    iget-object v5, p0, Lads_mobile_sdk/yy0;->s:Lads_mobile_sdk/dy;

    if-nez v5, :cond_17e

    goto :goto_181

    :cond_17e
    invoke-virtual {v5, v4}, Landroid/view/View;->setVisibility(I)V

    .line 190
    :goto_181
    iput-boolean v4, p0, Lads_mobile_sdk/yy0;->u:Z

    .line 191
    :goto_183
    iget-object v4, p0, Lads_mobile_sdk/yy0;->q:Landroid/widget/RelativeLayout;

    if-eqz v4, :cond_18a

    invoke-virtual {v4, v3, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 193
    :cond_18a
    invoke-virtual {p0, v3}, Lads_mobile_sdk/yy0;->a(Lads_mobile_sdk/dy;)V

    .line 194
    :goto_18d
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v9, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 195
    invoke-virtual {v3, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 196
    invoke-virtual {v3, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 198
    invoke-virtual {p1, v0, v3}, Landroidx/activity/ComponentActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 200
    invoke-virtual {p0}, Lads_mobile_sdk/yy0;->k()Lads_mobile_sdk/yy;

    move-result-object p1

    sget-object v3, Lads_mobile_sdk/yy;->d:Lads_mobile_sdk/yy;

    if-ne p1, v3, :cond_1ab

    .line 201
    new-instance p1, Lads_mobile_sdk/dy0;

    invoke-direct {p1, p0, v1}, Lads_mobile_sdk/dy0;-><init>(Lads_mobile_sdk/yy0;Lkotlin/coroutines/Continuation;)V

    invoke-static {v1, p1, v2, v1}, Lkotlinx/coroutines/BuildersKt;->runBlocking$default(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Ljava/lang/Object;

    :cond_1ab
    return-object v0
.end method

.method public abstract b(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end method

.method public final b()V
    .registers 4

    .line 1253
    iget-object v0, p0, Lads_mobile_sdk/yy0;->j:Ljava/util/Optional;

    sget-object v1, Lads_mobile_sdk/vy0;->a:Lads_mobile_sdk/vy0;

    new-instance v2, Lads_mobile_sdk/yy0$$ExternalSyntheticLambda6;

    invoke-direct {v2, v1}, Lads_mobile_sdk/yy0$$ExternalSyntheticLambda6;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public c(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-static {p0, p1}, Lads_mobile_sdk/yy0;->a(Lads_mobile_sdk/yy0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final c()V
    .registers 4

    .line 992
    iget-object v0, p0, Lads_mobile_sdk/yy0;->j:Ljava/util/Optional;

    sget-object v1, Lads_mobile_sdk/ry0;->a:Lads_mobile_sdk/ry0;

    new-instance v2, Lads_mobile_sdk/yy0$$ExternalSyntheticLambda8;

    invoke-direct {v2, v1}, Lads_mobile_sdk/yy0$$ExternalSyntheticLambda8;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public d(Lkotlin/coroutines/Continuation;)Lkotlin/Unit;
    .registers 2

    .line 470
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public e(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 2

    .line 487
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final e()V
    .registers 4

    .line 486
    iget-object v0, p0, Lads_mobile_sdk/yy0;->l:Lads_mobile_sdk/tn3;

    sget-object v1, Lads_mobile_sdk/yy0;->E:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, p0, v1, v2}, Lads_mobile_sdk/tn3;->setValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V

    return-void
.end method

.method public f()Z
    .registers 2

    .line 0
    const/4 v0, 0x0

    return v0
.end method

.method public final g()Landroid/view/View;
    .registers 2

    .line 122
    iget-object v0, p0, Lads_mobile_sdk/yy0;->r:Landroid/view/View;

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    const-string v0, "contentView"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public h()Z
    .registers 2

    .line 0
    const/4 v0, 0x0

    return v0
.end method

.method public final handleOnBackPressed()V
    .registers 8

    .line 443
    invoke-virtual {p0}, Lads_mobile_sdk/yy0;->j()Lads_mobile_sdk/r31;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 444
    invoke-virtual {p0}, Lads_mobile_sdk/yy0;->j()Lads_mobile_sdk/r31;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    return-void

    .line 446
    :cond_12
    iget-object v0, p0, Lads_mobile_sdk/yy0;->i:Lads_mobile_sdk/lo;

    check-cast v0, Lads_mobile_sdk/mo;

    .line 447
    iget-object v0, v0, Lads_mobile_sdk/mo;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 448
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_51

    .line 449
    invoke-virtual {p0}, Lads_mobile_sdk/yy0;->j()Lads_mobile_sdk/r31;

    move-result-object v0

    .line 450
    iget-object v0, v0, Lads_mobile_sdk/r31;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 451
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_2b

    goto :goto_51

    .line 458
    :cond_2b
    iget-object v1, p0, Lads_mobile_sdk/yy0;->b:Lkotlinx/coroutines/CoroutineScope;

    new-instance v0, Lads_mobile_sdk/jy0;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lads_mobile_sdk/jy0;-><init>(Lads_mobile_sdk/yy0;Lkotlin/coroutines/Continuation;)V

    move-object v3, v2

    .line 459
    sget-object v2, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    .line 460
    const-string v4, "<this>"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "context"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "block"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 718
    new-instance v4, Lads_mobile_sdk/ws3;

    invoke-direct {v4, v0, v3}, Lads_mobile_sdk/ws3;-><init>(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)V

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void

    .line 719
    :cond_51
    :goto_51
    sget-object v0, Lads_mobile_sdk/ky;->a:Lads_mobile_sdk/ky;

    iput-object v0, p0, Lads_mobile_sdk/yy0;->o:Lads_mobile_sdk/ky;

    const/4 v0, 0x0

    .line 722
    invoke-virtual {p0, v0}, Landroidx/activity/OnBackPressedCallback;->setEnabled(Z)V

    .line 723
    iget-object v0, p0, Lads_mobile_sdk/yy0;->p:Landroidx/activity/ComponentActivity;

    if-eqz v0, :cond_66

    invoke-virtual {v0}, Landroidx/activity/ComponentActivity;->getOnBackPressedDispatcher()Landroidx/activity/OnBackPressedDispatcher;

    move-result-object v0

    if-eqz v0, :cond_66

    invoke-virtual {v0}, Landroidx/activity/OnBackPressedDispatcher;->onBackPressed()V

    :cond_66
    return-void
.end method

.method public i()Z
    .registers 2

    .line 0
    const/4 v0, 0x0

    return v0
.end method

.method public abstract j()Lads_mobile_sdk/r31;
.end method

.method public k()Lads_mobile_sdk/yy;
    .registers 2

    .line 168
    iget-object v0, p0, Lads_mobile_sdk/yy0;->y:Lads_mobile_sdk/yy;

    return-object v0
.end method

.method public abstract l()I
.end method

.method public final m()V
    .registers 7

    .line 229
    iget-object v0, p0, Lads_mobile_sdk/yy0;->d:Lkotlinx/coroutines/CoroutineScope;

    new-instance v1, Lads_mobile_sdk/my0;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lads_mobile_sdk/my0;-><init>(Lads_mobile_sdk/yy0;Lkotlin/coroutines/Continuation;)V

    move-object v3, v1

    .line 230
    sget-object v1, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    .line 231
    const-string v4, "<this>"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "context"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "block"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v4, v3

    .line 489
    new-instance v3, Lads_mobile_sdk/ws3;

    invoke-direct {v3, v4, v2}, Lads_mobile_sdk/ws3;-><init>(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)V

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v2, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    move-result-object v0

    .line 490
    iput-object v0, p0, Lads_mobile_sdk/yy0;->k:Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final n()V
    .registers 2

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lads_mobile_sdk/yy0;->v:Z

    return-void
.end method

.method public final o()V
    .registers 8

    .line 545
    iget-object v0, p0, Lads_mobile_sdk/yy0;->p:Landroidx/activity/ComponentActivity;

    if-eqz v0, :cond_39

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_39

    iget-object v0, p0, Lads_mobile_sdk/yy0;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_14

    goto :goto_39

    .line 549
    :cond_14
    iget-object v1, p0, Lads_mobile_sdk/yy0;->b:Lkotlinx/coroutines/CoroutineScope;

    new-instance v0, Lads_mobile_sdk/wy0;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lads_mobile_sdk/wy0;-><init>(Lads_mobile_sdk/yy0;Lkotlin/coroutines/Continuation;)V

    move-object v3, v2

    .line 550
    sget-object v2, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    .line 551
    const-string v4, "<this>"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "context"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "block"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 809
    new-instance v4, Lads_mobile_sdk/ws3;

    invoke-direct {v4, v0, v3}, Lads_mobile_sdk/ws3;-><init>(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)V

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    :cond_39
    :goto_39
    return-void
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3

    .line 1
    const-string v0, "configuration"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final onDestroy()V
    .registers 4

    .line 534
    invoke-virtual {p0}, Lads_mobile_sdk/yy0;->o()V

    .line 535
    iget-object v0, p0, Lads_mobile_sdk/yy0;->j:Ljava/util/Optional;

    sget-object v1, Lads_mobile_sdk/py0;->a:Lads_mobile_sdk/py0;

    new-instance v2, Lads_mobile_sdk/yy0$$ExternalSyntheticLambda7;

    invoke-direct {v2, v1}, Lads_mobile_sdk/yy0$$ExternalSyntheticLambda7;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final onPause()V
    .registers 4

    .line 521
    invoke-virtual {p0}, Lads_mobile_sdk/yy0;->o()V

    .line 522
    iget-object v0, p0, Lads_mobile_sdk/yy0;->j:Ljava/util/Optional;

    sget-object v1, Lads_mobile_sdk/qy0;->a:Lads_mobile_sdk/qy0;

    new-instance v2, Lads_mobile_sdk/yy0$$ExternalSyntheticLambda4;

    invoke-direct {v2, v1}, Lads_mobile_sdk/yy0$$ExternalSyntheticLambda4;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final onResume()V
    .registers 4

    .line 2
    iget-object v0, p0, Lads_mobile_sdk/yy0;->p:Landroidx/activity/ComponentActivity;

    if-eqz v0, :cond_39

    invoke-virtual {v0}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v0

    if-nez v0, :cond_39

    .line 5
    iget-object v0, p0, Lads_mobile_sdk/yy0;->p:Landroidx/activity/ComponentActivity;

    if-eqz v0, :cond_39

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_39

    .line 6
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Landroidx/core/view/WindowCompat;->getInsetsController(Landroid/view/Window;Landroid/view/View;)Landroidx/core/view/WindowInsetsControllerCompat;

    move-result-object v0

    const-string v1, "getInsetsController(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    iget-boolean v1, p0, Lads_mobile_sdk/yy0;->v:Z

    if-eqz v1, :cond_29

    const/4 v1, 0x2

    .line 12
    invoke-virtual {v0, v1}, Landroidx/core/view/WindowInsetsControllerCompat;->setSystemBarsBehavior(I)V

    .line 17
    :cond_29
    iget-boolean v1, p0, Lads_mobile_sdk/yy0;->v:Z

    if-eqz v1, :cond_32

    .line 18
    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->systemBars()I

    move-result v1

    goto :goto_36

    .line 20
    :cond_32
    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->statusBars()I

    move-result v1

    .line 21
    :goto_36
    invoke-virtual {v0, v1}, Landroidx/core/view/WindowInsetsControllerCompat;->hide(I)V

    .line 22
    :cond_39
    invoke-virtual {p0}, Lads_mobile_sdk/yy0;->j()Lads_mobile_sdk/r31;

    move-result-object v0

    .line 23
    iget-object v0, v0, Lads_mobile_sdk/r31;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 24
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_4c

    .line 25
    invoke-virtual {p0}, Lads_mobile_sdk/yy0;->j()Lads_mobile_sdk/r31;

    move-result-object v0

    invoke-virtual {v0}, Lads_mobile_sdk/r31;->onResume()V

    .line 27
    :cond_4c
    iget-object v0, p0, Lads_mobile_sdk/yy0;->j:Ljava/util/Optional;

    sget-object v1, Lads_mobile_sdk/sy0;->a:Lads_mobile_sdk/sy0;

    new-instance v2, Lads_mobile_sdk/yy0$$ExternalSyntheticLambda10;

    invoke-direct {v2, v1}, Lads_mobile_sdk/yy0$$ExternalSyntheticLambda10;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public onStop()V
    .registers 4

    .line 526
    invoke-virtual {p0}, Lads_mobile_sdk/yy0;->j()Lads_mobile_sdk/r31;

    move-result-object v0

    .line 527
    iget-object v0, v0, Lads_mobile_sdk/r31;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 528
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_13

    .line 529
    invoke-virtual {p0}, Lads_mobile_sdk/yy0;->j()Lads_mobile_sdk/r31;

    move-result-object v0

    invoke-virtual {v0}, Lads_mobile_sdk/r31;->onPause()V

    .line 531
    :cond_13
    invoke-virtual {p0}, Lads_mobile_sdk/yy0;->o()V

    .line 532
    iget-object v0, p0, Lads_mobile_sdk/yy0;->j:Ljava/util/Optional;

    sget-object v1, Lads_mobile_sdk/uy0;->a:Lads_mobile_sdk/uy0;

    new-instance v2, Lads_mobile_sdk/yy0$$ExternalSyntheticLambda11;

    invoke-direct {v2, v1}, Lads_mobile_sdk/yy0$$ExternalSyntheticLambda11;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final p()V
    .registers 4

    .line 461
    :try_start_0
    iget-object v0, p0, Lads_mobile_sdk/yy0;->p:Landroidx/activity/ComponentActivity;

    if-nez v0, :cond_5

    goto :goto_24

    :cond_5
    invoke-virtual {p0}, Lads_mobile_sdk/yy0;->l()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V
    :try_end_c
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_c} :catch_d

    return-void

    :catch_d
    move-exception v0

    .line 464
    sget-object v1, Lads_mobile_sdk/f01;->a:Lcom/google/common/base/Splitter;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to update orientation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lads_mobile_sdk/f01;->c(Ljava/lang/String;)V

    :goto_24
    return-void
.end method

###### Class ads_mobile_sdk.yy0$$ExternalSyntheticLambda10 (ads_mobile_sdk.yy0$$ExternalSyntheticLambda10)
.class public final synthetic Lads_mobile_sdk/yy0$$ExternalSyntheticLambda10;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lkotlin/jvm/functions/Function1;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function1;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lads_mobile_sdk/yy0$$ExternalSyntheticLambda10;->f$0:Lkotlin/jvm/functions/Function1;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 3

    .line 0
    iget-object v0, p0, Lads_mobile_sdk/yy0$$ExternalSyntheticLambda10;->f$0:Lkotlin/jvm/functions/Function1;

    invoke-static {v0, p1}, Lads_mobile_sdk/yy0;->e(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V

    return-void
.end method

###### Class ads_mobile_sdk.yy0$$ExternalSyntheticLambda11 (ads_mobile_sdk.yy0$$ExternalSyntheticLambda11)
.class public final synthetic Lads_mobile_sdk/yy0$$ExternalSyntheticLambda11;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lkotlin/jvm/functions/Function1;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function1;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lads_mobile_sdk/yy0$$ExternalSyntheticLambda11;->f$0:Lkotlin/jvm/functions/Function1;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 3

    .line 0
    iget-object v0, p0, Lads_mobile_sdk/yy0$$ExternalSyntheticLambda11;->f$0:Lkotlin/jvm/functions/Function1;

    invoke-static {v0, p1}, Lads_mobile_sdk/yy0;->g(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V

    return-void
.end method

###### Class ads_mobile_sdk.yy0$$ExternalSyntheticLambda12 (ads_mobile_sdk.yy0$$ExternalSyntheticLambda12)
.class public final synthetic Lads_mobile_sdk/yy0$$ExternalSyntheticLambda12;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/webkit/DownloadListener;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDownloadStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .registers 7

    .line 0
    invoke-static/range {p1 .. p6}, Lads_mobile_sdk/yy0;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

###### Class ads_mobile_sdk.yy0$$ExternalSyntheticLambda13 (ads_mobile_sdk.yy0$$ExternalSyntheticLambda13)
.class public final synthetic Lads_mobile_sdk/yy0$$ExternalSyntheticLambda13;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lads_mobile_sdk/yy0;


# direct methods
.method public synthetic constructor <init>(Lads_mobile_sdk/yy0;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lads_mobile_sdk/yy0$$ExternalSyntheticLambda13;->f$0:Lads_mobile_sdk/yy0;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 3

    .line 0
    iget-object v0, p0, Lads_mobile_sdk/yy0$$ExternalSyntheticLambda13;->f$0:Lads_mobile_sdk/yy0;

    invoke-static {v0, p1}, Lads_mobile_sdk/yy0;->a(Lads_mobile_sdk/yy0;Landroid/view/View;)V

    return-void
.end method

###### Class ads_mobile_sdk.yy0$$ExternalSyntheticLambda4 (ads_mobile_sdk.yy0$$ExternalSyntheticLambda4)
.class public final synthetic Lads_mobile_sdk/yy0$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lkotlin/jvm/functions/Function1;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function1;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lads_mobile_sdk/yy0$$ExternalSyntheticLambda4;->f$0:Lkotlin/jvm/functions/Function1;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 3

    .line 0
    iget-object v0, p0, Lads_mobile_sdk/yy0$$ExternalSyntheticLambda4;->f$0:Lkotlin/jvm/functions/Function1;

    invoke-static {v0, p1}, Lads_mobile_sdk/yy0;->c(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V

    return-void
.end method

###### Class ads_mobile_sdk.yy0$$ExternalSyntheticLambda5 (ads_mobile_sdk.yy0$$ExternalSyntheticLambda5)
.class public final synthetic Lads_mobile_sdk/yy0$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lkotlin/jvm/functions/Function1;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function1;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lads_mobile_sdk/yy0$$ExternalSyntheticLambda5;->f$0:Lkotlin/jvm/functions/Function1;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 3

    .line 0
    iget-object v0, p0, Lads_mobile_sdk/yy0$$ExternalSyntheticLambda5;->f$0:Lkotlin/jvm/functions/Function1;

    invoke-static {v0, p1}, Lads_mobile_sdk/yy0;->a(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V

    return-void
.end method

###### Class ads_mobile_sdk.yy0$$ExternalSyntheticLambda6 (ads_mobile_sdk.yy0$$ExternalSyntheticLambda6)
.class public final synthetic Lads_mobile_sdk/yy0$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lkotlin/jvm/functions/Function1;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function1;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lads_mobile_sdk/yy0$$ExternalSyntheticLambda6;->f$0:Lkotlin/jvm/functions/Function1;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 3

    .line 0
    iget-object v0, p0, Lads_mobile_sdk/yy0$$ExternalSyntheticLambda6;->f$0:Lkotlin/jvm/functions/Function1;

    invoke-static {v0, p1}, Lads_mobile_sdk/yy0;->h(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V

    return-void
.end method

###### Class ads_mobile_sdk.yy0$$ExternalSyntheticLambda7 (ads_mobile_sdk.yy0$$ExternalSyntheticLambda7)
.class public final synthetic Lads_mobile_sdk/yy0$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lkotlin/jvm/functions/Function1;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function1;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lads_mobile_sdk/yy0$$ExternalSyntheticLambda7;->f$0:Lkotlin/jvm/functions/Function1;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 3

    .line 0
    iget-object v0, p0, Lads_mobile_sdk/yy0$$ExternalSyntheticLambda7;->f$0:Lkotlin/jvm/functions/Function1;

    invoke-static {v0, p1}, Lads_mobile_sdk/yy0;->b(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V

    return-void
.end method

###### Class ads_mobile_sdk.yy0$$ExternalSyntheticLambda8 (ads_mobile_sdk.yy0$$ExternalSyntheticLambda8)
.class public final synthetic Lads_mobile_sdk/yy0$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lkotlin/jvm/functions/Function1;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function1;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lads_mobile_sdk/yy0$$ExternalSyntheticLambda8;->f$0:Lkotlin/jvm/functions/Function1;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 3

    .line 0
    iget-object v0, p0, Lads_mobile_sdk/yy0$$ExternalSyntheticLambda8;->f$0:Lkotlin/jvm/functions/Function1;

    invoke-static {v0, p1}, Lads_mobile_sdk/yy0;->d(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V

    return-void
.end method

###### Class ads_mobile_sdk.yy0$$ExternalSyntheticLambda9 (ads_mobile_sdk.yy0$$ExternalSyntheticLambda9)
.class public final synthetic Lads_mobile_sdk/yy0$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lkotlin/jvm/functions/Function1;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function1;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lads_mobile_sdk/yy0$$ExternalSyntheticLambda9;->f$0:Lkotlin/jvm/functions/Function1;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 3

    .line 0
    iget-object v0, p0, Lads_mobile_sdk/yy0$$ExternalSyntheticLambda9;->f$0:Lkotlin/jvm/functions/Function1;

    invoke-static {v0, p1}, Lads_mobile_sdk/yy0;->f(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V

    return-void
.end method
