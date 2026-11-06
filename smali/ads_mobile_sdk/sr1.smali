###### Class ads_mobile_sdk.sr1 (ads_mobile_sdk.sr1)
.class public final Lads_mobile_sdk/sr1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public a:Lads_mobile_sdk/rr3;

.field public b:Lads_mobile_sdk/rr3;

.field public c:I

.field public final synthetic d:Lads_mobile_sdk/yr1;

.field public final synthetic e:Lads_mobile_sdk/r41;

.field public final synthetic f:Lads_mobile_sdk/r31;

.field public final synthetic g:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/yr1;Lads_mobile_sdk/r41;Lads_mobile_sdk/r31;Landroid/net/Uri;Lkotlin/coroutines/Continuation;)V
    .registers 6

    .line 1
    iput-object p1, p0, Lads_mobile_sdk/sr1;->d:Lads_mobile_sdk/yr1;

    iput-object p2, p0, Lads_mobile_sdk/sr1;->e:Lads_mobile_sdk/r41;

    iput-object p3, p0, Lads_mobile_sdk/sr1;->f:Lads_mobile_sdk/r31;

    iput-object p4, p0, Lads_mobile_sdk/sr1;->g:Landroid/net/Uri;

    const/4 p1, 0x1

    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 8

    .line 1
    new-instance v0, Lads_mobile_sdk/sr1;

    iget-object v1, p0, Lads_mobile_sdk/sr1;->d:Lads_mobile_sdk/yr1;

    iget-object v2, p0, Lads_mobile_sdk/sr1;->e:Lads_mobile_sdk/r41;

    iget-object v3, p0, Lads_mobile_sdk/sr1;->f:Lads_mobile_sdk/r31;

    iget-object v4, p0, Lads_mobile_sdk/sr1;->g:Landroid/net/Uri;

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lads_mobile_sdk/sr1;-><init>(Lads_mobile_sdk/yr1;Lads_mobile_sdk/r41;Lads_mobile_sdk/r31;Landroid/net/Uri;Lkotlin/coroutines/Continuation;)V

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 1
    check-cast p1, Lkotlin/coroutines/Continuation;

    .line 2
    invoke-virtual {p0, p1}, Lads_mobile_sdk/sr1;->create(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lads_mobile_sdk/sr1;

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, v0}, Lads_mobile_sdk/sr1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 14

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 163
    iget v1, p0, Lads_mobile_sdk/sr1;->c:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_2d

    if-eq v1, v3, :cond_23

    if-ne v1, v2, :cond_1b

    iget-object v0, p0, Lads_mobile_sdk/sr1;->b:Lads_mobile_sdk/rr3;

    iget-object v1, p0, Lads_mobile_sdk/sr1;->a:Lads_mobile_sdk/rr3;

    :try_start_13
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_16
    .catchall {:try_start_13 .. :try_end_16} :catchall_18

    goto/16 :goto_e9

    :catchall_18
    move-exception p1

    goto/16 :goto_f5

    .line 164
    :cond_1b
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_23
    iget-object v0, p0, Lads_mobile_sdk/sr1;->b:Lads_mobile_sdk/rr3;

    iget-object v1, p0, Lads_mobile_sdk/sr1;->a:Lads_mobile_sdk/rr3;

    :try_start_27
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_2a
    .catchall {:try_start_27 .. :try_end_2a} :catchall_2b

    goto :goto_74

    :catchall_2b
    move-exception p1

    goto :goto_7f

    .line 165
    :cond_2d
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 166
    iget-object p1, p0, Lads_mobile_sdk/sr1;->d:Lads_mobile_sdk/yr1;

    .line 167
    iget-object p1, p1, Lads_mobile_sdk/yr1;->a:Lads_mobile_sdk/g83;

    .line 168
    sget-object v1, Lads_mobile_sdk/s11;->R0:Lads_mobile_sdk/s11;

    .line 169
    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v5

    .line 170
    iget-object v6, p0, Lads_mobile_sdk/sr1;->d:Lads_mobile_sdk/yr1;

    .line 171
    iget-object v7, v6, Lads_mobile_sdk/yr1;->b:Lads_mobile_sdk/ks3;

    .line 172
    iget-object v8, p0, Lads_mobile_sdk/sr1;->e:Lads_mobile_sdk/r41;

    iget-object v9, p0, Lads_mobile_sdk/sr1;->f:Lads_mobile_sdk/r31;

    iget-object v10, p0, Lads_mobile_sdk/sr1;->g:Landroid/net/Uri;

    .line 173
    invoke-static {}, Lads_mobile_sdk/hs3;->b()Lads_mobile_sdk/gs3;

    move-result-object v11

    .line 174
    iget-object v11, v11, Lads_mobile_sdk/gs3;->a:Lads_mobile_sdk/rr3;

    if-nez v11, :cond_be

    .line 175
    invoke-static {p1, v1, v5, v7}, Lads_mobile_sdk/g83;->a(Lads_mobile_sdk/g83;Lads_mobile_sdk/s11;Ljava/util/List;Lads_mobile_sdk/ks3;)Lads_mobile_sdk/tu2;

    move-result-object p1

    .line 176
    :try_start_50
    invoke-static {}, Lads_mobile_sdk/hs3;->a()Lads_mobile_sdk/rr3;

    move-result-object v1

    invoke-virtual {v1}, Lads_mobile_sdk/rr3;->e()Lads_mobile_sdk/uj2;

    move-result-object v1

    invoke-interface {v8}, Lads_mobile_sdk/r41;->g()Lads_mobile_sdk/u11;

    move-result-object v2

    iput-object v2, v1, Lads_mobile_sdk/uj2;->l:Lads_mobile_sdk/u11;

    .line 177
    iget-object v1, v6, Lads_mobile_sdk/yr1;->c:Lads_mobile_sdk/o21;

    .line 178
    invoke-virtual {v1, v10}, Lads_mobile_sdk/o21;->d(Landroid/net/Uri;)Ljava/util/Map;

    move-result-object v1

    iput-object p1, p0, Lads_mobile_sdk/sr1;->a:Lads_mobile_sdk/rr3;

    iput-object p1, p0, Lads_mobile_sdk/sr1;->b:Lads_mobile_sdk/rr3;

    iput v3, p0, Lads_mobile_sdk/sr1;->c:I

    invoke-interface {v8, v9, v1, p0}, Lads_mobile_sdk/r41;->a(Lads_mobile_sdk/r31;Ljava/util/Map;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1
    :try_end_6e
    .catchall {:try_start_50 .. :try_end_6e} :catchall_7b

    if-ne v1, v0, :cond_72

    goto/16 :goto_e6

    :cond_72
    move-object v0, p1

    move-object v1, v0

    .line 179
    :goto_74
    :try_start_74
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_76
    .catchall {:try_start_74 .. :try_end_76} :catchall_2b

    .line 298
    invoke-static {v0, v4}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    goto/16 :goto_ee

    :catchall_7b
    move-exception v0

    move-object v1, p1

    move-object p1, v0

    move-object v0, v1

    .line 306
    :goto_7f
    :try_start_7f
    invoke-virtual {v1, p1}, Lads_mobile_sdk/rr3;->b(Ljava/lang/Throwable;)V

    .line 310
    instance-of v2, p1, Lads_mobile_sdk/v24;

    if-nez v2, :cond_b7

    .line 312
    instance-of v2, p1, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v2, :cond_94

    instance-of v2, p1, Ljava/util/concurrent/CancellationException;

    if-nez v2, :cond_94

    .line 318
    invoke-virtual {v1, p1}, Lads_mobile_sdk/rr3;->a(Ljava/lang/Throwable;)V

    goto :goto_94

    :catchall_92
    move-exception p1

    goto :goto_b8

    .line 324
    :cond_94
    :goto_94
    instance-of v1, p1, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v1, :cond_af

    .line 325
    instance-of v1, p1, Ljava/util/concurrent/CancellationException;

    if-nez v1, :cond_a7

    .line 326
    instance-of v1, p1, Lads_mobile_sdk/w01;

    if-eqz v1, :cond_a1

    throw p1

    .line 327
    :cond_a1
    new-instance v1, Lads_mobile_sdk/b01;

    invoke-direct {v1, p1}, Lads_mobile_sdk/b01;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 328
    :cond_a7
    new-instance v1, Lads_mobile_sdk/wz0;

    check-cast p1, Ljava/util/concurrent/CancellationException;

    invoke-direct {v1, p1}, Lads_mobile_sdk/wz0;-><init>(Ljava/util/concurrent/CancellationException;)V

    throw v1

    .line 329
    :cond_af
    new-instance v1, Lads_mobile_sdk/i21;

    check-cast p1, Lkotlinx/coroutines/TimeoutCancellationException;

    invoke-direct {v1, p1}, Lads_mobile_sdk/i21;-><init>(Lkotlinx/coroutines/TimeoutCancellationException;)V

    throw v1

    .line 330
    :cond_b7
    throw p1
    :try_end_b8
    .catchall {:try_start_7f .. :try_end_b8} :catchall_92

    .line 331
    :goto_b8
    :try_start_b8
    throw p1
    :try_end_b9
    .catchall {:try_start_b8 .. :try_end_b9} :catchall_b9

    :catchall_b9
    move-exception v1

    invoke-static {v0, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v1

    .line 365
    :cond_be
    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    invoke-static {v1, p1, v3}, Lads_mobile_sdk/hs3;->a(Lads_mobile_sdk/s11;Ljava/util/List;Z)Lads_mobile_sdk/rr3;

    move-result-object p1

    .line 366
    :try_start_c6
    invoke-static {}, Lads_mobile_sdk/hs3;->a()Lads_mobile_sdk/rr3;

    move-result-object v1

    invoke-virtual {v1}, Lads_mobile_sdk/rr3;->e()Lads_mobile_sdk/uj2;

    move-result-object v1

    invoke-interface {v8}, Lads_mobile_sdk/r41;->g()Lads_mobile_sdk/u11;

    move-result-object v3

    iput-object v3, v1, Lads_mobile_sdk/uj2;->l:Lads_mobile_sdk/u11;

    .line 367
    iget-object v1, v6, Lads_mobile_sdk/yr1;->c:Lads_mobile_sdk/o21;

    .line 368
    invoke-virtual {v1, v10}, Lads_mobile_sdk/o21;->d(Landroid/net/Uri;)Ljava/util/Map;

    move-result-object v1

    iput-object p1, p0, Lads_mobile_sdk/sr1;->a:Lads_mobile_sdk/rr3;

    iput-object p1, p0, Lads_mobile_sdk/sr1;->b:Lads_mobile_sdk/rr3;

    iput v2, p0, Lads_mobile_sdk/sr1;->c:I

    invoke-interface {v8, v9, v1, p0}, Lads_mobile_sdk/r41;->a(Lads_mobile_sdk/r31;Ljava/util/Map;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1
    :try_end_e4
    .catchall {:try_start_c6 .. :try_end_e4} :catchall_f1

    if-ne v1, v0, :cond_e7

    :goto_e6
    return-object v0

    :cond_e7
    move-object v0, p1

    move-object v1, v0

    .line 369
    :goto_e9
    :try_start_e9
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_eb
    .catchall {:try_start_e9 .. :try_end_eb} :catchall_18

    .line 525
    invoke-static {v0, v4}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 526
    :goto_ee
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    :catchall_f1
    move-exception v0

    move-object v1, p1

    move-object p1, v0

    move-object v0, v1

    .line 683
    :goto_f5
    :try_start_f5
    invoke-virtual {v1, p1}, Lads_mobile_sdk/rr3;->b(Ljava/lang/Throwable;)V

    .line 687
    instance-of v2, p1, Lads_mobile_sdk/v24;

    if-nez v2, :cond_12d

    .line 689
    instance-of v2, p1, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v2, :cond_10a

    instance-of v2, p1, Ljava/util/concurrent/CancellationException;

    if-nez v2, :cond_10a

    .line 695
    invoke-virtual {v1, p1}, Lads_mobile_sdk/rr3;->a(Ljava/lang/Throwable;)V

    goto :goto_10a

    :catchall_108
    move-exception p1

    goto :goto_12e

    .line 701
    :cond_10a
    :goto_10a
    instance-of v1, p1, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v1, :cond_125

    .line 702
    instance-of v1, p1, Ljava/util/concurrent/CancellationException;

    if-nez v1, :cond_11d

    .line 703
    instance-of v1, p1, Lads_mobile_sdk/w01;

    if-eqz v1, :cond_117

    throw p1

    .line 704
    :cond_117
    new-instance v1, Lads_mobile_sdk/b01;

    invoke-direct {v1, p1}, Lads_mobile_sdk/b01;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 705
    :cond_11d
    new-instance v1, Lads_mobile_sdk/wz0;

    check-cast p1, Ljava/util/concurrent/CancellationException;

    invoke-direct {v1, p1}, Lads_mobile_sdk/wz0;-><init>(Ljava/util/concurrent/CancellationException;)V

    throw v1

    .line 706
    :cond_125
    new-instance v1, Lads_mobile_sdk/i21;

    check-cast p1, Lkotlinx/coroutines/TimeoutCancellationException;

    invoke-direct {v1, p1}, Lads_mobile_sdk/i21;-><init>(Lkotlinx/coroutines/TimeoutCancellationException;)V

    throw v1

    .line 707
    :cond_12d
    throw p1
    :try_end_12e
    .catchall {:try_start_f5 .. :try_end_12e} :catchall_108

    .line 708
    :goto_12e
    :try_start_12e
    throw p1
    :try_end_12f
    .catchall {:try_start_12e .. :try_end_12f} :catchall_12f

    :catchall_12f
    move-exception v1

    invoke-static {v0, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v1
.end method
