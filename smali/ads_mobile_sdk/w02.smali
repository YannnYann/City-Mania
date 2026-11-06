###### Class ads_mobile_sdk.w02 (ads_mobile_sdk.w02)
.class public final Lads_mobile_sdk/w02;
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
    iput-object p1, p0, Lads_mobile_sdk/w02;->e:Lads_mobile_sdk/s02;

    iput-object p2, p0, Lads_mobile_sdk/w02;->f:Lads_mobile_sdk/g12;

    iput-object p3, p0, Lads_mobile_sdk/w02;->g:Lcom/google/gson/JsonObject;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 6

    .line 1
    new-instance p1, Lads_mobile_sdk/w02;

    iget-object v0, p0, Lads_mobile_sdk/w02;->e:Lads_mobile_sdk/s02;

    iget-object v1, p0, Lads_mobile_sdk/w02;->f:Lads_mobile_sdk/g12;

    iget-object v2, p0, Lads_mobile_sdk/w02;->g:Lcom/google/gson/JsonObject;

    invoke-direct {p1, v0, v1, v2, p2}, Lads_mobile_sdk/w02;-><init>(Lads_mobile_sdk/s02;Lads_mobile_sdk/g12;Lcom/google/gson/JsonObject;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 1
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 2
    invoke-virtual {p0, p1, p2}, Lads_mobile_sdk/w02;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lads_mobile_sdk/w02;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lads_mobile_sdk/w02;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 9

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 87
    iget v1, p0, Lads_mobile_sdk/w02;->d:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_20

    if-ne v1, v2, :cond_18

    iget-object v0, p0, Lads_mobile_sdk/w02;->c:Lads_mobile_sdk/s02;

    iget-object v1, p0, Lads_mobile_sdk/w02;->b:Lads_mobile_sdk/rr3;

    iget-object v2, p0, Lads_mobile_sdk/w02;->a:Lads_mobile_sdk/rr3;

    :try_start_12
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_15
    .catchall {:try_start_12 .. :try_end_15} :catchall_16

    goto :goto_58

    :catchall_16
    move-exception p1

    goto :goto_62

    .line 88
    :cond_18
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_20
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 89
    iget-object p1, p0, Lads_mobile_sdk/w02;->e:Lads_mobile_sdk/s02;

    .line 90
    sget-object v1, Lads_mobile_sdk/s11;->q0:Lads_mobile_sdk/s11;

    iget-object v4, p0, Lads_mobile_sdk/w02;->f:Lads_mobile_sdk/g12;

    iget-object v5, p0, Lads_mobile_sdk/w02;->g:Lcom/google/gson/JsonObject;

    .line 274
    sget-object v6, Lads_mobile_sdk/hs3;->a:Ljava/util/WeakHashMap;

    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v6

    invoke-static {v1, v6, v2}, Lads_mobile_sdk/hs3;->a(Lads_mobile_sdk/s11;Ljava/util/List;Z)Lads_mobile_sdk/rr3;

    move-result-object v1

    .line 275
    :try_start_35
    iget-object v4, v4, Lads_mobile_sdk/g12;->c:Lads_mobile_sdk/v42;

    .line 276
    const-string v6, "app_icon"

    iput-object v1, p0, Lads_mobile_sdk/w02;->a:Lads_mobile_sdk/rr3;

    iput-object v1, p0, Lads_mobile_sdk/w02;->b:Lads_mobile_sdk/rr3;

    iput-object p1, p0, Lads_mobile_sdk/w02;->c:Lads_mobile_sdk/s02;

    iput v2, p0, Lads_mobile_sdk/w02;->d:I

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 277
    invoke-static {v5, v6, v3}, Lads_mobile_sdk/ds1;->a(Lcom/google/gson/JsonObject;Ljava/lang/String;Lcom/google/gson/JsonObject;)Lcom/google/gson/JsonObject;

    move-result-object v2

    .line 278
    iget-object v5, v4, Lads_mobile_sdk/v42;->a:Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeRequest;

    invoke-interface {v5}, Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeRequest;->isImageLoadingDisabled()Z

    move-result v5

    invoke-virtual {v4, v2, v5, p0}, Lads_mobile_sdk/v42;->a(Lcom/google/gson/JsonObject;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2
    :try_end_52
    .catchall {:try_start_35 .. :try_end_52} :catchall_65

    if-ne v2, v0, :cond_55

    return-object v0

    :cond_55
    move-object v0, p1

    move-object p1, v2

    move-object v2, v1

    .line 279
    :goto_58
    :try_start_58
    check-cast p1, Lads_mobile_sdk/km1;
    :try_end_5a
    .catchall {:try_start_58 .. :try_end_5a} :catchall_16

    .line 471
    invoke-static {v1, v3}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 472
    iput-object p1, v0, Lads_mobile_sdk/s02;->g:Lads_mobile_sdk/km1;

    .line 476
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    :goto_62
    move-object v0, v1

    move-object v1, v2

    goto :goto_67

    :catchall_65
    move-exception p1

    move-object v0, v1

    .line 668
    :goto_67
    :try_start_67
    invoke-virtual {v1, p1}, Lads_mobile_sdk/rr3;->b(Ljava/lang/Throwable;)V

    .line 672
    instance-of v2, p1, Lads_mobile_sdk/v24;

    if-nez v2, :cond_9f

    .line 674
    instance-of v2, p1, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v2, :cond_7c

    instance-of v2, p1, Ljava/util/concurrent/CancellationException;

    if-nez v2, :cond_7c

    .line 680
    invoke-virtual {v1, p1}, Lads_mobile_sdk/rr3;->a(Ljava/lang/Throwable;)V

    goto :goto_7c

    :catchall_7a
    move-exception p1

    goto :goto_a0

    .line 686
    :cond_7c
    :goto_7c
    instance-of v1, p1, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v1, :cond_97

    .line 687
    instance-of v1, p1, Ljava/util/concurrent/CancellationException;

    if-nez v1, :cond_8f

    .line 688
    instance-of v1, p1, Lads_mobile_sdk/w01;

    if-eqz v1, :cond_89

    throw p1

    .line 689
    :cond_89
    new-instance v1, Lads_mobile_sdk/b01;

    invoke-direct {v1, p1}, Lads_mobile_sdk/b01;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 690
    :cond_8f
    new-instance v1, Lads_mobile_sdk/wz0;

    check-cast p1, Ljava/util/concurrent/CancellationException;

    invoke-direct {v1, p1}, Lads_mobile_sdk/wz0;-><init>(Ljava/util/concurrent/CancellationException;)V

    throw v1

    .line 691
    :cond_97
    new-instance v1, Lads_mobile_sdk/i21;

    check-cast p1, Lkotlinx/coroutines/TimeoutCancellationException;

    invoke-direct {v1, p1}, Lads_mobile_sdk/i21;-><init>(Lkotlinx/coroutines/TimeoutCancellationException;)V

    throw v1

    .line 692
    :cond_9f
    throw p1
    :try_end_a0
    .catchall {:try_start_67 .. :try_end_a0} :catchall_7a

    .line 693
    :goto_a0
    :try_start_a0
    throw p1
    :try_end_a1
    .catchall {:try_start_a0 .. :try_end_a1} :catchall_a1

    :catchall_a1
    move-exception v1

    invoke-static {v0, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v1
.end method
