###### Class ads_mobile_sdk.v02 (ads_mobile_sdk.v02)
.class public final Lads_mobile_sdk/v02;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public a:Lads_mobile_sdk/rr3;

.field public b:Lads_mobile_sdk/rr3;

.field public c:Lads_mobile_sdk/s02;

.field public d:I

.field public final synthetic e:Lads_mobile_sdk/s02;

.field public final synthetic f:Lads_mobile_sdk/g12;

.field public final synthetic g:Lcom/google/gson/JsonObject;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/s02;Lads_mobile_sdk/g12;Lcom/google/gson/JsonObject;Lkotlin/coroutines/Continuation;)V
    .registers 5

    .line 1
    iput-object p1, p0, Lads_mobile_sdk/v02;->e:Lads_mobile_sdk/s02;

    iput-object p2, p0, Lads_mobile_sdk/v02;->f:Lads_mobile_sdk/g12;

    iput-object p3, p0, Lads_mobile_sdk/v02;->g:Lcom/google/gson/JsonObject;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 6

    .line 1
    new-instance p1, Lads_mobile_sdk/v02;

    iget-object v0, p0, Lads_mobile_sdk/v02;->e:Lads_mobile_sdk/s02;

    iget-object v1, p0, Lads_mobile_sdk/v02;->f:Lads_mobile_sdk/g12;

    iget-object v2, p0, Lads_mobile_sdk/v02;->g:Lcom/google/gson/JsonObject;

    invoke-direct {p1, v0, v1, v2, p2}, Lads_mobile_sdk/v02;-><init>(Lads_mobile_sdk/s02;Lads_mobile_sdk/g12;Lcom/google/gson/JsonObject;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 1
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 2
    invoke-virtual {p0, p1, p2}, Lads_mobile_sdk/v02;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lads_mobile_sdk/v02;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lads_mobile_sdk/v02;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 10

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 81
    iget v1, p0, Lads_mobile_sdk/v02;->d:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_21

    if-ne v1, v3, :cond_19

    iget-object v0, p0, Lads_mobile_sdk/v02;->c:Lads_mobile_sdk/s02;

    iget-object v1, p0, Lads_mobile_sdk/v02;->b:Lads_mobile_sdk/rr3;

    iget-object v2, p0, Lads_mobile_sdk/v02;->a:Lads_mobile_sdk/rr3;

    :try_start_13
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_16
    .catchall {:try_start_13 .. :try_end_16} :catchall_17

    goto :goto_6c

    :catchall_17
    move-exception p1

    goto :goto_76

    .line 82
    :cond_19
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_21
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 83
    iget-object p1, p0, Lads_mobile_sdk/v02;->e:Lads_mobile_sdk/s02;

    .line 84
    sget-object v1, Lads_mobile_sdk/s11;->p0:Lads_mobile_sdk/s11;

    iget-object v5, p0, Lads_mobile_sdk/v02;->f:Lads_mobile_sdk/g12;

    iget-object v6, p0, Lads_mobile_sdk/v02;->g:Lcom/google/gson/JsonObject;

    .line 274
    sget-object v7, Lads_mobile_sdk/hs3;->a:Ljava/util/WeakHashMap;

    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v7

    invoke-static {v1, v7, v3}, Lads_mobile_sdk/hs3;->a(Lads_mobile_sdk/s11;Ljava/util/List;Z)Lads_mobile_sdk/rr3;

    move-result-object v1

    .line 275
    :try_start_36
    iget-object v5, v5, Lads_mobile_sdk/g12;->c:Lads_mobile_sdk/v42;

    .line 276
    const-string v7, "images"

    iput-object v1, p0, Lads_mobile_sdk/v02;->a:Lads_mobile_sdk/rr3;

    iput-object v1, p0, Lads_mobile_sdk/v02;->b:Lads_mobile_sdk/rr3;

    iput-object p1, p0, Lads_mobile_sdk/v02;->c:Lads_mobile_sdk/s02;

    iput v3, p0, Lads_mobile_sdk/v02;->d:I

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 277
    invoke-static {v6, v7}, Lads_mobile_sdk/ds1;->e(Lcom/google/gson/JsonObject;Ljava/lang/String;)Lcom/google/gson/JsonArray;

    move-result-object v3

    if-eqz v3, :cond_65

    .line 278
    invoke-virtual {v3}, Lcom/google/gson/JsonArray;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_52

    goto :goto_65

    .line 284
    :cond_52
    invoke-virtual {v3, v2}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-static {v2}, Lads_mobile_sdk/ds1;->a(Lcom/google/gson/JsonElement;)Lcom/google/gson/JsonObject;

    move-result-object v2

    .line 285
    iget-object v3, v5, Lads_mobile_sdk/v42;->a:Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeRequest;

    invoke-interface {v3}, Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeRequest;->isImageLoadingDisabled()Z

    move-result v3

    .line 286
    invoke-virtual {v5, v2, v3, p0}, Lads_mobile_sdk/v42;->a(Lcom/google/gson/JsonObject;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2
    :try_end_64
    .catchall {:try_start_36 .. :try_end_64} :catchall_79

    goto :goto_66

    :cond_65
    :goto_65
    move-object v2, v4

    :goto_66
    if-ne v2, v0, :cond_69

    return-object v0

    :cond_69
    move-object v0, p1

    move-object p1, v2

    move-object v2, v1

    .line 287
    :goto_6c
    :try_start_6c
    check-cast p1, Lads_mobile_sdk/km1;
    :try_end_6e
    .catchall {:try_start_6c .. :try_end_6e} :catchall_17

    .line 485
    invoke-static {v1, v4}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 486
    iput-object p1, v0, Lads_mobile_sdk/s02;->f:Lads_mobile_sdk/km1;

    .line 490
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    :goto_76
    move-object v0, v1

    move-object v1, v2

    goto :goto_7b

    :catchall_79
    move-exception p1

    move-object v0, v1

    .line 688
    :goto_7b
    :try_start_7b
    invoke-virtual {v1, p1}, Lads_mobile_sdk/rr3;->b(Ljava/lang/Throwable;)V

    .line 692
    instance-of v2, p1, Lads_mobile_sdk/v24;

    if-nez v2, :cond_b3

    .line 694
    instance-of v2, p1, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v2, :cond_90

    instance-of v2, p1, Ljava/util/concurrent/CancellationException;

    if-nez v2, :cond_90

    .line 700
    invoke-virtual {v1, p1}, Lads_mobile_sdk/rr3;->a(Ljava/lang/Throwable;)V

    goto :goto_90

    :catchall_8e
    move-exception p1

    goto :goto_b4

    .line 706
    :cond_90
    :goto_90
    instance-of v1, p1, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v1, :cond_ab

    .line 707
    instance-of v1, p1, Ljava/util/concurrent/CancellationException;

    if-nez v1, :cond_a3

    .line 708
    instance-of v1, p1, Lads_mobile_sdk/w01;

    if-eqz v1, :cond_9d

    throw p1

    .line 709
    :cond_9d
    new-instance v1, Lads_mobile_sdk/b01;

    invoke-direct {v1, p1}, Lads_mobile_sdk/b01;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 710
    :cond_a3
    new-instance v1, Lads_mobile_sdk/wz0;

    check-cast p1, Ljava/util/concurrent/CancellationException;

    invoke-direct {v1, p1}, Lads_mobile_sdk/wz0;-><init>(Ljava/util/concurrent/CancellationException;)V

    throw v1

    .line 711
    :cond_ab
    new-instance v1, Lads_mobile_sdk/i21;

    check-cast p1, Lkotlinx/coroutines/TimeoutCancellationException;

    invoke-direct {v1, p1}, Lads_mobile_sdk/i21;-><init>(Lkotlinx/coroutines/TimeoutCancellationException;)V

    throw v1

    .line 712
    :cond_b3
    throw p1
    :try_end_b4
    .catchall {:try_start_7b .. :try_end_b4} :catchall_8e

    .line 713
    :goto_b4
    :try_start_b4
    throw p1
    :try_end_b5
    .catchall {:try_start_b4 .. :try_end_b5} :catchall_b5

    :catchall_b5
    move-exception v1

    invoke-static {v0, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v1
.end method
