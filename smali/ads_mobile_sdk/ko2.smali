###### Class ads_mobile_sdk.ko2 (ads_mobile_sdk.ko2)
.class public final Lads_mobile_sdk/ko2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public a:Lads_mobile_sdk/rr3;

.field public b:Lads_mobile_sdk/rr3;

.field public c:I

.field public final synthetic d:Lads_mobile_sdk/mo2;

.field public final synthetic e:Lads_mobile_sdk/s11;

.field public final synthetic f:Z


# direct methods
.method public constructor <init>(Lads_mobile_sdk/mo2;Lads_mobile_sdk/s11;ZLkotlin/coroutines/Continuation;)V
    .registers 5

    .line 1
    iput-object p1, p0, Lads_mobile_sdk/ko2;->d:Lads_mobile_sdk/mo2;

    iput-object p2, p0, Lads_mobile_sdk/ko2;->e:Lads_mobile_sdk/s11;

    iput-boolean p3, p0, Lads_mobile_sdk/ko2;->f:Z

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 6

    .line 1
    new-instance p1, Lads_mobile_sdk/ko2;

    iget-object v0, p0, Lads_mobile_sdk/ko2;->d:Lads_mobile_sdk/mo2;

    iget-object v1, p0, Lads_mobile_sdk/ko2;->e:Lads_mobile_sdk/s11;

    iget-boolean v2, p0, Lads_mobile_sdk/ko2;->f:Z

    invoke-direct {p1, v0, v1, v2, p2}, Lads_mobile_sdk/ko2;-><init>(Lads_mobile_sdk/mo2;Lads_mobile_sdk/s11;ZLkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 1
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 2
    invoke-virtual {p0, p1, p2}, Lads_mobile_sdk/ko2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lads_mobile_sdk/ko2;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lads_mobile_sdk/ko2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 15

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 70
    iget v1, p0, Lads_mobile_sdk/ko2;->c:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_2d

    if-eq v1, v3, :cond_23

    if-ne v1, v2, :cond_1b

    iget-object v0, p0, Lads_mobile_sdk/ko2;->b:Lads_mobile_sdk/rr3;

    iget-object v1, p0, Lads_mobile_sdk/ko2;->a:Lads_mobile_sdk/rr3;

    :try_start_13
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_16
    .catchall {:try_start_13 .. :try_end_16} :catchall_18

    goto/16 :goto_cc

    :catchall_18
    move-exception p1

    goto/16 :goto_d6

    .line 71
    :cond_1b
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_23
    iget-object v0, p0, Lads_mobile_sdk/ko2;->b:Lads_mobile_sdk/rr3;

    iget-object v1, p0, Lads_mobile_sdk/ko2;->a:Lads_mobile_sdk/rr3;

    :try_start_27
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_2a
    .catchall {:try_start_27 .. :try_end_2a} :catchall_2b

    goto :goto_6f

    :catchall_2b
    move-exception p1

    goto :goto_77

    .line 72
    :cond_2d
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 73
    iget-object p1, p0, Lads_mobile_sdk/ko2;->d:Lads_mobile_sdk/mo2;

    .line 74
    iget-object v1, p1, Lads_mobile_sdk/mo2;->d:Lads_mobile_sdk/g83;

    .line 75
    iget-object v5, p0, Lads_mobile_sdk/ko2;->e:Lads_mobile_sdk/s11;

    iget-boolean v6, p0, Lads_mobile_sdk/ko2;->f:Z

    .line 197
    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v7

    .line 198
    new-instance v8, Lads_mobile_sdk/ks3;

    .line 199
    new-instance v9, Lads_mobile_sdk/n03;

    invoke-direct {v9}, Lads_mobile_sdk/n03;-><init>()V

    .line 200
    new-instance v10, Lads_mobile_sdk/tn1;

    invoke-direct {v10}, Lads_mobile_sdk/tn1;-><init>()V

    .line 201
    new-instance v11, Lads_mobile_sdk/m33;

    invoke-direct {v11}, Lads_mobile_sdk/m33;-><init>()V

    .line 202
    new-instance v12, Lads_mobile_sdk/zb;

    invoke-direct {v12}, Lads_mobile_sdk/zb;-><init>()V

    .line 203
    invoke-direct {v8, v9, v10, v11, v12}, Lads_mobile_sdk/ks3;-><init>(Lads_mobile_sdk/n03;Lads_mobile_sdk/tn1;Lads_mobile_sdk/m33;Lads_mobile_sdk/zb;)V

    .line 204
    invoke-static {}, Lads_mobile_sdk/hs3;->b()Lads_mobile_sdk/gs3;

    move-result-object v9

    .line 205
    iget-object v9, v9, Lads_mobile_sdk/gs3;->a:Lads_mobile_sdk/rr3;

    if-nez v9, :cond_b6

    .line 206
    invoke-static {v1, v5, v7, v8}, Lads_mobile_sdk/g83;->a(Lads_mobile_sdk/g83;Lads_mobile_sdk/s11;Ljava/util/List;Lads_mobile_sdk/ks3;)Lads_mobile_sdk/tu2;

    move-result-object v1

    .line 207
    :try_start_61
    iput-object v1, p0, Lads_mobile_sdk/ko2;->a:Lads_mobile_sdk/rr3;

    iput-object v1, p0, Lads_mobile_sdk/ko2;->b:Lads_mobile_sdk/rr3;

    iput v3, p0, Lads_mobile_sdk/ko2;->c:I

    invoke-static {p1, v6, p0}, Lads_mobile_sdk/mo2;->a(Lads_mobile_sdk/mo2;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1
    :try_end_6b
    .catchall {:try_start_61 .. :try_end_6b} :catchall_75

    if-ne p1, v0, :cond_6e

    goto :goto_ca

    :cond_6e
    move-object v0, v1

    .line 208
    :goto_6f
    :try_start_6f
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_71
    .catchall {:try_start_6f .. :try_end_71} :catchall_2b

    .line 339
    invoke-static {v0, v4}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    goto :goto_d1

    :catchall_75
    move-exception p1

    move-object v0, v1

    .line 347
    :goto_77
    :try_start_77
    invoke-virtual {v1, p1}, Lads_mobile_sdk/rr3;->b(Ljava/lang/Throwable;)V

    .line 351
    instance-of v2, p1, Lads_mobile_sdk/v24;

    if-nez v2, :cond_af

    .line 353
    instance-of v2, p1, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v2, :cond_8c

    instance-of v2, p1, Ljava/util/concurrent/CancellationException;

    if-nez v2, :cond_8c

    .line 359
    invoke-virtual {v1, p1}, Lads_mobile_sdk/rr3;->a(Ljava/lang/Throwable;)V

    goto :goto_8c

    :catchall_8a
    move-exception p1

    goto :goto_b0

    .line 365
    :cond_8c
    :goto_8c
    instance-of v1, p1, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v1, :cond_a7

    .line 366
    instance-of v1, p1, Ljava/util/concurrent/CancellationException;

    if-nez v1, :cond_9f

    .line 367
    instance-of v1, p1, Lads_mobile_sdk/w01;

    if-eqz v1, :cond_99

    throw p1

    .line 368
    :cond_99
    new-instance v1, Lads_mobile_sdk/b01;

    invoke-direct {v1, p1}, Lads_mobile_sdk/b01;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 369
    :cond_9f
    new-instance v1, Lads_mobile_sdk/wz0;

    check-cast p1, Ljava/util/concurrent/CancellationException;

    invoke-direct {v1, p1}, Lads_mobile_sdk/wz0;-><init>(Ljava/util/concurrent/CancellationException;)V

    throw v1

    .line 370
    :cond_a7
    new-instance v1, Lads_mobile_sdk/i21;

    check-cast p1, Lkotlinx/coroutines/TimeoutCancellationException;

    invoke-direct {v1, p1}, Lads_mobile_sdk/i21;-><init>(Lkotlinx/coroutines/TimeoutCancellationException;)V

    throw v1

    .line 371
    :cond_af
    throw p1
    :try_end_b0
    .catchall {:try_start_77 .. :try_end_b0} :catchall_8a

    .line 372
    :goto_b0
    :try_start_b0
    throw p1
    :try_end_b1
    .catchall {:try_start_b0 .. :try_end_b1} :catchall_b1

    :catchall_b1
    move-exception v1

    invoke-static {v0, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v1

    .line 406
    :cond_b6
    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v1

    invoke-static {v5, v1, v3}, Lads_mobile_sdk/hs3;->a(Lads_mobile_sdk/s11;Ljava/util/List;Z)Lads_mobile_sdk/rr3;

    move-result-object v1

    .line 407
    :try_start_be
    iput-object v1, p0, Lads_mobile_sdk/ko2;->a:Lads_mobile_sdk/rr3;

    iput-object v1, p0, Lads_mobile_sdk/ko2;->b:Lads_mobile_sdk/rr3;

    iput v2, p0, Lads_mobile_sdk/ko2;->c:I

    invoke-static {p1, v6, p0}, Lads_mobile_sdk/mo2;->a(Lads_mobile_sdk/mo2;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1
    :try_end_c8
    .catchall {:try_start_be .. :try_end_c8} :catchall_d4

    if-ne p1, v0, :cond_cb

    :goto_ca
    return-object v0

    :cond_cb
    move-object v0, v1

    .line 408
    :goto_cc
    :try_start_cc
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_ce
    .catchall {:try_start_cc .. :try_end_ce} :catchall_18

    .line 576
    invoke-static {v0, v4}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 577
    :goto_d1
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    :catchall_d4
    move-exception p1

    move-object v0, v1

    .line 746
    :goto_d6
    :try_start_d6
    invoke-virtual {v1, p1}, Lads_mobile_sdk/rr3;->b(Ljava/lang/Throwable;)V

    .line 750
    instance-of v2, p1, Lads_mobile_sdk/v24;

    if-nez v2, :cond_10e

    .line 752
    instance-of v2, p1, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v2, :cond_eb

    instance-of v2, p1, Ljava/util/concurrent/CancellationException;

    if-nez v2, :cond_eb

    .line 758
    invoke-virtual {v1, p1}, Lads_mobile_sdk/rr3;->a(Ljava/lang/Throwable;)V

    goto :goto_eb

    :catchall_e9
    move-exception p1

    goto :goto_10f

    .line 764
    :cond_eb
    :goto_eb
    instance-of v1, p1, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v1, :cond_106

    .line 765
    instance-of v1, p1, Ljava/util/concurrent/CancellationException;

    if-nez v1, :cond_fe

    .line 766
    instance-of v1, p1, Lads_mobile_sdk/w01;

    if-eqz v1, :cond_f8

    throw p1

    .line 767
    :cond_f8
    new-instance v1, Lads_mobile_sdk/b01;

    invoke-direct {v1, p1}, Lads_mobile_sdk/b01;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 768
    :cond_fe
    new-instance v1, Lads_mobile_sdk/wz0;

    check-cast p1, Ljava/util/concurrent/CancellationException;

    invoke-direct {v1, p1}, Lads_mobile_sdk/wz0;-><init>(Ljava/util/concurrent/CancellationException;)V

    throw v1

    .line 769
    :cond_106
    new-instance v1, Lads_mobile_sdk/i21;

    check-cast p1, Lkotlinx/coroutines/TimeoutCancellationException;

    invoke-direct {v1, p1}, Lads_mobile_sdk/i21;-><init>(Lkotlinx/coroutines/TimeoutCancellationException;)V

    throw v1

    .line 770
    :cond_10e
    throw p1
    :try_end_10f
    .catchall {:try_start_d6 .. :try_end_10f} :catchall_e9

    .line 771
    :goto_10f
    :try_start_10f
    throw p1
    :try_end_110
    .catchall {:try_start_10f .. :try_end_110} :catchall_110

    :catchall_110
    move-exception v1

    invoke-static {v0, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v1
.end method
