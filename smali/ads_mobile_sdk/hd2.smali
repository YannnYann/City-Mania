###### Class ads_mobile_sdk.hd2 (ads_mobile_sdk.hd2)
.class public final Lads_mobile_sdk/hd2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public a:Lads_mobile_sdk/rr3;

.field public b:Lads_mobile_sdk/rr3;

.field public c:I

.field public final synthetic d:Lads_mobile_sdk/kd2;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/kd2;Lkotlin/coroutines/Continuation;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lads_mobile_sdk/hd2;->d:Lads_mobile_sdk/kd2;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 4

    .line 1
    new-instance p1, Lads_mobile_sdk/hd2;

    iget-object v0, p0, Lads_mobile_sdk/hd2;->d:Lads_mobile_sdk/kd2;

    invoke-direct {p1, v0, p2}, Lads_mobile_sdk/hd2;-><init>(Lads_mobile_sdk/kd2;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 1
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 2
    new-instance p1, Lads_mobile_sdk/hd2;

    iget-object v0, p0, Lads_mobile_sdk/hd2;->d:Lads_mobile_sdk/kd2;

    invoke-direct {p1, v0, p2}, Lads_mobile_sdk/hd2;-><init>(Lads_mobile_sdk/kd2;Lkotlin/coroutines/Continuation;)V

    .line 3
    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lads_mobile_sdk/hd2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 14

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 59
    iget v1, p0, Lads_mobile_sdk/hd2;->c:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_2d

    if-eq v1, v3, :cond_23

    if-ne v1, v2, :cond_1b

    iget-object v0, p0, Lads_mobile_sdk/hd2;->b:Lads_mobile_sdk/rr3;

    iget-object v1, p0, Lads_mobile_sdk/hd2;->a:Lads_mobile_sdk/rr3;

    :try_start_13
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_16
    .catchall {:try_start_13 .. :try_end_16} :catchall_18

    goto/16 :goto_ca

    :catchall_18
    move-exception p1

    goto/16 :goto_d4

    .line 60
    :cond_1b
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_23
    iget-object v0, p0, Lads_mobile_sdk/hd2;->b:Lads_mobile_sdk/rr3;

    iget-object v1, p0, Lads_mobile_sdk/hd2;->a:Lads_mobile_sdk/rr3;

    :try_start_27
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_2a
    .catchall {:try_start_27 .. :try_end_2a} :catchall_2b

    goto :goto_6d

    :catchall_2b
    move-exception p1

    goto :goto_75

    .line 61
    :cond_2d
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 62
    iget-object p1, p0, Lads_mobile_sdk/hd2;->d:Lads_mobile_sdk/kd2;

    .line 63
    iget-object v1, p1, Lads_mobile_sdk/kd2;->g:Lads_mobile_sdk/g83;

    .line 64
    sget-object v5, Lads_mobile_sdk/s11;->p:Lads_mobile_sdk/s11;

    .line 232
    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v6

    .line 233
    new-instance v7, Lads_mobile_sdk/ks3;

    .line 234
    new-instance v8, Lads_mobile_sdk/n03;

    invoke-direct {v8}, Lads_mobile_sdk/n03;-><init>()V

    .line 235
    new-instance v9, Lads_mobile_sdk/tn1;

    invoke-direct {v9}, Lads_mobile_sdk/tn1;-><init>()V

    .line 236
    new-instance v10, Lads_mobile_sdk/m33;

    invoke-direct {v10}, Lads_mobile_sdk/m33;-><init>()V

    .line 237
    new-instance v11, Lads_mobile_sdk/zb;

    invoke-direct {v11}, Lads_mobile_sdk/zb;-><init>()V

    .line 238
    invoke-direct {v7, v8, v9, v10, v11}, Lads_mobile_sdk/ks3;-><init>(Lads_mobile_sdk/n03;Lads_mobile_sdk/tn1;Lads_mobile_sdk/m33;Lads_mobile_sdk/zb;)V

    .line 239
    invoke-static {}, Lads_mobile_sdk/hs3;->b()Lads_mobile_sdk/gs3;

    move-result-object v8

    .line 240
    iget-object v8, v8, Lads_mobile_sdk/gs3;->a:Lads_mobile_sdk/rr3;

    if-nez v8, :cond_b4

    .line 241
    invoke-static {v1, v5, v6, v7}, Lads_mobile_sdk/g83;->a(Lads_mobile_sdk/g83;Lads_mobile_sdk/s11;Ljava/util/List;Lads_mobile_sdk/ks3;)Lads_mobile_sdk/tu2;

    move-result-object v1

    .line 242
    :try_start_5f
    iput-object v1, p0, Lads_mobile_sdk/hd2;->a:Lads_mobile_sdk/rr3;

    iput-object v1, p0, Lads_mobile_sdk/hd2;->b:Lads_mobile_sdk/rr3;

    iput v3, p0, Lads_mobile_sdk/hd2;->c:I

    invoke-static {p1, p0}, Lads_mobile_sdk/kd2;->a(Lads_mobile_sdk/kd2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1
    :try_end_69
    .catchall {:try_start_5f .. :try_end_69} :catchall_73

    if-ne p1, v0, :cond_6c

    goto :goto_c8

    :cond_6c
    move-object v0, v1

    .line 243
    :goto_6d
    :try_start_6d
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_6f
    .catchall {:try_start_6d .. :try_end_6f} :catchall_2b

    .line 420
    invoke-static {v0, v4}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    goto :goto_cf

    :catchall_73
    move-exception p1

    move-object v0, v1

    .line 428
    :goto_75
    :try_start_75
    invoke-virtual {v1, p1}, Lads_mobile_sdk/rr3;->b(Ljava/lang/Throwable;)V

    .line 432
    instance-of v2, p1, Lads_mobile_sdk/v24;

    if-nez v2, :cond_ad

    .line 434
    instance-of v2, p1, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v2, :cond_8a

    instance-of v2, p1, Ljava/util/concurrent/CancellationException;

    if-nez v2, :cond_8a

    .line 440
    invoke-virtual {v1, p1}, Lads_mobile_sdk/rr3;->a(Ljava/lang/Throwable;)V

    goto :goto_8a

    :catchall_88
    move-exception p1

    goto :goto_ae

    .line 446
    :cond_8a
    :goto_8a
    instance-of v1, p1, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v1, :cond_a5

    .line 447
    instance-of v1, p1, Ljava/util/concurrent/CancellationException;

    if-nez v1, :cond_9d

    .line 448
    instance-of v1, p1, Lads_mobile_sdk/w01;

    if-eqz v1, :cond_97

    throw p1

    .line 449
    :cond_97
    new-instance v1, Lads_mobile_sdk/b01;

    invoke-direct {v1, p1}, Lads_mobile_sdk/b01;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 450
    :cond_9d
    new-instance v1, Lads_mobile_sdk/wz0;

    check-cast p1, Ljava/util/concurrent/CancellationException;

    invoke-direct {v1, p1}, Lads_mobile_sdk/wz0;-><init>(Ljava/util/concurrent/CancellationException;)V

    throw v1

    .line 451
    :cond_a5
    new-instance v1, Lads_mobile_sdk/i21;

    check-cast p1, Lkotlinx/coroutines/TimeoutCancellationException;

    invoke-direct {v1, p1}, Lads_mobile_sdk/i21;-><init>(Lkotlinx/coroutines/TimeoutCancellationException;)V

    throw v1

    .line 452
    :cond_ad
    throw p1
    :try_end_ae
    .catchall {:try_start_75 .. :try_end_ae} :catchall_88

    .line 453
    :goto_ae
    :try_start_ae
    throw p1
    :try_end_af
    .catchall {:try_start_ae .. :try_end_af} :catchall_af

    :catchall_af
    move-exception v1

    invoke-static {v0, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v1

    .line 487
    :cond_b4
    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v1

    invoke-static {v5, v1, v3}, Lads_mobile_sdk/hs3;->a(Lads_mobile_sdk/s11;Ljava/util/List;Z)Lads_mobile_sdk/rr3;

    move-result-object v1

    .line 488
    :try_start_bc
    iput-object v1, p0, Lads_mobile_sdk/hd2;->a:Lads_mobile_sdk/rr3;

    iput-object v1, p0, Lads_mobile_sdk/hd2;->b:Lads_mobile_sdk/rr3;

    iput v2, p0, Lads_mobile_sdk/hd2;->c:I

    invoke-static {p1, p0}, Lads_mobile_sdk/kd2;->a(Lads_mobile_sdk/kd2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1
    :try_end_c6
    .catchall {:try_start_bc .. :try_end_c6} :catchall_d2

    if-ne p1, v0, :cond_c9

    :goto_c8
    return-object v0

    :cond_c9
    move-object v0, v1

    .line 489
    :goto_ca
    :try_start_ca
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_cc
    .catchall {:try_start_ca .. :try_end_cc} :catchall_18

    .line 703
    invoke-static {v0, v4}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 704
    :goto_cf
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    :catchall_d2
    move-exception p1

    move-object v0, v1

    .line 919
    :goto_d4
    :try_start_d4
    invoke-virtual {v1, p1}, Lads_mobile_sdk/rr3;->b(Ljava/lang/Throwable;)V

    .line 923
    instance-of v2, p1, Lads_mobile_sdk/v24;

    if-nez v2, :cond_10c

    .line 925
    instance-of v2, p1, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v2, :cond_e9

    instance-of v2, p1, Ljava/util/concurrent/CancellationException;

    if-nez v2, :cond_e9

    .line 931
    invoke-virtual {v1, p1}, Lads_mobile_sdk/rr3;->a(Ljava/lang/Throwable;)V

    goto :goto_e9

    :catchall_e7
    move-exception p1

    goto :goto_10d

    .line 937
    :cond_e9
    :goto_e9
    instance-of v1, p1, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v1, :cond_104

    .line 938
    instance-of v1, p1, Ljava/util/concurrent/CancellationException;

    if-nez v1, :cond_fc

    .line 939
    instance-of v1, p1, Lads_mobile_sdk/w01;

    if-eqz v1, :cond_f6

    throw p1

    .line 940
    :cond_f6
    new-instance v1, Lads_mobile_sdk/b01;

    invoke-direct {v1, p1}, Lads_mobile_sdk/b01;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 941
    :cond_fc
    new-instance v1, Lads_mobile_sdk/wz0;

    check-cast p1, Ljava/util/concurrent/CancellationException;

    invoke-direct {v1, p1}, Lads_mobile_sdk/wz0;-><init>(Ljava/util/concurrent/CancellationException;)V

    throw v1

    .line 942
    :cond_104
    new-instance v1, Lads_mobile_sdk/i21;

    check-cast p1, Lkotlinx/coroutines/TimeoutCancellationException;

    invoke-direct {v1, p1}, Lads_mobile_sdk/i21;-><init>(Lkotlinx/coroutines/TimeoutCancellationException;)V

    throw v1

    .line 943
    :cond_10c
    throw p1
    :try_end_10d
    .catchall {:try_start_d4 .. :try_end_10d} :catchall_e7

    .line 944
    :goto_10d
    :try_start_10d
    throw p1
    :try_end_10e
    .catchall {:try_start_10d .. :try_end_10e} :catchall_10e

    :catchall_10e
    move-exception v1

    invoke-static {v0, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v1
.end method
