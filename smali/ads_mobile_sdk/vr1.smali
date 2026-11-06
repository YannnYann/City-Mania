###### Class ads_mobile_sdk.vr1 (ads_mobile_sdk.vr1)
.class public final Lads_mobile_sdk/vr1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public a:Lads_mobile_sdk/rr3;

.field public b:Lads_mobile_sdk/rr3;

.field public c:I

.field public final synthetic d:Lads_mobile_sdk/yr1;

.field public final synthetic e:Lads_mobile_sdk/t53;

.field public final synthetic f:Lcom/google/gson/JsonObject;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/yr1;Lads_mobile_sdk/t53;Lcom/google/gson/JsonObject;Lkotlin/coroutines/Continuation;)V
    .registers 5

    .line 1
    iput-object p1, p0, Lads_mobile_sdk/vr1;->d:Lads_mobile_sdk/yr1;

    iput-object p2, p0, Lads_mobile_sdk/vr1;->e:Lads_mobile_sdk/t53;

    iput-object p3, p0, Lads_mobile_sdk/vr1;->f:Lcom/google/gson/JsonObject;

    const/4 p1, 0x1

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 6

    .line 1
    new-instance v0, Lads_mobile_sdk/vr1;

    iget-object v1, p0, Lads_mobile_sdk/vr1;->d:Lads_mobile_sdk/yr1;

    iget-object v2, p0, Lads_mobile_sdk/vr1;->e:Lads_mobile_sdk/t53;

    iget-object v3, p0, Lads_mobile_sdk/vr1;->f:Lcom/google/gson/JsonObject;

    invoke-direct {v0, v1, v2, v3, p1}, Lads_mobile_sdk/vr1;-><init>(Lads_mobile_sdk/yr1;Lads_mobile_sdk/t53;Lcom/google/gson/JsonObject;Lkotlin/coroutines/Continuation;)V

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 1
    check-cast p1, Lkotlin/coroutines/Continuation;

    .line 2
    invoke-virtual {p0, p1}, Lads_mobile_sdk/vr1;->create(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lads_mobile_sdk/vr1;

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, v0}, Lads_mobile_sdk/vr1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 12

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 121
    iget v1, p0, Lads_mobile_sdk/vr1;->c:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_2d

    if-eq v1, v3, :cond_23

    if-ne v1, v2, :cond_1b

    iget-object v0, p0, Lads_mobile_sdk/vr1;->b:Lads_mobile_sdk/rr3;

    iget-object v1, p0, Lads_mobile_sdk/vr1;->a:Lads_mobile_sdk/rr3;

    :try_start_13
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_16
    .catchall {:try_start_13 .. :try_end_16} :catchall_18

    goto/16 :goto_dd

    :catchall_18
    move-exception p1

    goto/16 :goto_e9

    .line 122
    :cond_1b
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_23
    iget-object v0, p0, Lads_mobile_sdk/vr1;->b:Lads_mobile_sdk/rr3;

    iget-object v1, p0, Lads_mobile_sdk/vr1;->a:Lads_mobile_sdk/rr3;

    :try_start_27
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_2a
    .catchall {:try_start_27 .. :try_end_2a} :catchall_2b

    goto :goto_6d

    :catchall_2b
    move-exception p1

    goto :goto_78

    .line 123
    :cond_2d
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 124
    iget-object p1, p0, Lads_mobile_sdk/vr1;->d:Lads_mobile_sdk/yr1;

    .line 125
    iget-object p1, p1, Lads_mobile_sdk/yr1;->a:Lads_mobile_sdk/g83;

    .line 126
    sget-object v1, Lads_mobile_sdk/s11;->R0:Lads_mobile_sdk/s11;

    .line 127
    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v5

    .line 128
    iget-object v6, p0, Lads_mobile_sdk/vr1;->d:Lads_mobile_sdk/yr1;

    .line 129
    iget-object v6, v6, Lads_mobile_sdk/yr1;->b:Lads_mobile_sdk/ks3;

    .line 130
    iget-object v7, p0, Lads_mobile_sdk/vr1;->e:Lads_mobile_sdk/t53;

    iget-object v8, p0, Lads_mobile_sdk/vr1;->f:Lcom/google/gson/JsonObject;

    .line 131
    invoke-static {}, Lads_mobile_sdk/hs3;->b()Lads_mobile_sdk/gs3;

    move-result-object v9

    .line 132
    iget-object v9, v9, Lads_mobile_sdk/gs3;->a:Lads_mobile_sdk/rr3;

    if-nez v9, :cond_b7

    .line 133
    invoke-static {p1, v1, v5, v6}, Lads_mobile_sdk/g83;->a(Lads_mobile_sdk/g83;Lads_mobile_sdk/s11;Ljava/util/List;Lads_mobile_sdk/ks3;)Lads_mobile_sdk/tu2;

    move-result-object p1

    .line 134
    :try_start_4e
    invoke-static {}, Lads_mobile_sdk/hs3;->a()Lads_mobile_sdk/rr3;

    move-result-object v1

    invoke-virtual {v1}, Lads_mobile_sdk/rr3;->e()Lads_mobile_sdk/uj2;

    move-result-object v1

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Lads_mobile_sdk/u11;->d:Lads_mobile_sdk/u11;

    iput-object v2, v1, Lads_mobile_sdk/uj2;->l:Lads_mobile_sdk/u11;

    .line 135
    iput-object p1, p0, Lads_mobile_sdk/vr1;->a:Lads_mobile_sdk/rr3;

    iput-object p1, p0, Lads_mobile_sdk/vr1;->b:Lads_mobile_sdk/rr3;

    iput v3, p0, Lads_mobile_sdk/vr1;->c:I

    invoke-virtual {v7, v8, p0}, Lads_mobile_sdk/t53;->a(Lcom/google/gson/JsonObject;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1
    :try_end_67
    .catchall {:try_start_4e .. :try_end_67} :catchall_74

    if-ne v1, v0, :cond_6b

    goto/16 :goto_da

    :cond_6b
    move-object v0, p1

    move-object v1, v0

    .line 136
    :goto_6d
    :try_start_6d
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_6f
    .catchall {:try_start_6d .. :try_end_6f} :catchall_2b

    .line 297
    invoke-static {v0, v4}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    goto/16 :goto_e2

    :catchall_74
    move-exception v0

    move-object v1, p1

    move-object p1, v0

    move-object v0, v1

    .line 305
    :goto_78
    :try_start_78
    invoke-virtual {v1, p1}, Lads_mobile_sdk/rr3;->b(Ljava/lang/Throwable;)V

    .line 309
    instance-of v2, p1, Lads_mobile_sdk/v24;

    if-nez v2, :cond_b0

    .line 311
    instance-of v2, p1, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v2, :cond_8d

    instance-of v2, p1, Ljava/util/concurrent/CancellationException;

    if-nez v2, :cond_8d

    .line 317
    invoke-virtual {v1, p1}, Lads_mobile_sdk/rr3;->a(Ljava/lang/Throwable;)V

    goto :goto_8d

    :catchall_8b
    move-exception p1

    goto :goto_b1

    .line 323
    :cond_8d
    :goto_8d
    instance-of v1, p1, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v1, :cond_a8

    .line 324
    instance-of v1, p1, Ljava/util/concurrent/CancellationException;

    if-nez v1, :cond_a0

    .line 325
    instance-of v1, p1, Lads_mobile_sdk/w01;

    if-eqz v1, :cond_9a

    throw p1

    .line 326
    :cond_9a
    new-instance v1, Lads_mobile_sdk/b01;

    invoke-direct {v1, p1}, Lads_mobile_sdk/b01;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 327
    :cond_a0
    new-instance v1, Lads_mobile_sdk/wz0;

    check-cast p1, Ljava/util/concurrent/CancellationException;

    invoke-direct {v1, p1}, Lads_mobile_sdk/wz0;-><init>(Ljava/util/concurrent/CancellationException;)V

    throw v1

    .line 328
    :cond_a8
    new-instance v1, Lads_mobile_sdk/i21;

    check-cast p1, Lkotlinx/coroutines/TimeoutCancellationException;

    invoke-direct {v1, p1}, Lads_mobile_sdk/i21;-><init>(Lkotlinx/coroutines/TimeoutCancellationException;)V

    throw v1

    .line 329
    :cond_b0
    throw p1
    :try_end_b1
    .catchall {:try_start_78 .. :try_end_b1} :catchall_8b

    .line 330
    :goto_b1
    :try_start_b1
    throw p1
    :try_end_b2
    .catchall {:try_start_b1 .. :try_end_b2} :catchall_b2

    :catchall_b2
    move-exception v1

    invoke-static {v0, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v1

    .line 364
    :cond_b7
    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    invoke-static {v1, p1, v3}, Lads_mobile_sdk/hs3;->a(Lads_mobile_sdk/s11;Ljava/util/List;Z)Lads_mobile_sdk/rr3;

    move-result-object p1

    .line 365
    :try_start_bf
    invoke-static {}, Lads_mobile_sdk/hs3;->a()Lads_mobile_sdk/rr3;

    move-result-object v1

    invoke-virtual {v1}, Lads_mobile_sdk/rr3;->e()Lads_mobile_sdk/uj2;

    move-result-object v1

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v3, Lads_mobile_sdk/u11;->d:Lads_mobile_sdk/u11;

    iput-object v3, v1, Lads_mobile_sdk/uj2;->l:Lads_mobile_sdk/u11;

    .line 366
    iput-object p1, p0, Lads_mobile_sdk/vr1;->a:Lads_mobile_sdk/rr3;

    iput-object p1, p0, Lads_mobile_sdk/vr1;->b:Lads_mobile_sdk/rr3;

    iput v2, p0, Lads_mobile_sdk/vr1;->c:I

    invoke-virtual {v7, v8, p0}, Lads_mobile_sdk/t53;->a(Lcom/google/gson/JsonObject;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1
    :try_end_d8
    .catchall {:try_start_bf .. :try_end_d8} :catchall_e5

    if-ne v1, v0, :cond_db

    :goto_da
    return-object v0

    :cond_db
    move-object v0, p1

    move-object v1, v0

    .line 367
    :goto_dd
    :try_start_dd
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_df
    .catchall {:try_start_dd .. :try_end_df} :catchall_18

    .line 565
    invoke-static {v0, v4}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 566
    :goto_e2
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    :catchall_e5
    move-exception v0

    move-object v1, p1

    move-object p1, v0

    move-object v0, v1

    .line 765
    :goto_e9
    :try_start_e9
    invoke-virtual {v1, p1}, Lads_mobile_sdk/rr3;->b(Ljava/lang/Throwable;)V

    .line 769
    instance-of v2, p1, Lads_mobile_sdk/v24;

    if-nez v2, :cond_121

    .line 771
    instance-of v2, p1, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v2, :cond_fe

    instance-of v2, p1, Ljava/util/concurrent/CancellationException;

    if-nez v2, :cond_fe

    .line 777
    invoke-virtual {v1, p1}, Lads_mobile_sdk/rr3;->a(Ljava/lang/Throwable;)V

    goto :goto_fe

    :catchall_fc
    move-exception p1

    goto :goto_122

    .line 783
    :cond_fe
    :goto_fe
    instance-of v1, p1, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v1, :cond_119

    .line 784
    instance-of v1, p1, Ljava/util/concurrent/CancellationException;

    if-nez v1, :cond_111

    .line 785
    instance-of v1, p1, Lads_mobile_sdk/w01;

    if-eqz v1, :cond_10b

    throw p1

    .line 786
    :cond_10b
    new-instance v1, Lads_mobile_sdk/b01;

    invoke-direct {v1, p1}, Lads_mobile_sdk/b01;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 787
    :cond_111
    new-instance v1, Lads_mobile_sdk/wz0;

    check-cast p1, Ljava/util/concurrent/CancellationException;

    invoke-direct {v1, p1}, Lads_mobile_sdk/wz0;-><init>(Ljava/util/concurrent/CancellationException;)V

    throw v1

    .line 788
    :cond_119
    new-instance v1, Lads_mobile_sdk/i21;

    check-cast p1, Lkotlinx/coroutines/TimeoutCancellationException;

    invoke-direct {v1, p1}, Lads_mobile_sdk/i21;-><init>(Lkotlinx/coroutines/TimeoutCancellationException;)V

    throw v1

    .line 789
    :cond_121
    throw p1
    :try_end_122
    .catchall {:try_start_e9 .. :try_end_122} :catchall_fc

    .line 790
    :goto_122
    :try_start_122
    throw p1
    :try_end_123
    .catchall {:try_start_122 .. :try_end_123} :catchall_123

    :catchall_123
    move-exception v1

    invoke-static {v0, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v1
.end method
