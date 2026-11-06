###### Class ads_mobile_sdk.qv0 (ads_mobile_sdk.qv0)
.class public final Lads_mobile_sdk/qv0;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic a:Lads_mobile_sdk/rv0;

.field public final synthetic b:Lads_mobile_sdk/s11;

.field public final synthetic c:Lads_mobile_sdk/on3;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/rv0;Lads_mobile_sdk/s11;Lads_mobile_sdk/on3;Lkotlin/coroutines/Continuation;)V
    .registers 5

    .line 1
    iput-object p1, p0, Lads_mobile_sdk/qv0;->a:Lads_mobile_sdk/rv0;

    iput-object p2, p0, Lads_mobile_sdk/qv0;->b:Lads_mobile_sdk/s11;

    iput-object p3, p0, Lads_mobile_sdk/qv0;->c:Lads_mobile_sdk/on3;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 6

    .line 1
    new-instance p1, Lads_mobile_sdk/qv0;

    iget-object v0, p0, Lads_mobile_sdk/qv0;->a:Lads_mobile_sdk/rv0;

    iget-object v1, p0, Lads_mobile_sdk/qv0;->b:Lads_mobile_sdk/s11;

    iget-object v2, p0, Lads_mobile_sdk/qv0;->c:Lads_mobile_sdk/on3;

    invoke-direct {p1, v0, v1, v2, p2}, Lads_mobile_sdk/qv0;-><init>(Lads_mobile_sdk/rv0;Lads_mobile_sdk/s11;Lads_mobile_sdk/on3;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 1
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 2
    invoke-virtual {p0, p1, p2}, Lads_mobile_sdk/qv0;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lads_mobile_sdk/qv0;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lads_mobile_sdk/qv0;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 8

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 533
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 534
    iget-object p1, p0, Lads_mobile_sdk/qv0;->a:Lads_mobile_sdk/rv0;

    .line 535
    iget-object p1, p1, Lads_mobile_sdk/rv0;->g:Lads_mobile_sdk/g83;

    .line 536
    iget-object v0, p0, Lads_mobile_sdk/qv0;->b:Lads_mobile_sdk/s11;

    .line 537
    new-instance v1, Lads_mobile_sdk/ks3;

    .line 538
    new-instance v2, Lads_mobile_sdk/n03;

    invoke-direct {v2}, Lads_mobile_sdk/n03;-><init>()V

    .line 539
    new-instance v3, Lads_mobile_sdk/tn1;

    invoke-direct {v3}, Lads_mobile_sdk/tn1;-><init>()V

    .line 540
    new-instance v4, Lads_mobile_sdk/m33;

    invoke-direct {v4}, Lads_mobile_sdk/m33;-><init>()V

    .line 541
    new-instance v5, Lads_mobile_sdk/zb;

    invoke-direct {v5}, Lads_mobile_sdk/zb;-><init>()V

    .line 542
    invoke-direct {v1, v2, v3, v4, v5}, Lads_mobile_sdk/ks3;-><init>(Lads_mobile_sdk/n03;Lads_mobile_sdk/tn1;Lads_mobile_sdk/m33;Lads_mobile_sdk/zb;)V

    .line 543
    iget-object v2, p0, Lads_mobile_sdk/qv0;->c:Lads_mobile_sdk/on3;

    .line 584
    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v3

    .line 585
    invoke-static {}, Lads_mobile_sdk/hs3;->b()Lads_mobile_sdk/gs3;

    move-result-object v4

    .line 586
    iget-object v4, v4, Lads_mobile_sdk/gs3;->a:Lads_mobile_sdk/rr3;

    const/4 v5, 0x0

    if-nez v4, :cond_88

    .line 587
    invoke-static {p1, v0, v3, v1}, Lads_mobile_sdk/g83;->a(Lads_mobile_sdk/g83;Lads_mobile_sdk/s11;Ljava/util/List;Lads_mobile_sdk/ks3;)Lads_mobile_sdk/tu2;

    move-result-object p1

    .line 588
    :try_start_38
    invoke-static {}, Lads_mobile_sdk/hs3;->a()Lads_mobile_sdk/rr3;

    move-result-object v0

    invoke-virtual {v0}, Lads_mobile_sdk/rr3;->e()Lads_mobile_sdk/uj2;

    move-result-object v0

    iput-object v2, v0, Lads_mobile_sdk/uj2;->M:Lads_mobile_sdk/on3;

    .line 589
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_44
    .catchall {:try_start_38 .. :try_end_44} :catchall_48

    .line 646
    invoke-static {p1, v5}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    goto :goto_a0

    :catchall_48
    move-exception v0

    .line 654
    :try_start_49
    invoke-virtual {p1, v0}, Lads_mobile_sdk/rr3;->b(Ljava/lang/Throwable;)V

    .line 658
    instance-of v1, v0, Lads_mobile_sdk/v24;

    if-nez v1, :cond_81

    .line 660
    instance-of v1, v0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v1, :cond_5e

    instance-of v1, v0, Ljava/util/concurrent/CancellationException;

    if-nez v1, :cond_5e

    .line 666
    invoke-virtual {p1, v0}, Lads_mobile_sdk/rr3;->a(Ljava/lang/Throwable;)V

    goto :goto_5e

    :catchall_5c
    move-exception v0

    goto :goto_82

    .line 672
    :cond_5e
    :goto_5e
    instance-of v1, v0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v1, :cond_79

    .line 673
    instance-of v1, v0, Ljava/util/concurrent/CancellationException;

    if-nez v1, :cond_71

    .line 674
    instance-of v1, v0, Lads_mobile_sdk/w01;

    if-eqz v1, :cond_6b

    throw v0

    .line 675
    :cond_6b
    new-instance v1, Lads_mobile_sdk/b01;

    invoke-direct {v1, v0}, Lads_mobile_sdk/b01;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 676
    :cond_71
    new-instance v1, Lads_mobile_sdk/wz0;

    check-cast v0, Ljava/util/concurrent/CancellationException;

    invoke-direct {v1, v0}, Lads_mobile_sdk/wz0;-><init>(Ljava/util/concurrent/CancellationException;)V

    throw v1

    .line 677
    :cond_79
    new-instance v1, Lads_mobile_sdk/i21;

    check-cast v0, Lkotlinx/coroutines/TimeoutCancellationException;

    invoke-direct {v1, v0}, Lads_mobile_sdk/i21;-><init>(Lkotlinx/coroutines/TimeoutCancellationException;)V

    throw v1

    .line 678
    :cond_81
    throw v0
    :try_end_82
    .catchall {:try_start_49 .. :try_end_82} :catchall_5c

    .line 679
    :goto_82
    :try_start_82
    throw v0
    :try_end_83
    .catchall {:try_start_82 .. :try_end_83} :catchall_83

    :catchall_83
    move-exception v1

    invoke-static {p1, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v1

    .line 713
    :cond_88
    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lads_mobile_sdk/hs3;->a(Lads_mobile_sdk/s11;Ljava/util/List;Z)Lads_mobile_sdk/rr3;

    move-result-object p1

    .line 714
    :try_start_91
    invoke-static {}, Lads_mobile_sdk/hs3;->a()Lads_mobile_sdk/rr3;

    move-result-object v0

    invoke-virtual {v0}, Lads_mobile_sdk/rr3;->e()Lads_mobile_sdk/uj2;

    move-result-object v0

    iput-object v2, v0, Lads_mobile_sdk/uj2;->M:Lads_mobile_sdk/on3;

    .line 715
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_9d
    .catchall {:try_start_91 .. :try_end_9d} :catchall_a3

    .line 809
    invoke-static {p1, v5}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 810
    :goto_a0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    :catchall_a3
    move-exception v0

    .line 905
    :try_start_a4
    invoke-virtual {p1, v0}, Lads_mobile_sdk/rr3;->b(Ljava/lang/Throwable;)V

    .line 909
    instance-of v1, v0, Lads_mobile_sdk/v24;

    if-nez v1, :cond_dc

    .line 911
    instance-of v1, v0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v1, :cond_b9

    instance-of v1, v0, Ljava/util/concurrent/CancellationException;

    if-nez v1, :cond_b9

    .line 917
    invoke-virtual {p1, v0}, Lads_mobile_sdk/rr3;->a(Ljava/lang/Throwable;)V

    goto :goto_b9

    :catchall_b7
    move-exception v0

    goto :goto_dd

    .line 923
    :cond_b9
    :goto_b9
    instance-of v1, v0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v1, :cond_d4

    .line 924
    instance-of v1, v0, Ljava/util/concurrent/CancellationException;

    if-nez v1, :cond_cc

    .line 925
    instance-of v1, v0, Lads_mobile_sdk/w01;

    if-eqz v1, :cond_c6

    throw v0

    .line 926
    :cond_c6
    new-instance v1, Lads_mobile_sdk/b01;

    invoke-direct {v1, v0}, Lads_mobile_sdk/b01;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 927
    :cond_cc
    new-instance v1, Lads_mobile_sdk/wz0;

    check-cast v0, Ljava/util/concurrent/CancellationException;

    invoke-direct {v1, v0}, Lads_mobile_sdk/wz0;-><init>(Ljava/util/concurrent/CancellationException;)V

    throw v1

    .line 928
    :cond_d4
    new-instance v1, Lads_mobile_sdk/i21;

    check-cast v0, Lkotlinx/coroutines/TimeoutCancellationException;

    invoke-direct {v1, v0}, Lads_mobile_sdk/i21;-><init>(Lkotlinx/coroutines/TimeoutCancellationException;)V

    throw v1

    .line 929
    :cond_dc
    throw v0
    :try_end_dd
    .catchall {:try_start_a4 .. :try_end_dd} :catchall_b7

    .line 930
    :goto_dd
    :try_start_dd
    throw v0
    :try_end_de
    .catchall {:try_start_dd .. :try_end_de} :catchall_de

    :catchall_de
    move-exception v1

    invoke-static {p1, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v1
.end method
