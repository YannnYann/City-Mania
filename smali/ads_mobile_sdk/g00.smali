###### Class ads_mobile_sdk.g00 (ads_mobile_sdk.g00)
.class public final Lads_mobile_sdk/g00;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public a:Ljava/lang/Object;

.field public b:Ljava/lang/Object;

.field public c:I

.field public final synthetic d:Lads_mobile_sdk/o00;

.field public final synthetic e:Z

.field public final synthetic f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/o00;ZLjava/lang/String;Lkotlin/coroutines/Continuation;)V
    .registers 5

    .line 1
    iput-object p1, p0, Lads_mobile_sdk/g00;->d:Lads_mobile_sdk/o00;

    iput-boolean p2, p0, Lads_mobile_sdk/g00;->e:Z

    iput-object p3, p0, Lads_mobile_sdk/g00;->f:Ljava/lang/String;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 6

    .line 1
    new-instance p1, Lads_mobile_sdk/g00;

    iget-object v0, p0, Lads_mobile_sdk/g00;->d:Lads_mobile_sdk/o00;

    iget-boolean v1, p0, Lads_mobile_sdk/g00;->e:Z

    iget-object v2, p0, Lads_mobile_sdk/g00;->f:Ljava/lang/String;

    invoke-direct {p1, v0, v1, v2, p2}, Lads_mobile_sdk/g00;-><init>(Lads_mobile_sdk/o00;ZLjava/lang/String;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 1
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 2
    invoke-virtual {p0, p1, p2}, Lads_mobile_sdk/g00;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lads_mobile_sdk/g00;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lads_mobile_sdk/g00;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 14

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 158
    iget v1, p0, Lads_mobile_sdk/g00;->c:I

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v1, :cond_59

    if-eq v1, v6, :cond_4d

    if-eq v1, v4, :cond_3e

    if-eq v1, v3, :cond_2e

    if-ne v1, v2, :cond_26

    iget-object v0, p0, Lads_mobile_sdk/g00;->b:Ljava/lang/Object;

    check-cast v0, Ljava/io/Closeable;

    iget-object v1, p0, Lads_mobile_sdk/g00;->a:Ljava/lang/Object;

    check-cast v1, Lads_mobile_sdk/rr3;

    :try_start_1e
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_21
    .catchall {:try_start_1e .. :try_end_21} :catchall_23

    goto/16 :goto_158

    :catchall_23
    move-exception p1

    goto/16 :goto_16a

    :cond_26
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 159
    :cond_2e
    iget-object v0, p0, Lads_mobile_sdk/g00;->b:Ljava/lang/Object;

    check-cast v0, Ljava/io/Closeable;

    iget-object v1, p0, Lads_mobile_sdk/g00;->a:Ljava/lang/Object;

    check-cast v1, Lads_mobile_sdk/rr3;

    :try_start_36
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_39
    .catchall {:try_start_36 .. :try_end_39} :catchall_3b

    goto/16 :goto_ef

    :catchall_3b
    move-exception p1

    goto/16 :goto_101

    .line 160
    :cond_3e
    iget-object v1, p0, Lads_mobile_sdk/g00;->b:Ljava/lang/Object;

    check-cast v1, Lads_mobile_sdk/o00;

    iget-object v4, p0, Lads_mobile_sdk/g00;->a:Ljava/lang/Object;

    check-cast v4, Lkotlinx/coroutines/sync/Mutex;

    :try_start_46
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_49
    .catchall {:try_start_46 .. :try_end_49} :catchall_4a

    goto :goto_7f

    :catchall_4a
    move-exception p1

    goto/16 :goto_1ab

    .line 161
    :cond_4d
    iget-object v1, p0, Lads_mobile_sdk/g00;->b:Ljava/lang/Object;

    check-cast v1, Lads_mobile_sdk/o00;

    iget-object v8, p0, Lads_mobile_sdk/g00;->a:Ljava/lang/Object;

    check-cast v8, Lkotlinx/coroutines/sync/Mutex;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_70

    :cond_59
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 162
    iget-object p1, p0, Lads_mobile_sdk/g00;->d:Lads_mobile_sdk/o00;

    .line 163
    iget-object v1, p1, Lads_mobile_sdk/o00;->s:Lkotlinx/coroutines/sync/Mutex;

    .line 164
    iput-object v1, p0, Lads_mobile_sdk/g00;->a:Ljava/lang/Object;

    iput-object p1, p0, Lads_mobile_sdk/g00;->b:Ljava/lang/Object;

    iput v6, p0, Lads_mobile_sdk/g00;->c:I

    invoke-interface {v1, v7, p0}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v8

    if-ne v8, v0, :cond_6e

    goto/16 :goto_154

    :cond_6e
    move-object v8, v1

    move-object v1, p1

    .line 165
    :goto_70
    :try_start_70
    iput-object v8, p0, Lads_mobile_sdk/g00;->a:Ljava/lang/Object;

    iput-object v1, p0, Lads_mobile_sdk/g00;->b:Ljava/lang/Object;

    iput v4, p0, Lads_mobile_sdk/g00;->c:I

    invoke-static {v1, p0}, Lads_mobile_sdk/o00;->a(Lads_mobile_sdk/o00;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1
    :try_end_7a
    .catchall {:try_start_70 .. :try_end_7a} :catchall_1a9

    if-ne p1, v0, :cond_7e

    goto/16 :goto_154

    :cond_7e
    move-object v4, v8

    .line 166
    :goto_7f
    :try_start_7f
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_8f

    invoke-static {v5}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object p1
    :try_end_8b
    .catchall {:try_start_7f .. :try_end_8b} :catchall_4a

    .line 778
    invoke-interface {v4, v7}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    return-object p1

    .line 779
    :cond_8f
    :try_start_8f
    sget-object p1, Lkotlin/time/Duration;->Companion:Lkotlin/time/Duration$Companion;

    .line 780
    iget-object p1, v1, Lads_mobile_sdk/o00;->l:Lads_mobile_sdk/tx;

    .line 781
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 782
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    .line 783
    sget-object p1, Lkotlin/time/DurationUnit;->MILLISECONDS:Lkotlin/time/DurationUnit;

    invoke-static {v8, v9, p1}, Lkotlin/time/DurationKt;->toDuration(JLkotlin/time/DurationUnit;)J

    move-result-wide v8

    .line 784
    iput-wide v8, v1, Lads_mobile_sdk/o00;->u:J

    .line 785
    iput-boolean v6, v1, Lads_mobile_sdk/o00;->t:Z

    .line 786
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_a6
    .catchall {:try_start_8f .. :try_end_a6} :catchall_4a

    .line 1394
    invoke-interface {v4, v7}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    .line 1395
    iget-object p1, p0, Lads_mobile_sdk/g00;->d:Lads_mobile_sdk/o00;

    .line 1396
    iget-object p1, p1, Lads_mobile_sdk/o00;->n:Lads_mobile_sdk/g83;

    .line 1397
    sget-object v1, Lads_mobile_sdk/s11;->f:Lads_mobile_sdk/s11;

    .line 1398
    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v4

    .line 1399
    new-instance v5, Lads_mobile_sdk/ks3;

    .line 1400
    new-instance v8, Lads_mobile_sdk/n03;

    invoke-direct {v8}, Lads_mobile_sdk/n03;-><init>()V

    .line 1401
    new-instance v9, Lads_mobile_sdk/tn1;

    invoke-direct {v9}, Lads_mobile_sdk/tn1;-><init>()V

    .line 1402
    new-instance v10, Lads_mobile_sdk/m33;

    invoke-direct {v10}, Lads_mobile_sdk/m33;-><init>()V

    .line 1403
    new-instance v11, Lads_mobile_sdk/zb;

    invoke-direct {v11}, Lads_mobile_sdk/zb;-><init>()V

    .line 1404
    invoke-direct {v5, v8, v9, v10, v11}, Lads_mobile_sdk/ks3;-><init>(Lads_mobile_sdk/n03;Lads_mobile_sdk/tn1;Lads_mobile_sdk/m33;Lads_mobile_sdk/zb;)V

    .line 1405
    iget-object v8, p0, Lads_mobile_sdk/g00;->d:Lads_mobile_sdk/o00;

    iget-boolean v9, p0, Lads_mobile_sdk/g00;->e:Z

    iget-object v10, p0, Lads_mobile_sdk/g00;->f:Ljava/lang/String;

    .line 1406
    invoke-static {}, Lads_mobile_sdk/hs3;->b()Lads_mobile_sdk/gs3;

    move-result-object v11

    .line 1407
    iget-object v11, v11, Lads_mobile_sdk/gs3;->a:Lads_mobile_sdk/rr3;

    if-nez v11, :cond_140

    .line 1408
    invoke-static {p1, v1, v4, v5}, Lads_mobile_sdk/g83;->a(Lads_mobile_sdk/g83;Lads_mobile_sdk/s11;Ljava/util/List;Lads_mobile_sdk/ks3;)Lads_mobile_sdk/tu2;

    move-result-object p1

    .line 1409
    :try_start_de
    iput-object p1, p0, Lads_mobile_sdk/g00;->a:Ljava/lang/Object;

    iput-object p1, p0, Lads_mobile_sdk/g00;->b:Ljava/lang/Object;

    iput v3, p0, Lads_mobile_sdk/g00;->c:I

    invoke-static {v8, v9, v10, p0}, Lads_mobile_sdk/o00;->a(Lads_mobile_sdk/o00;ZLjava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1
    :try_end_e8
    .catchall {:try_start_de .. :try_end_e8} :catchall_fd

    if-ne v1, v0, :cond_ec

    goto/16 :goto_154

    :cond_ec
    move-object v0, p1

    move-object p1, v1

    move-object v1, v0

    .line 1410
    :goto_ef
    :try_start_ef
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object p1
    :try_end_f9
    .catchall {:try_start_ef .. :try_end_f9} :catchall_3b

    .line 2028
    invoke-static {v0, v7}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object p1

    :catchall_fd
    move-exception v0

    move-object v1, p1

    move-object p1, v0

    move-object v0, v1

    .line 2036
    :goto_101
    :try_start_101
    invoke-virtual {v1, p1}, Lads_mobile_sdk/rr3;->b(Ljava/lang/Throwable;)V

    .line 2040
    instance-of v2, p1, Lads_mobile_sdk/v24;

    if-nez v2, :cond_139

    .line 2042
    instance-of v2, p1, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v2, :cond_116

    instance-of v2, p1, Ljava/util/concurrent/CancellationException;

    if-nez v2, :cond_116

    .line 2048
    invoke-virtual {v1, p1}, Lads_mobile_sdk/rr3;->a(Ljava/lang/Throwable;)V

    goto :goto_116

    :catchall_114
    move-exception p1

    goto :goto_13a

    .line 2054
    :cond_116
    :goto_116
    instance-of v1, p1, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v1, :cond_131

    .line 2055
    instance-of v1, p1, Ljava/util/concurrent/CancellationException;

    if-nez v1, :cond_129

    .line 2056
    instance-of v1, p1, Lads_mobile_sdk/w01;

    if-eqz v1, :cond_123

    throw p1

    .line 2057
    :cond_123
    new-instance v1, Lads_mobile_sdk/b01;

    invoke-direct {v1, p1}, Lads_mobile_sdk/b01;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 2058
    :cond_129
    new-instance v1, Lads_mobile_sdk/wz0;

    check-cast p1, Ljava/util/concurrent/CancellationException;

    invoke-direct {v1, p1}, Lads_mobile_sdk/wz0;-><init>(Ljava/util/concurrent/CancellationException;)V

    throw v1

    .line 2059
    :cond_131
    new-instance v1, Lads_mobile_sdk/i21;

    check-cast p1, Lkotlinx/coroutines/TimeoutCancellationException;

    invoke-direct {v1, p1}, Lads_mobile_sdk/i21;-><init>(Lkotlinx/coroutines/TimeoutCancellationException;)V

    throw v1

    .line 2060
    :cond_139
    throw p1
    :try_end_13a
    .catchall {:try_start_101 .. :try_end_13a} :catchall_114

    .line 2061
    :goto_13a
    :try_start_13a
    throw p1
    :try_end_13b
    .catchall {:try_start_13a .. :try_end_13b} :catchall_13b

    :catchall_13b
    move-exception v1

    invoke-static {v0, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v1

    .line 2095
    :cond_140
    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    invoke-static {v1, p1, v6}, Lads_mobile_sdk/hs3;->a(Lads_mobile_sdk/s11;Ljava/util/List;Z)Lads_mobile_sdk/rr3;

    move-result-object p1

    .line 2096
    :try_start_148
    iput-object p1, p0, Lads_mobile_sdk/g00;->a:Ljava/lang/Object;

    iput-object p1, p0, Lads_mobile_sdk/g00;->b:Ljava/lang/Object;

    iput v2, p0, Lads_mobile_sdk/g00;->c:I

    invoke-static {v8, v9, v10, p0}, Lads_mobile_sdk/o00;->a(Lads_mobile_sdk/o00;ZLjava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1
    :try_end_152
    .catchall {:try_start_148 .. :try_end_152} :catchall_166

    if-ne v1, v0, :cond_155

    :goto_154
    return-object v0

    :cond_155
    move-object v0, p1

    move-object p1, v1

    move-object v1, v0

    .line 2097
    :goto_158
    :try_start_158
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object p1
    :try_end_162
    .catchall {:try_start_158 .. :try_end_162} :catchall_23

    .line 2752
    invoke-static {v0, v7}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object p1

    :catchall_166
    move-exception v0

    move-object v1, p1

    move-object p1, v0

    move-object v0, v1

    .line 2760
    :goto_16a
    :try_start_16a
    invoke-virtual {v1, p1}, Lads_mobile_sdk/rr3;->b(Ljava/lang/Throwable;)V

    .line 2764
    instance-of v2, p1, Lads_mobile_sdk/v24;

    if-nez v2, :cond_1a2

    .line 2766
    instance-of v2, p1, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v2, :cond_17f

    instance-of v2, p1, Ljava/util/concurrent/CancellationException;

    if-nez v2, :cond_17f

    .line 2772
    invoke-virtual {v1, p1}, Lads_mobile_sdk/rr3;->a(Ljava/lang/Throwable;)V

    goto :goto_17f

    :catchall_17d
    move-exception p1

    goto :goto_1a3

    .line 2778
    :cond_17f
    :goto_17f
    instance-of v1, p1, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v1, :cond_19a

    .line 2779
    instance-of v1, p1, Ljava/util/concurrent/CancellationException;

    if-nez v1, :cond_192

    .line 2780
    instance-of v1, p1, Lads_mobile_sdk/w01;

    if-eqz v1, :cond_18c

    throw p1

    .line 2781
    :cond_18c
    new-instance v1, Lads_mobile_sdk/b01;

    invoke-direct {v1, p1}, Lads_mobile_sdk/b01;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 2782
    :cond_192
    new-instance v1, Lads_mobile_sdk/wz0;

    check-cast p1, Ljava/util/concurrent/CancellationException;

    invoke-direct {v1, p1}, Lads_mobile_sdk/wz0;-><init>(Ljava/util/concurrent/CancellationException;)V

    throw v1

    .line 2783
    :cond_19a
    new-instance v1, Lads_mobile_sdk/i21;

    check-cast p1, Lkotlinx/coroutines/TimeoutCancellationException;

    invoke-direct {v1, p1}, Lads_mobile_sdk/i21;-><init>(Lkotlinx/coroutines/TimeoutCancellationException;)V

    throw v1

    .line 2784
    :cond_1a2
    throw p1
    :try_end_1a3
    .catchall {:try_start_16a .. :try_end_1a3} :catchall_17d

    .line 2785
    :goto_1a3
    :try_start_1a3
    throw p1
    :try_end_1a4
    .catchall {:try_start_1a3 .. :try_end_1a4} :catchall_1a4

    :catchall_1a4
    move-exception v1

    invoke-static {v0, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v1

    :catchall_1a9
    move-exception p1

    move-object v4, v8

    .line 2786
    :goto_1ab
    invoke-interface {v4, v7}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw p1
.end method
