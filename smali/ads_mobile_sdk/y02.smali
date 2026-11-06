###### Class ads_mobile_sdk.y02 (ads_mobile_sdk.y02)
.class public final Lads_mobile_sdk/y02;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public a:Lads_mobile_sdk/s02;

.field public b:Lads_mobile_sdk/rr3;

.field public c:Lads_mobile_sdk/rr3;

.field public d:I

.field public final synthetic e:Lads_mobile_sdk/g12;

.field public final synthetic f:Lcom/google/gson/JsonObject;

.field public final synthetic g:Lads_mobile_sdk/s02;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/s02;Lads_mobile_sdk/g12;Lcom/google/gson/JsonObject;Lkotlin/coroutines/Continuation;)V
    .registers 5

    .line 2
    iput-object p2, p0, Lads_mobile_sdk/y02;->e:Lads_mobile_sdk/g12;

    iput-object p3, p0, Lads_mobile_sdk/y02;->f:Lcom/google/gson/JsonObject;

    iput-object p1, p0, Lads_mobile_sdk/y02;->g:Lads_mobile_sdk/s02;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 6

    .line 1
    new-instance p1, Lads_mobile_sdk/y02;

    iget-object v0, p0, Lads_mobile_sdk/y02;->e:Lads_mobile_sdk/g12;

    iget-object v1, p0, Lads_mobile_sdk/y02;->f:Lcom/google/gson/JsonObject;

    iget-object v2, p0, Lads_mobile_sdk/y02;->g:Lads_mobile_sdk/s02;

    invoke-direct {p1, v2, v0, v1, p2}, Lads_mobile_sdk/y02;-><init>(Lads_mobile_sdk/s02;Lads_mobile_sdk/g12;Lcom/google/gson/JsonObject;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 1
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 2
    invoke-virtual {p0, p1, p2}, Lads_mobile_sdk/y02;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lads_mobile_sdk/y02;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lads_mobile_sdk/y02;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 8

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 99
    iget v1, p0, Lads_mobile_sdk/y02;->d:I

    const/4 v2, 0x1

    if-eqz v1, :cond_20

    if-ne v1, v2, :cond_18

    iget-object v0, p0, Lads_mobile_sdk/y02;->c:Lads_mobile_sdk/rr3;

    iget-object v1, p0, Lads_mobile_sdk/y02;->b:Lads_mobile_sdk/rr3;

    iget-object v2, p0, Lads_mobile_sdk/y02;->a:Lads_mobile_sdk/s02;

    :try_start_11
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_14
    .catchall {:try_start_11 .. :try_end_14} :catchall_15

    goto :goto_4c

    :catchall_15
    move-exception p1

    goto/16 :goto_8f

    .line 100
    :cond_18
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_20
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 101
    sget-object p1, Lads_mobile_sdk/s11;->s0:Lads_mobile_sdk/s11;

    iget-object v1, p0, Lads_mobile_sdk/y02;->e:Lads_mobile_sdk/g12;

    iget-object v3, p0, Lads_mobile_sdk/y02;->f:Lcom/google/gson/JsonObject;

    iget-object v4, p0, Lads_mobile_sdk/y02;->g:Lads_mobile_sdk/s02;

    .line 274
    sget-object v5, Lads_mobile_sdk/hs3;->a:Ljava/util/WeakHashMap;

    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v5

    invoke-static {p1, v5, v2}, Lads_mobile_sdk/hs3;->a(Lads_mobile_sdk/s11;Ljava/util/List;Z)Lads_mobile_sdk/rr3;

    move-result-object p1

    .line 275
    :try_start_35
    iget-object v1, v1, Lads_mobile_sdk/g12;->d:Lads_mobile_sdk/g52;

    .line 276
    const-string v5, "custom_assets"

    iput-object v4, p0, Lads_mobile_sdk/y02;->a:Lads_mobile_sdk/s02;

    iput-object p1, p0, Lads_mobile_sdk/y02;->b:Lads_mobile_sdk/rr3;

    iput-object p1, p0, Lads_mobile_sdk/y02;->c:Lads_mobile_sdk/rr3;

    iput v2, p0, Lads_mobile_sdk/y02;->d:I

    invoke-virtual {v1, v3, v5, p0}, Lads_mobile_sdk/g52;->a(Lcom/google/gson/JsonObject;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1
    :try_end_45
    .catchall {:try_start_35 .. :try_end_45} :catchall_8b

    if-ne v1, v0, :cond_48

    return-object v0

    :cond_48
    move-object v0, p1

    move-object v2, v4

    move-object p1, v1

    move-object v1, v0

    .line 277
    :goto_4c
    :try_start_4c
    check-cast p1, Ljava/util/List;

    .line 280
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_52
    :goto_52
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_84

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lads_mobile_sdk/fc0;

    .line 282
    instance-of v4, v3, Lads_mobile_sdk/ec0;

    if-eqz v4, :cond_71

    .line 283
    iget-object v4, v2, Lads_mobile_sdk/s02;->d:Ljava/util/Map;

    move-object v5, v3

    check-cast v5, Lads_mobile_sdk/ec0;

    iget-object v5, v5, Lads_mobile_sdk/ec0;->a:Ljava/lang/String;

    check-cast v3, Lads_mobile_sdk/ec0;

    iget-object v3, v3, Lads_mobile_sdk/ec0;->b:Ljava/lang/String;

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_52

    .line 284
    :cond_71
    instance-of v4, v3, Lads_mobile_sdk/dc0;

    if-eqz v4, :cond_52

    .line 285
    iget-object v4, v2, Lads_mobile_sdk/s02;->i:Ljava/util/Map;

    move-object v5, v3

    check-cast v5, Lads_mobile_sdk/dc0;

    iget-object v5, v5, Lads_mobile_sdk/dc0;->a:Ljava/lang/String;

    check-cast v3, Lads_mobile_sdk/dc0;

    iget-object v3, v3, Lads_mobile_sdk/dc0;->b:Lads_mobile_sdk/km1;

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_52

    .line 288
    :cond_84
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_86
    .catchall {:try_start_4c .. :try_end_86} :catchall_15

    const/4 v1, 0x0

    .line 460
    invoke-static {v0, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object p1

    :catchall_8b
    move-exception v0

    move-object v1, p1

    move-object p1, v0

    move-object v0, v1

    .line 468
    :goto_8f
    :try_start_8f
    invoke-virtual {v1, p1}, Lads_mobile_sdk/rr3;->b(Ljava/lang/Throwable;)V

    .line 472
    instance-of v2, p1, Lads_mobile_sdk/v24;

    if-nez v2, :cond_c7

    .line 474
    instance-of v2, p1, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v2, :cond_a4

    instance-of v2, p1, Ljava/util/concurrent/CancellationException;

    if-nez v2, :cond_a4

    .line 480
    invoke-virtual {v1, p1}, Lads_mobile_sdk/rr3;->a(Ljava/lang/Throwable;)V

    goto :goto_a4

    :catchall_a2
    move-exception p1

    goto :goto_c8

    .line 486
    :cond_a4
    :goto_a4
    instance-of v1, p1, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v1, :cond_bf

    .line 487
    instance-of v1, p1, Ljava/util/concurrent/CancellationException;

    if-nez v1, :cond_b7

    .line 488
    instance-of v1, p1, Lads_mobile_sdk/w01;

    if-eqz v1, :cond_b1

    throw p1

    .line 489
    :cond_b1
    new-instance v1, Lads_mobile_sdk/b01;

    invoke-direct {v1, p1}, Lads_mobile_sdk/b01;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 490
    :cond_b7
    new-instance v1, Lads_mobile_sdk/wz0;

    check-cast p1, Ljava/util/concurrent/CancellationException;

    invoke-direct {v1, p1}, Lads_mobile_sdk/wz0;-><init>(Ljava/util/concurrent/CancellationException;)V

    throw v1

    .line 491
    :cond_bf
    new-instance v1, Lads_mobile_sdk/i21;

    check-cast p1, Lkotlinx/coroutines/TimeoutCancellationException;

    invoke-direct {v1, p1}, Lads_mobile_sdk/i21;-><init>(Lkotlinx/coroutines/TimeoutCancellationException;)V

    throw v1

    .line 492
    :cond_c7
    throw p1
    :try_end_c8
    .catchall {:try_start_8f .. :try_end_c8} :catchall_a2

    .line 493
    :goto_c8
    :try_start_c8
    throw p1
    :try_end_c9
    .catchall {:try_start_c8 .. :try_end_c9} :catchall_c9

    :catchall_c9
    move-exception v1

    invoke-static {v0, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v1
.end method
