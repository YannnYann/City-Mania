###### Class ads_mobile_sdk.xn2 (ads_mobile_sdk.xn2)
.class public final Lads_mobile_sdk/xn2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic a:Lads_mobile_sdk/ao2;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/ao2;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lads_mobile_sdk/xn2;->a:Lads_mobile_sdk/ao2;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .registers 8

    .line 2
    iget-object v0, p0, Lads_mobile_sdk/xn2;->a:Lads_mobile_sdk/ao2;

    .line 3
    iget-object v0, v0, Lads_mobile_sdk/ao2;->e:Lads_mobile_sdk/g83;

    .line 4
    sget-object v1, Lads_mobile_sdk/s11;->Z1:Lads_mobile_sdk/s11;

    .line 5
    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v2

    .line 6
    iget-object v3, p0, Lads_mobile_sdk/xn2;->a:Lads_mobile_sdk/ao2;

    .line 7
    iget-object v4, v3, Lads_mobile_sdk/ao2;->f:Lads_mobile_sdk/ks3;

    .line 8
    invoke-static {}, Lads_mobile_sdk/hs3;->b()Lads_mobile_sdk/gs3;

    move-result-object v5

    .line 9
    iget-object v5, v5, Lads_mobile_sdk/gs3;->a:Lads_mobile_sdk/rr3;

    const/4 v6, 0x0

    if-nez v5, :cond_64

    .line 10
    invoke-static {v0, v1, v2, v4}, Lads_mobile_sdk/g83;->a(Lads_mobile_sdk/g83;Lads_mobile_sdk/s11;Ljava/util/List;Lads_mobile_sdk/ks3;)Lads_mobile_sdk/tu2;

    move-result-object v0

    .line 11
    :try_start_1b
    invoke-virtual {v3}, Lads_mobile_sdk/ao2;->a()V

    .line 12
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_20
    .catchall {:try_start_1b .. :try_end_20} :catchall_24

    .line 263
    invoke-static {v0, v6}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    goto :goto_75

    :catchall_24
    move-exception v1

    .line 271
    :try_start_25
    invoke-virtual {v0, v1}, Lads_mobile_sdk/rr3;->b(Ljava/lang/Throwable;)V

    .line 275
    instance-of v2, v1, Lads_mobile_sdk/v24;

    if-nez v2, :cond_5d

    .line 277
    instance-of v2, v1, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v2, :cond_3a

    instance-of v2, v1, Ljava/util/concurrent/CancellationException;

    if-nez v2, :cond_3a

    .line 283
    invoke-virtual {v0, v1}, Lads_mobile_sdk/rr3;->a(Ljava/lang/Throwable;)V

    goto :goto_3a

    :catchall_38
    move-exception v1

    goto :goto_5e

    .line 289
    :cond_3a
    :goto_3a
    instance-of v2, v1, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v2, :cond_55

    .line 290
    instance-of v2, v1, Ljava/util/concurrent/CancellationException;

    if-nez v2, :cond_4d

    .line 291
    instance-of v2, v1, Lads_mobile_sdk/w01;

    if-eqz v2, :cond_47

    throw v1

    .line 292
    :cond_47
    new-instance v2, Lads_mobile_sdk/b01;

    invoke-direct {v2, v1}, Lads_mobile_sdk/b01;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 293
    :cond_4d
    new-instance v2, Lads_mobile_sdk/wz0;

    check-cast v1, Ljava/util/concurrent/CancellationException;

    invoke-direct {v2, v1}, Lads_mobile_sdk/wz0;-><init>(Ljava/util/concurrent/CancellationException;)V

    throw v2

    .line 294
    :cond_55
    new-instance v2, Lads_mobile_sdk/i21;

    check-cast v1, Lkotlinx/coroutines/TimeoutCancellationException;

    invoke-direct {v2, v1}, Lads_mobile_sdk/i21;-><init>(Lkotlinx/coroutines/TimeoutCancellationException;)V

    throw v2

    .line 295
    :cond_5d
    throw v1
    :try_end_5e
    .catchall {:try_start_25 .. :try_end_5e} :catchall_38

    .line 296
    :goto_5e
    :try_start_5e
    throw v1
    :try_end_5f
    .catchall {:try_start_5e .. :try_end_5f} :catchall_5f

    :catchall_5f
    move-exception v2

    invoke-static {v0, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v2

    .line 330
    :cond_64
    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Lads_mobile_sdk/hs3;->a(Lads_mobile_sdk/s11;Ljava/util/List;Z)Lads_mobile_sdk/rr3;

    move-result-object v0

    .line 331
    :try_start_6d
    invoke-virtual {v3}, Lads_mobile_sdk/ao2;->a()V

    .line 332
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_72
    .catchall {:try_start_6d .. :try_end_72} :catchall_78

    .line 620
    invoke-static {v0, v6}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 621
    :goto_75
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    :catchall_78
    move-exception v1

    .line 622
    :try_start_79
    invoke-virtual {v0, v1}, Lads_mobile_sdk/rr3;->b(Ljava/lang/Throwable;)V

    .line 626
    instance-of v2, v1, Lads_mobile_sdk/v24;

    if-nez v2, :cond_b1

    .line 628
    instance-of v2, v1, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v2, :cond_8e

    instance-of v2, v1, Ljava/util/concurrent/CancellationException;

    if-nez v2, :cond_8e

    .line 634
    invoke-virtual {v0, v1}, Lads_mobile_sdk/rr3;->a(Ljava/lang/Throwable;)V

    goto :goto_8e

    :catchall_8c
    move-exception v1

    goto :goto_b2

    .line 640
    :cond_8e
    :goto_8e
    instance-of v2, v1, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v2, :cond_a9

    .line 641
    instance-of v2, v1, Ljava/util/concurrent/CancellationException;

    if-nez v2, :cond_a1

    .line 642
    instance-of v2, v1, Lads_mobile_sdk/w01;

    if-eqz v2, :cond_9b

    throw v1

    .line 643
    :cond_9b
    new-instance v2, Lads_mobile_sdk/b01;

    invoke-direct {v2, v1}, Lads_mobile_sdk/b01;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 644
    :cond_a1
    new-instance v2, Lads_mobile_sdk/wz0;

    check-cast v1, Ljava/util/concurrent/CancellationException;

    invoke-direct {v2, v1}, Lads_mobile_sdk/wz0;-><init>(Ljava/util/concurrent/CancellationException;)V

    throw v2

    .line 645
    :cond_a9
    new-instance v2, Lads_mobile_sdk/i21;

    check-cast v1, Lkotlinx/coroutines/TimeoutCancellationException;

    invoke-direct {v2, v1}, Lads_mobile_sdk/i21;-><init>(Lkotlinx/coroutines/TimeoutCancellationException;)V

    throw v2

    .line 646
    :cond_b1
    throw v1
    :try_end_b2
    .catchall {:try_start_79 .. :try_end_b2} :catchall_8c

    .line 647
    :goto_b2
    :try_start_b2
    throw v1
    :try_end_b3
    .catchall {:try_start_b2 .. :try_end_b3} :catchall_b3

    :catchall_b3
    move-exception v2

    invoke-static {v0, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v2
.end method
