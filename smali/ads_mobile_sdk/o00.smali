###### Class ads_mobile_sdk.o00 (ads_mobile_sdk.o00)
.class public final Lads_mobile_sdk/o00;
.super Lads_mobile_sdk/nc1;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/gj1;


# instance fields
.field public final c:Lkotlin/coroutines/CoroutineContext;

.field public final d:Lkotlinx/coroutines/CoroutineScope;

.field public final e:Landroid/content/Context;

.field public final f:Lads_mobile_sdk/ja1;

.field public final g:Ljava/lang/String;

.field public final h:Lads_mobile_sdk/jb3;

.field public final i:Lads_mobile_sdk/pn;

.field public final j:Lads_mobile_sdk/hf;

.field public final k:Lads_mobile_sdk/ur3;

.field public final l:Lads_mobile_sdk/tx;

.field public final m:Lads_mobile_sdk/ex0;

.field public final n:Lads_mobile_sdk/g83;

.field public final o:Lads_mobile_sdk/g30;

.field public final p:Lads_mobile_sdk/e01;

.field public final q:Lads_mobile_sdk/o21;

.field public final r:Lads_mobile_sdk/ks1;

.field public final s:Lkotlinx/coroutines/sync/Mutex;

.field public t:Z

.field public u:J

.field public v:J


# direct methods
.method public constructor <init>(Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineScope;Landroid/content/Context;Lads_mobile_sdk/ja1;Ljava/lang/String;Lads_mobile_sdk/jb3;Lads_mobile_sdk/pn;Lads_mobile_sdk/hf;Lads_mobile_sdk/ur3;Lads_mobile_sdk/tx;Lads_mobile_sdk/ex0;Lads_mobile_sdk/g83;Lads_mobile_sdk/g30;Lads_mobile_sdk/e01;Lads_mobile_sdk/o21;Lads_mobile_sdk/ks1;)V
    .registers 33

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
    const-string v0, "backgroundContext"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "backgroundScope"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "initializationConfigWrapper"

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "afmaVersion"

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "javascriptEngine"

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "appState"

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adapterInitializer"

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "traceLogger"

    invoke-static {v9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clock"

    invoke-static {v10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "flags"

    invoke-static {v11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rootTraceCreator"

    invoke-static {v12, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "consentManager"

    invoke-static {v13, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "httpClient"

    invoke-static {v14, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "gmaUtil"

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "inspectorManager"

    move-object/from16 v15, p16

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v15, 0x1

    move-object/from16 v14, p0

    .line 88
    invoke-direct {v14, v0, v15}, Lads_mobile_sdk/nc1;-><init>(Lads_mobile_sdk/s11;I)V

    .line 89
    iput-object v1, v14, Lads_mobile_sdk/o00;->c:Lkotlin/coroutines/CoroutineContext;

    .line 90
    iput-object v2, v14, Lads_mobile_sdk/o00;->d:Lkotlinx/coroutines/CoroutineScope;

    .line 91
    iput-object v3, v14, Lads_mobile_sdk/o00;->e:Landroid/content/Context;

    .line 92
    iput-object v4, v14, Lads_mobile_sdk/o00;->f:Lads_mobile_sdk/ja1;

    .line 93
    iput-object v5, v14, Lads_mobile_sdk/o00;->g:Ljava/lang/String;

    .line 94
    iput-object v6, v14, Lads_mobile_sdk/o00;->h:Lads_mobile_sdk/jb3;

    .line 95
    iput-object v7, v14, Lads_mobile_sdk/o00;->i:Lads_mobile_sdk/pn;

    .line 96
    iput-object v8, v14, Lads_mobile_sdk/o00;->j:Lads_mobile_sdk/hf;

    .line 97
    iput-object v9, v14, Lads_mobile_sdk/o00;->k:Lads_mobile_sdk/ur3;

    .line 98
    iput-object v10, v14, Lads_mobile_sdk/o00;->l:Lads_mobile_sdk/tx;

    .line 99
    iput-object v11, v14, Lads_mobile_sdk/o00;->m:Lads_mobile_sdk/ex0;

    .line 100
    iput-object v12, v14, Lads_mobile_sdk/o00;->n:Lads_mobile_sdk/g83;

    .line 101
    iput-object v13, v14, Lads_mobile_sdk/o00;->o:Lads_mobile_sdk/g30;

    move-object/from16 v1, p14

    .line 102
    iput-object v1, v14, Lads_mobile_sdk/o00;->p:Lads_mobile_sdk/e01;

    move-object/from16 v1, p15

    .line 103
    iput-object v1, v14, Lads_mobile_sdk/o00;->q:Lads_mobile_sdk/o21;

    move-object/from16 v1, p16

    .line 104
    iput-object v1, v14, Lads_mobile_sdk/o00;->r:Lads_mobile_sdk/ks1;

    const/4 v1, 0x0

    .line 107
    invoke-static {v1, v15, v0}, Lkotlinx/coroutines/sync/MutexKt;->Mutex$default(ZILjava/lang/Object;)Lkotlinx/coroutines/sync/Mutex;

    move-result-object v0

    iput-object v0, v14, Lads_mobile_sdk/o00;->s:Lkotlinx/coroutines/sync/Mutex;

    .line 109
    sget-object v0, Lkotlin/time/Duration;->Companion:Lkotlin/time/Duration$Companion;

    invoke-virtual {v0}, Lkotlin/time/Duration$Companion;->getZERO-UwyO8pc()J

    move-result-wide v1

    iput-wide v1, v14, Lads_mobile_sdk/o00;->u:J

    .line 110
    invoke-virtual {v0}, Lkotlin/time/Duration$Companion;->getZERO-UwyO8pc()J

    move-result-wide v0

    iput-wide v0, v14, Lads_mobile_sdk/o00;->v:J

    return-void
.end method

.method public static synthetic a(Lads_mobile_sdk/o00;Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 7

    .line 5967
    instance-of v0, p2, Lads_mobile_sdk/h00;

    if-eqz v0, :cond_13

    move-object v0, p2

    check-cast v0, Lads_mobile_sdk/h00;

    iget v1, v0, Lads_mobile_sdk/h00;->c:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/h00;->c:I

    goto :goto_18

    :cond_13
    new-instance v0, Lads_mobile_sdk/h00;

    invoke-direct {v0, p0, p2}, Lads_mobile_sdk/h00;-><init>(Lads_mobile_sdk/o00;Lkotlin/coroutines/Continuation;)V

    :goto_18
    iget-object p2, v0, Lads_mobile_sdk/h00;->a:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 6102
    iget v2, v0, Lads_mobile_sdk/h00;->c:I

    const/4 v3, 0x1

    if-eqz v2, :cond_31

    if-ne v2, v3, :cond_29

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_41

    :cond_29
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_31
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 6103
    invoke-virtual {p1}, Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;->getAdUnitId()Ljava/lang/String;

    move-result-object p1

    iput v3, v0, Lads_mobile_sdk/h00;->c:I

    invoke-virtual {p0, p1, v0}, Lads_mobile_sdk/o00;->b(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_41

    return-object v1

    .line 6104
    :cond_41
    :goto_41
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6105
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public static final a(Lads_mobile_sdk/o00;Lcom/google/android/libraries/ads/mobile/sdk/internal/initialization/ConfigLoaderRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 15

    const/4 v0, 0x1

    .line 2149
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2150
    instance-of v1, p2, Lads_mobile_sdk/b00;

    if-eqz v1, :cond_17

    move-object v1, p2

    check-cast v1, Lads_mobile_sdk/b00;

    iget v2, v1, Lads_mobile_sdk/b00;->h:I

    const/high16 v3, -0x80000000

    and-int v4, v2, v3

    if-eqz v4, :cond_17

    sub-int/2addr v2, v3

    iput v2, v1, Lads_mobile_sdk/b00;->h:I

    goto :goto_1c

    :cond_17
    new-instance v1, Lads_mobile_sdk/b00;

    invoke-direct {v1, p0, p2}, Lads_mobile_sdk/b00;-><init>(Lads_mobile_sdk/o00;Lkotlin/coroutines/Continuation;)V

    :goto_1c
    iget-object p2, v1, Lads_mobile_sdk/b00;->f:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v2

    .line 2414
    iget v3, v1, Lads_mobile_sdk/b00;->h:I

    const/4 v4, 0x2

    if-eqz v3, :cond_52

    if-eq v3, v0, :cond_44

    if-ne v3, v4, :cond_3c

    iget p0, v1, Lads_mobile_sdk/b00;->d:I

    iget-wide v5, v1, Lads_mobile_sdk/b00;->e:J

    iget p1, v1, Lads_mobile_sdk/b00;->c:I

    iget-object v3, v1, Lads_mobile_sdk/b00;->b:Lcom/google/android/libraries/ads/mobile/sdk/internal/initialization/ConfigLoaderRequest;

    iget-object v7, v1, Lads_mobile_sdk/b00;->a:Lads_mobile_sdk/o00;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    :cond_38
    move p2, p1

    move-object p1, v3

    goto/16 :goto_ca

    :cond_3c
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_44
    iget p0, v1, Lads_mobile_sdk/b00;->d:I

    iget-wide v5, v1, Lads_mobile_sdk/b00;->e:J

    iget p1, v1, Lads_mobile_sdk/b00;->c:I

    iget-object v3, v1, Lads_mobile_sdk/b00;->b:Lcom/google/android/libraries/ads/mobile/sdk/internal/initialization/ConfigLoaderRequest;

    iget-object v7, v1, Lads_mobile_sdk/b00;->a:Lads_mobile_sdk/o00;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_a5

    :cond_52
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 2417
    iget-object p2, p0, Lads_mobile_sdk/o00;->m:Lads_mobile_sdk/ex0;

    .line 2419
    const-string v3, "gads:cld_request_retries"

    const-string v5, "key"

    const/4 v6, 0x0

    invoke-static {p2, v3, v5, v6}, Lads_mobile_sdk/by0;->a(Lads_mobile_sdk/ex0;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v7

    .line 2420
    sget-object v8, Lads_mobile_sdk/yr;->f:Lads_mobile_sdk/nr;

    invoke-virtual {p2, v3, v7, v8}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    .line 2421
    iget-object v3, p0, Lads_mobile_sdk/o00;->m:Lads_mobile_sdk/ex0;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2422
    sget-object v7, Lkotlin/time/Duration;->Companion:Lkotlin/time/Duration$Companion;

    const/4 v7, 0x5

    sget-object v8, Lkotlin/time/DurationUnit;->SECONDS:Lkotlin/time/DurationUnit;

    .line 2423
    const-string v9, "gads:cld_request_throttle_interval_ms"

    invoke-static {v7, v8, v9, v5}, Lads_mobile_sdk/wm2;->a(ILkotlin/time/DurationUnit;Ljava/lang/String;Ljava/lang/String;)Lkotlin/time/Duration;

    move-result-object v5

    .line 2424
    sget-object v7, Lads_mobile_sdk/yr;->j:Lads_mobile_sdk/sr;

    invoke-virtual {v3, v9, v5, v7}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkotlin/time/Duration;

    invoke-virtual {v3}, Lkotlin/time/Duration;->unbox-impl()J

    move-result-wide v7

    if-ltz p2, :cond_d7

    .line 2425
    :goto_8a
    iput-object p0, v1, Lads_mobile_sdk/b00;->a:Lads_mobile_sdk/o00;

    iput-object p1, v1, Lads_mobile_sdk/b00;->b:Lcom/google/android/libraries/ads/mobile/sdk/internal/initialization/ConfigLoaderRequest;

    iput p2, v1, Lads_mobile_sdk/b00;->c:I

    iput-wide v7, v1, Lads_mobile_sdk/b00;->e:J

    iput v6, v1, Lads_mobile_sdk/b00;->d:I

    iput v0, v1, Lads_mobile_sdk/b00;->h:I

    invoke-virtual {p0, p1, v1}, Lads_mobile_sdk/o00;->b(Lcom/google/android/libraries/ads/mobile/sdk/internal/initialization/ConfigLoaderRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v2, :cond_9d

    goto :goto_c9

    :cond_9d
    move-wide v10, v7

    move-object v7, p0

    move p0, v6

    move-wide v5, v10

    move-object v10, v3

    move-object v3, p1

    move p1, p2

    move-object p2, v10

    .line 2426
    :goto_a5
    check-cast p2, Lads_mobile_sdk/v01;

    .line 2437
    instance-of v8, p2, Lads_mobile_sdk/q01;

    if-eqz v8, :cond_ac

    goto :goto_b6

    .line 2440
    :cond_ac
    instance-of v8, p2, Lads_mobile_sdk/i01;

    if-eqz v8, :cond_b7

    .line 2445
    iget-boolean v8, v3, Lcom/google/android/libraries/ads/mobile/sdk/internal/initialization/ConfigLoaderRequest;->isCalledFromInit:Z

    if-eqz v8, :cond_b6

    if-ne p0, p1, :cond_b7

    :cond_b6
    :goto_b6
    return-object p2

    .line 2451
    :cond_b7
    iput-object v7, v1, Lads_mobile_sdk/b00;->a:Lads_mobile_sdk/o00;

    iput-object v3, v1, Lads_mobile_sdk/b00;->b:Lcom/google/android/libraries/ads/mobile/sdk/internal/initialization/ConfigLoaderRequest;

    iput p1, v1, Lads_mobile_sdk/b00;->c:I

    iput-wide v5, v1, Lads_mobile_sdk/b00;->e:J

    iput p0, v1, Lads_mobile_sdk/b00;->d:I

    iput v4, v1, Lads_mobile_sdk/b00;->h:I

    invoke-static {v5, v6, v1}, Lkotlinx/coroutines/DelayKt;->delay-VtjQ1oo(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v2, :cond_38

    :goto_c9
    return-object v2

    :goto_ca
    const/4 v3, 0x3

    .line 2452
    invoke-static {v5, v6, v3}, Lkotlin/time/Duration;->times-UwyO8pc(JI)J

    move-result-wide v5

    if-eq p0, p2, :cond_d7

    add-int/2addr p0, v0

    move-wide v10, v5

    move v6, p0

    move-object p0, v7

    move-wide v7, v10

    goto :goto_8a

    .line 2454
    :cond_d7
    new-instance p0, Lads_mobile_sdk/m01;

    const-string p1, "Failed to successfully fetch app settings after all retries."

    .line 2455
    sget-object p2, Lads_mobile_sdk/kk1;->a:Lads_mobile_sdk/kk1;

    .line 2456
    invoke-direct {p0, p1, p2}, Lads_mobile_sdk/m01;-><init>(Ljava/lang/String;Lads_mobile_sdk/kk1;)V

    return-object p0
.end method

.method public static final a(Lads_mobile_sdk/o00;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 11

    .line 2529
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2530
    instance-of v0, p1, Lads_mobile_sdk/m00;

    if-eqz v0, :cond_16

    move-object v0, p1

    check-cast v0, Lads_mobile_sdk/m00;

    iget v1, v0, Lads_mobile_sdk/m00;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_16

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/m00;->d:I

    goto :goto_1b

    :cond_16
    new-instance v0, Lads_mobile_sdk/m00;

    invoke-direct {v0, p0, p1}, Lads_mobile_sdk/m00;-><init>(Lads_mobile_sdk/o00;Lkotlin/coroutines/Continuation;)V

    :goto_1b
    iget-object p1, v0, Lads_mobile_sdk/m00;->b:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 3186
    iget v2, v0, Lads_mobile_sdk/m00;->d:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_37

    if-ne v2, v3, :cond_2f

    iget-object p0, v0, Lads_mobile_sdk/m00;->a:Lads_mobile_sdk/o00;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_53

    :cond_2f
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_37
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 3187
    iget-boolean p1, p0, Lads_mobile_sdk/o00;->t:Z

    if-eqz p1, :cond_43

    invoke-static {v4}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    .line 3189
    :cond_43
    iget-object p1, p0, Lads_mobile_sdk/o00;->i:Lads_mobile_sdk/pn;

    iput-object p0, v0, Lads_mobile_sdk/m00;->a:Lads_mobile_sdk/o00;

    iput v3, v0, Lads_mobile_sdk/m00;->d:I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3190
    invoke-static {p1, v0}, Lads_mobile_sdk/pn;->c(Lads_mobile_sdk/pn;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_53

    return-object v1

    .line 3191
    :cond_53
    :goto_53
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_60

    invoke-static {v4}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    .line 3194
    :cond_60
    iget-wide v0, p0, Lads_mobile_sdk/o00;->u:J

    sget-object p1, Lkotlin/time/Duration;->Companion:Lkotlin/time/Duration$Companion;

    invoke-virtual {p1}, Lkotlin/time/Duration$Companion;->getZERO-UwyO8pc()J

    move-result-wide v5

    invoke-static {v0, v1, v5, v6}, Lkotlin/time/Duration;->equals-impl0(JJ)Z

    move-result v0

    const-string v1, "key"

    if-nez v0, :cond_aa

    .line 3195
    iget-object v0, p0, Lads_mobile_sdk/o00;->l:Lads_mobile_sdk/tx;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3196
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    .line 3197
    sget-object v0, Lkotlin/time/DurationUnit;->MILLISECONDS:Lkotlin/time/DurationUnit;

    invoke-static {v5, v6, v0}, Lkotlin/time/DurationKt;->toDuration(JLkotlin/time/DurationUnit;)J

    move-result-wide v5

    iget-wide v7, p0, Lads_mobile_sdk/o00;->u:J

    invoke-static {v5, v6, v7, v8}, Lkotlin/time/Duration;->minus-LRDsOJo(JJ)J

    move-result-wide v5

    .line 3198
    iget-object v0, p0, Lads_mobile_sdk/o00;->m:Lads_mobile_sdk/ex0;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x5

    .line 3199
    sget-object v7, Lkotlin/time/DurationUnit;->SECONDS:Lkotlin/time/DurationUnit;

    .line 3200
    const-string v8, "gads:fetch_app_settings_using_cld:throttle_interval_ms"

    invoke-static {v2, v7, v8, v1}, Lads_mobile_sdk/wm2;->a(ILkotlin/time/DurationUnit;Ljava/lang/String;Ljava/lang/String;)Lkotlin/time/Duration;

    move-result-object v2

    .line 3201
    sget-object v7, Lads_mobile_sdk/yr;->j:Lads_mobile_sdk/sr;

    invoke-virtual {v0, v8, v2, v7}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/time/Duration;

    invoke-virtual {v0}, Lkotlin/time/Duration;->unbox-impl()J

    move-result-wide v7

    .line 3202
    invoke-static {v5, v6, v7, v8}, Lkotlin/time/Duration;->compareTo-LRDsOJo(JJ)I

    move-result v0

    if-gez v0, :cond_aa

    .line 3205
    invoke-static {v4}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    .line 3209
    :cond_aa
    iget-wide v5, p0, Lads_mobile_sdk/o00;->v:J

    invoke-virtual {p1}, Lkotlin/time/Duration$Companion;->getZERO-UwyO8pc()J

    move-result-wide v7

    invoke-static {v5, v6, v7, v8}, Lkotlin/time/Duration;->equals-impl0(JJ)Z

    move-result p1

    if-nez p1, :cond_f0

    .line 3210
    iget-object p1, p0, Lads_mobile_sdk/o00;->l:Lads_mobile_sdk/tx;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3211
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    .line 3212
    sget-object p1, Lkotlin/time/DurationUnit;->MILLISECONDS:Lkotlin/time/DurationUnit;

    invoke-static {v5, v6, p1}, Lkotlin/time/DurationKt;->toDuration(JLkotlin/time/DurationUnit;)J

    move-result-wide v5

    iget-wide v7, p0, Lads_mobile_sdk/o00;->v:J

    invoke-static {v5, v6, v7, v8}, Lkotlin/time/Duration;->minus-LRDsOJo(JJ)J

    move-result-wide v5

    .line 3213
    iget-object p0, p0, Lads_mobile_sdk/o00;->m:Lads_mobile_sdk/ex0;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p1, 0x2

    .line 3214
    sget-object v0, Lkotlin/time/DurationUnit;->HOURS:Lkotlin/time/DurationUnit;

    .line 3215
    const-string v2, "gads:fetch_app_settings_using_cld:refresh_interval_ms"

    invoke-static {p1, v0, v2, v1}, Lads_mobile_sdk/wm2;->a(ILkotlin/time/DurationUnit;Ljava/lang/String;Ljava/lang/String;)Lkotlin/time/Duration;

    move-result-object p1

    .line 3216
    sget-object v0, Lads_mobile_sdk/yr;->j:Lads_mobile_sdk/sr;

    invoke-virtual {p0, v2, p1, v0}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lkotlin/time/Duration;

    invoke-virtual {p0}, Lkotlin/time/Duration;->unbox-impl()J

    move-result-wide p0

    .line 3217
    invoke-static {v5, v6, p0, p1}, Lkotlin/time/Duration;->compareTo-LRDsOJo(JJ)I

    move-result p0

    if-gez p0, :cond_f0

    .line 3220
    invoke-static {v4}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    .line 3223
    :cond_f0
    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static final a(Lads_mobile_sdk/o00;ZLjava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 26

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    .line 67
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v2, v1, Lads_mobile_sdk/zz;

    if-eqz v2, :cond_1b

    move-object v2, v1

    check-cast v2, Lads_mobile_sdk/zz;

    iget v3, v2, Lads_mobile_sdk/zz;->f:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_1b

    sub-int/2addr v3, v4

    iput v3, v2, Lads_mobile_sdk/zz;->f:I

    :goto_19
    move-object v9, v2

    goto :goto_21

    :cond_1b
    new-instance v2, Lads_mobile_sdk/zz;

    invoke-direct {v2, v0, v1}, Lads_mobile_sdk/zz;-><init>(Lads_mobile_sdk/o00;Lkotlin/coroutines/Continuation;)V

    goto :goto_19

    :goto_21
    iget-object v1, v9, Lads_mobile_sdk/zz;->d:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v10

    .line 68
    iget v2, v9, Lads_mobile_sdk/zz;->f:I

    const/4 v11, 0x0

    const/4 v12, 0x3

    const/4 v13, 0x2

    const/4 v14, 0x1

    const/4 v15, 0x0

    if-eqz v2, :cond_5f

    if-eq v2, v14, :cond_54

    if-eq v2, v13, :cond_49

    if-ne v2, v12, :cond_41

    iget-boolean v0, v9, Lads_mobile_sdk/zz;->c:Z

    iget-object v2, v9, Lads_mobile_sdk/zz;->b:Lkotlinx/coroutines/sync/Mutex;

    iget-object v3, v9, Lads_mobile_sdk/zz;->a:Lads_mobile_sdk/o00;

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_15e

    :cond_41
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_49
    iget-boolean v0, v9, Lads_mobile_sdk/zz;->c:Z

    iget-object v2, v9, Lads_mobile_sdk/zz;->a:Lads_mobile_sdk/o00;

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move v4, v0

    move-object v0, v2

    goto/16 :goto_108

    :cond_54
    iget-boolean v0, v9, Lads_mobile_sdk/zz;->c:Z

    iget-object v2, v9, Lads_mobile_sdk/zz;->a:Lads_mobile_sdk/o00;

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move v4, v0

    move-object v0, v2

    goto/16 :goto_ea

    :cond_5f
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 73
    new-instance v1, Lcom/google/android/libraries/ads/mobile/sdk/internal/initialization/ConfigLoaderRequest;

    .line 74
    iget-object v2, v0, Lads_mobile_sdk/o00;->f:Lads_mobile_sdk/ja1;

    invoke-virtual {v2}, Lads_mobile_sdk/ja1;->a()Lcom/google/android/libraries/ads/mobile/sdk/initialization/InitializationConfig;

    move-result-object v2

    if-eqz v2, :cond_72

    invoke-virtual {v2}, Lcom/google/android/libraries/ads/mobile/sdk/initialization/InitializationConfig;->getApplicationId()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_74

    :cond_72
    const-string v2, ""

    .line 77
    :cond_74
    iget-object v3, v0, Lads_mobile_sdk/o00;->e:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const-string v3, "getPackageName(...)"

    invoke-static {v5, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 78
    :try_start_7f
    iget-object v3, v0, Lads_mobile_sdk/o00;->e:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    if-nez v3, :cond_88

    goto :goto_9c

    .line 81
    :cond_88
    iget-object v4, v0, Lads_mobile_sdk/o00;->e:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v3, v11}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    iget v3, v3, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3
    :try_end_9a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_7f .. :try_end_9a} :catch_9c

    move-object v6, v3

    goto :goto_9d

    :catch_9c
    :goto_9c
    move-object v6, v15

    .line 82
    :goto_9d
    iget-object v7, v0, Lads_mobile_sdk/o00;->g:Ljava/lang/String;

    .line 83
    iget-object v3, v0, Lads_mobile_sdk/o00;->m:Lads_mobile_sdk/ex0;

    .line 84
    iget-object v3, v3, Lads_mobile_sdk/ex0;->s:Lads_mobile_sdk/eb3;

    .line 85
    invoke-virtual {v3}, Lads_mobile_sdk/eb3;->c()Ljava/lang/String;

    move-result-object v8

    move/from16 v4, p1

    move-object/from16 v3, p2

    .line 86
    invoke-direct/range {v1 .. v8}, Lcom/google/android/libraries/ads/mobile/sdk/internal/initialization/ConfigLoaderRequest;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v2, v1}, Lcom/google/gson/Gson;->toJsonTree(Ljava/lang/Object;)Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v2

    .line 98
    iget-object v3, v0, Lads_mobile_sdk/o00;->m:Lads_mobile_sdk/ex0;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 100
    const-string v5, "key"

    const-string v6, "gads:fetch_cld_in_native:enabled"

    invoke-static {v6, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 116
    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sget-object v7, Lads_mobile_sdk/yr;->b:Lads_mobile_sdk/ir;

    invoke-virtual {v3, v6, v5, v7}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_f3

    .line 117
    iput-object v0, v9, Lads_mobile_sdk/zz;->a:Lads_mobile_sdk/o00;

    iput-boolean v4, v9, Lads_mobile_sdk/zz;->c:Z

    iput v14, v9, Lads_mobile_sdk/zz;->f:I

    .line 118
    new-instance v2, Lads_mobile_sdk/d00;

    invoke-direct {v2, v0, v1, v15}, Lads_mobile_sdk/d00;-><init>(Lads_mobile_sdk/o00;Lcom/google/android/libraries/ads/mobile/sdk/internal/initialization/ConfigLoaderRequest;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {v0, v2, v9}, Lads_mobile_sdk/o00;->a(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v10, :cond_ea

    goto/16 :goto_169

    .line 119
    :cond_ea
    :goto_ea
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    :goto_f0
    move-object v3, v0

    move v0, v1

    goto :goto_10f

    .line 121
    :cond_f3
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iput-object v0, v9, Lads_mobile_sdk/zz;->a:Lads_mobile_sdk/o00;

    iput-boolean v4, v9, Lads_mobile_sdk/zz;->c:Z

    iput v13, v9, Lads_mobile_sdk/zz;->f:I

    .line 122
    new-instance v1, Lads_mobile_sdk/c00;

    invoke-direct {v1, v0, v2, v15}, Lads_mobile_sdk/c00;-><init>(Lads_mobile_sdk/o00;Lcom/google/gson/JsonObject;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {v0, v1, v9}, Lads_mobile_sdk/o00;->a(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v10, :cond_108

    goto :goto_169

    .line 123
    :cond_108
    :goto_108
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_f0

    .line 129
    :goto_10f
    iget-object v1, v3, Lads_mobile_sdk/o00;->m:Lads_mobile_sdk/ex0;

    .line 130
    iget-boolean v2, v1, Lads_mobile_sdk/ex0;->w:Z

    if-nez v2, :cond_11d

    .line 131
    iget-wide v1, v1, Lads_mobile_sdk/ex0;->x:D

    const-wide/16 v5, 0x0

    cmpl-double v1, v1, v5

    if-lez v1, :cond_14d

    :cond_11d
    if-eqz v0, :cond_14d

    if-nez v4, :cond_14d

    .line 132
    iget-object v1, v3, Lads_mobile_sdk/o00;->d:Lkotlinx/coroutines/CoroutineScope;

    new-instance v2, Lads_mobile_sdk/a00;

    invoke-direct {v2, v3, v15}, Lads_mobile_sdk/a00;-><init>(Lads_mobile_sdk/o00;Lkotlin/coroutines/Continuation;)V

    .line 133
    sget-object v4, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    .line 134
    const-string v5, "<this>"

    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "context"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "block"

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 392
    new-instance v5, Lads_mobile_sdk/ws3;

    invoke-direct {v5, v2, v15}, Lads_mobile_sdk/ws3;-><init>(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)V

    const/16 v20, 0x2

    const/16 v21, 0x0

    const/16 v18, 0x0

    move-object/from16 v16, v1

    move-object/from16 v17, v4

    move-object/from16 v19, v5

    invoke-static/range {v16 .. v21}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 393
    :cond_14d
    iget-object v2, v3, Lads_mobile_sdk/o00;->s:Lkotlinx/coroutines/sync/Mutex;

    .line 953
    iput-object v3, v9, Lads_mobile_sdk/zz;->a:Lads_mobile_sdk/o00;

    iput-object v2, v9, Lads_mobile_sdk/zz;->b:Lkotlinx/coroutines/sync/Mutex;

    iput-boolean v0, v9, Lads_mobile_sdk/zz;->c:Z

    iput v12, v9, Lads_mobile_sdk/zz;->f:I

    invoke-interface {v2, v15, v9}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v10, :cond_15e

    goto :goto_169

    .line 954
    :cond_15e
    :goto_15e
    :try_start_15e
    iput-boolean v11, v3, Lads_mobile_sdk/o00;->t:Z

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_162
    .catchall {:try_start_15e .. :try_end_162} :catchall_16a

    .line 1518
    invoke-interface {v2, v15}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    .line 1519
    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v10

    :goto_169
    return-object v10

    :catchall_16a
    move-exception v0

    .line 2082
    invoke-interface {v2, v15}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw v0
.end method

.method public static b(Lads_mobile_sdk/o00;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 7

    .line 1
    instance-of v0, p1, Lads_mobile_sdk/e00;

    if-eqz v0, :cond_13

    move-object v0, p1

    check-cast v0, Lads_mobile_sdk/e00;

    iget v1, v0, Lads_mobile_sdk/e00;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/e00;->e:I

    goto :goto_18

    :cond_13
    new-instance v0, Lads_mobile_sdk/e00;

    invoke-direct {v0, p0, p1}, Lads_mobile_sdk/e00;-><init>(Lads_mobile_sdk/o00;Lkotlin/coroutines/Continuation;)V

    :goto_18
    iget-object p1, v0, Lads_mobile_sdk/e00;->c:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 683
    iget v2, v0, Lads_mobile_sdk/e00;->e:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_38

    if-ne v2, v3, :cond_30

    iget-object p0, v0, Lads_mobile_sdk/e00;->b:Lkotlinx/coroutines/sync/Mutex;

    iget-object v0, v0, Lads_mobile_sdk/e00;->a:Lads_mobile_sdk/o00;

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

    iget-object p1, p0, Lads_mobile_sdk/o00;->s:Lkotlinx/coroutines/sync/Mutex;

    .line 806
    iput-object p0, v0, Lads_mobile_sdk/e00;->a:Lads_mobile_sdk/o00;

    iput-object p1, v0, Lads_mobile_sdk/e00;->b:Lkotlinx/coroutines/sync/Mutex;

    iput v3, v0, Lads_mobile_sdk/e00;->e:I

    invoke-interface {p1, v4, v0}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_4a

    return-object v1

    .line 807
    :cond_4a
    :goto_4a
    :try_start_4a
    iget-wide v0, p0, Lads_mobile_sdk/o00;->v:J

    sget-object v2, Lkotlin/time/Duration;->Companion:Lkotlin/time/Duration$Companion;

    invoke-virtual {v2}, Lkotlin/time/Duration$Companion;->getZERO-UwyO8pc()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lkotlin/time/Duration;->equals-impl0(JJ)Z

    move-result v0

    if-eqz v0, :cond_5b

    const-wide/16 v0, 0x0

    goto :goto_6b

    .line 810
    :cond_5b
    iget-object v0, p0, Lads_mobile_sdk/o00;->l:Lads_mobile_sdk/tx;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 811
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 812
    iget-wide v2, p0, Lads_mobile_sdk/o00;->v:J

    invoke-static {v2, v3}, Lkotlin/time/Duration;->getInWholeMilliseconds-impl(J)J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 813
    :goto_6b
    invoke-static {v0, v1}, Lkotlin/coroutines/jvm/internal/Boxing;->boxLong(J)Ljava/lang/Long;

    move-result-object p0
    :try_end_6f
    .catchall {:try_start_4a .. :try_end_6f} :catchall_73

    .line 939
    invoke-interface {p1, v4}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    return-object p0

    :catchall_73
    move-exception p0

    .line 940
    invoke-interface {p1, v4}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw p0
.end method


# virtual methods
.method public final a(Lcom/google/gson/JsonObject;)Lads_mobile_sdk/v01;
    .registers 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 6107
    const-string v2, "status"

    invoke-virtual {v1, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v3

    if-eqz v3, :cond_4c5

    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_4c5

    .line 6111
    iget-object v2, v0, Lads_mobile_sdk/o00;->m:Lads_mobile_sdk/ex0;

    invoke-virtual {v2}, Lads_mobile_sdk/ex0;->c0()Ljava/util/List;

    move-result-object v2

    .line 6112
    const-string v3, "common_settings"

    invoke-static {v1, v3}, Lads_mobile_sdk/ds1;->b(Lcom/google/gson/JsonObject;Ljava/lang/String;)Lcom/google/gson/JsonObject;

    move-result-object v3

    .line 6115
    const-string v5, "app_id"

    invoke-virtual {v1, v5}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v6

    invoke-static {v3, v5, v6}, Lads_mobile_sdk/ds1;->a(Lcom/google/gson/JsonObject;Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    .line 6119
    const-string v6, "prefetch_directive"

    invoke-virtual {v1, v6}, Lcom/google/gson/JsonObject;->remove(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 6122
    const-string v6, "persistable_banner_ad_unit_ids"

    invoke-virtual {v1, v6}, Lcom/google/gson/JsonObject;->remove(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 6124
    const-string v6, "exp_param"

    const/4 v7, 0x0

    invoke-static {v1, v6, v7}, Lads_mobile_sdk/ds1;->a(Lcom/google/gson/JsonObject;Ljava/lang/String;Lcom/google/gson/JsonObject;)Lcom/google/gson/JsonObject;

    move-result-object v8

    const-string v9, "loeid"

    if-eqz v8, :cond_60

    .line 6125
    invoke-static {v8, v9}, Lads_mobile_sdk/ds1;->e(Lcom/google/gson/JsonObject;Ljava/lang/String;)Lcom/google/gson/JsonArray;

    move-result-object v8

    if-eqz v8, :cond_60

    new-instance v10, Ljava/util/LinkedHashSet;

    invoke-direct {v10}, Ljava/util/LinkedHashSet;-><init>()V

    .line 6543
    invoke-virtual {v8}, Lcom/google/gson/JsonArray;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_4c
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_65

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    .line 6544
    check-cast v11, Lcom/google/gson/JsonElement;

    .line 6545
    invoke-virtual {v11}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v11

    .line 6963
    invoke-interface {v10, v11}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_4c

    .line 6964
    :cond_60
    new-instance v10, Ljava/util/LinkedHashSet;

    invoke-direct {v10}, Ljava/util/LinkedHashSet;-><init>()V

    .line 6965
    :cond_65
    invoke-interface {v10}, Ljava/util/Collection;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_7e

    .line 6966
    new-instance v8, Lcom/google/gson/Gson;

    invoke-direct {v8}, Lcom/google/gson/Gson;-><init>()V

    invoke-static {v10}, Lkotlin/collections/CollectionsKt___CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v10

    invoke-virtual {v8, v10}, Lcom/google/gson/Gson;->toJsonTree(Ljava/lang/Object;)Lcom/google/gson/JsonElement;

    move-result-object v8

    invoke-virtual {v3, v9, v8}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    .line 6967
    invoke-virtual {v1, v6}, Lcom/google/gson/JsonObject;->remove(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 6968
    :cond_7e
    const-string v6, "cache_ttl_sec"

    invoke-virtual {v1, v6}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v8

    const-string v9, "key"

    if-nez v8, :cond_af

    .line 6969
    iget-object v8, v0, Lads_mobile_sdk/o00;->m:Lads_mobile_sdk/ex0;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6970
    sget-object v10, Lkotlin/time/Duration;->Companion:Lkotlin/time/Duration$Companion;

    const/4 v10, 0x3

    sget-object v11, Lkotlin/time/DurationUnit;->DAYS:Lkotlin/time/DurationUnit;

    .line 6971
    const-string v12, "gads:default_cld_ttl_secs"

    invoke-static {v10, v11, v12, v9}, Lads_mobile_sdk/wm2;->a(ILkotlin/time/DurationUnit;Ljava/lang/String;Ljava/lang/String;)Lkotlin/time/Duration;

    move-result-object v10

    .line 6972
    sget-object v11, Lads_mobile_sdk/yr;->l:Lads_mobile_sdk/ur;

    invoke-virtual {v8, v12, v10, v11}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lkotlin/time/Duration;

    invoke-virtual {v8}, Lkotlin/time/Duration;->unbox-impl()J

    move-result-wide v10

    .line 6973
    invoke-static {v10, v11}, Lkotlin/time/Duration;->getInWholeSeconds-impl(J)J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v1, v6, v8}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 6974
    :cond_af
    const-string v6, "ad_unit_settings"

    invoke-static {v1, v6}, Lads_mobile_sdk/ds1;->e(Lcom/google/gson/JsonObject;Ljava/lang/String;)Lcom/google/gson/JsonArray;

    move-result-object v8

    const-string v10, "ad_unit_id_settings"

    if-eqz v8, :cond_bf

    .line 6975
    invoke-virtual {v1, v10, v8}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    .line 6976
    invoke-virtual {v1, v6}, Lcom/google/gson/JsonObject;->remove(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 6978
    :cond_bf
    invoke-static {v1, v10}, Lads_mobile_sdk/ds1;->e(Lcom/google/gson/JsonObject;Ljava/lang/String;)Lcom/google/gson/JsonArray;

    move-result-object v6

    const-string v8, "defaultValue"

    if-nez v6, :cond_c9

    goto/16 :goto_21e

    .line 6980
    :cond_c9
    invoke-virtual {v6}, Lcom/google/gson/JsonArray;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_cd
    :goto_cd
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_fe

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/google/gson/JsonElement;

    .line 6981
    invoke-virtual {v11}, Lcom/google/gson/JsonElement;->isJsonObject()Z

    move-result v12

    if-eqz v12, :cond_cd

    .line 6982
    invoke-virtual {v11}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v11

    const-string v12, "getAsJsonObject(...)"

    invoke-static {v11, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6983
    const-string v12, "is_mediation"

    invoke-virtual {v11, v12}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v13

    .line 6984
    invoke-static {v13, v2}, Lads_mobile_sdk/ds1;->a(Lcom/google/gson/JsonElement;Ljava/util/List;)Z

    move-result v14

    if-eqz v14, :cond_cd

    .line 6985
    const-string v14, "request_signals"

    invoke-static {v11, v14}, Lads_mobile_sdk/ds1;->b(Lcom/google/gson/JsonObject;Ljava/lang/String;)Lcom/google/gson/JsonObject;

    move-result-object v11

    invoke-virtual {v11, v12, v13}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    goto :goto_cd

    .line 6986
    :cond_fe
    new-instance v10, Lkotlin/text/Regex;

    iget-object v11, v0, Lads_mobile_sdk/o00;->m:Lads_mobile_sdk/ex0;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6988
    const-string v12, "gads:ad_manager_inventory_unit_regex"

    invoke-static {v12, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v13, "^/(\\d+)(/.*)?$"

    invoke-static {v13, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7030
    sget-object v14, Lads_mobile_sdk/yr;->o:Lads_mobile_sdk/wr;

    invoke-virtual {v11, v12, v13, v14}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 7031
    invoke-direct {v10, v11}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    .line 7032
    new-instance v11, Ljava/util/LinkedHashMap;

    invoke-direct {v11}, Ljava/util/LinkedHashMap;-><init>()V

    .line 7033
    invoke-virtual {v6}, Lcom/google/gson/JsonArray;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_123
    :goto_123
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_181

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/google/gson/JsonElement;

    .line 7034
    invoke-virtual {v12}, Lcom/google/gson/JsonElement;->isJsonObject()Z

    move-result v13

    if-eqz v13, :cond_123

    .line 7035
    invoke-virtual {v12}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v12

    .line 7036
    const-string v13, "ad_unit_id"

    invoke-virtual {v12, v13}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v13

    if-eqz v13, :cond_146

    invoke-virtual {v13}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v13

    goto :goto_147

    :cond_146
    move-object v13, v7

    .line 7037
    :goto_147
    const-string v14, "format"

    invoke-virtual {v12, v14}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v12

    if-eqz v12, :cond_154

    invoke-virtual {v12}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v12

    goto :goto_155

    :cond_154
    move-object v12, v7

    :goto_155
    if-eqz v13, :cond_123

    .line 7039
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v14

    if-nez v14, :cond_15e

    goto :goto_123

    :cond_15e
    if-eqz v12, :cond_123

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v14

    if-nez v14, :cond_167

    goto :goto_123

    :cond_167
    invoke-virtual {v10, v13}, Lkotlin/text/Regex;->matches(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_123

    .line 7407
    invoke-virtual {v11, v12}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    if-nez v14, :cond_17b

    .line 7408
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 7777
    invoke-interface {v11, v12, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7778
    :cond_17b
    check-cast v14, Ljava/util/List;

    .line 7779
    invoke-interface {v14, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_123

    .line 7780
    :cond_181
    invoke-interface {v11}, Ljava/util/Map;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_21e

    .line 7785
    iget-object v6, v0, Lads_mobile_sdk/o00;->m:Lads_mobile_sdk/ex0;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7787
    const-string v10, "gads:match_child_ad_unit_regex:enabled"

    invoke-static {v10, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7803
    sget-object v12, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v13, Lads_mobile_sdk/yr;->b:Lads_mobile_sdk/ir;

    invoke-virtual {v6, v10, v12, v13}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    .line 7804
    new-instance v10, Lcom/google/gson/JsonObject;

    invoke-direct {v10}, Lcom/google/gson/JsonObject;-><init>()V

    .line 7805
    invoke-virtual {v11}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_1ac
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_219

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Map$Entry;

    invoke-interface {v12}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-interface {v12}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/List;

    .line 7806
    new-instance v14, Lcom/google/gson/JsonArray;

    invoke-direct {v14}, Lcom/google/gson/JsonArray;-><init>()V

    .line 8166
    new-instance v15, Lads_mobile_sdk/uz;

    invoke-direct {v15}, Lads_mobile_sdk/uz;-><init>()V

    invoke-static {v12, v15}, Lkotlin/collections/CollectionsKt___CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v12

    .line 8167
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_1d6
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_211

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 8168
    new-instance v4, Lcom/google/gson/JsonArray;

    invoke-direct {v4}, Lcom/google/gson/JsonArray;-><init>()V

    .line 8169
    invoke-virtual {v0, v15, v6}, Lads_mobile_sdk/o00;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/google/gson/JsonArray;->add(Ljava/lang/String;)V

    .line 8170
    new-instance v7, Lcom/google/gson/JsonObject;

    invoke-direct {v7}, Lcom/google/gson/JsonObject;-><init>()V

    move/from16 v16, v6

    .line 8171
    const-string v6, "including"

    invoke-virtual {v7, v6, v4}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    .line 8172
    new-instance v4, Lcom/google/gson/JsonArray;

    invoke-direct {v4}, Lcom/google/gson/JsonArray;-><init>()V

    const-string v6, "excluding"

    invoke-virtual {v7, v6, v4}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    .line 8173
    const-string v4, "effective_ad_unit_id"

    invoke-virtual {v7, v4, v15}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 8174
    invoke-virtual {v14, v7}, Lcom/google/gson/JsonArray;->add(Lcom/google/gson/JsonElement;)V

    move/from16 v6, v16

    const/4 v4, 0x1

    const/4 v7, 0x0

    goto :goto_1d6

    :cond_211
    move/from16 v16, v6

    .line 8176
    invoke-virtual {v10, v13, v14}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    const/4 v4, 0x1

    const/4 v7, 0x0

    goto :goto_1ac

    .line 8177
    :cond_219
    const-string v4, "ad_unit_patterns"

    invoke-virtual {v1, v4, v10}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    .line 8178
    :cond_21e
    :goto_21e
    const-string v4, "initializer_settings"

    invoke-static {v1, v4}, Lads_mobile_sdk/ds1;->b(Lcom/google/gson/JsonObject;Ljava/lang/String;)Lcom/google/gson/JsonObject;

    move-result-object v4

    const-string v6, "config"

    invoke-static {v4, v6}, Lads_mobile_sdk/ds1;->b(Lcom/google/gson/JsonObject;Ljava/lang/String;)Lcom/google/gson/JsonObject;

    move-result-object v4

    .line 8179
    iget-object v6, v0, Lads_mobile_sdk/o00;->m:Lads_mobile_sdk/ex0;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8185
    const-string v7, "com.google.ads.mediation.adcolony.AdColonyMediationAdapter"

    const-string v10, "com.jirbo.adcolony.AdColonyAdapter"

    const-string v11, "GADMediationAdapterAdColony"

    const-string v12, "GADMAdapterAdColony"

    filled-new-array {v11, v12, v7, v10}, [Ljava/lang/String;

    move-result-object v7

    .line 8186
    invoke-static {v7}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    .line 8187
    const-string v10, "gads:ad_colony_adapters_name_list_for_cld"

    invoke-static {v10, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8232
    sget-object v8, Lads_mobile_sdk/yr;->g:Lads_mobile_sdk/qr;

    invoke-virtual {v6, v10, v7, v8}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 8233
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_253
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2c3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    const/4 v8, 0x0

    .line 8235
    invoke-static {v4, v7, v8}, Lads_mobile_sdk/ds1;->a(Lcom/google/gson/JsonObject;Ljava/lang/String;Lcom/google/gson/JsonObject;)Lcom/google/gson/JsonObject;

    move-result-object v7

    if-nez v7, :cond_267

    goto :goto_253

    .line 8236
    :cond_267
    const-string v8, "data"

    invoke-static {v7, v8}, Lads_mobile_sdk/ds1;->e(Lcom/google/gson/JsonObject;Ljava/lang/String;)Lcom/google/gson/JsonArray;

    move-result-object v9

    if-nez v9, :cond_270

    goto :goto_253

    .line 8238
    :cond_270
    new-instance v10, Lcom/google/gson/JsonArray;

    invoke-direct {v10}, Lcom/google/gson/JsonArray;-><init>()V

    .line 8239
    invoke-virtual {v9}, Lcom/google/gson/JsonArray;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_279
    :goto_279
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_2bf

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/google/gson/JsonElement;

    .line 8240
    invoke-virtual {v11}, Lcom/google/gson/JsonElement;->isJsonObject()Z

    move-result v12

    if-eqz v12, :cond_279

    .line 8241
    invoke-virtual {v11}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v11

    const/4 v12, 0x0

    .line 8243
    invoke-static {v11, v8, v12}, Lads_mobile_sdk/ds1;->a(Lcom/google/gson/JsonObject;Ljava/lang/String;Lcom/google/gson/JsonObject;)Lcom/google/gson/JsonObject;

    move-result-object v13

    if-nez v13, :cond_297

    goto :goto_279

    .line 8244
    :cond_297
    const-string v12, "zone_id"

    invoke-virtual {v13, v12}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v14

    const-string v15, "zone_ids"

    invoke-static {v13, v15, v14}, Lads_mobile_sdk/ds1;->a(Lcom/google/gson/JsonObject;Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    .line 8245
    invoke-virtual {v13, v15}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v14

    invoke-static {v13, v12, v14}, Lads_mobile_sdk/ds1;->a(Lcom/google/gson/JsonObject;Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    .line 8246
    invoke-virtual {v13, v12}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_279

    invoke-virtual {v13, v15}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_279

    invoke-virtual {v13, v5}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_279

    .line 8247
    invoke-virtual {v10, v11}, Lcom/google/gson/JsonArray;->add(Lcom/google/gson/JsonElement;)V

    goto :goto_279

    .line 8250
    :cond_2bf
    invoke-virtual {v7, v8, v10}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    goto :goto_253

    .line 8251
    :cond_2c3
    const-string v4, "publisher_permissions"

    invoke-static {v1, v4}, Lads_mobile_sdk/ds1;->e(Lcom/google/gson/JsonObject;Ljava/lang/String;)Lcom/google/gson/JsonArray;

    move-result-object v5

    .line 8252
    invoke-virtual {v1, v4}, Lcom/google/gson/JsonObject;->remove(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 8254
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 8255
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    const/4 v7, 0x0

    if-eqz v5, :cond_2e1

    .line 8257
    invoke-virtual {v5}, Lcom/google/gson/JsonArray;->size()I

    move-result v8

    if-lez v8, :cond_2e1

    const/4 v8, 0x1

    goto :goto_2e2

    :cond_2e1
    move v8, v7

    :goto_2e2
    if-nez v5, :cond_2e9

    .line 8259
    new-instance v5, Lcom/google/gson/JsonArray;

    invoke-direct {v5}, Lcom/google/gson/JsonArray;-><init>()V

    :cond_2e9
    invoke-virtual {v5}, Lcom/google/gson/JsonArray;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2ed
    :goto_2ed
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_348

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/gson/JsonElement;

    .line 8260
    invoke-virtual {v9}, Lcom/google/gson/JsonElement;->isJsonObject()Z

    move-result v10

    if-eqz v10, :cond_2ed

    .line 8261
    invoke-virtual {v9}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v9

    if-eqz v8, :cond_315

    .line 8262
    sget-object v8, Lads_mobile_sdk/ds1;->a:Lads_mobile_sdk/ds1;

    const-string v8, "eoid_enabled"

    invoke-virtual {v9, v8}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v8

    invoke-static {v8, v2}, Lads_mobile_sdk/ds1;->a(Lcom/google/gson/JsonElement;Ljava/util/List;)Z

    move-result v8

    if-eqz v8, :cond_315

    const/4 v8, 0x1

    goto :goto_316

    :cond_315
    move v8, v7

    .line 8264
    :goto_316
    const-string v10, "platform"

    invoke-virtual {v9, v10}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v10

    if-eqz v10, :cond_323

    invoke-virtual {v10}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v10

    goto :goto_324

    :cond_323
    const/4 v10, 0x0

    :goto_324
    if-nez v10, :cond_327

    goto :goto_2ed

    .line 8265
    :cond_327
    sget-object v11, Lads_mobile_sdk/ds1;->a:Lads_mobile_sdk/ds1;

    const-string v11, "same_app_key_opt_out"

    invoke-virtual {v9, v11}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v11

    invoke-static {v11, v2}, Lads_mobile_sdk/ds1;->a(Lcom/google/gson/JsonElement;Ljava/util/List;)Z

    move-result v11

    if-eqz v11, :cond_338

    .line 8266
    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8268
    :cond_338
    const-string v11, "same_app_key_p13n_disabled"

    invoke-virtual {v9, v11}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v9

    invoke-static {v9, v2}, Lads_mobile_sdk/ds1;->a(Lcom/google/gson/JsonElement;Ljava/util/List;)Z

    move-result v9

    if-eqz v9, :cond_2ed

    .line 8269
    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2ed

    .line 8273
    :cond_348
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const-string v8, "eoid_opt_in"

    invoke-virtual {v3, v8, v5}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 8274
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_365

    .line 8277
    new-instance v5, Lcom/google/gson/Gson;

    invoke-direct {v5}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v5, v4}, Lcom/google/gson/Gson;->toJsonTree(Ljava/lang/Object;)Lcom/google/gson/JsonElement;

    move-result-object v4

    .line 8278
    const-string v5, "same_app_key_opt_out_platforms"

    invoke-virtual {v3, v5, v4}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    .line 8283
    :cond_365
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_379

    .line 8286
    new-instance v4, Lcom/google/gson/Gson;

    invoke-direct {v4}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v4, v6}, Lcom/google/gson/Gson;->toJsonTree(Ljava/lang/Object;)Lcom/google/gson/JsonElement;

    move-result-object v4

    .line 8287
    const-string v5, "same_app_key_p13n_disabled_platforms"

    invoke-virtual {v3, v5, v4}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    .line 8289
    :cond_379
    const-string v4, "platform_settings"

    const/4 v8, 0x0

    invoke-static {v1, v4, v8}, Lads_mobile_sdk/ds1;->a(Lcom/google/gson/JsonObject;Ljava/lang/String;Lcom/google/gson/JsonObject;)Lcom/google/gson/JsonObject;

    move-result-object v5

    .line 8290
    invoke-virtual {v1, v4}, Lcom/google/gson/JsonObject;->remove(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 8292
    const-string v4, "gmp_app_id"

    if-eqz v5, :cond_394

    .line 8293
    const-string v6, "ga_settings"

    .line 8294
    invoke-static {v5, v6, v8}, Lads_mobile_sdk/ds1;->a(Lcom/google/gson/JsonObject;Ljava/lang/String;Lcom/google/gson/JsonObject;)Lcom/google/gson/JsonObject;

    move-result-object v5

    if-eqz v5, :cond_394

    .line 8295
    invoke-virtual {v5, v4}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v5

    goto :goto_395

    :cond_394
    move-object v5, v8

    .line 8296
    :goto_395
    invoke-static {v3, v4, v5}, Lads_mobile_sdk/ds1;->a(Lcom/google/gson/JsonObject;Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    .line 8297
    const-string v3, "odf_settings"

    invoke-virtual {v1, v3}, Lcom/google/gson/JsonObject;->remove(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 8298
    const-string v3, "signal_adapters"

    invoke-static {v1, v3}, Lads_mobile_sdk/ds1;->e(Lcom/google/gson/JsonObject;Ljava/lang/String;)Lcom/google/gson/JsonArray;

    move-result-object v4

    const-string v5, "keep_for_rendering"

    if-eqz v4, :cond_3ad

    .line 8299
    invoke-virtual {v4}, Lcom/google/gson/JsonArray;->size()I

    move-result v6

    if-nez v6, :cond_468

    .line 8300
    :cond_3ad
    const-string v6, "adapter_settings"

    invoke-static {v1, v6}, Lads_mobile_sdk/ds1;->e(Lcom/google/gson/JsonObject;Ljava/lang/String;)Lcom/google/gson/JsonArray;

    move-result-object v6

    if-eqz v6, :cond_468

    .line 8301
    invoke-virtual {v6}, Lcom/google/gson/JsonArray;->size()I

    move-result v8

    if-lez v8, :cond_468

    .line 8302
    new-instance v4, Lcom/google/gson/JsonArray;

    invoke-direct {v4}, Lcom/google/gson/JsonArray;-><init>()V

    .line 8303
    invoke-virtual {v6}, Lcom/google/gson/JsonArray;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_3c4
    :goto_3c4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_465

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/gson/JsonElement;

    .line 8304
    invoke-virtual {v8}, Lcom/google/gson/JsonElement;->isJsonObject()Z

    move-result v9

    if-eqz v9, :cond_3c4

    .line 8305
    invoke-virtual {v8}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v8

    .line 8306
    new-instance v9, Lcom/google/gson/JsonObject;

    invoke-direct {v9}, Lcom/google/gson/JsonObject;-><init>()V

    .line 8307
    sget-object v10, Lads_mobile_sdk/ds1;->a:Lads_mobile_sdk/ds1;

    const-string v10, "adapter_class_name"

    invoke-virtual {v8, v10}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v11

    invoke-static {v9, v10, v11}, Lads_mobile_sdk/ds1;->a(Lcom/google/gson/JsonObject;Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    .line 8308
    const-string v10, "permission_set"

    invoke-static {v8, v10}, Lads_mobile_sdk/ds1;->e(Lcom/google/gson/JsonObject;Ljava/lang/String;)Lcom/google/gson/JsonArray;

    move-result-object v8

    if-eqz v8, :cond_45f

    .line 8312
    invoke-virtual {v8}, Lcom/google/gson/JsonArray;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_3f6
    :goto_3f6
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_41e

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/google/gson/JsonElement;

    .line 8313
    invoke-virtual {v11}, Lcom/google/gson/JsonElement;->isJsonObject()Z

    move-result v12

    if-eqz v12, :cond_3f6

    .line 8314
    invoke-virtual {v11}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v11

    const-string v12, "collect_secure_signals"

    invoke-virtual {v11, v12}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v11

    if-eqz v11, :cond_41c

    invoke-virtual {v11}, Lcom/google/gson/JsonElement;->getAsBoolean()Z

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_41c

    goto :goto_3f6

    :cond_41c
    move v12, v7

    goto :goto_41f

    :cond_41e
    const/4 v12, 0x1

    .line 8315
    :goto_41f
    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    .line 8316
    const-string v11, "collect_signals"

    invoke-virtual {v9, v11, v10}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 8323
    invoke-virtual {v8}, Lcom/google/gson/JsonArray;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_42c
    :goto_42c
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_455

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/gson/JsonElement;

    .line 8324
    invoke-virtual {v10}, Lcom/google/gson/JsonElement;->isJsonObject()Z

    move-result v11

    if-eqz v11, :cond_42c

    .line 8325
    invoke-virtual {v10}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v10

    const-string v11, "enable_rendering"

    invoke-virtual {v10, v11}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v10

    if-eqz v10, :cond_452

    invoke-virtual {v10}, Lcom/google/gson/JsonElement;->getAsBoolean()Z

    move-result v10

    const/4 v12, 0x1

    if-ne v10, v12, :cond_453

    goto :goto_42c

    :cond_452
    const/4 v12, 0x1

    :cond_453
    move v8, v7

    goto :goto_457

    :cond_455
    const/4 v12, 0x1

    move v8, v12

    .line 8326
    :goto_457
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    .line 8327
    invoke-virtual {v9, v5, v8}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Boolean;)V

    goto :goto_460

    :cond_45f
    const/4 v12, 0x1

    .line 8332
    :goto_460
    invoke-virtual {v4, v9}, Lcom/google/gson/JsonArray;->add(Lcom/google/gson/JsonElement;)V

    goto/16 :goto_3c4

    .line 8333
    :cond_465
    invoke-virtual {v1, v3, v4}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    :cond_468
    if-eqz v4, :cond_4a3

    .line 8336
    invoke-virtual {v4}, Lcom/google/gson/JsonArray;->size()I

    move-result v6

    if-nez v6, :cond_471

    goto :goto_4a3

    .line 8338
    :cond_471
    new-instance v6, Lcom/google/gson/JsonArray;

    invoke-direct {v6}, Lcom/google/gson/JsonArray;-><init>()V

    .line 8339
    invoke-virtual {v4}, Lcom/google/gson/JsonArray;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_47a
    :goto_47a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4a0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/gson/JsonElement;

    .line 8340
    invoke-virtual {v7}, Lcom/google/gson/JsonElement;->isJsonObject()Z

    move-result v8

    if-eqz v8, :cond_47a

    .line 8341
    invoke-virtual {v7}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v7

    .line 8342
    sget-object v8, Lads_mobile_sdk/ds1;->a:Lads_mobile_sdk/ds1;

    invoke-virtual {v7, v5}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v8

    invoke-static {v8, v2}, Lads_mobile_sdk/ds1;->a(Lcom/google/gson/JsonElement;Ljava/util/List;)Z

    move-result v8

    if-nez v8, :cond_47a

    .line 8343
    invoke-virtual {v6, v7}, Lcom/google/gson/JsonArray;->add(Lcom/google/gson/JsonElement;)V

    goto :goto_47a

    .line 8346
    :cond_4a0
    invoke-virtual {v1, v3, v6}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    .line 8347
    :cond_4a3
    :goto_4a3
    new-instance v2, Lcom/google/gson/JsonObject;

    invoke-direct {v2}, Lcom/google/gson/JsonObject;-><init>()V

    .line 8348
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v4, "isSuccessful"

    invoke-virtual {v2, v4, v3}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 8349
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "appSettingsJson"

    invoke-virtual {v2, v3, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 8350
    const-string v1, "errorReason"

    const-string v3, ""

    invoke-virtual {v2, v1, v3}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 8351
    new-instance v1, Lads_mobile_sdk/q01;

    invoke-direct {v1, v2}, Lads_mobile_sdk/q01;-><init>(Ljava/lang/Object;)V

    return-object v1

    .line 8352
    :cond_4c5
    new-instance v3, Lads_mobile_sdk/m01;

    invoke-virtual {v1, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Response status not OK - "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Lads_mobile_sdk/m01;-><init>(Ljava/lang/String;)V

    return-object v3
.end method

.method public final a(Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 3

    .line 5966
    invoke-static {p0, p1, p2}, Lads_mobile_sdk/o00;->a(Lads_mobile_sdk/o00;Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/google/android/libraries/ads/mobile/sdk/internal/initialization/ConfigLoaderRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 11

    .line 3230
    instance-of v0, p2, Lads_mobile_sdk/vz;

    if-eqz v0, :cond_13

    move-object v0, p2

    check-cast v0, Lads_mobile_sdk/vz;

    iget v1, v0, Lads_mobile_sdk/vz;->f:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/vz;->f:I

    goto :goto_18

    :cond_13
    new-instance v0, Lads_mobile_sdk/vz;

    invoke-direct {v0, p0, p2}, Lads_mobile_sdk/vz;-><init>(Lads_mobile_sdk/o00;Lkotlin/coroutines/Continuation;)V

    :goto_18
    iget-object p2, v0, Lads_mobile_sdk/vz;->d:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 3441
    iget v2, v0, Lads_mobile_sdk/vz;->f:I

    const/4 v3, 0x1

    if-eqz v2, :cond_38

    if-ne v2, v3, :cond_30

    iget-object p1, v0, Lads_mobile_sdk/vz;->c:Lads_mobile_sdk/e81;

    iget-object v1, v0, Lads_mobile_sdk/vz;->b:Lcom/google/android/libraries/ads/mobile/sdk/internal/initialization/ConfigLoaderRequest;

    iget-object v0, v0, Lads_mobile_sdk/vz;->a:Lads_mobile_sdk/o00;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_a6

    :cond_30
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_38
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 3443
    iget-object p2, p0, Lads_mobile_sdk/o00;->q:Lads_mobile_sdk/o21;

    invoke-virtual {p2}, Lads_mobile_sdk/o21;->d()Z

    move-result p2

    if-eqz p2, :cond_46

    .line 3444
    const-string p2, "https://mediation.goog"

    goto :goto_48

    .line 3446
    :cond_46
    const-string p2, "https://googleads.g.doubleclick.net"

    .line 3450
    :goto_48
    new-instance v2, Lads_mobile_sdk/e81;

    invoke-direct {v2}, Lads_mobile_sdk/e81;-><init>()V

    .line 3451
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "/getconfig/pubsetting"

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Lads_mobile_sdk/e81;->b(Ljava/lang/String;)Lads_mobile_sdk/e81;

    move-result-object p2

    .line 3452
    iget-object v2, p1, Lcom/google/android/libraries/ads/mobile/sdk/internal/initialization/ConfigLoaderRequest;->packageName:Ljava/lang/String;

    const-string v4, "app_name"

    invoke-virtual {p2, v4, v2}, Lads_mobile_sdk/e81;->b(Ljava/lang/String;Ljava/lang/String;)Lads_mobile_sdk/e81;

    move-result-object p2

    .line 3453
    iget-object v2, p1, Lcom/google/android/libraries/ads/mobile/sdk/internal/initialization/ConfigLoaderRequest;->experimentIds:Ljava/lang/String;

    const-string v4, "eid"

    invoke-virtual {p2, v4, v2}, Lads_mobile_sdk/e81;->b(Ljava/lang/String;Ljava/lang/String;)Lads_mobile_sdk/e81;

    move-result-object p2

    .line 3454
    iget-object v2, p1, Lcom/google/android/libraries/ads/mobile/sdk/internal/initialization/ConfigLoaderRequest;->afmaVersion:Ljava/lang/String;

    const-string v4, "js"

    invoke-virtual {p2, v4, v2}, Lads_mobile_sdk/e81;->b(Ljava/lang/String;Ljava/lang/String;)Lads_mobile_sdk/e81;

    move-result-object p2

    .line 3455
    iget-object v2, p1, Lcom/google/android/libraries/ads/mobile/sdk/internal/initialization/ConfigLoaderRequest;->versionCode:Ljava/lang/Integer;

    if-eqz v2, :cond_8b

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string v4, "vnm"

    invoke-virtual {p2, v4, v2}, Lads_mobile_sdk/e81;->b(Ljava/lang/String;Ljava/lang/String;)Lads_mobile_sdk/e81;

    .line 3457
    :cond_8b
    iget-object v2, p0, Lads_mobile_sdk/o00;->r:Lads_mobile_sdk/ks1;

    invoke-interface {v2}, Lads_mobile_sdk/ks1;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lads_mobile_sdk/if1;

    iput-object p0, v0, Lads_mobile_sdk/vz;->a:Lads_mobile_sdk/o00;

    iput-object p1, v0, Lads_mobile_sdk/vz;->b:Lcom/google/android/libraries/ads/mobile/sdk/internal/initialization/ConfigLoaderRequest;

    iput-object p2, v0, Lads_mobile_sdk/vz;->c:Lads_mobile_sdk/e81;

    iput v3, v0, Lads_mobile_sdk/vz;->f:I

    invoke-virtual {v2, v0}, Lads_mobile_sdk/if1;->v(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_a2

    return-object v1

    :cond_a2
    move-object v1, p1

    move-object p1, p2

    move-object p2, v0

    move-object v0, p0

    .line 3458
    :goto_a6
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_b5

    .line 3459
    const-string p2, "aie"

    const-string v2, "1"

    invoke-virtual {p1, p2, v2}, Lads_mobile_sdk/e81;->b(Ljava/lang/String;Ljava/lang/String;)Lads_mobile_sdk/e81;

    .line 3462
    :cond_b5
    iget-object p2, v1, Lcom/google/android/libraries/ads/mobile/sdk/internal/initialization/ConfigLoaderRequest;->appId:Ljava/lang/String;

    .line 3463
    iget-object v1, v1, Lcom/google/android/libraries/ads/mobile/sdk/internal/initialization/ConfigLoaderRequest;->adUnitId:Ljava/lang/String;

    .line 3465
    new-instance v2, Lkotlin/text/Regex;

    iget-object v4, v0, Lads_mobile_sdk/o00;->m:Lads_mobile_sdk/ex0;

    invoke-virtual {v4}, Lads_mobile_sdk/ex0;->e()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    .line 3466
    invoke-static {v2, p2, v4, v5, v6}, Lkotlin/text/Regex;->find$default(Lkotlin/text/Regex;Ljava/lang/CharSequence;IILjava/lang/Object;)Lkotlin/text/MatchResult;

    move-result-object v2

    if-eqz v2, :cond_108

    .line 3467
    invoke-interface {v2}, Lkotlin/text/MatchResult;->getGroupValues()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-le v7, v5, :cond_108

    .line 3468
    sget-object p2, Lads_mobile_sdk/dt;->z3:Lads_mobile_sdk/dt;

    invoke-virtual {p2}, Lads_mobile_sdk/dt;->e()Ljava/lang/String;

    move-result-object p2

    const-string v0, "getFirstUrlKey(...)"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v2}, Lkotlin/text/MatchResult;->getGroupValues()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, p2, v0}, Lads_mobile_sdk/e81;->b(Ljava/lang/String;Ljava/lang/String;)Lads_mobile_sdk/e81;

    .line 3469
    invoke-interface {v2}, Lkotlin/text/MatchResult;->getGroupValues()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    const-string v0, "admob_appcc"

    invoke-virtual {p1, v0, p2}, Lads_mobile_sdk/e81;->b(Ljava/lang/String;Ljava/lang/String;)Lads_mobile_sdk/e81;

    .line 3470
    new-instance p2, Lads_mobile_sdk/q01;

    invoke-virtual {p1}, Lads_mobile_sdk/e81;->a()Lads_mobile_sdk/f81;

    move-result-object p1

    invoke-direct {p2, p1}, Lads_mobile_sdk/q01;-><init>(Ljava/lang/Object;)V

    return-object p2

    .line 3473
    :cond_108
    new-instance v2, Lkotlin/text/Regex;

    iget-object v7, v0, Lads_mobile_sdk/o00;->m:Lads_mobile_sdk/ex0;

    invoke-virtual {v7}, Lads_mobile_sdk/ex0;->c()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v2, v7}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    .line 3474
    invoke-static {v2, p2, v4, v5, v6}, Lkotlin/text/Regex;->find$default(Lkotlin/text/Regex;Ljava/lang/CharSequence;IILjava/lang/Object;)Lkotlin/text/MatchResult;

    move-result-object p2

    if-eqz p2, :cond_14b

    .line 3475
    invoke-interface {p2}, Lkotlin/text/MatchResult;->getGroupValues()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-le v2, v5, :cond_14b

    .line 3476
    invoke-interface {p2}, Lkotlin/text/MatchResult;->getGroupValues()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "iu"

    invoke-virtual {p1, v1, v0}, Lads_mobile_sdk/e81;->b(Ljava/lang/String;Ljava/lang/String;)Lads_mobile_sdk/e81;

    .line 3477
    invoke-interface {p2}, Lkotlin/text/MatchResult;->getGroupValues()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    const-string v0, "msid"

    invoke-virtual {p1, v0, p2}, Lads_mobile_sdk/e81;->b(Ljava/lang/String;Ljava/lang/String;)Lads_mobile_sdk/e81;

    .line 3478
    new-instance p2, Lads_mobile_sdk/q01;

    invoke-virtual {p1}, Lads_mobile_sdk/e81;->a()Lads_mobile_sdk/f81;

    move-result-object p1

    invoke-direct {p2, p1}, Lads_mobile_sdk/q01;-><init>(Ljava/lang/Object;)V

    return-object p2

    :cond_14b
    if-eqz v1, :cond_19a

    .line 3482
    new-instance p2, Lkotlin/text/Regex;

    iget-object v0, v0, Lads_mobile_sdk/o00;->m:Lads_mobile_sdk/ex0;

    invoke-virtual {v0}, Lads_mobile_sdk/ex0;->d()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    .line 3483
    invoke-static {p2, v1, v4, v5, v6}, Lkotlin/text/Regex;->find$default(Lkotlin/text/Regex;Ljava/lang/CharSequence;IILjava/lang/Object;)Lkotlin/text/MatchResult;

    move-result-object p2

    if-eqz p2, :cond_190

    .line 3484
    invoke-interface {p2}, Lkotlin/text/MatchResult;->getGroupValues()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v5, :cond_190

    .line 3485
    invoke-interface {p2}, Lkotlin/text/MatchResult;->getGroupValues()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "client"

    invoke-virtual {p1, v1, v0}, Lads_mobile_sdk/e81;->b(Ljava/lang/String;Ljava/lang/String;)Lads_mobile_sdk/e81;

    .line 3486
    invoke-interface {p2}, Lkotlin/text/MatchResult;->getGroupValues()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    const-string v0, "slotname"

    invoke-virtual {p1, v0, p2}, Lads_mobile_sdk/e81;->b(Ljava/lang/String;Ljava/lang/String;)Lads_mobile_sdk/e81;

    .line 3487
    new-instance p2, Lads_mobile_sdk/q01;

    invoke-virtual {p1}, Lads_mobile_sdk/e81;->a()Lads_mobile_sdk/f81;

    move-result-object p1

    invoke-direct {p2, p1}, Lads_mobile_sdk/q01;-><init>(Ljava/lang/Object;)V

    return-object p2

    .line 3489
    :cond_190
    new-instance p1, Lads_mobile_sdk/m01;

    sget-object p2, Lads_mobile_sdk/kk1;->b:Lads_mobile_sdk/kk1;

    const-string v0, "No ad unit id match found."

    invoke-direct {p1, v0, p2}, Lads_mobile_sdk/m01;-><init>(Ljava/lang/String;Lads_mobile_sdk/kk1;)V

    return-object p1

    .line 3492
    :cond_19a
    new-instance p1, Lads_mobile_sdk/m01;

    sget-object p2, Lads_mobile_sdk/kk1;->b:Lads_mobile_sdk/kk1;

    const-string v0, "No client id found."

    invoke-direct {p1, v0, p2}, Lads_mobile_sdk/m01;-><init>(Ljava/lang/String;Lads_mobile_sdk/kk1;)V

    return-object p1
.end method

.method public final a(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 22

    move-object/from16 v1, p0

    move-object/from16 v0, p2

    .line 4235
    instance-of v2, v0, Lads_mobile_sdk/wz;

    if-eqz v2, :cond_17

    move-object v2, v0

    check-cast v2, Lads_mobile_sdk/wz;

    iget v3, v2, Lads_mobile_sdk/wz;->f:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_17

    sub-int/2addr v3, v4

    iput v3, v2, Lads_mobile_sdk/wz;->f:I

    goto :goto_1c

    :cond_17
    new-instance v2, Lads_mobile_sdk/wz;

    invoke-direct {v2, v1, v0}, Lads_mobile_sdk/wz;-><init>(Lads_mobile_sdk/o00;Lkotlin/coroutines/Continuation;)V

    :goto_1c
    iget-object v0, v2, Lads_mobile_sdk/wz;->d:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v3

    .line 4832
    iget v4, v2, Lads_mobile_sdk/wz;->f:I

    const/4 v5, 0x0

    const-string v6, "block"

    const-string v7, "context"

    const-string v8, "<this>"

    const/4 v9, 0x3

    const/4 v10, 0x2

    const/4 v11, 0x1

    const/4 v12, 0x0

    if-eqz v4, :cond_60

    if-eq v4, v11, :cond_56

    if-eq v4, v10, :cond_49

    if-ne v4, v9, :cond_41

    iget-object v2, v2, Lads_mobile_sdk/wz;->a:Lads_mobile_sdk/o00;

    :try_start_39
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_3c} :catch_3e

    goto/16 :goto_c0

    :catch_3e
    move-exception v0

    goto/16 :goto_f0

    :cond_41
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4833
    :cond_49
    iget-object v4, v2, Lads_mobile_sdk/wz;->c:Lkotlinx/coroutines/sync/Mutex;

    iget-object v10, v2, Lads_mobile_sdk/wz;->b:Lcom/google/gson/JsonObject;

    iget-object v13, v2, Lads_mobile_sdk/wz;->a:Lads_mobile_sdk/o00;

    :try_start_4f
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_52
    .catch Ljava/lang/Exception; {:try_start_4f .. :try_end_52} :catch_53

    goto :goto_8a

    :catch_53
    move-exception v0

    goto/16 :goto_f1

    .line 4834
    :cond_56
    iget-object v4, v2, Lads_mobile_sdk/wz;->a:Lads_mobile_sdk/o00;

    :try_start_58
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_5b
    .catch Ljava/lang/Exception; {:try_start_58 .. :try_end_5b} :catch_5c

    goto :goto_71

    :catch_5c
    move-exception v0

    move-object v2, v4

    goto/16 :goto_f0

    .line 4835
    :cond_60
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 4837
    :try_start_63
    iput-object v1, v2, Lads_mobile_sdk/wz;->a:Lads_mobile_sdk/o00;

    iput v11, v2, Lads_mobile_sdk/wz;->f:I

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_6d
    .catch Ljava/lang/Exception; {:try_start_63 .. :try_end_6d} :catch_ee

    if-ne v0, v3, :cond_70

    goto :goto_be

    :cond_70
    move-object v4, v1

    .line 4838
    :goto_71
    :try_start_71
    check-cast v0, Lcom/google/gson/JsonObject;

    if-eqz v0, :cond_10d

    .line 4842
    iget-object v13, v4, Lads_mobile_sdk/o00;->s:Lkotlinx/coroutines/sync/Mutex;

    .line 5035
    iput-object v4, v2, Lads_mobile_sdk/wz;->a:Lads_mobile_sdk/o00;

    iput-object v0, v2, Lads_mobile_sdk/wz;->b:Lcom/google/gson/JsonObject;

    iput-object v13, v2, Lads_mobile_sdk/wz;->c:Lkotlinx/coroutines/sync/Mutex;

    iput v10, v2, Lads_mobile_sdk/wz;->f:I

    invoke-interface {v13, v12, v2}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v10
    :try_end_83
    .catch Ljava/lang/Exception; {:try_start_71 .. :try_end_83} :catch_5c

    if-ne v10, v3, :cond_86

    goto :goto_be

    :cond_86
    move-object v10, v13

    move-object v13, v4

    move-object v4, v10

    move-object v10, v0

    .line 5036
    :goto_8a
    :try_start_8a
    sget-object v0, Lkotlin/time/Duration;->Companion:Lkotlin/time/Duration$Companion;

    iget-object v0, v13, Lads_mobile_sdk/o00;->l:Lads_mobile_sdk/tx;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5037
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v14

    .line 5038
    sget-object v0, Lkotlin/time/DurationUnit;->MILLISECONDS:Lkotlin/time/DurationUnit;

    invoke-static {v14, v15, v0}, Lkotlin/time/DurationKt;->toDuration(JLkotlin/time/DurationUnit;)J

    move-result-wide v14

    iput-wide v14, v13, Lads_mobile_sdk/o00;->v:J

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_9f
    .catchall {:try_start_8a .. :try_end_9f} :catchall_e9

    .line 5235
    :try_start_9f
    invoke-interface {v4, v12}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    .line 5236
    iget-object v0, v13, Lads_mobile_sdk/o00;->i:Lads_mobile_sdk/pn;

    iget-object v4, v13, Lads_mobile_sdk/o00;->l:Lads_mobile_sdk/tx;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5237
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    .line 5238
    iput-object v13, v2, Lads_mobile_sdk/wz;->a:Lads_mobile_sdk/o00;

    iput-object v12, v2, Lads_mobile_sdk/wz;->b:Lcom/google/gson/JsonObject;

    iput-object v12, v2, Lads_mobile_sdk/wz;->c:Lkotlinx/coroutines/sync/Mutex;

    iput v9, v2, Lads_mobile_sdk/wz;->f:I

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5239
    invoke-static {v0, v10, v14, v15, v2}, Lads_mobile_sdk/pn;->a(Lads_mobile_sdk/pn;Lcom/google/gson/JsonObject;JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0
    :try_end_bc
    .catch Ljava/lang/Exception; {:try_start_9f .. :try_end_bc} :catch_e6

    if-ne v0, v3, :cond_bf

    :goto_be
    return-object v3

    :cond_bf
    move-object v2, v13

    .line 5240
    :goto_c0
    :try_start_c0
    iget-object v13, v2, Lads_mobile_sdk/o00;->d:Lkotlinx/coroutines/CoroutineScope;

    new-instance v0, Lads_mobile_sdk/xz;

    invoke-direct {v0, v2, v12}, Lads_mobile_sdk/xz;-><init>(Lads_mobile_sdk/o00;Lkotlin/coroutines/Continuation;)V

    .line 5241
    sget-object v14, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    .line 5242
    invoke-static {v13, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v14, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5500
    new-instance v3, Lads_mobile_sdk/ws3;

    invoke-direct {v3, v0, v12}, Lads_mobile_sdk/ws3;-><init>(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)V

    const/16 v17, 0x2

    const/16 v18, 0x0

    const/4 v15, 0x0

    move-object/from16 v16, v3

    invoke-static/range {v13 .. v18}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 5501
    invoke-static {v11}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v0
    :try_end_e5
    .catch Ljava/lang/Exception; {:try_start_c0 .. :try_end_e5} :catch_3e

    return-object v0

    :catch_e6
    move-exception v0

    move-object v2, v13

    goto :goto_f0

    :catchall_e9
    move-exception v0

    .line 5694
    :try_start_ea
    invoke-interface {v4, v12}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw v0
    :try_end_ee
    .catch Ljava/lang/Exception; {:try_start_ea .. :try_end_ee} :catch_e6

    :catch_ee
    move-exception v0

    move-object v2, v1

    :goto_f0
    move-object v13, v2

    .line 5695
    :goto_f1
    const-string v2, "exception"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5696
    invoke-static {}, Lads_mobile_sdk/hs3;->a()Lads_mobile_sdk/rr3;

    move-result-object v2

    .line 5699
    invoke-virtual {v2}, Lads_mobile_sdk/rr3;->e()Lads_mobile_sdk/uj2;

    move-result-object v3

    iput-boolean v5, v3, Lads_mobile_sdk/uj2;->m:Z

    .line 5700
    invoke-virtual {v2, v0}, Lads_mobile_sdk/rr3;->a(Ljava/lang/Throwable;)V

    .line 5701
    iget-object v2, v13, Lads_mobile_sdk/o00;->k:Lads_mobile_sdk/ur3;

    check-cast v2, Lads_mobile_sdk/as3;

    const-string v3, "ConfigLoader.executeCldFetch"

    invoke-virtual {v2, v3, v0}, Lads_mobile_sdk/as3;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v4, v13

    .line 5704
    :cond_10d
    iget-object v13, v4, Lads_mobile_sdk/o00;->d:Lkotlinx/coroutines/CoroutineScope;

    new-instance v0, Lads_mobile_sdk/yz;

    invoke-direct {v0, v4, v12}, Lads_mobile_sdk/yz;-><init>(Lads_mobile_sdk/o00;Lkotlin/coroutines/Continuation;)V

    .line 5705
    sget-object v14, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    .line 5706
    invoke-static {v13, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v14, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5964
    new-instance v2, Lads_mobile_sdk/ws3;

    invoke-direct {v2, v0, v12}, Lads_mobile_sdk/ws3;-><init>(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)V

    const/16 v17, 0x2

    const/16 v18, 0x0

    const/4 v15, 0x0

    move-object/from16 v16, v2

    invoke-static/range {v13 .. v18}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 5965
    invoke-static {v5}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/String;)Ljava/lang/String;
    .registers 11

    .line 4227
    iget-object v0, p0, Lads_mobile_sdk/o00;->m:Lads_mobile_sdk/ex0;

    invoke-virtual {v0}, Lads_mobile_sdk/ex0;->o()Ljava/lang/String;

    move-result-object v0

    .line 4228
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 4229
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_11
    const-string v5, "toString(...)"

    if-ge v4, v2, :cond_4e

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/4 v7, 0x2

    const/4 v8, 0x0

    .line 4230
    invoke-static {v0, v6, v3, v7, v8}, Lkotlin/text/StringsKt__StringsKt;->contains$default(Ljava/lang/CharSequence;CZILjava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_48

    const/16 v7, 0x10

    .line 4231
    invoke-static {v7}, Lkotlin/text/CharsKt__CharJVMKt;->checkRadix(I)I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\\x{"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "}"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4b

    .line 4233
    :cond_48
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_4b
    add-int/lit8 v4, v4, 0x1

    goto :goto_11

    .line 4234
    :cond_4e
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final a(Ljava/lang/String;Z)Ljava/lang/String;
    .registers 11

    .line 8353
    const-string v0, "adUnitId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9056
    invoke-virtual {p0, p1}, Lads_mobile_sdk/o00;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 9059
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "^"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/?$"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 9063
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/(//)*[^/]"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    if-eqz p2, :cond_8b

    .line 9068
    new-instance p2, Lkotlin/text/Regex;

    const-string v1, "\\d+"

    invoke-direct {p2, v1}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    .line 9069
    invoke-static {p2, v0, v1, v2, v3}, Lkotlin/text/Regex;->find$default(Lkotlin/text/Regex;Ljava/lang/CharSequence;IILjava/lang/Object;)Lkotlin/text/MatchResult;

    move-result-object v4

    const-string v5, "(,\\d+)?"

    if-eqz v4, :cond_66

    .line 9071
    invoke-interface {v4}, Lkotlin/text/MatchResult;->getRange()Lkotlin/ranges/IntRange;

    move-result-object v6

    invoke-interface {v4}, Lkotlin/text/MatchResult;->getValue()Ljava/lang/String;

    move-result-object v4

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v6, v4}, Lkotlin/text/StringsKt__StringsKt;->replaceRange(Ljava/lang/CharSequence;Lkotlin/ranges/IntRange;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 9073
    :cond_66
    invoke-static {p2, p1, v1, v2, v3}, Lkotlin/text/Regex;->find$default(Lkotlin/text/Regex;Ljava/lang/CharSequence;IILjava/lang/Object;)Lkotlin/text/MatchResult;

    move-result-object p2

    if-eqz p2, :cond_8b

    .line 9075
    invoke-interface {p2}, Lkotlin/text/MatchResult;->getRange()Lkotlin/ranges/IntRange;

    move-result-object v1

    invoke-interface {p2}, Lkotlin/text/MatchResult;->getValue()Ljava/lang/String;

    move-result-object p2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, v1, p2}, Lkotlin/text/StringsKt__StringsKt;->replaceRange(Ljava/lang/CharSequence;Lkotlin/ranges/IntRange;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 9078
    :cond_8b
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "|"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final b(Lcom/google/android/libraries/ads/mobile/sdk/internal/initialization/ConfigLoaderRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 13

    .line 941
    const-string v0, "Failed to parse CLD response."

    instance-of v1, p2, Lads_mobile_sdk/f00;

    if-eqz v1, :cond_16

    move-object v1, p2

    check-cast v1, Lads_mobile_sdk/f00;

    iget v2, v1, Lads_mobile_sdk/f00;->e:I

    const/high16 v3, -0x80000000

    and-int v4, v2, v3

    if-eqz v4, :cond_16

    sub-int/2addr v2, v3

    iput v2, v1, Lads_mobile_sdk/f00;->e:I

    :goto_14
    move-object v6, v1

    goto :goto_1c

    :cond_16
    new-instance v1, Lads_mobile_sdk/f00;

    invoke-direct {v1, p0, p2}, Lads_mobile_sdk/f00;-><init>(Lads_mobile_sdk/o00;Lkotlin/coroutines/Continuation;)V

    goto :goto_14

    :goto_1c
    iget-object p2, v6, Lads_mobile_sdk/f00;->c:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 1236
    iget v2, v6, Lads_mobile_sdk/f00;->e:I

    const-string v8, "null cannot be cast to non-null type com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Success<T of com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Companion.returnIfError>"

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_48

    if-eq v2, v4, :cond_3c

    if-ne v2, v3, :cond_34

    iget-object p1, v6, Lads_mobile_sdk/f00;->a:Lads_mobile_sdk/o00;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_82

    :cond_34
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3c
    iget-object p1, v6, Lads_mobile_sdk/f00;->b:Lcom/google/android/libraries/ads/mobile/sdk/internal/initialization/ConfigLoaderRequest;

    iget-object v2, v6, Lads_mobile_sdk/f00;->a:Lads_mobile_sdk/o00;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v9, p2

    move-object p2, p1

    move-object p1, v2

    move-object v2, v9

    goto :goto_5b

    :cond_48
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1238
    iput-object p0, v6, Lads_mobile_sdk/f00;->a:Lads_mobile_sdk/o00;

    iput-object p1, v6, Lads_mobile_sdk/f00;->b:Lcom/google/android/libraries/ads/mobile/sdk/internal/initialization/ConfigLoaderRequest;

    iput v4, v6, Lads_mobile_sdk/f00;->e:I

    invoke-virtual {p0, p1, v6}, Lads_mobile_sdk/o00;->a(Lcom/google/android/libraries/ads/mobile/sdk/internal/initialization/ConfigLoaderRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_58

    goto :goto_81

    :cond_58
    move-object v2, p2

    move-object p2, p1

    move-object p1, p0

    .line 1239
    :goto_5b
    check-cast v2, Lads_mobile_sdk/v01;

    .line 1718
    instance-of v4, v2, Lads_mobile_sdk/i01;

    if-eqz v4, :cond_64

    check-cast v2, Lads_mobile_sdk/i01;

    return-object v2

    .line 1719
    :cond_64
    invoke-static {v2, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Lads_mobile_sdk/q01;

    .line 1720
    iget-object v2, v2, Lads_mobile_sdk/q01;->b:Ljava/lang/Object;

    .line 1721
    check-cast v2, Lads_mobile_sdk/f81;

    move v4, v3

    move-object v3, v2

    .line 1726
    iget-object v2, p1, Lads_mobile_sdk/o00;->p:Lads_mobile_sdk/e01;

    iput-object p1, v6, Lads_mobile_sdk/f00;->a:Lads_mobile_sdk/o00;

    iput-object p2, v6, Lads_mobile_sdk/f00;->b:Lcom/google/android/libraries/ads/mobile/sdk/internal/initialization/ConfigLoaderRequest;

    iput v4, v6, Lads_mobile_sdk/f00;->e:I

    const/4 v5, 0x0

    const/16 v7, 0x1e

    const/4 v4, 0x0

    invoke-static/range {v2 .. v7}, Lads_mobile_sdk/e01;->a(Lads_mobile_sdk/e01;Lads_mobile_sdk/f81;Lkotlin/time/Duration;ZLkotlin/coroutines/Continuation;I)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_82

    :goto_81
    return-object v1

    .line 1727
    :cond_82
    :goto_82
    check-cast p2, Lads_mobile_sdk/v01;

    .line 2208
    instance-of v1, p2, Lads_mobile_sdk/i01;

    if-eqz v1, :cond_8b

    check-cast p2, Lads_mobile_sdk/i01;

    return-object p2

    .line 2209
    :cond_8b
    invoke-static {p2, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Lads_mobile_sdk/q01;

    .line 2210
    iget-object p2, p2, Lads_mobile_sdk/q01;->b:Ljava/lang/Object;

    .line 2211
    check-cast p2, Lads_mobile_sdk/h81;

    .line 2212
    iget-object p2, p2, Lads_mobile_sdk/h81;->d:Lads_mobile_sdk/p53;

    if-eqz p2, :cond_9d

    .line 2213
    invoke-static {p2}, Lads_mobile_sdk/p53;->a(Lads_mobile_sdk/p53;)Ljava/lang/String;

    move-result-object p2

    goto :goto_9f

    :cond_9d
    const-string p2, ""

    .line 2215
    :goto_9f
    :try_start_9f
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    const-class v2, Lcom/google/gson/JsonObject;

    invoke-virtual {v1, p2, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/gson/JsonObject;

    if-nez p2, :cond_b6

    .line 2217
    new-instance p1, Lads_mobile_sdk/m01;

    .line 2218
    sget-object p2, Lads_mobile_sdk/kk1;->a:Lads_mobile_sdk/kk1;

    .line 2219
    invoke-direct {p1, v0, p2}, Lads_mobile_sdk/m01;-><init>(Ljava/lang/String;Lads_mobile_sdk/kk1;)V

    return-object p1

    .line 2220
    :cond_b6
    invoke-virtual {p1, p2}, Lads_mobile_sdk/o00;->a(Lcom/google/gson/JsonObject;)Lads_mobile_sdk/v01;

    move-result-object p1
    :try_end_ba
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_9f .. :try_end_ba} :catch_bb

    return-object p1

    .line 2222
    :catch_bb
    new-instance p1, Lads_mobile_sdk/m01;

    .line 2223
    sget-object p2, Lads_mobile_sdk/kk1;->a:Lads_mobile_sdk/kk1;

    .line 2224
    invoke-direct {p1, v0, p2}, Lads_mobile_sdk/m01;-><init>(Ljava/lang/String;Lads_mobile_sdk/kk1;)V

    return-object p1
.end method

.method public final b(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 11

    .line 2225
    instance-of v0, p2, Lads_mobile_sdk/n00;

    if-eqz v0, :cond_13

    move-object v0, p2

    check-cast v0, Lads_mobile_sdk/n00;

    iget v1, v0, Lads_mobile_sdk/n00;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/n00;->e:I

    goto :goto_18

    :cond_13
    new-instance v0, Lads_mobile_sdk/n00;

    invoke-direct {v0, p0, p2}, Lads_mobile_sdk/n00;-><init>(Lads_mobile_sdk/o00;Lkotlin/coroutines/Continuation;)V

    :goto_18
    iget-object p2, v0, Lads_mobile_sdk/n00;->c:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 2365
    iget v2, v0, Lads_mobile_sdk/n00;->e:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3c

    if-eq v2, v4, :cond_34

    if-ne v2, v3, :cond_2c

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    return-object p2

    :cond_2c
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_34
    iget-object p1, v0, Lads_mobile_sdk/n00;->b:Ljava/lang/String;

    iget-object v2, v0, Lads_mobile_sdk/n00;->a:Lads_mobile_sdk/o00;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_6c

    :cond_3c
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 2368
    iget-object p2, p0, Lads_mobile_sdk/o00;->m:Lads_mobile_sdk/ex0;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2369
    sget-object v2, Lkotlin/time/Duration;->Companion:Lkotlin/time/Duration$Companion;

    sget-object v2, Lkotlin/time/DurationUnit;->SECONDS:Lkotlin/time/DurationUnit;

    .line 2370
    const-string v5, "key"

    const/16 v6, 0x3c

    const-string v7, "gads:cld_fetch_delay_on_cache_hit"

    invoke-static {v6, v2, v7, v5}, Lads_mobile_sdk/wm2;->a(ILkotlin/time/DurationUnit;Ljava/lang/String;Ljava/lang/String;)Lkotlin/time/Duration;

    move-result-object v2

    .line 2371
    sget-object v5, Lads_mobile_sdk/yr;->l:Lads_mobile_sdk/ur;

    invoke-virtual {p2, v7, v2, v5}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lkotlin/time/Duration;

    invoke-virtual {p2}, Lkotlin/time/Duration;->unbox-impl()J

    move-result-wide v5

    .line 2372
    iput-object p0, v0, Lads_mobile_sdk/n00;->a:Lads_mobile_sdk/o00;

    iput-object p1, v0, Lads_mobile_sdk/n00;->b:Ljava/lang/String;

    iput v4, v0, Lads_mobile_sdk/n00;->e:I

    invoke-static {v5, v6, v0}, Lkotlinx/coroutines/DelayKt;->delay-VtjQ1oo(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_6b

    goto :goto_81

    :cond_6b
    move-object v2, p0

    :goto_6c
    const/4 p2, 0x0

    .line 2373
    iput-object p2, v0, Lads_mobile_sdk/n00;->a:Lads_mobile_sdk/o00;

    iput-object p2, v0, Lads_mobile_sdk/n00;->b:Ljava/lang/String;

    iput v3, v0, Lads_mobile_sdk/n00;->e:I

    .line 2374
    iget-object v3, v2, Lads_mobile_sdk/o00;->c:Lkotlin/coroutines/CoroutineContext;

    .line 2375
    new-instance v4, Lads_mobile_sdk/g00;

    const/4 v5, 0x0

    invoke-direct {v4, v2, v5, p1, p2}, Lads_mobile_sdk/g00;-><init>(Lads_mobile_sdk/o00;ZLjava/lang/String;Lkotlin/coroutines/Continuation;)V

    invoke-static {v3, v4, v0}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_82

    :goto_81
    return-object v1

    :cond_82
    return-object p1
.end method

.method public final u(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 8

    .line 2
    iget-object v0, p0, Lads_mobile_sdk/o00;->d:Lkotlinx/coroutines/CoroutineScope;

    new-instance p1, Lads_mobile_sdk/l00;

    const/4 v1, 0x0

    invoke-direct {p1, p0, v1}, Lads_mobile_sdk/l00;-><init>(Lads_mobile_sdk/o00;Lkotlin/coroutines/Continuation;)V

    move-object v2, v1

    .line 3
    sget-object v1, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    .line 4
    const-string v3, "<this>"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "context"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "block"

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 262
    new-instance v3, Lads_mobile_sdk/ws3;

    invoke-direct {v3, p1, v2}, Lads_mobile_sdk/ws3;-><init>(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)V

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v2, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 263
    new-instance p1, Lads_mobile_sdk/q01;

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-direct {p1, v0}, Lads_mobile_sdk/q01;-><init>(Ljava/lang/Object;)V

    return-object p1
.end method
