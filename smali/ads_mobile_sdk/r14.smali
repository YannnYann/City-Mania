###### Class ads_mobile_sdk.r14 (ads_mobile_sdk.r14)
.class public final Lads_mobile_sdk/r14;
.super Lads_mobile_sdk/fp2;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/p04;
.implements Lads_mobile_sdk/q04;


# instance fields
.field public final c:Lads_mobile_sdk/ex0;

.field public final d:Lkotlin/coroutines/CoroutineContext;

.field public final e:Lkotlinx/coroutines/CoroutineScope;

.field public final f:Lads_mobile_sdk/g83;

.field public final g:Lads_mobile_sdk/sz;

.field public final h:Lads_mobile_sdk/cw2;

.field public final i:Lads_mobile_sdk/rz3;

.field public final j:Lads_mobile_sdk/t04;

.field public final k:Lads_mobile_sdk/tx;

.field public final l:Lads_mobile_sdk/cw2;

.field public m:Landroidx/webkit/Profile;

.field public final n:Lkotlinx/coroutines/sync/Mutex;

.field public final o:Lkotlinx/coroutines/sync/Mutex;

.field public p:Lkotlinx/coroutines/Job;

.field public q:J

.field public r:Lkotlinx/coroutines/Job;

.field public final s:Lkotlin/Lazy;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lads_mobile_sdk/ex0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineScope;Lads_mobile_sdk/g83;Lads_mobile_sdk/zw3;Lads_mobile_sdk/sz;Lads_mobile_sdk/dw2;Lads_mobile_sdk/rz3;Lads_mobile_sdk/t04;Lads_mobile_sdk/tx;Lads_mobile_sdk/dw2;)V
    .registers 14

    .line 1
    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "flags"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "uiContext"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "backgroundScope"

    invoke-static {p4, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "rootTraceCreator"

    invoke-static {p5, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "userAgentProvider"

    invoke-static {p6, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "concurrencyObjects"

    invoke-static {p7, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "webViewInitializationTaskProvider"

    invoke-static {p8, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "webViewFeatureWrapper"

    invoke-static {p9, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "webViewProfileStoreWrapper"

    invoke-static {p10, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "clock"

    invoke-static {p11, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "sdkCoreJavascriptEngine"

    invoke-static {p12, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Lads_mobile_sdk/fp2;-><init>()V

    .line 3
    iput-object p2, p0, Lads_mobile_sdk/r14;->c:Lads_mobile_sdk/ex0;

    .line 4
    iput-object p3, p0, Lads_mobile_sdk/r14;->d:Lkotlin/coroutines/CoroutineContext;

    .line 5
    iput-object p4, p0, Lads_mobile_sdk/r14;->e:Lkotlinx/coroutines/CoroutineScope;

    .line 6
    iput-object p5, p0, Lads_mobile_sdk/r14;->f:Lads_mobile_sdk/g83;

    .line 8
    iput-object p7, p0, Lads_mobile_sdk/r14;->g:Lads_mobile_sdk/sz;

    .line 9
    iput-object p8, p0, Lads_mobile_sdk/r14;->h:Lads_mobile_sdk/cw2;

    .line 10
    iput-object p9, p0, Lads_mobile_sdk/r14;->i:Lads_mobile_sdk/rz3;

    .line 11
    iput-object p10, p0, Lads_mobile_sdk/r14;->j:Lads_mobile_sdk/t04;

    .line 12
    iput-object p11, p0, Lads_mobile_sdk/r14;->k:Lads_mobile_sdk/tx;

    .line 13
    iput-object p12, p0, Lads_mobile_sdk/r14;->l:Lads_mobile_sdk/cw2;

    const/4 p1, 0x0

    const/4 p2, 0x1

    const/4 p3, 0x0

    .line 18
    invoke-static {p1, p2, p3}, Lkotlinx/coroutines/sync/MutexKt;->Mutex$default(ZILjava/lang/Object;)Lkotlinx/coroutines/sync/Mutex;

    move-result-object p4

    iput-object p4, p0, Lads_mobile_sdk/r14;->n:Lkotlinx/coroutines/sync/Mutex;

    .line 19
    invoke-static {p1, p2, p3}, Lkotlinx/coroutines/sync/MutexKt;->Mutex$default(ZILjava/lang/Object;)Lkotlinx/coroutines/sync/Mutex;

    move-result-object p1

    iput-object p1, p0, Lads_mobile_sdk/r14;->o:Lkotlinx/coroutines/sync/Mutex;

    .line 24
    new-instance p1, Lads_mobile_sdk/q14;

    invoke-direct {p1, p0}, Lads_mobile_sdk/q14;-><init>(Lads_mobile_sdk/r14;)V

    invoke-static {p1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lads_mobile_sdk/r14;->s:Lkotlin/Lazy;

    return-void
.end method

.method public static synthetic a(Lads_mobile_sdk/r14;Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 14

    .line 1553
    instance-of v0, p2, Lads_mobile_sdk/j14;

    if-eqz v0, :cond_13

    move-object v0, p2

    check-cast v0, Lads_mobile_sdk/j14;

    iget v1, v0, Lads_mobile_sdk/j14;->f:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/j14;->f:I

    goto :goto_18

    :cond_13
    new-instance v0, Lads_mobile_sdk/j14;

    invoke-direct {v0, p0, p2}, Lads_mobile_sdk/j14;-><init>(Lads_mobile_sdk/r14;Lkotlin/coroutines/Continuation;)V

    :goto_18
    iget-object p2, v0, Lads_mobile_sdk/j14;->d:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 1736
    iget v2, v0, Lads_mobile_sdk/j14;->f:I

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v2, :cond_48

    if-eq v2, v5, :cond_3d

    if-eq v2, v4, :cond_38

    if-ne v2, v3, :cond_30

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_ec

    :cond_30
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_38
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_d4

    :cond_3d
    iget-object p0, v0, Lads_mobile_sdk/j14;->c:Ljava/util/List;

    iget-object p1, v0, Lads_mobile_sdk/j14;->b:Ljava/util/List;

    iget-object v2, v0, Lads_mobile_sdk/j14;->a:Lads_mobile_sdk/r14;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_b7

    :cond_48
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 2080
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 2081
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2082
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_59
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_8e

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .line 2083
    move-object v8, v7

    check-cast v8, Ljava/lang/String;

    .line 2084
    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    .line 2085
    invoke-virtual {v8}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_72

    const-string v8, ""

    :cond_72
    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 2086
    const-string v9, ".js"

    invoke-static {v8, v9, v5}, Lkotlin/text/StringsKt__StringsJVMKt;->endsWith(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v9

    if-nez v9, :cond_8a

    const-string v9, ".css"

    invoke-static {v8, v9, v5}, Lkotlin/text/StringsKt__StringsJVMKt;->endsWith(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v8

    if-eqz v8, :cond_86

    goto :goto_8a

    .line 2430
    :cond_86
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_59

    .line 2431
    :cond_8a
    :goto_8a
    invoke-virtual {p2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_59

    .line 2436
    :cond_8e
    new-instance v6, Lkotlin/Pair;

    invoke-direct {v6, p2, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2437
    invoke-virtual {v6}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    .line 2438
    invoke-virtual {v6}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 2446
    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_c1

    .line 2447
    iput-object p0, v0, Lads_mobile_sdk/j14;->a:Lads_mobile_sdk/r14;

    iput-object p1, v0, Lads_mobile_sdk/j14;->b:Ljava/util/List;

    iput-object v2, v0, Lads_mobile_sdk/j14;->c:Ljava/util/List;

    iput v5, v0, Lads_mobile_sdk/j14;->f:I

    invoke-virtual {p0, p2, v0}, Lads_mobile_sdk/r14;->b(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_b4

    goto :goto_eb

    :cond_b4
    move-object v10, v2

    move-object v2, p0

    move-object p0, v10

    .line 2448
    :goto_b7
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    move-object v10, v2

    move-object v2, p0

    move-object p0, v10

    goto :goto_c2

    :cond_c1
    const/4 p2, 0x0

    :goto_c2
    const/4 v5, 0x0

    if-nez p2, :cond_d7

    .line 2453
    iput-object v5, v0, Lads_mobile_sdk/j14;->a:Lads_mobile_sdk/r14;

    iput-object v5, v0, Lads_mobile_sdk/j14;->b:Ljava/util/List;

    iput-object v5, v0, Lads_mobile_sdk/j14;->c:Ljava/util/List;

    iput v4, v0, Lads_mobile_sdk/j14;->f:I

    invoke-virtual {p0, p1, v0}, Lads_mobile_sdk/r14;->a(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_d4

    goto :goto_eb

    .line 2457
    :cond_d4
    :goto_d4
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    .line 2458
    :cond_d7
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_ef

    .line 2459
    iput-object v5, v0, Lads_mobile_sdk/j14;->a:Lads_mobile_sdk/r14;

    iput-object v5, v0, Lads_mobile_sdk/j14;->b:Ljava/util/List;

    iput-object v5, v0, Lads_mobile_sdk/j14;->c:Ljava/util/List;

    iput v3, v0, Lads_mobile_sdk/j14;->f:I

    invoke-virtual {p0, v2, v0}, Lads_mobile_sdk/r14;->a(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_ec

    :goto_eb
    return-object v1

    .line 2461
    :cond_ec
    :goto_ec
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :cond_ef
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public static final a(Lads_mobile_sdk/r14;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 16

    .line 36
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 37
    instance-of v0, p1, Lads_mobile_sdk/w04;

    if-eqz v0, :cond_16

    move-object v0, p1

    check-cast v0, Lads_mobile_sdk/w04;

    iget v1, v0, Lads_mobile_sdk/w04;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_16

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/w04;->e:I

    goto :goto_1b

    :cond_16
    new-instance v0, Lads_mobile_sdk/w04;

    invoke-direct {v0, p0, p1}, Lads_mobile_sdk/w04;-><init>(Lads_mobile_sdk/r14;Lkotlin/coroutines/Continuation;)V

    :goto_1b
    iget-object p1, v0, Lads_mobile_sdk/w04;->c:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 167
    iget v2, v0, Lads_mobile_sdk/w04;->e:I

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v2, :cond_5b

    if-eq v2, v5, :cond_53

    if-eq v2, v4, :cond_45

    if-ne v2, v3, :cond_3d

    iget-object p0, v0, Lads_mobile_sdk/w04;->b:Lads_mobile_sdk/rr3;

    iget-object v0, v0, Lads_mobile_sdk/w04;->a:Ljava/lang/Object;

    check-cast v0, Lads_mobile_sdk/rr3;

    :try_start_35
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_38
    .catchall {:try_start_35 .. :try_end_38} :catchall_3a

    goto/16 :goto_171

    :catchall_3a
    move-exception p1

    goto/16 :goto_177

    :cond_3d
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_45
    iget-object p0, v0, Lads_mobile_sdk/w04;->b:Lads_mobile_sdk/rr3;

    iget-object v0, v0, Lads_mobile_sdk/w04;->a:Ljava/lang/Object;

    check-cast v0, Lads_mobile_sdk/rr3;

    :try_start_4b
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_4e
    .catchall {:try_start_4b .. :try_end_4e} :catchall_50

    goto/16 :goto_f1

    :catchall_50
    move-exception p1

    goto/16 :goto_f8

    :cond_53
    iget-object p0, v0, Lads_mobile_sdk/w04;->a:Ljava/lang/Object;

    check-cast p0, Lads_mobile_sdk/r14;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_91

    :cond_5b
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 168
    iget-object p1, p0, Lads_mobile_sdk/r14;->c:Lads_mobile_sdk/ex0;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 170
    const-string v2, "key"

    const-string v7, "gads:webview_quic_hints_enabled"

    invoke-static {v7, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 186
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v8, Lads_mobile_sdk/yr;->b:Lads_mobile_sdk/ir;

    invoke-virtual {p1, v7, v2, v8}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_7d

    .line 187
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    .line 189
    :cond_7d
    iget-object p1, p0, Lads_mobile_sdk/r14;->h:Lads_mobile_sdk/cw2;

    invoke-interface {p1}, Lads_mobile_sdk/cw2;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lads_mobile_sdk/yz3;

    iput-object p0, v0, Lads_mobile_sdk/w04;->a:Ljava/lang/Object;

    iput v5, v0, Lads_mobile_sdk/w04;->e:I

    invoke-virtual {p1, v0}, Lads_mobile_sdk/yz3;->a(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_91

    goto/16 :goto_16e

    .line 191
    :cond_91
    :goto_91
    iget-object p1, p0, Lads_mobile_sdk/r14;->m:Landroidx/webkit/Profile;

    if-eqz p1, :cond_1bd

    .line 192
    iget-object v2, p0, Lads_mobile_sdk/r14;->f:Lads_mobile_sdk/g83;

    sget-object v7, Lads_mobile_sdk/s11;->W:Lads_mobile_sdk/s11;

    .line 430
    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v8

    .line 431
    new-instance v9, Lads_mobile_sdk/ks3;

    .line 432
    new-instance v10, Lads_mobile_sdk/n03;

    invoke-direct {v10}, Lads_mobile_sdk/n03;-><init>()V

    .line 433
    new-instance v11, Lads_mobile_sdk/tn1;

    invoke-direct {v11}, Lads_mobile_sdk/tn1;-><init>()V

    .line 434
    new-instance v12, Lads_mobile_sdk/m33;

    invoke-direct {v12}, Lads_mobile_sdk/m33;-><init>()V

    .line 435
    new-instance v13, Lads_mobile_sdk/zb;

    invoke-direct {v13}, Lads_mobile_sdk/zb;-><init>()V

    .line 436
    invoke-direct {v9, v10, v11, v12, v13}, Lads_mobile_sdk/ks3;-><init>(Lads_mobile_sdk/n03;Lads_mobile_sdk/tn1;Lads_mobile_sdk/m33;Lads_mobile_sdk/zb;)V

    .line 437
    invoke-static {}, Lads_mobile_sdk/hs3;->b()Lads_mobile_sdk/gs3;

    move-result-object v10

    .line 438
    iget-object v10, v10, Lads_mobile_sdk/gs3;->a:Lads_mobile_sdk/rr3;

    const/4 v11, 0x6

    const-string v12, "Quic hints are not supported"

    if-nez v10, :cond_13e

    .line 439
    invoke-static {v2, v7, v8, v9}, Lads_mobile_sdk/g83;->a(Lads_mobile_sdk/g83;Lads_mobile_sdk/s11;Ljava/util/List;Lads_mobile_sdk/ks3;)Lads_mobile_sdk/tu2;

    move-result-object v2

    .line 440
    :try_start_c5
    sget-object v3, Lads_mobile_sdk/az3;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    iget-object v3, p0, Lads_mobile_sdk/r14;->i:Lads_mobile_sdk/rz3;

    invoke-static {v3}, Lads_mobile_sdk/az3;->a(Lads_mobile_sdk/rz3;)Z

    move-result v3

    if-nez v3, :cond_da

    .line 441
    invoke-static {v12, v6, v11}, Lads_mobile_sdk/xs3;->a(Ljava/lang/String;Ljava/lang/Throwable;I)V

    .line 442
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_d4
    .catchall {:try_start_c5 .. :try_end_d4} :catchall_d8

    invoke-static {v2, v6}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object p0

    :catchall_d8
    move-exception p0

    goto :goto_fd

    .line 444
    :cond_da
    :try_start_da
    iget-object v3, p0, Lads_mobile_sdk/r14;->d:Lkotlin/coroutines/CoroutineContext;

    new-instance v5, Lads_mobile_sdk/x04;

    invoke-direct {v5, p1, p0, v6}, Lads_mobile_sdk/x04;-><init>(Landroidx/webkit/Profile;Lads_mobile_sdk/r14;Lkotlin/coroutines/Continuation;)V

    iput-object v2, v0, Lads_mobile_sdk/w04;->a:Ljava/lang/Object;
    :try_end_e3
    .catchall {:try_start_da .. :try_end_e3} :catchall_d8

    :try_start_e3
    iput-object v2, v0, Lads_mobile_sdk/w04;->b:Lads_mobile_sdk/rr3;
    :try_end_e5
    .catchall {:try_start_e3 .. :try_end_e5} :catchall_fa

    :try_start_e5
    iput v4, v0, Lads_mobile_sdk/w04;->e:I

    invoke-static {v3, v5, v0}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0
    :try_end_eb
    .catchall {:try_start_e5 .. :try_end_eb} :catchall_d8

    if-ne p0, v1, :cond_ef

    goto/16 :goto_16e

    :cond_ef
    move-object p0, v2

    move-object v0, p0

    .line 447
    :goto_f1
    :try_start_f1
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_f3
    .catchall {:try_start_f1 .. :try_end_f3} :catchall_50

    .line 686
    invoke-static {p0, v6}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    goto/16 :goto_1bd

    :goto_f8
    move-object v2, v0

    goto :goto_ff

    :catchall_fa
    move-exception p1

    :goto_fb
    move-object p0, v2

    goto :goto_ff

    :goto_fd
    move-object p1, p0

    goto :goto_fb

    .line 694
    :goto_ff
    :try_start_ff
    invoke-virtual {v2, p1}, Lads_mobile_sdk/rr3;->b(Ljava/lang/Throwable;)V

    .line 698
    instance-of v0, p1, Lads_mobile_sdk/v24;

    if-nez v0, :cond_137

    .line 700
    instance-of v0, p1, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v0, :cond_114

    instance-of v0, p1, Ljava/util/concurrent/CancellationException;

    if-nez v0, :cond_114

    .line 706
    invoke-virtual {v2, p1}, Lads_mobile_sdk/rr3;->a(Ljava/lang/Throwable;)V

    goto :goto_114

    :catchall_112
    move-exception p1

    goto :goto_138

    .line 712
    :cond_114
    :goto_114
    instance-of v0, p1, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v0, :cond_12f

    .line 713
    instance-of v0, p1, Ljava/util/concurrent/CancellationException;

    if-nez v0, :cond_127

    .line 714
    instance-of v0, p1, Lads_mobile_sdk/w01;

    if-eqz v0, :cond_121

    throw p1

    .line 715
    :cond_121
    new-instance v0, Lads_mobile_sdk/b01;

    invoke-direct {v0, p1}, Lads_mobile_sdk/b01;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 716
    :cond_127
    new-instance v0, Lads_mobile_sdk/wz0;

    check-cast p1, Ljava/util/concurrent/CancellationException;

    invoke-direct {v0, p1}, Lads_mobile_sdk/wz0;-><init>(Ljava/util/concurrent/CancellationException;)V

    throw v0

    .line 717
    :cond_12f
    new-instance v0, Lads_mobile_sdk/i21;

    check-cast p1, Lkotlinx/coroutines/TimeoutCancellationException;

    invoke-direct {v0, p1}, Lads_mobile_sdk/i21;-><init>(Lkotlinx/coroutines/TimeoutCancellationException;)V

    throw v0

    .line 718
    :cond_137
    throw p1
    :try_end_138
    .catchall {:try_start_ff .. :try_end_138} :catchall_112

    .line 719
    :goto_138
    :try_start_138
    throw p1
    :try_end_139
    .catchall {:try_start_138 .. :try_end_139} :catchall_139

    :catchall_139
    move-exception v0

    invoke-static {p0, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0

    .line 753
    :cond_13e
    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v2

    invoke-static {v7, v2, v5}, Lads_mobile_sdk/hs3;->a(Lads_mobile_sdk/s11;Ljava/util/List;Z)Lads_mobile_sdk/rr3;

    move-result-object v2

    .line 754
    :try_start_146
    sget-object v4, Lads_mobile_sdk/az3;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    iget-object v4, p0, Lads_mobile_sdk/r14;->i:Lads_mobile_sdk/rz3;

    invoke-static {v4}, Lads_mobile_sdk/az3;->a(Lads_mobile_sdk/rz3;)Z

    move-result v4

    if-nez v4, :cond_15b

    .line 755
    invoke-static {v12, v6, v11}, Lads_mobile_sdk/xs3;->a(Ljava/lang/String;Ljava/lang/Throwable;I)V

    .line 756
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_155
    .catchall {:try_start_146 .. :try_end_155} :catchall_159

    invoke-static {v2, v6}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object p0

    :catchall_159
    move-exception p0

    goto :goto_17c

    .line 758
    :cond_15b
    :try_start_15b
    iget-object v4, p0, Lads_mobile_sdk/r14;->d:Lkotlin/coroutines/CoroutineContext;

    new-instance v5, Lads_mobile_sdk/x04;

    invoke-direct {v5, p1, p0, v6}, Lads_mobile_sdk/x04;-><init>(Landroidx/webkit/Profile;Lads_mobile_sdk/r14;Lkotlin/coroutines/Continuation;)V

    iput-object v2, v0, Lads_mobile_sdk/w04;->a:Ljava/lang/Object;
    :try_end_164
    .catchall {:try_start_15b .. :try_end_164} :catchall_159

    :try_start_164
    iput-object v2, v0, Lads_mobile_sdk/w04;->b:Lads_mobile_sdk/rr3;
    :try_end_166
    .catchall {:try_start_164 .. :try_end_166} :catchall_179

    :try_start_166
    iput v3, v0, Lads_mobile_sdk/w04;->e:I

    invoke-static {v4, v5, v0}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0
    :try_end_16c
    .catchall {:try_start_166 .. :try_end_16c} :catchall_159

    if-ne p0, v1, :cond_16f

    :goto_16e
    return-object v1

    :cond_16f
    move-object p0, v2

    move-object v0, p0

    .line 761
    :goto_171
    :try_start_171
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_173
    .catchall {:try_start_171 .. :try_end_173} :catchall_3a

    .line 1037
    invoke-static {p0, v6}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    goto :goto_1bd

    :goto_177
    move-object v2, v0

    goto :goto_17e

    :catchall_179
    move-exception p1

    :goto_17a
    move-object p0, v2

    goto :goto_17e

    :goto_17c
    move-object p1, p0

    goto :goto_17a

    .line 1045
    :goto_17e
    :try_start_17e
    invoke-virtual {v2, p1}, Lads_mobile_sdk/rr3;->b(Ljava/lang/Throwable;)V

    .line 1049
    instance-of v0, p1, Lads_mobile_sdk/v24;

    if-nez v0, :cond_1b6

    .line 1051
    instance-of v0, p1, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v0, :cond_193

    instance-of v0, p1, Ljava/util/concurrent/CancellationException;

    if-nez v0, :cond_193

    .line 1057
    invoke-virtual {v2, p1}, Lads_mobile_sdk/rr3;->a(Ljava/lang/Throwable;)V

    goto :goto_193

    :catchall_191
    move-exception p1

    goto :goto_1b7

    .line 1063
    :cond_193
    :goto_193
    instance-of v0, p1, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v0, :cond_1ae

    .line 1064
    instance-of v0, p1, Ljava/util/concurrent/CancellationException;

    if-nez v0, :cond_1a6

    .line 1065
    instance-of v0, p1, Lads_mobile_sdk/w01;

    if-eqz v0, :cond_1a0

    throw p1

    .line 1066
    :cond_1a0
    new-instance v0, Lads_mobile_sdk/b01;

    invoke-direct {v0, p1}, Lads_mobile_sdk/b01;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 1067
    :cond_1a6
    new-instance v0, Lads_mobile_sdk/wz0;

    check-cast p1, Ljava/util/concurrent/CancellationException;

    invoke-direct {v0, p1}, Lads_mobile_sdk/wz0;-><init>(Ljava/util/concurrent/CancellationException;)V

    throw v0

    .line 1068
    :cond_1ae
    new-instance v0, Lads_mobile_sdk/i21;

    check-cast p1, Lkotlinx/coroutines/TimeoutCancellationException;

    invoke-direct {v0, p1}, Lads_mobile_sdk/i21;-><init>(Lkotlinx/coroutines/TimeoutCancellationException;)V

    throw v0

    .line 1069
    :cond_1b6
    throw p1
    :try_end_1b7
    .catchall {:try_start_17e .. :try_end_1b7} :catchall_191

    .line 1070
    :goto_1b7
    :try_start_1b7
    throw p1
    :try_end_1b8
    .catchall {:try_start_1b7 .. :try_end_1b8} :catchall_1b8

    :catchall_1b8
    move-exception v0

    invoke-static {p0, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0

    .line 1071
    :cond_1bd
    :goto_1bd
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public static final synthetic a(Lads_mobile_sdk/r14;)Lkotlin/coroutines/CoroutineContext;
    .registers 1

    .line 1107
    iget-object p0, p0, Lads_mobile_sdk/r14;->d:Lkotlin/coroutines/CoroutineContext;

    return-object p0
.end method

.method public static final synthetic a(Lads_mobile_sdk/r14;Landroidx/webkit/Profile;)V
    .registers 2

    .line 1143
    iput-object p1, p0, Lads_mobile_sdk/r14;->m:Landroidx/webkit/Profile;

    return-void
.end method

.method public static final synthetic b(Lads_mobile_sdk/r14;)Lads_mobile_sdk/rz3;
    .registers 1

    .line 36
    iget-object p0, p0, Lads_mobile_sdk/r14;->i:Lads_mobile_sdk/rz3;

    return-object p0
.end method

.method public static final b(Lads_mobile_sdk/r14;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 14

    .line 72
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 73
    instance-of v0, p1, Lads_mobile_sdk/y04;

    if-eqz v0, :cond_16

    move-object v0, p1

    check-cast v0, Lads_mobile_sdk/y04;

    iget v1, v0, Lads_mobile_sdk/y04;->f:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_16

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/y04;->f:I

    goto :goto_1b

    :cond_16
    new-instance v0, Lads_mobile_sdk/y04;

    invoke-direct {v0, p0, p1}, Lads_mobile_sdk/y04;-><init>(Lads_mobile_sdk/r14;Lkotlin/coroutines/Continuation;)V

    :goto_1b
    iget-object p1, v0, Lads_mobile_sdk/y04;->d:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 155
    iget v2, v0, Lads_mobile_sdk/y04;->f:I

    const/4 v3, 0x1

    const/4 v4, 0x2

    const/4 v5, 0x0

    if-eqz v2, :cond_51

    if-eq v2, v3, :cond_43

    if-ne v2, v4, :cond_3b

    iget-object p0, v0, Lads_mobile_sdk/y04;->c:Lads_mobile_sdk/rr3;

    iget-object v1, v0, Lads_mobile_sdk/y04;->b:Lads_mobile_sdk/rr3;

    iget-object v0, v0, Lads_mobile_sdk/y04;->a:Lads_mobile_sdk/r14;

    :try_start_32
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_35
    .catchall {:try_start_32 .. :try_end_35} :catchall_37

    goto/16 :goto_148

    :catchall_37
    move-exception v0

    move-object p1, v0

    goto/16 :goto_17b

    :cond_3b
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_43
    iget-object p0, v0, Lads_mobile_sdk/y04;->c:Lads_mobile_sdk/rr3;

    iget-object v1, v0, Lads_mobile_sdk/y04;->b:Lads_mobile_sdk/rr3;

    iget-object v0, v0, Lads_mobile_sdk/y04;->a:Lads_mobile_sdk/r14;

    :try_start_49
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_4c
    .catchall {:try_start_49 .. :try_end_4c} :catchall_4d

    goto :goto_bd

    :catchall_4d
    move-exception v0

    move-object p1, v0

    goto/16 :goto_c9

    :cond_51
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 156
    iget-object p1, p0, Lads_mobile_sdk/r14;->f:Lads_mobile_sdk/g83;

    sget-object v2, Lads_mobile_sdk/s11;->T:Lads_mobile_sdk/s11;

    .line 370
    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v6

    .line 371
    new-instance v7, Lads_mobile_sdk/ks3;

    .line 372
    new-instance v8, Lads_mobile_sdk/n03;

    invoke-direct {v8}, Lads_mobile_sdk/n03;-><init>()V

    .line 373
    new-instance v9, Lads_mobile_sdk/tn1;

    invoke-direct {v9}, Lads_mobile_sdk/tn1;-><init>()V

    .line 374
    new-instance v10, Lads_mobile_sdk/m33;

    invoke-direct {v10}, Lads_mobile_sdk/m33;-><init>()V

    .line 375
    new-instance v11, Lads_mobile_sdk/zb;

    invoke-direct {v11}, Lads_mobile_sdk/zb;-><init>()V

    .line 376
    invoke-direct {v7, v8, v9, v10, v11}, Lads_mobile_sdk/ks3;-><init>(Lads_mobile_sdk/n03;Lads_mobile_sdk/tn1;Lads_mobile_sdk/m33;Lads_mobile_sdk/zb;)V

    .line 377
    invoke-static {}, Lads_mobile_sdk/hs3;->b()Lads_mobile_sdk/gs3;

    move-result-object v8

    .line 378
    iget-object v8, v8, Lads_mobile_sdk/gs3;->a:Lads_mobile_sdk/rr3;

    const-string v9, "key"

    const-string v10, "gads:webview_profile_timeout"

    if-nez v8, :cond_109

    .line 379
    invoke-static {p1, v2, v6, v7}, Lads_mobile_sdk/g83;->a(Lads_mobile_sdk/g83;Lads_mobile_sdk/s11;Ljava/util/List;Lads_mobile_sdk/ks3;)Lads_mobile_sdk/tu2;

    move-result-object p1

    .line 380
    :try_start_85
    iget-object v2, p0, Lads_mobile_sdk/r14;->c:Lads_mobile_sdk/ex0;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 381
    sget-object v6, Lkotlin/time/Duration;->Companion:Lkotlin/time/Duration$Companion;

    sget-object v6, Lkotlin/time/DurationUnit;->SECONDS:Lkotlin/time/DurationUnit;

    invoke-static {v4, v6}, Lkotlin/time/DurationKt;->toDuration(ILkotlin/time/DurationUnit;)J

    move-result-wide v6

    invoke-static {v10, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 382
    invoke-static {v6, v7}, Lkotlin/time/Duration;->box-impl(J)Lkotlin/time/Duration;

    move-result-object v4

    sget-object v6, Lads_mobile_sdk/yr;->l:Lads_mobile_sdk/ur;

    invoke-virtual {v2, v10, v4, v6}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkotlin/time/Duration;

    invoke-virtual {v2}, Lkotlin/time/Duration;->unbox-impl()J

    move-result-wide v6

    .line 383
    new-instance v2, Lads_mobile_sdk/a14;

    invoke-direct {v2, p0, v5}, Lads_mobile_sdk/a14;-><init>(Lads_mobile_sdk/r14;Lkotlin/coroutines/Continuation;)V

    iput-object p0, v0, Lads_mobile_sdk/y04;->a:Lads_mobile_sdk/r14;

    iput-object p1, v0, Lads_mobile_sdk/y04;->b:Lads_mobile_sdk/rr3;

    iput-object p1, v0, Lads_mobile_sdk/y04;->c:Lads_mobile_sdk/rr3;

    iput v3, v0, Lads_mobile_sdk/y04;->f:I

    invoke-static {v6, v7, v2, v0}, Lkotlinx/coroutines/TimeoutKt;->withTimeout-KLykuaI(JLkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0
    :try_end_b6
    .catchall {:try_start_85 .. :try_end_b6} :catchall_c4

    if-ne v0, v1, :cond_ba

    goto/16 :goto_144

    :cond_ba
    move-object v0, p0

    move-object p0, p1

    move-object v1, p0

    .line 403
    :goto_bd
    :try_start_bd
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_bf
    .catchall {:try_start_bd .. :try_end_bf} :catchall_4d

    .line 605
    invoke-static {p0, v5}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    goto/16 :goto_14d

    :catchall_c4
    move-exception v0

    move-object p0, v0

    move-object v1, p1

    move-object p1, p0

    move-object p0, v1

    .line 613
    :goto_c9
    :try_start_c9
    invoke-virtual {v1, p1}, Lads_mobile_sdk/rr3;->b(Ljava/lang/Throwable;)V

    .line 617
    instance-of v0, p1, Lads_mobile_sdk/v24;

    if-nez v0, :cond_102

    .line 619
    instance-of v0, p1, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v0, :cond_df

    instance-of v0, p1, Ljava/util/concurrent/CancellationException;

    if-nez v0, :cond_df

    .line 625
    invoke-virtual {v1, p1}, Lads_mobile_sdk/rr3;->a(Ljava/lang/Throwable;)V

    goto :goto_df

    :catchall_dc
    move-exception v0

    move-object p1, v0

    goto :goto_103

    .line 631
    :cond_df
    :goto_df
    instance-of v0, p1, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v0, :cond_fa

    .line 632
    instance-of v0, p1, Ljava/util/concurrent/CancellationException;

    if-nez v0, :cond_f2

    .line 633
    instance-of v0, p1, Lads_mobile_sdk/w01;

    if-eqz v0, :cond_ec

    throw p1

    .line 634
    :cond_ec
    new-instance v0, Lads_mobile_sdk/b01;

    invoke-direct {v0, p1}, Lads_mobile_sdk/b01;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 635
    :cond_f2
    new-instance v0, Lads_mobile_sdk/wz0;

    check-cast p1, Ljava/util/concurrent/CancellationException;

    invoke-direct {v0, p1}, Lads_mobile_sdk/wz0;-><init>(Ljava/util/concurrent/CancellationException;)V

    throw v0

    .line 636
    :cond_fa
    new-instance v0, Lads_mobile_sdk/i21;

    check-cast p1, Lkotlinx/coroutines/TimeoutCancellationException;

    invoke-direct {v0, p1}, Lads_mobile_sdk/i21;-><init>(Lkotlinx/coroutines/TimeoutCancellationException;)V

    throw v0

    .line 637
    :cond_102
    throw p1
    :try_end_103
    .catchall {:try_start_c9 .. :try_end_103} :catchall_dc

    .line 638
    :goto_103
    :try_start_103
    throw p1
    :try_end_104
    .catchall {:try_start_103 .. :try_end_104} :catchall_104

    :catchall_104
    move-exception v0

    invoke-static {p0, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0

    .line 672
    :cond_109
    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    invoke-static {v2, p1, v3}, Lads_mobile_sdk/hs3;->a(Lads_mobile_sdk/s11;Ljava/util/List;Z)Lads_mobile_sdk/rr3;

    move-result-object p1

    .line 673
    :try_start_111
    iget-object v2, p0, Lads_mobile_sdk/r14;->c:Lads_mobile_sdk/ex0;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 674
    sget-object v3, Lkotlin/time/Duration;->Companion:Lkotlin/time/Duration$Companion;

    sget-object v3, Lkotlin/time/DurationUnit;->SECONDS:Lkotlin/time/DurationUnit;

    invoke-static {v4, v3}, Lkotlin/time/DurationKt;->toDuration(ILkotlin/time/DurationUnit;)J

    move-result-wide v6

    invoke-static {v10, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 675
    invoke-static {v6, v7}, Lkotlin/time/Duration;->box-impl(J)Lkotlin/time/Duration;

    move-result-object v3

    sget-object v6, Lads_mobile_sdk/yr;->l:Lads_mobile_sdk/ur;

    invoke-virtual {v2, v10, v3, v6}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkotlin/time/Duration;

    invoke-virtual {v2}, Lkotlin/time/Duration;->unbox-impl()J

    move-result-wide v2

    .line 676
    new-instance v6, Lads_mobile_sdk/a14;

    invoke-direct {v6, p0, v5}, Lads_mobile_sdk/a14;-><init>(Lads_mobile_sdk/r14;Lkotlin/coroutines/Continuation;)V

    iput-object p0, v0, Lads_mobile_sdk/y04;->a:Lads_mobile_sdk/r14;

    iput-object p1, v0, Lads_mobile_sdk/y04;->b:Lads_mobile_sdk/rr3;

    iput-object p1, v0, Lads_mobile_sdk/y04;->c:Lads_mobile_sdk/rr3;

    iput v4, v0, Lads_mobile_sdk/y04;->f:I

    invoke-static {v2, v3, v6, v0}, Lkotlinx/coroutines/TimeoutKt;->withTimeout-KLykuaI(JLkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0
    :try_end_142
    .catchall {:try_start_111 .. :try_end_142} :catchall_176

    if-ne v0, v1, :cond_145

    :goto_144
    return-object v1

    :cond_145
    move-object v0, p0

    move-object p0, p1

    move-object v1, p0

    .line 696
    :goto_148
    :try_start_148
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_14a
    .catchall {:try_start_148 .. :try_end_14a} :catchall_37

    .line 935
    invoke-static {p0, v5}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 936
    :goto_14d
    iget-object v6, v0, Lads_mobile_sdk/r14;->e:Lkotlinx/coroutines/CoroutineScope;

    new-instance p0, Lads_mobile_sdk/b14;

    invoke-direct {p0, v0, v5}, Lads_mobile_sdk/b14;-><init>(Lads_mobile_sdk/r14;Lkotlin/coroutines/Continuation;)V

    .line 937
    sget-object v7, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    .line 938
    const-string p1, "<this>"

    invoke-static {v6, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "context"

    invoke-static {v7, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "block"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1196
    new-instance v9, Lads_mobile_sdk/ws3;

    invoke-direct {v9, p0, v5}, Lads_mobile_sdk/ws3;-><init>(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)V

    const/4 v10, 0x2

    const/4 v11, 0x0

    const/4 v8, 0x0

    invoke-static/range {v6 .. v11}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 1197
    invoke-virtual {v0}, Lads_mobile_sdk/r14;->i()V

    .line 1198
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :catchall_176
    move-exception v0

    move-object p0, v0

    move-object v1, p1

    move-object p1, p0

    move-object p0, v1

    .line 1436
    :goto_17b
    :try_start_17b
    invoke-virtual {v1, p1}, Lads_mobile_sdk/rr3;->b(Ljava/lang/Throwable;)V

    .line 1440
    instance-of v0, p1, Lads_mobile_sdk/v24;

    if-nez v0, :cond_1b4

    .line 1442
    instance-of v0, p1, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v0, :cond_191

    instance-of v0, p1, Ljava/util/concurrent/CancellationException;

    if-nez v0, :cond_191

    .line 1448
    invoke-virtual {v1, p1}, Lads_mobile_sdk/rr3;->a(Ljava/lang/Throwable;)V

    goto :goto_191

    :catchall_18e
    move-exception v0

    move-object p1, v0

    goto :goto_1b5

    .line 1454
    :cond_191
    :goto_191
    instance-of v0, p1, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v0, :cond_1ac

    .line 1455
    instance-of v0, p1, Ljava/util/concurrent/CancellationException;

    if-nez v0, :cond_1a4

    .line 1456
    instance-of v0, p1, Lads_mobile_sdk/w01;

    if-eqz v0, :cond_19e

    throw p1

    .line 1457
    :cond_19e
    new-instance v0, Lads_mobile_sdk/b01;

    invoke-direct {v0, p1}, Lads_mobile_sdk/b01;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 1458
    :cond_1a4
    new-instance v0, Lads_mobile_sdk/wz0;

    check-cast p1, Ljava/util/concurrent/CancellationException;

    invoke-direct {v0, p1}, Lads_mobile_sdk/wz0;-><init>(Ljava/util/concurrent/CancellationException;)V

    throw v0

    .line 1459
    :cond_1ac
    new-instance v0, Lads_mobile_sdk/i21;

    check-cast p1, Lkotlinx/coroutines/TimeoutCancellationException;

    invoke-direct {v0, p1}, Lads_mobile_sdk/i21;-><init>(Lkotlinx/coroutines/TimeoutCancellationException;)V

    throw v0

    .line 1460
    :cond_1b4
    throw p1
    :try_end_1b5
    .catchall {:try_start_17b .. :try_end_1b5} :catchall_18e

    .line 1461
    :goto_1b5
    :try_start_1b5
    throw p1
    :try_end_1b6
    .catchall {:try_start_1b5 .. :try_end_1b6} :catchall_1b6

    :catchall_1b6
    move-exception v0

    invoke-static {p0, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static final c(Lads_mobile_sdk/r14;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 36
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 37
    instance-of v2, v1, Lads_mobile_sdk/g14;

    if-eqz v2, :cond_1a

    move-object v2, v1

    check-cast v2, Lads_mobile_sdk/g14;

    iget v3, v2, Lads_mobile_sdk/g14;->e:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_1a

    sub-int/2addr v3, v4

    iput v3, v2, Lads_mobile_sdk/g14;->e:I

    goto :goto_1f

    :cond_1a
    new-instance v2, Lads_mobile_sdk/g14;

    invoke-direct {v2, v0, v1}, Lads_mobile_sdk/g14;-><init>(Lads_mobile_sdk/r14;Lkotlin/coroutines/Continuation;)V

    :goto_1f
    iget-object v1, v2, Lads_mobile_sdk/g14;->c:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v3

    .line 190
    iget v4, v2, Lads_mobile_sdk/g14;->e:I

    const/4 v5, 0x5

    const/4 v6, 0x4

    const/4 v7, 0x3

    const/4 v8, 0x1

    const/4 v9, 0x2

    const-string v10, "key"

    const/4 v11, 0x0

    if-eqz v4, :cond_6c

    if-eq v4, v8, :cond_64

    if-eq v4, v9, :cond_54

    if-eq v4, v7, :cond_54

    if-eq v4, v6, :cond_3b

    if-ne v4, v5, :cond_44

    :cond_3b
    iget-object v0, v2, Lads_mobile_sdk/g14;->b:Lads_mobile_sdk/rr3;

    iget-object v2, v2, Lads_mobile_sdk/g14;->a:Ljava/lang/Object;

    check-cast v2, Lads_mobile_sdk/rr3;

    move-object v3, v2

    move-object v2, v0

    goto :goto_4c

    :cond_44
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :goto_4c
    :try_start_4c
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_4f
    .catchall {:try_start_4c .. :try_end_4f} :catchall_51

    goto/16 :goto_1e2

    :catchall_51
    move-exception v0

    goto/16 :goto_1e8

    :cond_54
    iget-object v0, v2, Lads_mobile_sdk/g14;->b:Lads_mobile_sdk/rr3;

    iget-object v2, v2, Lads_mobile_sdk/g14;->a:Ljava/lang/Object;

    check-cast v2, Lads_mobile_sdk/rr3;

    move-object v3, v2

    move-object v2, v0

    :try_start_5c
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_5f
    .catchall {:try_start_5c .. :try_end_5f} :catchall_61

    goto/16 :goto_132

    :catchall_61
    move-exception v0

    goto/16 :goto_139

    :cond_64
    iget-object v0, v2, Lads_mobile_sdk/g14;->a:Ljava/lang/Object;

    check-cast v0, Lads_mobile_sdk/r14;

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_a0

    :cond_6c
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 191
    iget-object v1, v0, Lads_mobile_sdk/r14;->c:Lads_mobile_sdk/ex0;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 193
    const-string v4, "gads:webview_preconnect_enabled"

    invoke-static {v4, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 209
    sget-object v12, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v13, Lads_mobile_sdk/yr;->b:Lads_mobile_sdk/ir;

    invoke-virtual {v1, v4, v12, v13}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_8c

    .line 210
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    .line 212
    :cond_8c
    iget-object v1, v0, Lads_mobile_sdk/r14;->h:Lads_mobile_sdk/cw2;

    invoke-interface {v1}, Lads_mobile_sdk/cw2;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lads_mobile_sdk/yz3;

    iput-object v0, v2, Lads_mobile_sdk/g14;->a:Ljava/lang/Object;

    iput v8, v2, Lads_mobile_sdk/g14;->e:I

    invoke-virtual {v1, v2}, Lads_mobile_sdk/yz3;->a(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v3, :cond_a0

    goto/16 :goto_1df

    .line 214
    :cond_a0
    :goto_a0
    iget-object v1, v0, Lads_mobile_sdk/r14;->m:Landroidx/webkit/Profile;

    if-eqz v1, :cond_22b

    .line 215
    iget-object v4, v0, Lads_mobile_sdk/r14;->f:Lads_mobile_sdk/g83;

    sget-object v12, Lads_mobile_sdk/s11;->V:Lads_mobile_sdk/s11;

    .line 508
    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v13

    .line 509
    new-instance v14, Lads_mobile_sdk/ks3;

    .line 510
    new-instance v15, Lads_mobile_sdk/n03;

    invoke-direct {v15}, Lads_mobile_sdk/n03;-><init>()V

    .line 511
    new-instance v5, Lads_mobile_sdk/tn1;

    invoke-direct {v5}, Lads_mobile_sdk/tn1;-><init>()V

    .line 512
    new-instance v6, Lads_mobile_sdk/m33;

    invoke-direct {v6}, Lads_mobile_sdk/m33;-><init>()V

    .line 513
    new-instance v8, Lads_mobile_sdk/zb;

    invoke-direct {v8}, Lads_mobile_sdk/zb;-><init>()V

    .line 514
    invoke-direct {v14, v15, v5, v6, v8}, Lads_mobile_sdk/ks3;-><init>(Lads_mobile_sdk/n03;Lads_mobile_sdk/tn1;Lads_mobile_sdk/m33;Lads_mobile_sdk/zb;)V

    .line 515
    invoke-static {}, Lads_mobile_sdk/hs3;->b()Lads_mobile_sdk/gs3;

    move-result-object v5

    .line 516
    iget-object v5, v5, Lads_mobile_sdk/gs3;->a:Lads_mobile_sdk/rr3;

    const-string v6, "gads:webview_profile_preconnect_timeout"

    const-string v8, "gads:enable_preconnect_timeout"

    if-nez v5, :cond_17c

    .line 517
    invoke-static {v4, v12, v13, v14}, Lads_mobile_sdk/g83;->a(Lads_mobile_sdk/g83;Lads_mobile_sdk/s11;Ljava/util/List;Lads_mobile_sdk/ks3;)Lads_mobile_sdk/tu2;

    move-result-object v4

    .line 518
    :try_start_d5
    iget-object v5, v0, Lads_mobile_sdk/r14;->c:Lads_mobile_sdk/ex0;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 520
    invoke-static {v8, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 536
    sget-object v12, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sget-object v13, Lads_mobile_sdk/yr;->b:Lads_mobile_sdk/ir;

    invoke-virtual {v5, v8, v12, v13}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_122

    .line 537
    iget-object v5, v0, Lads_mobile_sdk/r14;->c:Lads_mobile_sdk/ex0;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 538
    sget-object v7, Lkotlin/time/Duration;->Companion:Lkotlin/time/Duration$Companion;

    sget-object v7, Lkotlin/time/DurationUnit;->SECONDS:Lkotlin/time/DurationUnit;

    invoke-static {v9, v7}, Lkotlin/time/DurationKt;->toDuration(ILkotlin/time/DurationUnit;)J

    move-result-wide v7

    invoke-static {v6, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 539
    invoke-static {v7, v8}, Lkotlin/time/Duration;->box-impl(J)Lkotlin/time/Duration;

    move-result-object v7

    sget-object v8, Lads_mobile_sdk/yr;->l:Lads_mobile_sdk/ur;

    invoke-virtual {v5, v6, v7, v8}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lkotlin/time/Duration;

    invoke-virtual {v5}, Lkotlin/time/Duration;->unbox-impl()J

    move-result-wide v5

    .line 540
    new-instance v7, Lads_mobile_sdk/h14;

    invoke-direct {v7, v1, v0, v11}, Lads_mobile_sdk/h14;-><init>(Landroidx/webkit/Profile;Lads_mobile_sdk/r14;Lkotlin/coroutines/Continuation;)V

    iput-object v4, v2, Lads_mobile_sdk/g14;->a:Ljava/lang/Object;

    iput-object v4, v2, Lads_mobile_sdk/g14;->b:Lads_mobile_sdk/rr3;

    iput v9, v2, Lads_mobile_sdk/g14;->e:I

    invoke-static {v5, v6, v7, v2}, Lkotlinx/coroutines/TimeoutKt;->withTimeout-KLykuaI(JLkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v3, :cond_130

    goto/16 :goto_1df

    :catchall_120
    move-exception v0

    goto :goto_13b

    .line 542
    :cond_122
    iput-object v4, v2, Lads_mobile_sdk/g14;->a:Ljava/lang/Object;

    iput-object v4, v2, Lads_mobile_sdk/g14;->b:Lads_mobile_sdk/rr3;

    iput v7, v2, Lads_mobile_sdk/g14;->e:I

    invoke-virtual {v0, v1, v2}, Lads_mobile_sdk/r14;->a(Landroidx/webkit/Profile;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0
    :try_end_12c
    .catchall {:try_start_d5 .. :try_end_12c} :catchall_120

    if-ne v0, v3, :cond_130

    goto/16 :goto_1df

    :cond_130
    move-object v2, v4

    move-object v3, v2

    .line 544
    :goto_132
    :try_start_132
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_134
    .catchall {:try_start_132 .. :try_end_134} :catchall_61

    .line 840
    invoke-static {v2, v11}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    goto/16 :goto_22b

    :goto_139
    move-object v4, v3

    goto :goto_13c

    :goto_13b
    move-object v2, v4

    .line 848
    :goto_13c
    :try_start_13c
    invoke-virtual {v4, v0}, Lads_mobile_sdk/rr3;->b(Ljava/lang/Throwable;)V

    .line 852
    instance-of v1, v0, Lads_mobile_sdk/v24;

    if-nez v1, :cond_175

    .line 854
    instance-of v1, v0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v1, :cond_152

    instance-of v1, v0, Ljava/util/concurrent/CancellationException;

    if-nez v1, :cond_152

    .line 860
    invoke-virtual {v4, v0}, Lads_mobile_sdk/rr3;->a(Ljava/lang/Throwable;)V

    goto :goto_152

    :catchall_14f
    move-exception v0

    move-object v1, v0

    goto :goto_176

    .line 866
    :cond_152
    :goto_152
    instance-of v1, v0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v1, :cond_16d

    .line 867
    instance-of v1, v0, Ljava/util/concurrent/CancellationException;

    if-nez v1, :cond_165

    .line 868
    instance-of v1, v0, Lads_mobile_sdk/w01;

    if-eqz v1, :cond_15f

    throw v0

    .line 869
    :cond_15f
    new-instance v1, Lads_mobile_sdk/b01;

    invoke-direct {v1, v0}, Lads_mobile_sdk/b01;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 870
    :cond_165
    new-instance v1, Lads_mobile_sdk/wz0;

    check-cast v0, Ljava/util/concurrent/CancellationException;

    invoke-direct {v1, v0}, Lads_mobile_sdk/wz0;-><init>(Ljava/util/concurrent/CancellationException;)V

    throw v1

    .line 871
    :cond_16d
    new-instance v1, Lads_mobile_sdk/i21;

    check-cast v0, Lkotlinx/coroutines/TimeoutCancellationException;

    invoke-direct {v1, v0}, Lads_mobile_sdk/i21;-><init>(Lkotlinx/coroutines/TimeoutCancellationException;)V

    throw v1

    .line 872
    :cond_175
    throw v0
    :try_end_176
    .catchall {:try_start_13c .. :try_end_176} :catchall_14f

    .line 873
    :goto_176
    :try_start_176
    throw v1
    :try_end_177
    .catchall {:try_start_176 .. :try_end_177} :catchall_177

    :catchall_177
    move-exception v0

    invoke-static {v2, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0

    .line 907
    :cond_17c
    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v12, v4, v5}, Lads_mobile_sdk/hs3;->a(Lads_mobile_sdk/s11;Ljava/util/List;Z)Lads_mobile_sdk/rr3;

    move-result-object v4

    .line 908
    :try_start_185
    iget-object v5, v0, Lads_mobile_sdk/r14;->c:Lads_mobile_sdk/ex0;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 910
    invoke-static {v8, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 926
    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sget-object v12, Lads_mobile_sdk/yr;->b:Lads_mobile_sdk/ir;

    invoke-virtual {v5, v8, v7, v12}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_1d2

    .line 927
    iget-object v5, v0, Lads_mobile_sdk/r14;->c:Lads_mobile_sdk/ex0;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 928
    sget-object v7, Lkotlin/time/Duration;->Companion:Lkotlin/time/Duration$Companion;

    sget-object v7, Lkotlin/time/DurationUnit;->SECONDS:Lkotlin/time/DurationUnit;

    invoke-static {v9, v7}, Lkotlin/time/DurationKt;->toDuration(ILkotlin/time/DurationUnit;)J

    move-result-wide v7

    invoke-static {v6, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 929
    invoke-static {v7, v8}, Lkotlin/time/Duration;->box-impl(J)Lkotlin/time/Duration;

    move-result-object v7

    sget-object v8, Lads_mobile_sdk/yr;->l:Lads_mobile_sdk/ur;

    invoke-virtual {v5, v6, v7, v8}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lkotlin/time/Duration;

    invoke-virtual {v5}, Lkotlin/time/Duration;->unbox-impl()J

    move-result-wide v5

    .line 930
    new-instance v7, Lads_mobile_sdk/h14;

    invoke-direct {v7, v1, v0, v11}, Lads_mobile_sdk/h14;-><init>(Landroidx/webkit/Profile;Lads_mobile_sdk/r14;Lkotlin/coroutines/Continuation;)V

    iput-object v4, v2, Lads_mobile_sdk/g14;->a:Ljava/lang/Object;

    iput-object v4, v2, Lads_mobile_sdk/g14;->b:Lads_mobile_sdk/rr3;

    const/4 v0, 0x4

    iput v0, v2, Lads_mobile_sdk/g14;->e:I

    invoke-static {v5, v6, v7, v2}, Lkotlinx/coroutines/TimeoutKt;->withTimeout-KLykuaI(JLkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v3, :cond_1e0

    goto :goto_1df

    :catchall_1d0
    move-exception v0

    goto :goto_1ea

    .line 932
    :cond_1d2
    iput-object v4, v2, Lads_mobile_sdk/g14;->a:Ljava/lang/Object;

    iput-object v4, v2, Lads_mobile_sdk/g14;->b:Lads_mobile_sdk/rr3;

    const/4 v5, 0x5

    iput v5, v2, Lads_mobile_sdk/g14;->e:I

    invoke-virtual {v0, v1, v2}, Lads_mobile_sdk/r14;->a(Landroidx/webkit/Profile;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0
    :try_end_1dd
    .catchall {:try_start_185 .. :try_end_1dd} :catchall_1d0

    if-ne v0, v3, :cond_1e0

    :goto_1df
    return-object v3

    :cond_1e0
    move-object v2, v4

    move-object v3, v2

    .line 934
    :goto_1e2
    :try_start_1e2
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1e4
    .catchall {:try_start_1e2 .. :try_end_1e4} :catchall_51

    .line 1267
    invoke-static {v2, v11}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    goto :goto_22b

    :goto_1e8
    move-object v4, v3

    goto :goto_1eb

    :goto_1ea
    move-object v2, v4

    .line 1275
    :goto_1eb
    :try_start_1eb
    invoke-virtual {v4, v0}, Lads_mobile_sdk/rr3;->b(Ljava/lang/Throwable;)V

    .line 1279
    instance-of v1, v0, Lads_mobile_sdk/v24;

    if-nez v1, :cond_224

    .line 1281
    instance-of v1, v0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v1, :cond_201

    instance-of v1, v0, Ljava/util/concurrent/CancellationException;

    if-nez v1, :cond_201

    .line 1287
    invoke-virtual {v4, v0}, Lads_mobile_sdk/rr3;->a(Ljava/lang/Throwable;)V

    goto :goto_201

    :catchall_1fe
    move-exception v0

    move-object v1, v0

    goto :goto_225

    .line 1293
    :cond_201
    :goto_201
    instance-of v1, v0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v1, :cond_21c

    .line 1294
    instance-of v1, v0, Ljava/util/concurrent/CancellationException;

    if-nez v1, :cond_214

    .line 1295
    instance-of v1, v0, Lads_mobile_sdk/w01;

    if-eqz v1, :cond_20e

    throw v0

    .line 1296
    :cond_20e
    new-instance v1, Lads_mobile_sdk/b01;

    invoke-direct {v1, v0}, Lads_mobile_sdk/b01;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 1297
    :cond_214
    new-instance v1, Lads_mobile_sdk/wz0;

    check-cast v0, Ljava/util/concurrent/CancellationException;

    invoke-direct {v1, v0}, Lads_mobile_sdk/wz0;-><init>(Ljava/util/concurrent/CancellationException;)V

    throw v1

    .line 1298
    :cond_21c
    new-instance v1, Lads_mobile_sdk/i21;

    check-cast v0, Lkotlinx/coroutines/TimeoutCancellationException;

    invoke-direct {v1, v0}, Lads_mobile_sdk/i21;-><init>(Lkotlinx/coroutines/TimeoutCancellationException;)V

    throw v1

    .line 1299
    :cond_224
    throw v0
    :try_end_225
    .catchall {:try_start_1eb .. :try_end_225} :catchall_1fe

    .line 1300
    :goto_225
    :try_start_225
    throw v1
    :try_end_226
    .catchall {:try_start_225 .. :try_end_226} :catchall_226

    :catchall_226
    move-exception v0

    invoke-static {v2, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0

    .line 1301
    :cond_22b
    :goto_22b
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public static d(Lads_mobile_sdk/r14;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 13

    .line 1
    instance-of v0, p1, Lads_mobile_sdk/c14;

    if-eqz v0, :cond_13

    move-object v0, p1

    check-cast v0, Lads_mobile_sdk/c14;

    iget v1, v0, Lads_mobile_sdk/c14;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/c14;->e:I

    goto :goto_18

    :cond_13
    new-instance v0, Lads_mobile_sdk/c14;

    invoke-direct {v0, p0, p1}, Lads_mobile_sdk/c14;-><init>(Lads_mobile_sdk/r14;Lkotlin/coroutines/Continuation;)V

    :goto_18
    iget-object p1, v0, Lads_mobile_sdk/c14;->c:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 71
    iget v2, v0, Lads_mobile_sdk/c14;->e:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_38

    if-ne v2, v3, :cond_30

    iget-object p0, v0, Lads_mobile_sdk/c14;->b:Lkotlinx/coroutines/sync/Mutex;

    iget-object v0, v0, Lads_mobile_sdk/c14;->a:Lads_mobile_sdk/r14;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object p1, p0

    move-object p0, v0

    goto :goto_69

    :cond_30
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_38
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 72
    iget-object p1, p0, Lads_mobile_sdk/r14;->c:Lads_mobile_sdk/ex0;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 74
    const-string v2, "key"

    const-string v5, "gads:webview_profile:enabled"

    invoke-static {v5, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 90
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v6, Lads_mobile_sdk/yr;->b:Lads_mobile_sdk/ir;

    invoke-virtual {p1, v5, v2, v6}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_5a

    .line 91
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    .line 93
    :cond_5a
    iget-object p1, p0, Lads_mobile_sdk/r14;->n:Lkotlinx/coroutines/sync/Mutex;

    .line 306
    iput-object p0, v0, Lads_mobile_sdk/c14;->a:Lads_mobile_sdk/r14;

    iput-object p1, v0, Lads_mobile_sdk/c14;->b:Lkotlinx/coroutines/sync/Mutex;

    iput v3, v0, Lads_mobile_sdk/c14;->e:I

    invoke-interface {p1, v4, v0}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_69

    return-object v1

    .line 307
    :cond_69
    :goto_69
    :try_start_69
    iget-object v0, p0, Lads_mobile_sdk/r14;->m:Landroidx/webkit/Profile;

    if-nez v0, :cond_8c

    iget-object v0, p0, Lads_mobile_sdk/r14;->p:Lkotlinx/coroutines/Job;

    if-eqz v0, :cond_72

    goto :goto_8c

    .line 310
    :cond_72
    iget-object v5, p0, Lads_mobile_sdk/r14;->e:Lkotlinx/coroutines/CoroutineScope;

    new-instance v8, Lads_mobile_sdk/d14;

    invoke-direct {v8, p0, v4}, Lads_mobile_sdk/d14;-><init>(Lads_mobile_sdk/r14;Lkotlin/coroutines/Continuation;)V

    const/4 v9, 0x3

    const/4 v10, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v5 .. v10}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    move-result-object v0

    iput-object v0, p0, Lads_mobile_sdk/r14;->p:Lkotlinx/coroutines/Job;

    .line 311
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_85
    .catchall {:try_start_69 .. :try_end_85} :catchall_89

    .line 523
    invoke-interface {p1, v4}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    return-object p0

    :catchall_89
    move-exception v0

    move-object p0, v0

    goto :goto_92

    .line 524
    :cond_8c
    :goto_8c
    :try_start_8c
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_8e
    .catchall {:try_start_8c .. :try_end_8e} :catchall_89

    .line 739
    invoke-interface {p1, v4}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    return-object p0

    :goto_92
    invoke-interface {p1, v4}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw p0
.end method

.method public static e(Lads_mobile_sdk/r14;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 8

    .line 1
    instance-of v0, p1, Lads_mobile_sdk/n14;

    if-eqz v0, :cond_13

    move-object v0, p1

    check-cast v0, Lads_mobile_sdk/n14;

    iget v1, v0, Lads_mobile_sdk/n14;->c:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/n14;->c:I

    goto :goto_18

    :cond_13
    new-instance v0, Lads_mobile_sdk/n14;

    invoke-direct {v0, p0, p1}, Lads_mobile_sdk/n14;-><init>(Lads_mobile_sdk/r14;Lkotlin/coroutines/Continuation;)V

    :goto_18
    iget-object p1, v0, Lads_mobile_sdk/n14;->a:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 64
    iget v2, v0, Lads_mobile_sdk/n14;->c:I

    const/4 v3, 0x1

    if-eqz v2, :cond_31

    if-ne v2, v3, :cond_29

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_59

    :cond_29
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_31
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 65
    iget-object p1, p0, Lads_mobile_sdk/r14;->c:Lads_mobile_sdk/ex0;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 67
    const-string v2, "key"

    const-string v4, "init_profile_in_post_init_task:enabled"

    invoke-static {v4, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v5, Lads_mobile_sdk/yr;->b:Lads_mobile_sdk/ir;

    invoke-virtual {p1, v4, v2, v5}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_59

    .line 84
    iput v3, v0, Lads_mobile_sdk/n14;->c:I

    .line 85
    invoke-static {p0, v0}, Lads_mobile_sdk/r14;->d(Lads_mobile_sdk/r14;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_59

    return-object v1

    .line 86
    :cond_59
    :goto_59
    new-instance p0, Lads_mobile_sdk/q01;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-direct {p0, p1}, Lads_mobile_sdk/q01;-><init>(Ljava/lang/Object;)V

    return-object p0
.end method


# virtual methods
.method public final a(Landroidx/webkit/Profile;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 6

    .line 1315
    sget-object v0, Lads_mobile_sdk/az3;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    iget-object v0, p0, Lads_mobile_sdk/r14;->i:Lads_mobile_sdk/rz3;

    .line 1316
    const-string v1, "featureWrapper"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1534
    sget-object v1, Lads_mobile_sdk/az3;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_13

    goto :goto_3f

    .line 1538
    :cond_13
    :try_start_13
    const-string v1, "PRECONNECT"

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1539
    const-string v0, "feature"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1548
    invoke-static {v1}, Landroidx/webkit/WebViewFeature;->isFeatureSupported(Ljava/lang/String;)Z

    move-result v0
    :try_end_21
    .catchall {:try_start_13 .. :try_end_21} :catchall_39

    if-nez v0, :cond_24

    goto :goto_3f

    .line 1549
    :cond_24
    iget-object v0, p0, Lads_mobile_sdk/r14;->d:Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Lads_mobile_sdk/i14;

    invoke-direct {v1, p1, p0, v2}, Lads_mobile_sdk/i14;-><init>(Landroidx/webkit/Profile;Lads_mobile_sdk/r14;Lkotlin/coroutines/Continuation;)V

    invoke-static {v0, v1, p2}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_36

    return-object p1

    :cond_36
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 1550
    :catchall_39
    sget-object p1, Lads_mobile_sdk/az3;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1551
    :goto_3f
    const-string p1, "Preconnect is not supported"

    const/4 p2, 0x6

    invoke-static {p1, v2, p2}, Lads_mobile_sdk/xs3;->a(Ljava/lang/String;Ljava/lang/Throwable;I)V

    .line 1552
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final a(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 25

    move-object/from16 v1, p0

    move-object/from16 v0, p2

    .line 2462
    instance-of v2, v0, Lads_mobile_sdk/k14;

    if-eqz v2, :cond_17

    move-object v2, v0

    check-cast v2, Lads_mobile_sdk/k14;

    iget v3, v2, Lads_mobile_sdk/k14;->e:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_17

    sub-int/2addr v3, v4

    iput v3, v2, Lads_mobile_sdk/k14;->e:I

    goto :goto_1c

    :cond_17
    new-instance v2, Lads_mobile_sdk/k14;

    invoke-direct {v2, v1, v0}, Lads_mobile_sdk/k14;-><init>(Lads_mobile_sdk/r14;Lkotlin/coroutines/Continuation;)V

    :goto_1c
    iget-object v0, v2, Lads_mobile_sdk/k14;->c:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v3

    .line 2691
    iget v4, v2, Lads_mobile_sdk/k14;->e:I

    const/4 v5, 0x1

    if-eqz v4, :cond_39

    if-ne v4, v5, :cond_31

    iget-object v3, v2, Lads_mobile_sdk/k14;->b:Ljava/util/List;

    iget-object v2, v2, Lads_mobile_sdk/k14;->a:Lads_mobile_sdk/r14;

    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_74

    :cond_31
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_39
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 2692
    iget-object v0, v1, Lads_mobile_sdk/r14;->c:Lads_mobile_sdk/ex0;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2694
    const-string v4, "key"

    const-string v6, "gads:webview_prefetch_resources_enabled"

    invoke-static {v6, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2710
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v7, Lads_mobile_sdk/yr;->b:Lads_mobile_sdk/ir;

    invoke-virtual {v0, v6, v4, v7}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_5b

    .line 2711
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    .line 2713
    :cond_5b
    iget-object v0, v1, Lads_mobile_sdk/r14;->h:Lads_mobile_sdk/cw2;

    invoke-interface {v0}, Lads_mobile_sdk/cw2;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lads_mobile_sdk/yz3;

    iput-object v1, v2, Lads_mobile_sdk/k14;->a:Lads_mobile_sdk/r14;

    move-object/from16 v4, p1

    iput-object v4, v2, Lads_mobile_sdk/k14;->b:Ljava/util/List;

    iput v5, v2, Lads_mobile_sdk/k14;->e:I

    invoke-virtual {v0, v2}, Lads_mobile_sdk/yz3;->a(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v3, :cond_72

    return-object v3

    :cond_72
    move-object v2, v1

    move-object v3, v4

    .line 2715
    :goto_74
    iget-object v0, v2, Lads_mobile_sdk/r14;->f:Lads_mobile_sdk/g83;

    sget-object v4, Lads_mobile_sdk/s11;->X:Lads_mobile_sdk/s11;

    .line 3099
    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v6

    .line 3100
    new-instance v7, Lads_mobile_sdk/ks3;

    .line 3101
    new-instance v8, Lads_mobile_sdk/n03;

    invoke-direct {v8}, Lads_mobile_sdk/n03;-><init>()V

    .line 3102
    new-instance v9, Lads_mobile_sdk/tn1;

    invoke-direct {v9}, Lads_mobile_sdk/tn1;-><init>()V

    .line 3103
    new-instance v10, Lads_mobile_sdk/m33;

    invoke-direct {v10}, Lads_mobile_sdk/m33;-><init>()V

    .line 3104
    new-instance v11, Lads_mobile_sdk/zb;

    invoke-direct {v11}, Lads_mobile_sdk/zb;-><init>()V

    .line 3105
    invoke-direct {v7, v8, v9, v10, v11}, Lads_mobile_sdk/ks3;-><init>(Lads_mobile_sdk/n03;Lads_mobile_sdk/tn1;Lads_mobile_sdk/m33;Lads_mobile_sdk/zb;)V

    .line 3106
    invoke-static {}, Lads_mobile_sdk/hs3;->b()Lads_mobile_sdk/gs3;

    move-result-object v8

    .line 3107
    iget-object v8, v8, Lads_mobile_sdk/gs3;->a:Lads_mobile_sdk/rr3;

    const-string v9, "block"

    const-string v10, "context"

    const-string v11, "<this>"

    const-string v12, "Profile prefetch is not supported"

    const-string v13, "Profile has not been initialized yet"

    const/4 v14, 0x6

    const/4 v15, 0x0

    if-nez v8, :cond_14d

    .line 3108
    invoke-static {v0, v4, v6, v7}, Lads_mobile_sdk/g83;->a(Lads_mobile_sdk/g83;Lads_mobile_sdk/s11;Ljava/util/List;Lads_mobile_sdk/ks3;)Lads_mobile_sdk/tu2;

    move-result-object v4

    .line 3109
    :try_start_ad
    iget-object v0, v2, Lads_mobile_sdk/r14;->m:Landroidx/webkit/Profile;

    if-nez v0, :cond_bc

    .line 3111
    invoke-static {v13, v15, v14}, Lads_mobile_sdk/xs3;->a(Ljava/lang/String;Ljava/lang/Throwable;I)V

    .line 3112
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_b6
    .catchall {:try_start_ad .. :try_end_b6} :catchall_ba

    invoke-static {v4, v15}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object v0

    :catchall_ba
    move-exception v0

    goto :goto_10d

    .line 3114
    :cond_bc
    :try_start_bc
    sget-object v5, Lads_mobile_sdk/az3;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    iget-object v5, v2, Lads_mobile_sdk/r14;->i:Lads_mobile_sdk/rz3;

    invoke-static {v5}, Lads_mobile_sdk/az3;->c(Lads_mobile_sdk/rz3;)Z

    move-result v5

    if-nez v5, :cond_cf

    .line 3115
    invoke-static {v12, v15, v14}, Lads_mobile_sdk/xs3;->a(Ljava/lang/String;Ljava/lang/Throwable;I)V

    .line 3116
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_cb
    .catchall {:try_start_bc .. :try_end_cb} :catchall_ba

    invoke-static {v4, v15}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object v0

    .line 3119
    :cond_cf
    :try_start_cf
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_d3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_106

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 3120
    iget-object v6, v2, Lads_mobile_sdk/r14;->e:Lkotlinx/coroutines/CoroutineScope;

    new-instance v7, Lads_mobile_sdk/l14;

    invoke-direct {v7, v0, v5, v2, v15}, Lads_mobile_sdk/l14;-><init>(Landroidx/webkit/Profile;Ljava/lang/String;Lads_mobile_sdk/r14;Lkotlin/coroutines/Continuation;)V

    .line 3121
    sget-object v5, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    .line 3122
    invoke-static {v6, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v5, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v7, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3380
    new-instance v8, Lads_mobile_sdk/ws3;

    invoke-direct {v8, v7, v15}, Lads_mobile_sdk/ws3;-><init>(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)V

    const/16 v20, 0x2

    const/16 v21, 0x0

    const/16 v18, 0x0

    move-object/from16 v17, v5

    move-object/from16 v16, v6

    move-object/from16 v19, v8

    invoke-static/range {v16 .. v21}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    goto :goto_d3

    .line 3381
    :cond_106
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_108
    .catchall {:try_start_cf .. :try_end_108} :catchall_ba

    .line 3754
    invoke-static {v4, v15}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    goto/16 :goto_1b3

    .line 3762
    :goto_10d
    :try_start_10d
    invoke-virtual {v4, v0}, Lads_mobile_sdk/rr3;->b(Ljava/lang/Throwable;)V

    .line 3766
    instance-of v2, v0, Lads_mobile_sdk/v24;

    if-nez v2, :cond_146

    .line 3768
    instance-of v2, v0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v2, :cond_123

    instance-of v2, v0, Ljava/util/concurrent/CancellationException;

    if-nez v2, :cond_123

    .line 3774
    invoke-virtual {v4, v0}, Lads_mobile_sdk/rr3;->a(Ljava/lang/Throwable;)V

    goto :goto_123

    :catchall_120
    move-exception v0

    move-object v2, v0

    goto :goto_147

    .line 3780
    :cond_123
    :goto_123
    instance-of v2, v0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v2, :cond_13e

    .line 3781
    instance-of v2, v0, Ljava/util/concurrent/CancellationException;

    if-nez v2, :cond_136

    .line 3782
    instance-of v2, v0, Lads_mobile_sdk/w01;

    if-eqz v2, :cond_130

    throw v0

    .line 3783
    :cond_130
    new-instance v2, Lads_mobile_sdk/b01;

    invoke-direct {v2, v0}, Lads_mobile_sdk/b01;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 3784
    :cond_136
    new-instance v2, Lads_mobile_sdk/wz0;

    check-cast v0, Ljava/util/concurrent/CancellationException;

    invoke-direct {v2, v0}, Lads_mobile_sdk/wz0;-><init>(Ljava/util/concurrent/CancellationException;)V

    throw v2

    .line 3785
    :cond_13e
    new-instance v2, Lads_mobile_sdk/i21;

    check-cast v0, Lkotlinx/coroutines/TimeoutCancellationException;

    invoke-direct {v2, v0}, Lads_mobile_sdk/i21;-><init>(Lkotlinx/coroutines/TimeoutCancellationException;)V

    throw v2

    .line 3786
    :cond_146
    throw v0
    :try_end_147
    .catchall {:try_start_10d .. :try_end_147} :catchall_120

    .line 3787
    :goto_147
    :try_start_147
    throw v2
    :try_end_148
    .catchall {:try_start_147 .. :try_end_148} :catchall_148

    :catchall_148
    move-exception v0

    invoke-static {v4, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0

    .line 3821
    :cond_14d
    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-static {v4, v0, v5}, Lads_mobile_sdk/hs3;->a(Lads_mobile_sdk/s11;Ljava/util/List;Z)Lads_mobile_sdk/rr3;

    move-result-object v4

    .line 3822
    :try_start_155
    iget-object v0, v2, Lads_mobile_sdk/r14;->m:Landroidx/webkit/Profile;

    if-nez v0, :cond_164

    .line 3824
    invoke-static {v13, v15, v14}, Lads_mobile_sdk/xs3;->a(Ljava/lang/String;Ljava/lang/Throwable;I)V

    .line 3825
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_15e
    .catchall {:try_start_155 .. :try_end_15e} :catchall_162

    invoke-static {v4, v15}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object v0

    :catchall_162
    move-exception v0

    goto :goto_1b6

    .line 3827
    :cond_164
    :try_start_164
    sget-object v5, Lads_mobile_sdk/az3;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    iget-object v5, v2, Lads_mobile_sdk/r14;->i:Lads_mobile_sdk/rz3;

    invoke-static {v5}, Lads_mobile_sdk/az3;->c(Lads_mobile_sdk/rz3;)Z

    move-result v5

    if-nez v5, :cond_177

    .line 3828
    invoke-static {v12, v15, v14}, Lads_mobile_sdk/xs3;->a(Ljava/lang/String;Ljava/lang/Throwable;I)V

    .line 3829
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_173
    .catchall {:try_start_164 .. :try_end_173} :catchall_162

    invoke-static {v4, v15}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object v0

    .line 3832
    :cond_177
    :try_start_177
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_17b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1ae

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 3833
    iget-object v6, v2, Lads_mobile_sdk/r14;->e:Lkotlinx/coroutines/CoroutineScope;

    new-instance v7, Lads_mobile_sdk/l14;

    invoke-direct {v7, v0, v5, v2, v15}, Lads_mobile_sdk/l14;-><init>(Landroidx/webkit/Profile;Ljava/lang/String;Lads_mobile_sdk/r14;Lkotlin/coroutines/Continuation;)V

    .line 3834
    sget-object v5, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    .line 3835
    invoke-static {v6, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v5, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v7, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4093
    new-instance v8, Lads_mobile_sdk/ws3;

    invoke-direct {v8, v7, v15}, Lads_mobile_sdk/ws3;-><init>(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)V

    const/16 v20, 0x2

    const/16 v21, 0x0

    const/16 v18, 0x0

    move-object/from16 v17, v5

    move-object/from16 v16, v6

    move-object/from16 v19, v8

    invoke-static/range {v16 .. v21}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    goto :goto_17b

    .line 4094
    :cond_1ae
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1b0
    .catchall {:try_start_177 .. :try_end_1b0} :catchall_162

    .line 4504
    invoke-static {v4, v15}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 4505
    :goto_1b3
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    .line 4916
    :goto_1b6
    :try_start_1b6
    invoke-virtual {v4, v0}, Lads_mobile_sdk/rr3;->b(Ljava/lang/Throwable;)V

    .line 4920
    instance-of v2, v0, Lads_mobile_sdk/v24;

    if-nez v2, :cond_1ef

    .line 4922
    instance-of v2, v0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v2, :cond_1cc

    instance-of v2, v0, Ljava/util/concurrent/CancellationException;

    if-nez v2, :cond_1cc

    .line 4928
    invoke-virtual {v4, v0}, Lads_mobile_sdk/rr3;->a(Ljava/lang/Throwable;)V

    goto :goto_1cc

    :catchall_1c9
    move-exception v0

    move-object v2, v0

    goto :goto_1f0

    .line 4934
    :cond_1cc
    :goto_1cc
    instance-of v2, v0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v2, :cond_1e7

    .line 4935
    instance-of v2, v0, Ljava/util/concurrent/CancellationException;

    if-nez v2, :cond_1df

    .line 4936
    instance-of v2, v0, Lads_mobile_sdk/w01;

    if-eqz v2, :cond_1d9

    throw v0

    .line 4937
    :cond_1d9
    new-instance v2, Lads_mobile_sdk/b01;

    invoke-direct {v2, v0}, Lads_mobile_sdk/b01;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 4938
    :cond_1df
    new-instance v2, Lads_mobile_sdk/wz0;

    check-cast v0, Ljava/util/concurrent/CancellationException;

    invoke-direct {v2, v0}, Lads_mobile_sdk/wz0;-><init>(Ljava/util/concurrent/CancellationException;)V

    throw v2

    .line 4939
    :cond_1e7
    new-instance v2, Lads_mobile_sdk/i21;

    check-cast v0, Lkotlinx/coroutines/TimeoutCancellationException;

    invoke-direct {v2, v0}, Lads_mobile_sdk/i21;-><init>(Lkotlinx/coroutines/TimeoutCancellationException;)V

    throw v2

    .line 4940
    :cond_1ef
    throw v0
    :try_end_1f0
    .catchall {:try_start_1b6 .. :try_end_1f0} :catchall_1c9

    .line 4941
    :goto_1f0
    :try_start_1f0
    throw v2
    :try_end_1f1
    .catchall {:try_start_1f0 .. :try_end_1f1} :catchall_1f1

    :catchall_1f1
    move-exception v0

    invoke-static {v4, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final b(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 19

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    .line 1462
    instance-of v3, v2, Lads_mobile_sdk/m14;

    if-eqz v3, :cond_19

    move-object v3, v2

    check-cast v3, Lads_mobile_sdk/m14;

    iget v4, v3, Lads_mobile_sdk/m14;->g:I

    const/high16 v5, -0x80000000

    and-int v6, v4, v5

    if-eqz v6, :cond_19

    sub-int/2addr v4, v5

    iput v4, v3, Lads_mobile_sdk/m14;->g:I

    goto :goto_1e

    :cond_19
    new-instance v3, Lads_mobile_sdk/m14;

    invoke-direct {v3, v1, v2}, Lads_mobile_sdk/m14;-><init>(Lads_mobile_sdk/r14;Lkotlin/coroutines/Continuation;)V

    :goto_1e
    iget-object v2, v3, Lads_mobile_sdk/m14;->e:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v4

    .line 1667
    iget v5, v3, Lads_mobile_sdk/m14;->g:I

    const-string v6, "Prerender is not supported"

    const-string v7, "SDK Core is not loaded"

    const/4 v8, 0x4

    const/4 v9, 0x3

    const/4 v10, 0x2

    const/4 v11, 0x1

    const/4 v14, 0x0

    if-eqz v5, :cond_91

    if-eq v5, v11, :cond_7b

    if-eq v5, v10, :cond_69

    if-eq v5, v9, :cond_53

    if-ne v5, v8, :cond_4b

    iget-object v0, v3, Lads_mobile_sdk/m14;->b:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, Ljava/io/Closeable;

    iget-object v0, v3, Lads_mobile_sdk/m14;->a:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Lads_mobile_sdk/rr3;

    :try_start_43
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_46
    .catchall {:try_start_43 .. :try_end_46} :catchall_48

    goto/16 :goto_1fb

    :catchall_48
    move-exception v0

    goto/16 :goto_205

    :cond_4b
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1668
    :cond_53
    iget-object v5, v3, Lads_mobile_sdk/m14;->d:Lads_mobile_sdk/rr3;

    iget-object v9, v3, Lads_mobile_sdk/m14;->c:Lads_mobile_sdk/rr3;

    iget-object v0, v3, Lads_mobile_sdk/m14;->b:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    iget-object v10, v3, Lads_mobile_sdk/m14;->a:Ljava/lang/Object;

    check-cast v10, Lads_mobile_sdk/r14;

    :try_start_5f
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_62
    .catchall {:try_start_5f .. :try_end_62} :catchall_66

    const/16 p2, 0x0

    goto/16 :goto_1b7

    :catchall_66
    move-exception v0

    goto/16 :goto_1ff

    .line 1669
    :cond_69
    iget-object v0, v3, Lads_mobile_sdk/m14;->b:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, Ljava/io/Closeable;

    iget-object v0, v3, Lads_mobile_sdk/m14;->a:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Lads_mobile_sdk/rr3;

    :try_start_73
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_76
    .catchall {:try_start_73 .. :try_end_76} :catchall_78

    goto/16 :goto_147

    :catchall_78
    move-exception v0

    goto/16 :goto_151

    .line 1670
    :cond_7b
    iget-object v5, v3, Lads_mobile_sdk/m14;->d:Lads_mobile_sdk/rr3;

    iget-object v8, v3, Lads_mobile_sdk/m14;->c:Lads_mobile_sdk/rr3;

    iget-object v0, v3, Lads_mobile_sdk/m14;->b:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    iget-object v9, v3, Lads_mobile_sdk/m14;->a:Ljava/lang/Object;

    check-cast v9, Lads_mobile_sdk/r14;

    :try_start_87
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_8a
    .catchall {:try_start_87 .. :try_end_8a} :catchall_8e

    const/16 p2, 0x0

    goto/16 :goto_102

    :catchall_8e
    move-exception v0

    goto/16 :goto_14b

    .line 1671
    :cond_91
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1672
    iget-object v2, v1, Lads_mobile_sdk/r14;->c:Lads_mobile_sdk/ex0;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1674
    const-string v5, "key"

    const-string v15, "gads:webview_prerender_resources_enabled"

    invoke-static {v15, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1690
    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/16 p2, 0x0

    sget-object v13, Lads_mobile_sdk/yr;->b:Lads_mobile_sdk/ir;

    invoke-virtual {v2, v15, v5, v13}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_b7

    .line 1691
    invoke-static/range {p2 .. p2}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 1694
    :cond_b7
    iget-object v2, v1, Lads_mobile_sdk/r14;->f:Lads_mobile_sdk/g83;

    sget-object v5, Lads_mobile_sdk/s11;->Y:Lads_mobile_sdk/s11;

    .line 2025
    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v13

    .line 2026
    new-instance v15, Lads_mobile_sdk/ks3;

    .line 2027
    new-instance v8, Lads_mobile_sdk/n03;

    invoke-direct {v8}, Lads_mobile_sdk/n03;-><init>()V

    .line 2028
    new-instance v9, Lads_mobile_sdk/tn1;

    invoke-direct {v9}, Lads_mobile_sdk/tn1;-><init>()V

    .line 2029
    new-instance v10, Lads_mobile_sdk/m33;

    invoke-direct {v10}, Lads_mobile_sdk/m33;-><init>()V

    .line 2030
    new-instance v12, Lads_mobile_sdk/zb;

    invoke-direct {v12}, Lads_mobile_sdk/zb;-><init>()V

    .line 2031
    invoke-direct {v15, v8, v9, v10, v12}, Lads_mobile_sdk/ks3;-><init>(Lads_mobile_sdk/n03;Lads_mobile_sdk/tn1;Lads_mobile_sdk/m33;Lads_mobile_sdk/zb;)V

    .line 2032
    invoke-static {}, Lads_mobile_sdk/hs3;->b()Lads_mobile_sdk/gs3;

    move-result-object v8

    .line 2033
    iget-object v8, v8, Lads_mobile_sdk/gs3;->a:Lads_mobile_sdk/rr3;

    if-nez v8, :cond_191

    .line 2034
    invoke-static {v2, v5, v13, v15}, Lads_mobile_sdk/g83;->a(Lads_mobile_sdk/g83;Lads_mobile_sdk/s11;Ljava/util/List;Lads_mobile_sdk/ks3;)Lads_mobile_sdk/tu2;

    move-result-object v8

    .line 2035
    :try_start_e4
    iget-object v2, v1, Lads_mobile_sdk/r14;->l:Lads_mobile_sdk/cw2;

    invoke-interface {v2}, Lads_mobile_sdk/cw2;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lads_mobile_sdk/jb3;

    iput-object v1, v3, Lads_mobile_sdk/m14;->a:Ljava/lang/Object;

    iput-object v0, v3, Lads_mobile_sdk/m14;->b:Ljava/lang/Object;

    iput-object v8, v3, Lads_mobile_sdk/m14;->c:Lads_mobile_sdk/rr3;

    iput-object v8, v3, Lads_mobile_sdk/m14;->d:Lads_mobile_sdk/rr3;

    iput v11, v3, Lads_mobile_sdk/m14;->g:I

    check-cast v2, Lads_mobile_sdk/rp0;

    invoke-virtual {v2, v3}, Lads_mobile_sdk/rp0;->c(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2
    :try_end_fc
    .catchall {:try_start_e4 .. :try_end_fc} :catchall_14e

    if-ne v2, v4, :cond_100

    goto/16 :goto_1f9

    :cond_100
    move-object v9, v1

    move-object v5, v8

    .line 2036
    :goto_102
    :try_start_102
    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_10f

    const/4 v2, 0x6

    .line 2037
    invoke-static {v7, v14, v2}, Lads_mobile_sdk/xs3;->a(Ljava/lang/String;Ljava/lang/Throwable;I)V

    goto :goto_11d

    .line 2039
    :cond_10f
    sget-object v2, Lads_mobile_sdk/az3;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    iget-object v2, v9, Lads_mobile_sdk/r14;->i:Lads_mobile_sdk/rz3;

    invoke-static {v2}, Lads_mobile_sdk/az3;->b(Lads_mobile_sdk/rz3;)Z

    move-result v2

    if-nez v2, :cond_125

    const/4 v2, 0x6

    .line 2040
    invoke-static {v6, v14, v2}, Lads_mobile_sdk/xs3;->a(Ljava/lang/String;Ljava/lang/Throwable;I)V

    .line 2041
    :goto_11d
    invoke-static/range {p2 .. p2}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v0
    :try_end_121
    .catchall {:try_start_102 .. :try_end_121} :catchall_8e

    .line 2380
    invoke-static {v5, v14}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object v0

    .line 2381
    :cond_125
    :try_start_125
    iget-object v2, v9, Lads_mobile_sdk/r14;->l:Lads_mobile_sdk/cw2;

    .line 2382
    invoke-interface {v2}, Lads_mobile_sdk/cw2;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lads_mobile_sdk/jb3;

    .line 2383
    iget-object v6, v9, Lads_mobile_sdk/r14;->g:Lads_mobile_sdk/sz;

    .line 2384
    iget-object v6, v6, Lads_mobile_sdk/sz;->d:Lads_mobile_sdk/rz;

    .line 2385
    iput-object v8, v3, Lads_mobile_sdk/m14;->a:Ljava/lang/Object;

    iput-object v5, v3, Lads_mobile_sdk/m14;->b:Ljava/lang/Object;

    iput-object v14, v3, Lads_mobile_sdk/m14;->c:Lads_mobile_sdk/rr3;

    iput-object v14, v3, Lads_mobile_sdk/m14;->d:Lads_mobile_sdk/rr3;

    const/4 v7, 0x2

    iput v7, v3, Lads_mobile_sdk/m14;->g:I

    check-cast v2, Lads_mobile_sdk/yq1;

    invoke-virtual {v2, v0, v6, v3}, Lads_mobile_sdk/yq1;->a(Ljava/util/List;Ljava/util/concurrent/Executor;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2
    :try_end_142
    .catchall {:try_start_125 .. :try_end_142} :catchall_8e

    if-ne v2, v4, :cond_146

    goto/16 :goto_1f9

    :cond_146
    move-object v4, v5

    .line 2386
    :goto_147
    invoke-static {v4, v14}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object v2

    :goto_14b
    move-object v4, v5

    move-object v3, v8

    goto :goto_151

    :catchall_14e
    move-exception v0

    move-object v3, v8

    move-object v4, v3

    .line 2720
    :goto_151
    :try_start_151
    invoke-virtual {v3, v0}, Lads_mobile_sdk/rr3;->b(Ljava/lang/Throwable;)V

    .line 2724
    instance-of v2, v0, Lads_mobile_sdk/v24;

    if-nez v2, :cond_18a

    .line 2726
    instance-of v2, v0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v2, :cond_167

    instance-of v2, v0, Ljava/util/concurrent/CancellationException;

    if-nez v2, :cond_167

    .line 2732
    invoke-virtual {v3, v0}, Lads_mobile_sdk/rr3;->a(Ljava/lang/Throwable;)V

    goto :goto_167

    :catchall_164
    move-exception v0

    move-object v2, v0

    goto :goto_18b

    .line 2738
    :cond_167
    :goto_167
    instance-of v2, v0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v2, :cond_182

    .line 2739
    instance-of v2, v0, Ljava/util/concurrent/CancellationException;

    if-nez v2, :cond_17a

    .line 2740
    instance-of v2, v0, Lads_mobile_sdk/w01;

    if-eqz v2, :cond_174

    throw v0

    .line 2741
    :cond_174
    new-instance v2, Lads_mobile_sdk/b01;

    invoke-direct {v2, v0}, Lads_mobile_sdk/b01;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 2742
    :cond_17a
    new-instance v2, Lads_mobile_sdk/wz0;

    check-cast v0, Ljava/util/concurrent/CancellationException;

    invoke-direct {v2, v0}, Lads_mobile_sdk/wz0;-><init>(Ljava/util/concurrent/CancellationException;)V

    throw v2

    .line 2743
    :cond_182
    new-instance v2, Lads_mobile_sdk/i21;

    check-cast v0, Lkotlinx/coroutines/TimeoutCancellationException;

    invoke-direct {v2, v0}, Lads_mobile_sdk/i21;-><init>(Lkotlinx/coroutines/TimeoutCancellationException;)V

    throw v2

    .line 2744
    :cond_18a
    throw v0
    :try_end_18b
    .catchall {:try_start_151 .. :try_end_18b} :catchall_164

    .line 2745
    :goto_18b
    :try_start_18b
    throw v2
    :try_end_18c
    .catchall {:try_start_18b .. :try_end_18c} :catchall_18c

    :catchall_18c
    move-exception v0

    invoke-static {v4, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0

    .line 2779
    :cond_191
    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v2

    invoke-static {v5, v2, v11}, Lads_mobile_sdk/hs3;->a(Lads_mobile_sdk/s11;Ljava/util/List;Z)Lads_mobile_sdk/rr3;

    move-result-object v9

    .line 2780
    :try_start_199
    iget-object v2, v1, Lads_mobile_sdk/r14;->l:Lads_mobile_sdk/cw2;

    invoke-interface {v2}, Lads_mobile_sdk/cw2;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lads_mobile_sdk/jb3;

    iput-object v1, v3, Lads_mobile_sdk/m14;->a:Ljava/lang/Object;

    iput-object v0, v3, Lads_mobile_sdk/m14;->b:Ljava/lang/Object;

    iput-object v9, v3, Lads_mobile_sdk/m14;->c:Lads_mobile_sdk/rr3;

    iput-object v9, v3, Lads_mobile_sdk/m14;->d:Lads_mobile_sdk/rr3;

    const/4 v5, 0x3

    iput v5, v3, Lads_mobile_sdk/m14;->g:I

    check-cast v2, Lads_mobile_sdk/rp0;

    invoke-virtual {v2, v3}, Lads_mobile_sdk/rp0;->c(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2
    :try_end_1b2
    .catchall {:try_start_199 .. :try_end_1b2} :catchall_202

    if-ne v2, v4, :cond_1b5

    goto :goto_1f9

    :cond_1b5
    move-object v10, v1

    move-object v5, v9

    .line 2781
    :goto_1b7
    :try_start_1b7
    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_1c4

    const/4 v2, 0x6

    .line 2782
    invoke-static {v7, v14, v2}, Lads_mobile_sdk/xs3;->a(Ljava/lang/String;Ljava/lang/Throwable;I)V

    goto :goto_1d2

    .line 2784
    :cond_1c4
    sget-object v2, Lads_mobile_sdk/az3;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    iget-object v2, v10, Lads_mobile_sdk/r14;->i:Lads_mobile_sdk/rz3;

    invoke-static {v2}, Lads_mobile_sdk/az3;->b(Lads_mobile_sdk/rz3;)Z

    move-result v2

    if-nez v2, :cond_1da

    const/4 v2, 0x6

    .line 2785
    invoke-static {v6, v14, v2}, Lads_mobile_sdk/xs3;->a(Ljava/lang/String;Ljava/lang/Throwable;I)V

    .line 2786
    :goto_1d2
    invoke-static/range {p2 .. p2}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v0
    :try_end_1d6
    .catchall {:try_start_1b7 .. :try_end_1d6} :catchall_66

    .line 3162
    invoke-static {v5, v14}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object v0

    .line 3163
    :cond_1da
    :try_start_1da
    iget-object v2, v10, Lads_mobile_sdk/r14;->l:Lads_mobile_sdk/cw2;

    .line 3164
    invoke-interface {v2}, Lads_mobile_sdk/cw2;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lads_mobile_sdk/jb3;

    .line 3165
    iget-object v6, v10, Lads_mobile_sdk/r14;->g:Lads_mobile_sdk/sz;

    .line 3166
    iget-object v6, v6, Lads_mobile_sdk/sz;->d:Lads_mobile_sdk/rz;

    .line 3167
    iput-object v9, v3, Lads_mobile_sdk/m14;->a:Ljava/lang/Object;

    iput-object v5, v3, Lads_mobile_sdk/m14;->b:Ljava/lang/Object;

    iput-object v14, v3, Lads_mobile_sdk/m14;->c:Lads_mobile_sdk/rr3;

    iput-object v14, v3, Lads_mobile_sdk/m14;->d:Lads_mobile_sdk/rr3;

    const/4 v7, 0x4

    iput v7, v3, Lads_mobile_sdk/m14;->g:I

    check-cast v2, Lads_mobile_sdk/yq1;

    invoke-virtual {v2, v0, v6, v3}, Lads_mobile_sdk/yq1;->a(Ljava/util/List;Ljava/util/concurrent/Executor;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2
    :try_end_1f7
    .catchall {:try_start_1da .. :try_end_1f7} :catchall_66

    if-ne v2, v4, :cond_1fa

    :goto_1f9
    return-object v4

    :cond_1fa
    move-object v4, v5

    .line 3168
    :goto_1fb
    invoke-static {v4, v14}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object v2

    :goto_1ff
    move-object v4, v5

    move-object v3, v9

    goto :goto_205

    :catchall_202
    move-exception v0

    move-object v3, v9

    move-object v4, v3

    .line 3539
    :goto_205
    :try_start_205
    invoke-virtual {v3, v0}, Lads_mobile_sdk/rr3;->b(Ljava/lang/Throwable;)V

    .line 3543
    instance-of v2, v0, Lads_mobile_sdk/v24;

    if-nez v2, :cond_23e

    .line 3545
    instance-of v2, v0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v2, :cond_21b

    instance-of v2, v0, Ljava/util/concurrent/CancellationException;

    if-nez v2, :cond_21b

    .line 3551
    invoke-virtual {v3, v0}, Lads_mobile_sdk/rr3;->a(Ljava/lang/Throwable;)V

    goto :goto_21b

    :catchall_218
    move-exception v0

    move-object v2, v0

    goto :goto_23f

    .line 3557
    :cond_21b
    :goto_21b
    instance-of v2, v0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v2, :cond_236

    .line 3558
    instance-of v2, v0, Ljava/util/concurrent/CancellationException;

    if-nez v2, :cond_22e

    .line 3559
    instance-of v2, v0, Lads_mobile_sdk/w01;

    if-eqz v2, :cond_228

    throw v0

    .line 3560
    :cond_228
    new-instance v2, Lads_mobile_sdk/b01;

    invoke-direct {v2, v0}, Lads_mobile_sdk/b01;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 3561
    :cond_22e
    new-instance v2, Lads_mobile_sdk/wz0;

    check-cast v0, Ljava/util/concurrent/CancellationException;

    invoke-direct {v2, v0}, Lads_mobile_sdk/wz0;-><init>(Ljava/util/concurrent/CancellationException;)V

    throw v2

    .line 3562
    :cond_236
    new-instance v2, Lads_mobile_sdk/i21;

    check-cast v0, Lkotlinx/coroutines/TimeoutCancellationException;

    invoke-direct {v2, v0}, Lads_mobile_sdk/i21;-><init>(Lkotlinx/coroutines/TimeoutCancellationException;)V

    throw v2

    .line 3563
    :cond_23e
    throw v0
    :try_end_23f
    .catchall {:try_start_205 .. :try_end_23f} :catchall_218

    .line 3564
    :goto_23f
    :try_start_23f
    throw v2
    :try_end_240
    .catchall {:try_start_23f .. :try_end_240} :catchall_240

    :catchall_240
    move-exception v0

    invoke-static {v4, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final g()Z
    .registers 2

    .line 2
    iget-object v0, p0, Lads_mobile_sdk/r14;->s:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final i()V
    .registers 7

    .line 111
    iget-object v0, p0, Lads_mobile_sdk/r14;->e:Lkotlinx/coroutines/CoroutineScope;

    new-instance v1, Lads_mobile_sdk/f14;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lads_mobile_sdk/f14;-><init>(Lads_mobile_sdk/r14;Lkotlin/coroutines/Continuation;)V

    move-object v3, v1

    .line 112
    sget-object v1, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    .line 113
    const-string v4, "<this>"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "context"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "block"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v4, v3

    .line 371
    new-instance v3, Lads_mobile_sdk/ws3;

    invoke-direct {v3, v4, v2}, Lads_mobile_sdk/ws3;-><init>(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)V

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v2, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final u(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-static {p0, p1}, Lads_mobile_sdk/r14;->e(Lads_mobile_sdk/r14;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
