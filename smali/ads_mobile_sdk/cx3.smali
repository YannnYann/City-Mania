###### Class ads_mobile_sdk.cx3 (ads_mobile_sdk.cx3)
.class public final Lads_mobile_sdk/cx3;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Lads_mobile_sdk/dx3;

.field public final synthetic b:Lkotlinx/coroutines/CoroutineScope;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/dx3;Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)V
    .registers 4

    .line 1
    iput-object p1, p0, Lads_mobile_sdk/cx3;->a:Lads_mobile_sdk/dx3;

    iput-object p2, p0, Lads_mobile_sdk/cx3;->b:Lkotlinx/coroutines/CoroutineScope;

    const/4 p1, 0x1

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 5

    .line 1
    new-instance v0, Lads_mobile_sdk/cx3;

    iget-object v1, p0, Lads_mobile_sdk/cx3;->a:Lads_mobile_sdk/dx3;

    iget-object v2, p0, Lads_mobile_sdk/cx3;->b:Lkotlinx/coroutines/CoroutineScope;

    invoke-direct {v0, v1, v2, p1}, Lads_mobile_sdk/cx3;-><init>(Lads_mobile_sdk/dx3;Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)V

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    .line 1
    check-cast p1, Lkotlin/coroutines/Continuation;

    .line 2
    new-instance v0, Lads_mobile_sdk/cx3;

    iget-object v1, p0, Lads_mobile_sdk/cx3;->a:Lads_mobile_sdk/dx3;

    iget-object v2, p0, Lads_mobile_sdk/cx3;->b:Lkotlinx/coroutines/CoroutineScope;

    invoke-direct {v0, v1, v2, p1}, Lads_mobile_sdk/cx3;-><init>(Lads_mobile_sdk/dx3;Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)V

    .line 3
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, p1}, Lads_mobile_sdk/cx3;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 11

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 122
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 125
    :try_start_6
    iget-object p1, p0, Lads_mobile_sdk/cx3;->a:Lads_mobile_sdk/dx3;

    .line 126
    iget-object p1, p1, Lads_mobile_sdk/dx3;->f:Lads_mobile_sdk/g83;

    const/4 v0, 0x0

    if-nez p1, :cond_18

    .line 127
    const-string p1, "rootTraceCreator"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v0

    goto :goto_18

    :catchall_14
    move-exception v0

    move-object p1, v0

    goto/16 :goto_110

    .line 128
    :cond_18
    :goto_18
    sget-object v1, Lads_mobile_sdk/s11;->N:Lads_mobile_sdk/s11;

    iget-object v2, p0, Lads_mobile_sdk/cx3;->a:Lads_mobile_sdk/dx3;

    .line 181
    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v3

    .line 182
    new-instance v4, Lads_mobile_sdk/ks3;

    .line 183
    new-instance v5, Lads_mobile_sdk/n03;

    invoke-direct {v5}, Lads_mobile_sdk/n03;-><init>()V

    .line 184
    new-instance v6, Lads_mobile_sdk/tn1;

    invoke-direct {v6}, Lads_mobile_sdk/tn1;-><init>()V

    .line 185
    new-instance v7, Lads_mobile_sdk/m33;

    invoke-direct {v7}, Lads_mobile_sdk/m33;-><init>()V

    .line 186
    new-instance v8, Lads_mobile_sdk/zb;

    invoke-direct {v8}, Lads_mobile_sdk/zb;-><init>()V

    .line 187
    invoke-direct {v4, v5, v6, v7, v8}, Lads_mobile_sdk/ks3;-><init>(Lads_mobile_sdk/n03;Lads_mobile_sdk/tn1;Lads_mobile_sdk/m33;Lads_mobile_sdk/zb;)V

    .line 188
    invoke-static {}, Lads_mobile_sdk/hs3;->b()Lads_mobile_sdk/gs3;

    move-result-object v5

    .line 189
    iget-object v5, v5, Lads_mobile_sdk/gs3;->a:Lads_mobile_sdk/rr3;

    if-nez v5, :cond_90

    .line 190
    invoke-static {p1, v1, v3, v4}, Lads_mobile_sdk/g83;->a(Lads_mobile_sdk/g83;Lads_mobile_sdk/s11;Ljava/util/List;Lads_mobile_sdk/ks3;)Lads_mobile_sdk/tu2;

    move-result-object p1
    :try_end_45
    .catchall {:try_start_6 .. :try_end_45} :catchall_14

    .line 191
    :try_start_45
    iget-object v1, v2, Lads_mobile_sdk/dx3;->a:Landroid/content/Context;

    .line 192
    invoke-static {v1}, Landroid/webkit/WebSettings;->getDefaultUserAgent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1
    :try_end_4b
    .catchall {:try_start_45 .. :try_end_4b} :catchall_4f

    .line 253
    :try_start_4b
    invoke-static {p1, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_4e
    .catchall {:try_start_4b .. :try_end_4e} :catchall_14

    goto :goto_a2

    :catchall_4f
    move-exception v0

    .line 261
    :try_start_50
    invoke-virtual {p1, v0}, Lads_mobile_sdk/rr3;->b(Ljava/lang/Throwable;)V

    .line 265
    instance-of v1, v0, Lads_mobile_sdk/v24;

    if-nez v1, :cond_89

    .line 267
    instance-of v1, v0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v1, :cond_66

    instance-of v1, v0, Ljava/util/concurrent/CancellationException;

    if-nez v1, :cond_66

    .line 273
    invoke-virtual {p1, v0}, Lads_mobile_sdk/rr3;->a(Ljava/lang/Throwable;)V

    goto :goto_66

    :catchall_63
    move-exception v0

    move-object v1, v0

    goto :goto_8a

    .line 279
    :cond_66
    :goto_66
    instance-of v1, v0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v1, :cond_81

    .line 280
    instance-of v1, v0, Ljava/util/concurrent/CancellationException;

    if-nez v1, :cond_79

    .line 281
    instance-of v1, v0, Lads_mobile_sdk/w01;

    if-eqz v1, :cond_73

    throw v0

    .line 282
    :cond_73
    new-instance v1, Lads_mobile_sdk/b01;

    invoke-direct {v1, v0}, Lads_mobile_sdk/b01;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 283
    :cond_79
    new-instance v1, Lads_mobile_sdk/wz0;

    check-cast v0, Ljava/util/concurrent/CancellationException;

    invoke-direct {v1, v0}, Lads_mobile_sdk/wz0;-><init>(Ljava/util/concurrent/CancellationException;)V

    throw v1

    .line 284
    :cond_81
    new-instance v1, Lads_mobile_sdk/i21;

    check-cast v0, Lkotlinx/coroutines/TimeoutCancellationException;

    invoke-direct {v1, v0}, Lads_mobile_sdk/i21;-><init>(Lkotlinx/coroutines/TimeoutCancellationException;)V

    throw v1

    .line 285
    :cond_89
    throw v0
    :try_end_8a
    .catchall {:try_start_50 .. :try_end_8a} :catchall_63

    .line 286
    :goto_8a
    :try_start_8a
    throw v1
    :try_end_8b
    .catchall {:try_start_8a .. :try_end_8b} :catchall_8b

    :catchall_8b
    move-exception v0

    :try_start_8c
    invoke-static {p1, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0

    .line 320
    :cond_90
    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    const/4 v3, 0x1

    invoke-static {v1, p1, v3}, Lads_mobile_sdk/hs3;->a(Lads_mobile_sdk/s11;Ljava/util/List;Z)Lads_mobile_sdk/rr3;

    move-result-object p1
    :try_end_99
    .catchall {:try_start_8c .. :try_end_99} :catchall_14

    .line 321
    :try_start_99
    iget-object v1, v2, Lads_mobile_sdk/dx3;->a:Landroid/content/Context;

    .line 322
    invoke-static {v1}, Landroid/webkit/WebSettings;->getDefaultUserAgent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1
    :try_end_9f
    .catchall {:try_start_99 .. :try_end_9f} :catchall_cf

    .line 420
    :try_start_9f
    invoke-static {p1, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_a2
    .catchall {:try_start_9f .. :try_end_a2} :catchall_14

    .line 421
    :goto_a2
    iget-object p1, p0, Lads_mobile_sdk/cx3;->a:Lads_mobile_sdk/dx3;

    .line 422
    iget-object p1, p1, Lads_mobile_sdk/dx3;->i:Lkotlinx/coroutines/CompletableJob;

    .line 423
    invoke-interface {p1}, Lkotlinx/coroutines/CompletableJob;->complete()Z

    .line 425
    iget-object v2, p0, Lads_mobile_sdk/cx3;->b:Lkotlinx/coroutines/CoroutineScope;

    new-instance p1, Lads_mobile_sdk/bx3;

    iget-object v3, p0, Lads_mobile_sdk/cx3;->a:Lads_mobile_sdk/dx3;

    invoke-direct {p1, v3, v1, v0}, Lads_mobile_sdk/bx3;-><init>(Lads_mobile_sdk/dx3;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    .line 426
    sget-object v3, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    .line 427
    const-string v4, "<this>"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "context"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "block"

    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 685
    new-instance v5, Lads_mobile_sdk/ws3;

    invoke-direct {v5, p1, v0}, Lads_mobile_sdk/ws3;-><init>(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)V

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v4, 0x0

    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-object v1

    :catchall_cf
    move-exception v0

    .line 686
    :try_start_d0
    invoke-virtual {p1, v0}, Lads_mobile_sdk/rr3;->b(Ljava/lang/Throwable;)V

    .line 690
    instance-of v1, v0, Lads_mobile_sdk/v24;

    if-nez v1, :cond_109

    .line 692
    instance-of v1, v0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v1, :cond_e6

    instance-of v1, v0, Ljava/util/concurrent/CancellationException;

    if-nez v1, :cond_e6

    .line 698
    invoke-virtual {p1, v0}, Lads_mobile_sdk/rr3;->a(Ljava/lang/Throwable;)V

    goto :goto_e6

    :catchall_e3
    move-exception v0

    move-object v1, v0

    goto :goto_10a

    .line 704
    :cond_e6
    :goto_e6
    instance-of v1, v0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v1, :cond_101

    .line 705
    instance-of v1, v0, Ljava/util/concurrent/CancellationException;

    if-nez v1, :cond_f9

    .line 706
    instance-of v1, v0, Lads_mobile_sdk/w01;

    if-eqz v1, :cond_f3

    throw v0

    .line 707
    :cond_f3
    new-instance v1, Lads_mobile_sdk/b01;

    invoke-direct {v1, v0}, Lads_mobile_sdk/b01;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 708
    :cond_f9
    new-instance v1, Lads_mobile_sdk/wz0;

    check-cast v0, Ljava/util/concurrent/CancellationException;

    invoke-direct {v1, v0}, Lads_mobile_sdk/wz0;-><init>(Ljava/util/concurrent/CancellationException;)V

    throw v1

    .line 709
    :cond_101
    new-instance v1, Lads_mobile_sdk/i21;

    check-cast v0, Lkotlinx/coroutines/TimeoutCancellationException;

    invoke-direct {v1, v0}, Lads_mobile_sdk/i21;-><init>(Lkotlinx/coroutines/TimeoutCancellationException;)V

    throw v1

    .line 710
    :cond_109
    throw v0
    :try_end_10a
    .catchall {:try_start_d0 .. :try_end_10a} :catchall_e3

    .line 711
    :goto_10a
    :try_start_10a
    throw v1
    :try_end_10b
    .catchall {:try_start_10a .. :try_end_10b} :catchall_10b

    :catchall_10b
    move-exception v0

    :try_start_10c
    invoke-static {p1, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
    :try_end_110
    .catchall {:try_start_10c .. :try_end_110} :catchall_14

    .line 712
    :goto_110
    iget-object v0, p0, Lads_mobile_sdk/cx3;->a:Lads_mobile_sdk/dx3;

    .line 713
    iget-object v0, v0, Lads_mobile_sdk/dx3;->i:Lkotlinx/coroutines/CompletableJob;

    .line 714
    invoke-interface {v0}, Lkotlinx/coroutines/CompletableJob;->complete()Z

    .line 715
    throw p1
.end method
