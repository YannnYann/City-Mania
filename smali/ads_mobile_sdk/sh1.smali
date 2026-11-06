###### Class ads_mobile_sdk.sh1 (ads_mobile_sdk.sh1)
.class public final Lads_mobile_sdk/sh1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic a:Lads_mobile_sdk/th1;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/th1;Lkotlin/coroutines/Continuation;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lads_mobile_sdk/sh1;->a:Lads_mobile_sdk/th1;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 4

    .line 1
    new-instance p1, Lads_mobile_sdk/sh1;

    iget-object v0, p0, Lads_mobile_sdk/sh1;->a:Lads_mobile_sdk/th1;

    invoke-direct {p1, v0, p2}, Lads_mobile_sdk/sh1;-><init>(Lads_mobile_sdk/th1;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 1
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 2
    new-instance p1, Lads_mobile_sdk/sh1;

    iget-object v0, p0, Lads_mobile_sdk/sh1;->a:Lads_mobile_sdk/th1;

    invoke-direct {p1, v0, p2}, Lads_mobile_sdk/sh1;-><init>(Lads_mobile_sdk/th1;Lkotlin/coroutines/Continuation;)V

    .line 3
    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lads_mobile_sdk/sh1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 10

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 44
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 45
    iget-object p1, p0, Lads_mobile_sdk/sh1;->a:Lads_mobile_sdk/th1;

    .line 46
    iget-object v0, p1, Lads_mobile_sdk/th1;->g:Lads_mobile_sdk/g83;

    .line 47
    sget-object v1, Lads_mobile_sdk/s11;->M0:Lads_mobile_sdk/s11;

    .line 104
    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v2

    .line 105
    new-instance v3, Lads_mobile_sdk/ks3;

    .line 106
    new-instance v4, Lads_mobile_sdk/n03;

    invoke-direct {v4}, Lads_mobile_sdk/n03;-><init>()V

    .line 107
    new-instance v5, Lads_mobile_sdk/tn1;

    invoke-direct {v5}, Lads_mobile_sdk/tn1;-><init>()V

    .line 108
    new-instance v6, Lads_mobile_sdk/m33;

    invoke-direct {v6}, Lads_mobile_sdk/m33;-><init>()V

    .line 109
    new-instance v7, Lads_mobile_sdk/zb;

    invoke-direct {v7}, Lads_mobile_sdk/zb;-><init>()V

    .line 110
    invoke-direct {v3, v4, v5, v6, v7}, Lads_mobile_sdk/ks3;-><init>(Lads_mobile_sdk/n03;Lads_mobile_sdk/tn1;Lads_mobile_sdk/m33;Lads_mobile_sdk/zb;)V

    .line 111
    invoke-static {}, Lads_mobile_sdk/hs3;->b()Lads_mobile_sdk/gs3;

    move-result-object v4

    .line 112
    iget-object v4, v4, Lads_mobile_sdk/gs3;->a:Lads_mobile_sdk/rr3;

    const/4 v5, 0x0

    if-nez v4, :cond_86

    .line 113
    invoke-static {v0, v1, v2, v3}, Lads_mobile_sdk/g83;->a(Lads_mobile_sdk/g83;Lads_mobile_sdk/s11;Ljava/util/List;Lads_mobile_sdk/ks3;)Lads_mobile_sdk/tu2;

    move-result-object v0

    .line 114
    :try_start_36
    iget-object v1, p1, Lads_mobile_sdk/th1;->h:Lads_mobile_sdk/eh1;

    .line 115
    new-instance v2, Lads_mobile_sdk/rh1;

    invoke-direct {v2, p1}, Lads_mobile_sdk/rh1;-><init>(Lads_mobile_sdk/th1;)V

    .line 116
    invoke-virtual {v1, v2}, Lads_mobile_sdk/eh1;->a(Lads_mobile_sdk/rh1;)V

    .line 124
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_42
    .catchall {:try_start_36 .. :try_end_42} :catchall_46

    .line 181
    invoke-static {v0, v5}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    goto :goto_9e

    :catchall_46
    move-exception p1

    .line 189
    :try_start_47
    invoke-virtual {v0, p1}, Lads_mobile_sdk/rr3;->b(Ljava/lang/Throwable;)V

    .line 193
    instance-of v1, p1, Lads_mobile_sdk/v24;

    if-nez v1, :cond_7f

    .line 195
    instance-of v1, p1, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v1, :cond_5c

    instance-of v1, p1, Ljava/util/concurrent/CancellationException;

    if-nez v1, :cond_5c

    .line 201
    invoke-virtual {v0, p1}, Lads_mobile_sdk/rr3;->a(Ljava/lang/Throwable;)V

    goto :goto_5c

    :catchall_5a
    move-exception p1

    goto :goto_80

    .line 207
    :cond_5c
    :goto_5c
    instance-of v1, p1, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v1, :cond_77

    .line 208
    instance-of v1, p1, Ljava/util/concurrent/CancellationException;

    if-nez v1, :cond_6f

    .line 209
    instance-of v1, p1, Lads_mobile_sdk/w01;

    if-eqz v1, :cond_69

    throw p1

    .line 210
    :cond_69
    new-instance v1, Lads_mobile_sdk/b01;

    invoke-direct {v1, p1}, Lads_mobile_sdk/b01;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 211
    :cond_6f
    new-instance v1, Lads_mobile_sdk/wz0;

    check-cast p1, Ljava/util/concurrent/CancellationException;

    invoke-direct {v1, p1}, Lads_mobile_sdk/wz0;-><init>(Ljava/util/concurrent/CancellationException;)V

    throw v1

    .line 212
    :cond_77
    new-instance v1, Lads_mobile_sdk/i21;

    check-cast p1, Lkotlinx/coroutines/TimeoutCancellationException;

    invoke-direct {v1, p1}, Lads_mobile_sdk/i21;-><init>(Lkotlinx/coroutines/TimeoutCancellationException;)V

    throw v1

    .line 213
    :cond_7f
    throw p1
    :try_end_80
    .catchall {:try_start_47 .. :try_end_80} :catchall_5a

    .line 214
    :goto_80
    :try_start_80
    throw p1
    :try_end_81
    .catchall {:try_start_80 .. :try_end_81} :catchall_81

    :catchall_81
    move-exception v1

    invoke-static {v0, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v1

    .line 248
    :cond_86
    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Lads_mobile_sdk/hs3;->a(Lads_mobile_sdk/s11;Ljava/util/List;Z)Lads_mobile_sdk/rr3;

    move-result-object v0

    .line 249
    :try_start_8f
    iget-object v1, p1, Lads_mobile_sdk/th1;->h:Lads_mobile_sdk/eh1;

    .line 250
    new-instance v2, Lads_mobile_sdk/rh1;

    invoke-direct {v2, p1}, Lads_mobile_sdk/rh1;-><init>(Lads_mobile_sdk/th1;)V

    .line 251
    invoke-virtual {v1, v2}, Lads_mobile_sdk/eh1;->a(Lads_mobile_sdk/rh1;)V

    .line 259
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_9b
    .catchall {:try_start_8f .. :try_end_9b} :catchall_a1

    .line 353
    invoke-static {v0, v5}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 354
    :goto_9e
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    :catchall_a1
    move-exception p1

    .line 449
    :try_start_a2
    invoke-virtual {v0, p1}, Lads_mobile_sdk/rr3;->b(Ljava/lang/Throwable;)V

    .line 453
    instance-of v1, p1, Lads_mobile_sdk/v24;

    if-nez v1, :cond_da

    .line 455
    instance-of v1, p1, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v1, :cond_b7

    instance-of v1, p1, Ljava/util/concurrent/CancellationException;

    if-nez v1, :cond_b7

    .line 461
    invoke-virtual {v0, p1}, Lads_mobile_sdk/rr3;->a(Ljava/lang/Throwable;)V

    goto :goto_b7

    :catchall_b5
    move-exception p1

    goto :goto_db

    .line 467
    :cond_b7
    :goto_b7
    instance-of v1, p1, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v1, :cond_d2

    .line 468
    instance-of v1, p1, Ljava/util/concurrent/CancellationException;

    if-nez v1, :cond_ca

    .line 469
    instance-of v1, p1, Lads_mobile_sdk/w01;

    if-eqz v1, :cond_c4

    throw p1

    .line 470
    :cond_c4
    new-instance v1, Lads_mobile_sdk/b01;

    invoke-direct {v1, p1}, Lads_mobile_sdk/b01;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 471
    :cond_ca
    new-instance v1, Lads_mobile_sdk/wz0;

    check-cast p1, Ljava/util/concurrent/CancellationException;

    invoke-direct {v1, p1}, Lads_mobile_sdk/wz0;-><init>(Ljava/util/concurrent/CancellationException;)V

    throw v1

    .line 472
    :cond_d2
    new-instance v1, Lads_mobile_sdk/i21;

    check-cast p1, Lkotlinx/coroutines/TimeoutCancellationException;

    invoke-direct {v1, p1}, Lads_mobile_sdk/i21;-><init>(Lkotlinx/coroutines/TimeoutCancellationException;)V

    throw v1

    .line 473
    :cond_da
    throw p1
    :try_end_db
    .catchall {:try_start_a2 .. :try_end_db} :catchall_b5

    .line 474
    :goto_db
    :try_start_db
    throw p1
    :try_end_dc
    .catchall {:try_start_db .. :try_end_dc} :catchall_dc

    :catchall_dc
    move-exception v1

    invoke-static {v0, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v1
.end method
