###### Class ads_mobile_sdk.io3 (ads_mobile_sdk.io3)
.class public final Lads_mobile_sdk/io3;
.super Lads_mobile_sdk/n2;
.source "SourceFile"


# instance fields
.field public final l:Lads_mobile_sdk/rf;

.field public final m:Lads_mobile_sdk/rf;

.field public final n:Ljava/util/Optional;

.field public final o:Lads_mobile_sdk/rv1;

.field public final p:Lads_mobile_sdk/hm0;

.field public final q:Lkotlinx/coroutines/CoroutineScope;

.field public final r:Lads_mobile_sdk/hf;

.field public s:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/rf;Lads_mobile_sdk/rf;Ljava/util/Optional;Lads_mobile_sdk/rv1;Lads_mobile_sdk/hm0;Lkotlinx/coroutines/CoroutineScope;Lads_mobile_sdk/hf;Lads_mobile_sdk/ks3;Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;Lads_mobile_sdk/j53;JILads_mobile_sdk/i2;Lads_mobile_sdk/zy;Lads_mobile_sdk/ec3;Ljava/lang/String;Lads_mobile_sdk/eo2;)V
    .registers 35

    move-object/from16 v12, p1

    move-object/from16 v13, p2

    move-object/from16 v14, p3

    move-object/from16 v15, p4

    move-object/from16 v0, p5

    move-object/from16 v1, p6

    move-object/from16 v2, p7

    .line 1
    const-string v3, "adapterWrapper"

    invoke-static {v12, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "rtbAdapterWrapper"

    invoke-static {v13, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "oldAdapterWrapper"

    invoke-static {v14, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "mediationAdapterProxyFactory"

    invoke-static {v15, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "delegatingThirdPartyEventEmitter"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "uiScope"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "adapterInitializer"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "traceMetaSet"

    move-object/from16 v4, p8

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "baseRequest"

    move-object/from16 v5, p9

    invoke-static {v5, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "requestType"

    move-object/from16 v6, p10

    invoke-static {v6, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "adConfiguration"

    move-object/from16 v7, p14

    invoke-static {v7, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "commonConfiguration"

    move-object/from16 v8, p15

    invoke-static {v8, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "serverTransaction"

    move-object/from16 v9, p16

    invoke-static {v9, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "renderId"

    move-object/from16 v10, p17

    invoke-static {v10, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "placementIdWrapper"

    move-object/from16 v11, p18

    invoke-static {v11, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object v1, v4

    move-object v2, v5

    move-object v3, v6

    move-wide/from16 v4, p11

    move/from16 v6, p13

    .line 78
    invoke-direct/range {v0 .. v11}, Lads_mobile_sdk/n2;-><init>(Lads_mobile_sdk/ks3;Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;Lads_mobile_sdk/j53;JILads_mobile_sdk/i2;Lads_mobile_sdk/zy;Lads_mobile_sdk/ec3;Ljava/lang/String;Lads_mobile_sdk/eo2;)V

    .line 79
    iput-object v12, v0, Lads_mobile_sdk/io3;->l:Lads_mobile_sdk/rf;

    .line 81
    iput-object v13, v0, Lads_mobile_sdk/io3;->m:Lads_mobile_sdk/rf;

    .line 83
    iput-object v14, v0, Lads_mobile_sdk/io3;->n:Ljava/util/Optional;

    .line 85
    iput-object v15, v0, Lads_mobile_sdk/io3;->o:Lads_mobile_sdk/rv1;

    move-object/from16 v1, p5

    .line 86
    iput-object v1, v0, Lads_mobile_sdk/io3;->p:Lads_mobile_sdk/hm0;

    move-object/from16 v1, p6

    .line 87
    iput-object v1, v0, Lads_mobile_sdk/io3;->q:Lkotlinx/coroutines/CoroutineScope;

    move-object/from16 v2, p7

    .line 88
    iput-object v2, v0, Lads_mobile_sdk/io3;->r:Lads_mobile_sdk/hf;

    return-void
.end method


# virtual methods
.method public final a(Lads_mobile_sdk/jf;)Lads_mobile_sdk/v01;
    .registers 6

    .line 1497
    instance-of v0, p1, Lads_mobile_sdk/qv1;

    if-eqz v0, :cond_18

    .line 1498
    new-instance v0, Lads_mobile_sdk/q01;

    .line 1499
    iget-object v1, p0, Lads_mobile_sdk/io3;->l:Lads_mobile_sdk/rf;

    invoke-virtual {p0}, Lads_mobile_sdk/n2;->f()Lads_mobile_sdk/ec3;

    move-result-object v2

    invoke-virtual {p0}, Lads_mobile_sdk/n2;->c()Lads_mobile_sdk/i2;

    move-result-object v3

    invoke-interface {v1, v2, v3, p1}, Lads_mobile_sdk/rf;->a(Lads_mobile_sdk/ec3;Lads_mobile_sdk/i2;Ljava/lang/Object;)Lads_mobile_sdk/w1;

    move-result-object p1

    .line 1500
    invoke-direct {v0, p1}, Lads_mobile_sdk/q01;-><init>(Ljava/lang/Object;)V

    return-object v0

    .line 1503
    :cond_18
    instance-of v0, p1, Lads_mobile_sdk/u83;

    if-eqz v0, :cond_30

    .line 1504
    new-instance v0, Lads_mobile_sdk/q01;

    .line 1505
    iget-object v1, p0, Lads_mobile_sdk/io3;->m:Lads_mobile_sdk/rf;

    invoke-virtual {p0}, Lads_mobile_sdk/n2;->f()Lads_mobile_sdk/ec3;

    move-result-object v2

    invoke-virtual {p0}, Lads_mobile_sdk/n2;->c()Lads_mobile_sdk/i2;

    move-result-object v3

    invoke-interface {v1, v2, v3, p1}, Lads_mobile_sdk/rf;->a(Lads_mobile_sdk/ec3;Lads_mobile_sdk/i2;Ljava/lang/Object;)Lads_mobile_sdk/w1;

    move-result-object p1

    .line 1506
    invoke-direct {v0, p1}, Lads_mobile_sdk/q01;-><init>(Ljava/lang/Object;)V

    return-object v0

    .line 1509
    :cond_30
    instance-of v0, p1, Lads_mobile_sdk/rc2;

    if-eqz v0, :cond_72

    .line 1510
    iget-object v0, p0, Lads_mobile_sdk/io3;->n:Ljava/util/Optional;

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_56

    .line 1511
    new-instance v0, Lads_mobile_sdk/q01;

    .line 1512
    iget-object v1, p0, Lads_mobile_sdk/io3;->n:Ljava/util/Optional;

    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lads_mobile_sdk/rf;

    invoke-virtual {p0}, Lads_mobile_sdk/n2;->f()Lads_mobile_sdk/ec3;

    move-result-object v2

    invoke-virtual {p0}, Lads_mobile_sdk/n2;->c()Lads_mobile_sdk/i2;

    move-result-object v3

    invoke-interface {v1, v2, v3, p1}, Lads_mobile_sdk/rf;->a(Lads_mobile_sdk/ec3;Lads_mobile_sdk/i2;Ljava/lang/Object;)Lads_mobile_sdk/w1;

    move-result-object p1

    .line 1513
    invoke-direct {v0, p1}, Lads_mobile_sdk/q01;-><init>(Ljava/lang/Object;)V

    return-object v0

    .line 1517
    :cond_56
    new-instance v0, Lads_mobile_sdk/m01;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OldAdapterWrapper is empty, unable to wrap "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lads_mobile_sdk/m01;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 1518
    :cond_72
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1
.end method

.method public final a(Lads_mobile_sdk/jf;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 13

    .line 427
    instance-of v0, p2, Lads_mobile_sdk/go3;

    if-eqz v0, :cond_13

    move-object v0, p2

    check-cast v0, Lads_mobile_sdk/go3;

    iget v1, v0, Lads_mobile_sdk/go3;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/go3;->e:I

    goto :goto_18

    :cond_13
    new-instance v0, Lads_mobile_sdk/go3;

    invoke-direct {v0, p0, p2}, Lads_mobile_sdk/go3;-><init>(Lads_mobile_sdk/io3;Lkotlin/coroutines/Continuation;)V

    :goto_18
    iget-object p2, v0, Lads_mobile_sdk/go3;->c:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 573
    iget v2, v0, Lads_mobile_sdk/go3;->e:I

    const/4 v3, 0x1

    if-eqz v2, :cond_35

    if-ne v2, v3, :cond_2d

    iget-object p1, v0, Lads_mobile_sdk/go3;->b:Lads_mobile_sdk/jf;

    iget-object v0, v0, Lads_mobile_sdk/go3;->a:Lads_mobile_sdk/io3;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_95

    :cond_2d
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_35
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 574
    iput-object p0, v0, Lads_mobile_sdk/go3;->a:Lads_mobile_sdk/io3;

    iput-object p1, v0, Lads_mobile_sdk/go3;->b:Lads_mobile_sdk/jf;

    iput v3, v0, Lads_mobile_sdk/go3;->e:I

    .line 575
    instance-of p2, p1, Lads_mobile_sdk/rc2;

    if-eqz p2, :cond_54

    iget-object p2, p0, Lads_mobile_sdk/io3;->n:Ljava/util/Optional;

    invoke-virtual {p2}, Ljava/util/Optional;->isPresent()Z

    move-result p2

    if-nez p2, :cond_54

    .line 576
    new-instance p2, Lads_mobile_sdk/m01;

    const-string v0, "oldAdapterWrapper is empty for OldMediationAdapterProxy"

    .line 577
    sget-object v2, Lads_mobile_sdk/kk1;->a:Lads_mobile_sdk/kk1;

    .line 578
    invoke-direct {p2, v0, v2}, Lads_mobile_sdk/m01;-><init>(Ljava/lang/String;Lads_mobile_sdk/kk1;)V

    goto :goto_91

    .line 579
    :cond_54
    new-instance p2, Lkotlinx/coroutines/CancellableContinuationImpl;

    invoke-static {v0}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsJvmKt;->intercepted(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v2

    invoke-direct {p2, v2, v3}, Lkotlinx/coroutines/CancellableContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;I)V

    .line 585
    invoke-virtual {p2}, Lkotlinx/coroutines/CancellableContinuationImpl;->initCancellability()V

    .line 586
    iget-object v4, p0, Lads_mobile_sdk/io3;->q:Lkotlinx/coroutines/CoroutineScope;

    .line 587
    new-instance v2, Lads_mobile_sdk/fo3;

    const/4 v3, 0x0

    invoke-direct {v2, p1, p0, p2, v3}, Lads_mobile_sdk/fo3;-><init>(Lads_mobile_sdk/jf;Lads_mobile_sdk/io3;Lkotlinx/coroutines/CancellableContinuation;Lkotlin/coroutines/Continuation;)V

    .line 588
    sget-object v5, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    .line 589
    const-string v6, "<this>"

    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "context"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "block"

    invoke-static {v2, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 847
    new-instance v7, Lads_mobile_sdk/ws3;

    invoke-direct {v7, v2, v3}, Lads_mobile_sdk/ws3;-><init>(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)V

    const/4 v8, 0x2

    const/4 v9, 0x0

    const/4 v6, 0x0

    invoke-static/range {v4 .. v9}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 848
    invoke-virtual {p2}, Lkotlinx/coroutines/CancellableContinuationImpl;->getResult()Ljava/lang/Object;

    move-result-object p2

    .line 849
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v2

    if-ne p2, v2, :cond_91

    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/DebugProbesKt;->probeCoroutineSuspended(Lkotlin/coroutines/Continuation;)V

    :cond_91
    :goto_91
    if-ne p2, v1, :cond_94

    return-object v1

    :cond_94
    move-object v0, p0

    .line 850
    :goto_95
    check-cast p2, Lads_mobile_sdk/v01;

    .line 852
    instance-of v1, p2, Lads_mobile_sdk/i01;

    if-eqz v1, :cond_9c

    return-object p2

    .line 853
    :cond_9c
    instance-of p2, p2, Lads_mobile_sdk/q01;

    if-eqz p2, :cond_110

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 854
    invoke-virtual {v0, p1}, Lads_mobile_sdk/io3;->a(Lads_mobile_sdk/jf;)Lads_mobile_sdk/v01;

    move-result-object p2

    .line 943
    instance-of v1, p2, Lads_mobile_sdk/i01;

    if-eqz v1, :cond_ae

    check-cast p2, Lads_mobile_sdk/i01;

    return-object p2

    .line 944
    :cond_ae
    const-string v1, "null cannot be cast to non-null type com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Success<T of com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Companion.returnIfError>"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Lads_mobile_sdk/q01;

    .line 945
    iget-object p2, p2, Lads_mobile_sdk/q01;->b:Ljava/lang/Object;

    .line 946
    check-cast p2, Lads_mobile_sdk/w1;

    .line 950
    instance-of v1, p1, Lads_mobile_sdk/u83;

    .line 951
    invoke-virtual {v0, p2, v1}, Lads_mobile_sdk/n2;->a(Lads_mobile_sdk/w1;Z)Lads_mobile_sdk/w1;

    move-result-object p2

    invoke-interface {p2}, Lads_mobile_sdk/w1;->a()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lads_mobile_sdk/x1;

    .line 952
    iget-object v2, v0, Lads_mobile_sdk/io3;->p:Lads_mobile_sdk/hm0;

    invoke-interface {p2}, Lads_mobile_sdk/x1;->f()Lads_mobile_sdk/no3;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 953
    const-string v4, "thirdPartyEventEmitter"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 954
    iget-object v4, v2, Lads_mobile_sdk/hm0;->a:Lads_mobile_sdk/tn3;

    sget-object v5, Lads_mobile_sdk/hm0;->b:[Lkotlin/reflect/KProperty;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    invoke-virtual {v4, v2, v5, v3}, Lads_mobile_sdk/tn3;->setValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V

    .line 955
    instance-of v2, p1, Lads_mobile_sdk/qv1;

    if-eqz v2, :cond_e7

    iget-object p1, v0, Lads_mobile_sdk/io3;->l:Lads_mobile_sdk/rf;

    invoke-interface {p1, p2}, Lads_mobile_sdk/rf;->a(Lads_mobile_sdk/x1;)V

    goto :goto_106

    :cond_e7
    if-eqz v1, :cond_ef

    .line 956
    iget-object p1, v0, Lads_mobile_sdk/io3;->m:Lads_mobile_sdk/rf;

    invoke-interface {p1, p2}, Lads_mobile_sdk/rf;->a(Lads_mobile_sdk/x1;)V

    goto :goto_106

    .line 957
    :cond_ef
    instance-of p1, p1, Lads_mobile_sdk/rc2;

    if-eqz p1, :cond_106

    .line 958
    iget-object p1, v0, Lads_mobile_sdk/io3;->n:Ljava/util/Optional;

    invoke-virtual {p1}, Ljava/util/Optional;->isPresent()Z

    move-result p1

    if-eqz p1, :cond_106

    .line 959
    iget-object p1, v0, Lads_mobile_sdk/io3;->n:Ljava/util/Optional;

    invoke-virtual {p1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lads_mobile_sdk/rf;

    invoke-interface {p1, p2}, Lads_mobile_sdk/rf;->a(Lads_mobile_sdk/x1;)V

    .line 960
    :cond_106
    :goto_106
    new-instance p1, Lads_mobile_sdk/q01;

    invoke-interface {p2}, Lads_mobile_sdk/x1;->a()Lads_mobile_sdk/zh1;

    move-result-object p2

    invoke-direct {p1, p2}, Lads_mobile_sdk/q01;-><init>(Ljava/lang/Object;)V

    return-object p1

    .line 961
    :cond_110
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1
.end method

.method public final a(Ljava/util/List;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 16

    .line 280
    instance-of v0, p3, Lads_mobile_sdk/eo3;

    if-eqz v0, :cond_13

    move-object v0, p3

    check-cast v0, Lads_mobile_sdk/eo3;

    iget v1, v0, Lads_mobile_sdk/eo3;->h:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/eo3;->h:I

    goto :goto_18

    :cond_13
    new-instance v0, Lads_mobile_sdk/eo3;

    invoke-direct {v0, p0, p3}, Lads_mobile_sdk/eo3;-><init>(Lads_mobile_sdk/io3;Lkotlin/coroutines/Continuation;)V

    :goto_18
    iget-object p3, v0, Lads_mobile_sdk/eo3;->f:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 396
    iget v2, v0, Lads_mobile_sdk/eo3;->h:I

    const/4 v3, 0x1

    if-eqz v2, :cond_3d

    if-ne v2, v3, :cond_35

    iget-boolean p1, v0, Lads_mobile_sdk/eo3;->e:Z

    iget-object p2, v0, Lads_mobile_sdk/eo3;->d:Ljava/lang/String;

    iget-object v2, v0, Lads_mobile_sdk/eo3;->c:Ljava/util/Iterator;

    iget-object v4, v0, Lads_mobile_sdk/eo3;->b:Lads_mobile_sdk/v01;

    iget-object v5, v0, Lads_mobile_sdk/eo3;->a:Lads_mobile_sdk/io3;

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move v8, p1

    move-object v7, p2

    goto :goto_6f

    :cond_35
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3d
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 401
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 p3, 0x0

    move-object v5, p0

    move-object v2, p1

    move-object v4, p3

    :goto_48
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_af

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 403
    iget-object p3, v5, Lads_mobile_sdk/io3;->r:Lads_mobile_sdk/hf;

    invoke-virtual {v5}, Lads_mobile_sdk/n2;->d()Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;

    move-result-object v6

    iput-object v5, v0, Lads_mobile_sdk/eo3;->a:Lads_mobile_sdk/io3;

    iput-object v4, v0, Lads_mobile_sdk/eo3;->b:Lads_mobile_sdk/v01;

    iput-object v2, v0, Lads_mobile_sdk/eo3;->c:Ljava/util/Iterator;

    iput-object p1, v0, Lads_mobile_sdk/eo3;->d:Ljava/lang/String;

    iput-boolean p2, v0, Lads_mobile_sdk/eo3;->e:Z

    iput v3, v0, Lads_mobile_sdk/eo3;->h:I

    invoke-virtual {p3, v6, p1, v0}, Lads_mobile_sdk/hf;->a(Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_6d

    return-object v1

    :cond_6d
    move-object v7, p1

    move v8, p2

    .line 404
    :goto_6f
    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_98

    if-nez v4, :cond_98

    .line 408
    new-instance v4, Lads_mobile_sdk/m01;

    .line 409
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "The adapter requested for this mediation element ("

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ") is not eligible because it was excluded by AdRequest.skipUninitializedAdapters and has not yet successfully initialized."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 412
    sget-object p2, Lads_mobile_sdk/kk1;->h:Lads_mobile_sdk/kk1;

    .line 413
    invoke-direct {v4, p1, p2}, Lads_mobile_sdk/m01;-><init>(Ljava/lang/String;Lads_mobile_sdk/kk1;)V

    :goto_96
    move p2, v8

    goto :goto_48

    .line 422
    :cond_98
    iput-object v7, v5, Lads_mobile_sdk/io3;->s:Ljava/lang/String;

    .line 424
    iget-object v6, v5, Lads_mobile_sdk/io3;->o:Lads_mobile_sdk/rv1;

    invoke-virtual {v5}, Lads_mobile_sdk/n2;->e()Lads_mobile_sdk/j53;

    move-result-object v10

    const/4 v9, 0x0

    const/4 v11, 0x4

    invoke-static/range {v6 .. v11}, Lads_mobile_sdk/rv1;->a(Lads_mobile_sdk/rv1;Ljava/lang/String;ZZLads_mobile_sdk/j53;I)Lads_mobile_sdk/jf;

    move-result-object p1

    if-nez p1, :cond_a9

    goto :goto_96

    .line 426
    :cond_a9
    new-instance p2, Lads_mobile_sdk/q01;

    invoke-direct {p2, p1}, Lads_mobile_sdk/q01;-><init>(Ljava/lang/Object;)V

    return-object p2

    :cond_af
    return-object v4
.end method

.method public final a(ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 8

    .line 962
    instance-of v0, p2, Lads_mobile_sdk/ho3;

    if-eqz v0, :cond_13

    move-object v0, p2

    check-cast v0, Lads_mobile_sdk/ho3;

    iget v1, v0, Lads_mobile_sdk/ho3;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/ho3;->d:I

    goto :goto_18

    :cond_13
    new-instance v0, Lads_mobile_sdk/ho3;

    invoke-direct {v0, p0, p2}, Lads_mobile_sdk/ho3;-><init>(Lads_mobile_sdk/io3;Lkotlin/coroutines/Continuation;)V

    :goto_18
    iget-object p2, v0, Lads_mobile_sdk/ho3;->b:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 1060
    iget v2, v0, Lads_mobile_sdk/ho3;->d:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3a

    if-eq v2, v4, :cond_34

    if-ne v2, v3, :cond_2c

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_70

    :cond_2c
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_34
    iget-object p1, v0, Lads_mobile_sdk/ho3;->a:Lads_mobile_sdk/io3;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_4f

    :cond_3a
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1062
    invoke-virtual {p0}, Lads_mobile_sdk/n2;->c()Lads_mobile_sdk/i2;

    move-result-object p2

    iget-object p2, p2, Lads_mobile_sdk/i2;->b:Ljava/util/List;

    iput-object p0, v0, Lads_mobile_sdk/ho3;->a:Lads_mobile_sdk/io3;

    iput v4, v0, Lads_mobile_sdk/ho3;->d:I

    invoke-virtual {p0, p2, p1, v0}, Lads_mobile_sdk/io3;->a(Ljava/util/List;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_4e

    goto :goto_6f

    :cond_4e
    move-object p1, p0

    .line 1063
    :goto_4f
    check-cast p2, Lads_mobile_sdk/v01;

    if-eqz p2, :cond_8b

    .line 1244
    instance-of v2, p2, Lads_mobile_sdk/i01;

    if-eqz v2, :cond_5a

    check-cast p2, Lads_mobile_sdk/i01;

    return-object p2

    .line 1245
    :cond_5a
    check-cast p2, Lads_mobile_sdk/q01;

    invoke-virtual {p2}, Lads_mobile_sdk/q01;->a()Ljava/lang/Object;

    move-result-object p2

    .line 1246
    check-cast p2, Lads_mobile_sdk/jf;

    if-eqz p2, :cond_8b

    const/4 v2, 0x0

    .line 1256
    iput-object v2, v0, Lads_mobile_sdk/ho3;->a:Lads_mobile_sdk/io3;

    iput v3, v0, Lads_mobile_sdk/ho3;->d:I

    invoke-virtual {p1, p2, v0}, Lads_mobile_sdk/io3;->a(Lads_mobile_sdk/jf;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_70

    :goto_6f
    return-object v1

    .line 1257
    :cond_70
    :goto_70
    check-cast p2, Lads_mobile_sdk/v01;

    .line 1270
    instance-of p1, p2, Lads_mobile_sdk/i01;

    if-eqz p1, :cond_77

    return-object p2

    .line 1271
    :cond_77
    instance-of p1, p2, Lads_mobile_sdk/q01;

    if-eqz p1, :cond_85

    new-instance p1, Lads_mobile_sdk/q01;

    invoke-static {p2}, Lkotlinx/coroutines/flow/FlowKt;->flowOf(Ljava/lang/Object;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p2

    invoke-direct {p1, p2}, Lads_mobile_sdk/q01;-><init>(Ljava/lang/Object;)V

    return-object p1

    .line 1272
    :cond_85
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 1273
    :cond_8b
    new-instance p2, Lads_mobile_sdk/l01;

    .line 1274
    new-instance v0, Lcom/google/android/libraries/ads/mobile/sdk/common/MediationAdError;

    .line 1275
    sget-object v1, Lcom/google/android/libraries/ads/mobile/sdk/common/LoadAdError$ErrorCode;->NOT_FOUND:Lcom/google/android/libraries/ads/mobile/sdk/common/LoadAdError$ErrorCode;

    invoke-virtual {v1}, Lcom/google/android/libraries/ads/mobile/sdk/common/LoadAdError$ErrorCode;->getValue()I

    move-result v1

    .line 1276
    invoke-virtual {p1}, Lads_mobile_sdk/n2;->c()Lads_mobile_sdk/i2;

    move-result-object p1

    iget-object p1, p1, Lads_mobile_sdk/i2;->b:Ljava/util/List;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to instantiate any mediation adapter class: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "."

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1277
    const-string v2, "undefined"

    invoke-direct {v0, v1, p1, v2}, Lcom/google/android/libraries/ads/mobile/sdk/common/MediationAdError;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 1278
    invoke-direct {p2, v0}, Lads_mobile_sdk/l01;-><init>(Lcom/google/android/libraries/ads/mobile/sdk/common/MediationAdError;)V

    return-object p2
.end method

.method public final a(I)Ljava/lang/String;
    .registers 5

    .line 279
    iget-object v0, p0, Lads_mobile_sdk/io3;->s:Ljava/lang/String;

    if-nez v0, :cond_a

    const-string v0, "renderedAdapterClassName"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error from: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", code: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final b()Z
    .registers 2

    .line 2
    iget-object v0, p0, Lads_mobile_sdk/n2;->f:Lads_mobile_sdk/i2;

    .line 3
    iget-object v0, v0, Lads_mobile_sdk/i2;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method
