###### Class ads_mobile_sdk.z60 (ads_mobile_sdk.z60)
.class public final Lads_mobile_sdk/z60;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public a:I

.field public final synthetic b:Z

.field public final synthetic c:Lads_mobile_sdk/k70;

.field public final synthetic d:Ljava/lang/Long;

.field public final synthetic e:Ljava/util/concurrent/atomic/AtomicReference;

.field public final synthetic f:Lkotlinx/coroutines/CompletableJob;


# direct methods
.method public constructor <init>(ZLads_mobile_sdk/k70;Ljava/lang/Long;Ljava/util/concurrent/atomic/AtomicReference;Lkotlinx/coroutines/CompletableJob;Lkotlin/coroutines/Continuation;)V
    .registers 7

    .line 1
    iput-boolean p1, p0, Lads_mobile_sdk/z60;->b:Z

    iput-object p2, p0, Lads_mobile_sdk/z60;->c:Lads_mobile_sdk/k70;

    iput-object p3, p0, Lads_mobile_sdk/z60;->d:Ljava/lang/Long;

    iput-object p4, p0, Lads_mobile_sdk/z60;->e:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p5, p0, Lads_mobile_sdk/z60;->f:Lkotlinx/coroutines/CompletableJob;

    const/4 p1, 0x1

    invoke-direct {p0, p1, p6}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 9

    .line 1
    new-instance v0, Lads_mobile_sdk/z60;

    iget-boolean v1, p0, Lads_mobile_sdk/z60;->b:Z

    iget-object v2, p0, Lads_mobile_sdk/z60;->c:Lads_mobile_sdk/k70;

    iget-object v3, p0, Lads_mobile_sdk/z60;->d:Ljava/lang/Long;

    iget-object v4, p0, Lads_mobile_sdk/z60;->e:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v5, p0, Lads_mobile_sdk/z60;->f:Lkotlinx/coroutines/CompletableJob;

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lads_mobile_sdk/z60;-><init>(ZLads_mobile_sdk/k70;Ljava/lang/Long;Ljava/util/concurrent/atomic/AtomicReference;Lkotlinx/coroutines/CompletableJob;Lkotlin/coroutines/Continuation;)V

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 1
    check-cast p1, Lkotlin/coroutines/Continuation;

    .line 2
    invoke-virtual {p0, p1}, Lads_mobile_sdk/z60;->create(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lads_mobile_sdk/z60;

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, v0}, Lads_mobile_sdk/z60;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 11

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 562
    iget v1, p0, Lads_mobile_sdk/z60;->a:I

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v1, :cond_26

    if-eq v1, v4, :cond_1f

    if-ne v1, v3, :cond_17

    :try_start_f
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_12
    .catchall {:try_start_f .. :try_end_12} :catchall_14

    goto/16 :goto_95

    :catchall_14
    move-exception p1

    goto/16 :goto_b2

    .line 563
    :cond_17
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1f
    :try_start_1f
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_22
    .catchall {:try_start_1f .. :try_end_22} :catchall_24

    goto/16 :goto_cc

    :catchall_24
    move-exception p1

    goto :goto_5c

    .line 564
    :cond_26
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 566
    :try_start_29
    iget-boolean p1, p0, Lads_mobile_sdk/z60;->b:Z

    if-nez p1, :cond_54

    .line 569
    iget-object p1, p0, Lads_mobile_sdk/z60;->c:Lads_mobile_sdk/k70;

    invoke-static {p1}, Lads_mobile_sdk/k70;->b(Lads_mobile_sdk/k70;)Lads_mobile_sdk/ex0;

    move-result-object p1

    if-eqz p1, :cond_3a

    invoke-virtual {p1}, Lads_mobile_sdk/ex0;->x()J

    move-result-wide v5

    goto :goto_40

    .line 570
    :cond_3a
    sget p1, Lads_mobile_sdk/ex0;->B:I

    invoke-static {}, Lads_mobile_sdk/ax0;->a()J

    move-result-wide v5

    :goto_40
    new-instance p1, Lads_mobile_sdk/w60;

    iget-object v1, p0, Lads_mobile_sdk/z60;->c:Lads_mobile_sdk/k70;

    iget-object v7, p0, Lads_mobile_sdk/z60;->e:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v8, p0, Lads_mobile_sdk/z60;->d:Ljava/lang/Long;

    invoke-direct {p1, v1, v7, v8, v2}, Lads_mobile_sdk/w60;-><init>(Lads_mobile_sdk/k70;Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Long;Lkotlin/coroutines/Continuation;)V

    iput v4, p0, Lads_mobile_sdk/z60;->a:I

    invoke-static {v5, v6, p1, p0}, Lkotlinx/coroutines/TimeoutKt;->withTimeout-KLykuaI(JLkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_cc

    goto :goto_94

    .line 601
    :cond_54
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v1, "Cronet fallback provider forced to use."

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_5c
    .catchall {:try_start_29 .. :try_end_5c} :catchall_24

    .line 611
    :goto_5c
    :try_start_5c
    iget-boolean v1, p0, Lads_mobile_sdk/z60;->b:Z

    if-eqz v1, :cond_6a

    .line 612
    sget-object p1, Lads_mobile_sdk/f01;->a:Lcom/google/common/base/Splitter;

    sget-object p1, Lads_mobile_sdk/x60;->a:Lads_mobile_sdk/x60;

    invoke-static {p1}, Lads_mobile_sdk/f01;->a(Lkotlin/jvm/functions/Function0;)V

    goto :goto_74

    :catchall_68
    move-exception p1

    goto :goto_d4

    .line 616
    :cond_6a
    sget-object v1, Lads_mobile_sdk/f01;->a:Lcom/google/common/base/Splitter;

    new-instance v1, Lads_mobile_sdk/y60;

    invoke-direct {v1, p1}, Lads_mobile_sdk/y60;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v1}, Lads_mobile_sdk/f01;->a(Lkotlin/jvm/functions/Function0;)V
    :try_end_74
    .catchall {:try_start_5c .. :try_end_74} :catchall_68

    .line 623
    :goto_74
    :try_start_74
    iget-object p1, p0, Lads_mobile_sdk/z60;->c:Lads_mobile_sdk/k70;

    new-instance v1, Lorg/chromium/net/impl/JavaCronetProvider;

    iget-object v4, p0, Lads_mobile_sdk/z60;->c:Lads_mobile_sdk/k70;

    invoke-static {v4}, Lads_mobile_sdk/k70;->a(Lads_mobile_sdk/k70;)Landroid/content/Context;

    move-result-object v4

    invoke-direct {v1, v4}, Lorg/chromium/net/impl/JavaCronetProvider;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lorg/chromium/net/impl/JavaCronetProvider;->createBuilder()Lorg/chromium/net/CronetEngine$Builder;

    move-result-object v1

    const-string v4, "createBuilder(...)"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v4, p0, Lads_mobile_sdk/z60;->d:Ljava/lang/Long;

    iput v3, p0, Lads_mobile_sdk/z60;->a:I

    invoke-static {p1, v1, v4, p0}, Lads_mobile_sdk/k70;->a(Lads_mobile_sdk/k70;Lorg/chromium/net/CronetEngine$Builder;Ljava/lang/Long;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_95

    :goto_94
    return-object v0

    .line 624
    :cond_95
    :goto_95
    check-cast p1, Lorg/chromium/net/CronetEngine$Builder;

    .line 650
    iget-object v0, p0, Lads_mobile_sdk/z60;->e:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p1}, Lorg/chromium/net/CronetEngine$Builder;->build()Lorg/chromium/net/CronetEngine;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 651
    invoke-static {}, Lads_mobile_sdk/hs3;->c()Lads_mobile_sdk/rr3;

    move-result-object p1

    if-eqz p1, :cond_aa

    invoke-virtual {p1}, Lads_mobile_sdk/rr3;->e()Lads_mobile_sdk/uj2;

    move-result-object v2

    :cond_aa
    if-nez v2, :cond_ad

    goto :goto_cc

    .line 652
    :cond_ad
    const-string p1, "Fallback-Cronet-Provider"

    .line 653
    iput-object p1, v2, Lads_mobile_sdk/uj2;->z:Ljava/lang/String;
    :try_end_b1
    .catchall {:try_start_74 .. :try_end_b1} :catchall_14

    goto :goto_cc

    .line 656
    :goto_b2
    :try_start_b2
    sget-object v0, Lads_mobile_sdk/f01;->a:Lcom/google/common/base/Splitter;

    .line 657
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cronet was unable to be initialized and the SDK will not be able to make network requests: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 658
    invoke-static {p1}, Lads_mobile_sdk/f01;->c(Ljava/lang/String;)V
    :try_end_cc
    .catchall {:try_start_b2 .. :try_end_cc} :catchall_68

    .line 600
    :cond_cc
    :goto_cc
    iget-object p1, p0, Lads_mobile_sdk/z60;->f:Lkotlinx/coroutines/CompletableJob;

    invoke-interface {p1}, Lkotlinx/coroutines/CompletableJob;->complete()Z

    .line 665
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 666
    :goto_d4
    iget-object v0, p0, Lads_mobile_sdk/z60;->f:Lkotlinx/coroutines/CompletableJob;

    invoke-interface {v0}, Lkotlinx/coroutines/CompletableJob;->complete()Z

    throw p1
.end method
