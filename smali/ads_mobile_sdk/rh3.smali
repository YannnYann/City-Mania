###### Class ads_mobile_sdk.rh3 (ads_mobile_sdk.rh3)
.class public interface abstract Lads_mobile_sdk/rh3;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static synthetic a(Lads_mobile_sdk/rh3;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 10

    .line 1
    instance-of v0, p1, Lads_mobile_sdk/qh3;

    if-eqz v0, :cond_13

    move-object v0, p1

    check-cast v0, Lads_mobile_sdk/qh3;

    iget v1, v0, Lads_mobile_sdk/qh3;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/qh3;->e:I

    goto :goto_18

    :cond_13
    new-instance v0, Lads_mobile_sdk/qh3;

    invoke-direct {v0, p0, p1}, Lads_mobile_sdk/qh3;-><init>(Lads_mobile_sdk/rh3;Lkotlin/coroutines/Continuation;)V

    :goto_18
    iget-object p1, v0, Lads_mobile_sdk/qh3;->c:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 42
    iget v2, v0, Lads_mobile_sdk/qh3;->e:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_38

    if-ne v2, v3, :cond_30

    iget-object p0, v0, Lads_mobile_sdk/qh3;->b:Lads_mobile_sdk/rr3;

    iget-object v0, v0, Lads_mobile_sdk/qh3;->a:Lads_mobile_sdk/rr3;

    :try_start_2a
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_2d
    .catchall {:try_start_2a .. :try_end_2d} :catchall_2e

    goto :goto_6b

    :catchall_2e
    move-exception p1

    goto :goto_80

    .line 43
    :cond_30
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_38
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 44
    sget-object p1, Lads_mobile_sdk/s11;->O0:Lads_mobile_sdk/s11;

    .line 306
    sget-object v2, Lads_mobile_sdk/hs3;->a:Ljava/util/WeakHashMap;

    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v2

    invoke-static {p1, v2, v3}, Lads_mobile_sdk/hs3;->a(Lads_mobile_sdk/s11;Ljava/util/List;Z)Lads_mobile_sdk/rr3;

    move-result-object p1

    .line 307
    :try_start_47
    invoke-static {}, Lads_mobile_sdk/hs3;->a()Lads_mobile_sdk/rr3;

    move-result-object v2

    invoke-virtual {v2}, Lads_mobile_sdk/rr3;->e()Lads_mobile_sdk/uj2;

    move-result-object v2

    new-instance v5, Lads_mobile_sdk/gh3;

    invoke-interface {p0}, Lads_mobile_sdk/rh3;->f()Lads_mobile_sdk/y11;

    move-result-object v6

    const/4 v7, 0x6

    invoke-direct {v5, v6, v4, v7}, Lads_mobile_sdk/gh3;-><init>(Lads_mobile_sdk/y11;Lads_mobile_sdk/q11;I)V

    iput-object v5, v2, Lads_mobile_sdk/uj2;->t:Lads_mobile_sdk/gh3;

    .line 308
    iput-object p1, v0, Lads_mobile_sdk/qh3;->a:Lads_mobile_sdk/rr3;

    iput-object p1, v0, Lads_mobile_sdk/qh3;->b:Lads_mobile_sdk/rr3;

    iput v3, v0, Lads_mobile_sdk/qh3;->e:I

    invoke-interface {p0, v0}, Lads_mobile_sdk/rh3;->s(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0
    :try_end_65
    .catchall {:try_start_47 .. :try_end_65} :catchall_7c

    if-ne p0, v1, :cond_68

    return-object v1

    :cond_68
    move-object v0, p1

    move-object p1, p0

    move-object p0, v0

    .line 309
    :goto_6b
    :try_start_6b
    check-cast p1, Lads_mobile_sdk/v01;

    .line 575
    instance-of v1, p1, Lads_mobile_sdk/i01;

    if-eqz v1, :cond_78

    .line 576
    move-object v1, p1

    check-cast v1, Lads_mobile_sdk/i01;

    const/4 v2, 0x0

    .line 577
    invoke-static {v1, v2}, Lads_mobile_sdk/xs3;->a(Lads_mobile_sdk/i01;Z)V
    :try_end_78
    .catchall {:try_start_6b .. :try_end_78} :catchall_2e

    .line 578
    :cond_78
    invoke-static {p0, v4}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object p1

    :catchall_7c
    move-exception p0

    move-object v0, p1

    move-object p1, p0

    move-object p0, v0

    .line 586
    :goto_80
    :try_start_80
    invoke-virtual {v0, p1}, Lads_mobile_sdk/rr3;->b(Ljava/lang/Throwable;)V

    .line 590
    instance-of v1, p1, Lads_mobile_sdk/v24;

    if-nez v1, :cond_b8

    .line 592
    instance-of v1, p1, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v1, :cond_95

    instance-of v1, p1, Ljava/util/concurrent/CancellationException;

    if-nez v1, :cond_95

    .line 598
    invoke-virtual {v0, p1}, Lads_mobile_sdk/rr3;->a(Ljava/lang/Throwable;)V

    goto :goto_95

    :catchall_93
    move-exception p1

    goto :goto_b9

    .line 604
    :cond_95
    :goto_95
    instance-of v0, p1, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v0, :cond_b0

    .line 605
    instance-of v0, p1, Ljava/util/concurrent/CancellationException;

    if-nez v0, :cond_a8

    .line 606
    instance-of v0, p1, Lads_mobile_sdk/w01;

    if-eqz v0, :cond_a2

    throw p1

    .line 607
    :cond_a2
    new-instance v0, Lads_mobile_sdk/b01;

    invoke-direct {v0, p1}, Lads_mobile_sdk/b01;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 608
    :cond_a8
    new-instance v0, Lads_mobile_sdk/wz0;

    check-cast p1, Ljava/util/concurrent/CancellationException;

    invoke-direct {v0, p1}, Lads_mobile_sdk/wz0;-><init>(Ljava/util/concurrent/CancellationException;)V

    throw v0

    .line 609
    :cond_b0
    new-instance v0, Lads_mobile_sdk/i21;

    check-cast p1, Lkotlinx/coroutines/TimeoutCancellationException;

    invoke-direct {v0, p1}, Lads_mobile_sdk/i21;-><init>(Lkotlinx/coroutines/TimeoutCancellationException;)V

    throw v0

    .line 610
    :cond_b8
    throw p1
    :try_end_b9
    .catchall {:try_start_80 .. :try_end_b9} :catchall_93

    .line 611
    :goto_b9
    :try_start_b9
    throw p1
    :try_end_ba
    .catchall {:try_start_b9 .. :try_end_ba} :catchall_ba

    :catchall_ba
    move-exception v0

    invoke-static {p0, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method public b(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-static {p0, p1}, Lads_mobile_sdk/rh3;->a(Lads_mobile_sdk/rh3;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public abstract f()Lads_mobile_sdk/y11;
.end method

.method public abstract s(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end method
