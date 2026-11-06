###### Class ads_mobile_sdk.yz3 (ads_mobile_sdk.yz3)
.class public final Lads_mobile_sdk/yz3;
.super Lads_mobile_sdk/nc1;
.source "SourceFile"


# instance fields
.field public final c:Lads_mobile_sdk/dz3;

.field public final d:Lads_mobile_sdk/sz;

.field public final e:Lads_mobile_sdk/ex0;

.field public final f:Lkotlinx/coroutines/CoroutineScope;

.field public final g:Lkotlinx/coroutines/CoroutineScope;

.field public final h:Lads_mobile_sdk/g83;

.field public final i:Lads_mobile_sdk/cw2;

.field public final j:Lads_mobile_sdk/zw3;

.field public final k:Lkotlinx/coroutines/CompletableJob;

.field public final l:Lkotlin/Lazy;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/dz3;Lads_mobile_sdk/sz;Lads_mobile_sdk/ex0;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/CoroutineScope;Lads_mobile_sdk/g83;Lads_mobile_sdk/dw2;Lads_mobile_sdk/zw3;)V
    .registers 11

    .line 1
    const-string v0, "webViewCompatWrapper"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "concurrencyObjects"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "flags"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "backgroundScope"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "webViewInitializationScope"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rootTraceCreator"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "webViewProfileInitializer"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "userAgentProvider"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 2
    invoke-direct {p0, v0, v1}, Lads_mobile_sdk/nc1;-><init>(Lads_mobile_sdk/s11;I)V

    .line 3
    iput-object p1, p0, Lads_mobile_sdk/yz3;->c:Lads_mobile_sdk/dz3;

    .line 4
    iput-object p2, p0, Lads_mobile_sdk/yz3;->d:Lads_mobile_sdk/sz;

    .line 5
    iput-object p3, p0, Lads_mobile_sdk/yz3;->e:Lads_mobile_sdk/ex0;

    .line 6
    iput-object p4, p0, Lads_mobile_sdk/yz3;->f:Lkotlinx/coroutines/CoroutineScope;

    .line 7
    iput-object p5, p0, Lads_mobile_sdk/yz3;->g:Lkotlinx/coroutines/CoroutineScope;

    .line 8
    iput-object p6, p0, Lads_mobile_sdk/yz3;->h:Lads_mobile_sdk/g83;

    .line 9
    iput-object p7, p0, Lads_mobile_sdk/yz3;->i:Lads_mobile_sdk/cw2;

    .line 10
    iput-object p8, p0, Lads_mobile_sdk/yz3;->j:Lads_mobile_sdk/zw3;

    .line 13
    invoke-static {v0, v1, v0}, Lkotlinx/coroutines/JobKt;->Job$default(Lkotlinx/coroutines/Job;ILjava/lang/Object;)Lkotlinx/coroutines/CompletableJob;

    move-result-object p1

    iput-object p1, p0, Lads_mobile_sdk/yz3;->k:Lkotlinx/coroutines/CompletableJob;

    .line 14
    new-instance p1, Lads_mobile_sdk/xz3;

    invoke-direct {p1, p0}, Lads_mobile_sdk/xz3;-><init>(Lads_mobile_sdk/yz3;)V

    invoke-static {p1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lads_mobile_sdk/yz3;->l:Lkotlin/Lazy;

    return-void
.end method

.method public static final a(Lads_mobile_sdk/yz3;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 15

    .line 27
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    instance-of v0, p1, Lads_mobile_sdk/vz3;

    if-eqz v0, :cond_16

    move-object v0, p1

    check-cast v0, Lads_mobile_sdk/vz3;

    iget v1, v0, Lads_mobile_sdk/vz3;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_16

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/vz3;->d:I

    goto :goto_1b

    :cond_16
    new-instance v0, Lads_mobile_sdk/vz3;

    invoke-direct {v0, p0, p1}, Lads_mobile_sdk/vz3;-><init>(Lads_mobile_sdk/yz3;Lkotlin/coroutines/Continuation;)V

    :goto_1b
    iget-object p1, v0, Lads_mobile_sdk/vz3;->b:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 104
    iget v2, v0, Lads_mobile_sdk/vz3;->d:I

    const/4 v3, 0x2

    const/4 v4, 0x0

    const-string v5, "key"

    const/4 v6, 0x1

    if-eqz v2, :cond_42

    if-eq v2, v6, :cond_3b

    if-ne v2, v3, :cond_33

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_19a

    :cond_33
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3b
    iget-object p0, v0, Lads_mobile_sdk/vz3;->a:Lads_mobile_sdk/yz3;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_bb

    :cond_42
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 150
    iput-object p0, v0, Lads_mobile_sdk/vz3;->a:Lads_mobile_sdk/yz3;

    iput v6, v0, Lads_mobile_sdk/vz3;->d:I

    .line 151
    new-instance p1, Lkotlinx/coroutines/CancellableContinuationImpl;

    invoke-static {v0}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsJvmKt;->intercepted(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v2

    invoke-direct {p1, v2, v6}, Lkotlinx/coroutines/CancellableContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;I)V

    .line 157
    invoke-virtual {p1}, Lkotlinx/coroutines/CancellableContinuationImpl;->initCancellability()V

    .line 158
    :try_start_55
    iget-object v2, p0, Lads_mobile_sdk/yz3;->c:Lads_mobile_sdk/dz3;

    .line 159
    iget-object v6, p0, Lads_mobile_sdk/yz3;->e:Lads_mobile_sdk/ex0;

    .line 160
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 161
    const-string v7, "gads:webview_initialization_executor:enabled"

    .line 162
    invoke-static {v7, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 178
    sget-object v8, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sget-object v9, Lads_mobile_sdk/yr;->b:Lads_mobile_sdk/ir;

    invoke-virtual {v6, v7, v8, v9}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_78

    .line 179
    iget-object v6, p0, Lads_mobile_sdk/yz3;->d:Lads_mobile_sdk/sz;

    .line 180
    iget-object v6, v6, Lads_mobile_sdk/sz;->i:Lads_mobile_sdk/rz;

    goto :goto_7c

    :catch_76
    move-exception v2

    goto :goto_9b

    .line 181
    :cond_78
    iget-object v6, p0, Lads_mobile_sdk/yz3;->d:Lads_mobile_sdk/sz;

    .line 182
    iget-object v6, v6, Lads_mobile_sdk/sz;->d:Lads_mobile_sdk/rz;

    .line 183
    :goto_7c
    iget-object v7, p0, Lads_mobile_sdk/yz3;->e:Lads_mobile_sdk/ex0;

    .line 184
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 185
    const-string v8, "gads:run_ui_thread_webview_startup_tasks"

    .line 186
    invoke-static {v8, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 202
    sget-object v10, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v7, v8, v10, v9}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    .line 203
    new-instance v8, Lads_mobile_sdk/wz3;

    invoke-direct {v8, p1}, Lads_mobile_sdk/wz3;-><init>(Lkotlinx/coroutines/CancellableContinuationImpl;)V

    invoke-virtual {v2, v6, v7, v8}, Lads_mobile_sdk/ns;->a(Lads_mobile_sdk/rz;ZLads_mobile_sdk/wz3;)V
    :try_end_9a
    .catch Ljava/lang/Exception; {:try_start_55 .. :try_end_9a} :catch_76

    goto :goto_aa

    .line 214
    :goto_9b
    sget-object v6, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    new-instance v6, Lads_mobile_sdk/j01;

    const/4 v7, 0x6

    invoke-direct {v6, v2, v4, v4, v7}, Lads_mobile_sdk/j01;-><init>(Ljava/lang/Throwable;Lads_mobile_sdk/kk1;Ljava/lang/String;I)V

    invoke-static {v6}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Lkotlinx/coroutines/CancellableContinuationImpl;->resumeWith(Ljava/lang/Object;)V

    .line 255
    :goto_aa
    invoke-virtual {p1}, Lkotlinx/coroutines/CancellableContinuationImpl;->getResult()Ljava/lang/Object;

    move-result-object p1

    .line 256
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v2

    if-ne p1, v2, :cond_b7

    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/DebugProbesKt;->probeCoroutineSuspended(Lkotlin/coroutines/Continuation;)V

    :cond_b7
    if-ne p1, v1, :cond_bb

    goto/16 :goto_19c

    .line 257
    :cond_bb
    :goto_bb
    check-cast p1, Lads_mobile_sdk/v01;

    .line 275
    instance-of v2, p1, Lads_mobile_sdk/q01;

    if-eqz v2, :cond_174

    .line 276
    check-cast p1, Lads_mobile_sdk/q01;

    .line 277
    iget-object p1, p1, Lads_mobile_sdk/q01;->b:Ljava/lang/Object;

    .line 278
    check-cast p1, Lads_mobile_sdk/j41;

    .line 279
    invoke-static {}, Lads_mobile_sdk/hs3;->a()Lads_mobile_sdk/rr3;

    move-result-object v2

    invoke-virtual {v2}, Lads_mobile_sdk/rr3;->e()Lads_mobile_sdk/uj2;

    move-result-object v2

    .line 315
    invoke-static {}, Lads_mobile_sdk/hz3;->v()Lads_mobile_sdk/gz3;

    move-result-object v6

    const-string v7, "newBuilder(...)"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 316
    const-string v7, "builder"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 317
    invoke-interface {p1}, Lads_mobile_sdk/j41;->getTotalTimeInUiThreadMillis()Ljava/lang/Long;

    move-result-object v7

    if-eqz v7, :cond_ea

    invoke-virtual {v7}, Ljava/lang/Number;->longValue()J

    move-result-wide v7

    .line 318
    invoke-virtual {v6, v7, v8}, Lads_mobile_sdk/gz3;->b(J)V

    .line 319
    :cond_ea
    invoke-interface {p1}, Lads_mobile_sdk/j41;->getMaxTimePerTaskInUiThreadMillis()Ljava/lang/Long;

    move-result-object v7

    if-eqz v7, :cond_f7

    invoke-virtual {v7}, Ljava/lang/Number;->longValue()J

    move-result-wide v7

    .line 320
    invoke-virtual {v6, v7, v8}, Lads_mobile_sdk/gz3;->a(J)V

    .line 321
    :cond_f7
    invoke-interface {p1}, Lads_mobile_sdk/j41;->b()Ljava/util/List;

    move-result-object v7

    const-string v8, "values"

    const-string v9, "<this>"

    if-eqz v7, :cond_118

    .line 322
    new-instance v10, Lads_mobile_sdk/lo0;

    .line 323
    invoke-virtual {v6}, Lads_mobile_sdk/gz3;->i()Ljava/util/List;

    move-result-object v11

    const-string v12, "getUiThreadBlockingStartupLocationsList(...)"

    invoke-static {v11, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 324
    invoke-direct {v10, v11}, Lads_mobile_sdk/lo0;-><init>(Ljava/util/List;)V

    .line 325
    invoke-static {v10, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 577
    invoke-virtual {v6, v7}, Lads_mobile_sdk/gz3;->b(Ljava/util/List;)V

    .line 578
    :cond_118
    invoke-interface {p1}, Lads_mobile_sdk/j41;->a()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_135

    .line 579
    new-instance v7, Lads_mobile_sdk/lo0;

    .line 580
    invoke-virtual {v6}, Lads_mobile_sdk/gz3;->h()Ljava/util/List;

    move-result-object v10

    const-string v11, "getNonUiThreadBlockingStartupLocationsList(...)"

    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 581
    invoke-direct {v7, v10}, Lads_mobile_sdk/lo0;-><init>(Ljava/util/List;)V

    .line 582
    invoke-static {v7, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 764
    invoke-virtual {v6, p1}, Lads_mobile_sdk/gz3;->a(Ljava/util/List;)V

    .line 765
    :cond_135
    invoke-virtual {v6}, Lads_mobile_sdk/vz0$a;->b()Lads_mobile_sdk/vz0;

    move-result-object p1

    const-string v6, "build(...)"

    invoke-static {p1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lads_mobile_sdk/hz3;

    .line 766
    iput-object p1, v2, Lads_mobile_sdk/uj2;->G:Lads_mobile_sdk/hz3;

    .line 780
    iget-object p1, p0, Lads_mobile_sdk/yz3;->e:Lads_mobile_sdk/ex0;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 782
    const-string v2, "init_profile_after_webview_startup:enabled"

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 798
    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sget-object v6, Lads_mobile_sdk/yr;->b:Lads_mobile_sdk/ir;

    invoke-virtual {p1, v2, v5, v6}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_19a

    .line 799
    iget-object p0, p0, Lads_mobile_sdk/yz3;->i:Lads_mobile_sdk/cw2;

    invoke-interface {p0}, Lads_mobile_sdk/cw2;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lads_mobile_sdk/p04;

    iput-object v4, v0, Lads_mobile_sdk/vz3;->a:Lads_mobile_sdk/yz3;

    iput v3, v0, Lads_mobile_sdk/vz3;->d:I

    check-cast p0, Lads_mobile_sdk/r14;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 800
    invoke-static {p0, v0}, Lads_mobile_sdk/r14;->d(Lads_mobile_sdk/r14;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_19a

    goto :goto_19c

    .line 801
    :cond_174
    instance-of p0, p1, Lads_mobile_sdk/i01;

    if-eqz p0, :cond_19a

    .line 802
    check-cast p1, Lads_mobile_sdk/i01;

    invoke-virtual {p1}, Lads_mobile_sdk/i01;->b()Ljava/lang/Throwable;

    move-result-object p0

    if-nez p0, :cond_187

    new-instance p0, Ljava/lang/Exception;

    const-string p1, "WebView Startup Failed"

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 803
    :cond_187
    const-string p1, "exception"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 804
    invoke-static {}, Lads_mobile_sdk/hs3;->a()Lads_mobile_sdk/rr3;

    move-result-object p1

    .line 807
    invoke-virtual {p1}, Lads_mobile_sdk/rr3;->e()Lads_mobile_sdk/uj2;

    move-result-object v0

    const/4 v1, 0x0

    iput-boolean v1, v0, Lads_mobile_sdk/uj2;->m:Z

    .line 808
    invoke-virtual {p1, p0}, Lads_mobile_sdk/rr3;->a(Ljava/lang/Throwable;)V

    .line 809
    :cond_19a
    :goto_19a
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :goto_19c
    return-object v1
.end method


# virtual methods
.method public final a(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .registers 3

    .line 811
    iget-object v0, p0, Lads_mobile_sdk/yz3;->l:Lkotlin/Lazy;

    .line 812
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 813
    iget-object v0, p0, Lads_mobile_sdk/yz3;->k:Lkotlinx/coroutines/CompletableJob;

    invoke-interface {v0, p1}, Lkotlinx/coroutines/Job;->join(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    if-ne p1, v0, :cond_1b

    return-object p1

    :cond_1b
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 815
    :cond_1e
    iget-object v0, p0, Lads_mobile_sdk/yz3;->j:Lads_mobile_sdk/zw3;

    invoke-interface {v0, p1}, Lads_mobile_sdk/zw3;->b(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    if-ne p1, v0, :cond_2b

    return-object p1

    :cond_2b
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final u(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 8

    .line 2
    iget-object p1, p0, Lads_mobile_sdk/yz3;->l:Lkotlin/Lazy;

    .line 3
    invoke-interface {p1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_55

    .line 4
    iget-object p1, p0, Lads_mobile_sdk/yz3;->e:Lads_mobile_sdk/ex0;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    const-string v0, "key"

    const-string v1, "gads:webview_initialization_executor:enabled"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sget-object v2, Lads_mobile_sdk/yr;->b:Lads_mobile_sdk/ir;

    invoke-virtual {p1, v1, v0, v2}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_2e

    .line 23
    iget-object p1, p0, Lads_mobile_sdk/yz3;->g:Lkotlinx/coroutines/CoroutineScope;

    :goto_2c
    move-object v0, p1

    goto :goto_31

    .line 25
    :cond_2e
    iget-object p1, p0, Lads_mobile_sdk/yz3;->f:Lkotlinx/coroutines/CoroutineScope;

    goto :goto_2c

    .line 28
    :goto_31
    new-instance p1, Lads_mobile_sdk/uz3;

    const/4 v1, 0x0

    invoke-direct {p1, p0, v1}, Lads_mobile_sdk/uz3;-><init>(Lads_mobile_sdk/yz3;Lkotlin/coroutines/Continuation;)V

    move-object v2, v1

    .line 29
    sget-object v1, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    .line 30
    const-string v3, "<this>"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "context"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "block"

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 288
    new-instance v3, Lads_mobile_sdk/ws3;

    invoke-direct {v3, p1, v2}, Lads_mobile_sdk/ws3;-><init>(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)V

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v2, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    goto :goto_5a

    .line 289
    :cond_55
    iget-object p1, p0, Lads_mobile_sdk/yz3;->k:Lkotlinx/coroutines/CompletableJob;

    invoke-interface {p1}, Lkotlinx/coroutines/CompletableJob;->complete()Z

    .line 292
    :goto_5a
    new-instance p1, Lads_mobile_sdk/q01;

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-direct {p1, v0}, Lads_mobile_sdk/q01;-><init>(Ljava/lang/Object;)V

    return-object p1
.end method
