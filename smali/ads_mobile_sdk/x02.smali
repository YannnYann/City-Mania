###### Class ads_mobile_sdk.x02 (ads_mobile_sdk.x02)
.class public final Lads_mobile_sdk/x02;
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
    iput-object p1, p0, Lads_mobile_sdk/x02;->e:Lads_mobile_sdk/s02;

    iput-object p2, p0, Lads_mobile_sdk/x02;->f:Lads_mobile_sdk/g12;

    iput-object p3, p0, Lads_mobile_sdk/x02;->g:Lcom/google/gson/JsonObject;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 6

    .line 1
    new-instance p1, Lads_mobile_sdk/x02;

    iget-object v0, p0, Lads_mobile_sdk/x02;->e:Lads_mobile_sdk/s02;

    iget-object v1, p0, Lads_mobile_sdk/x02;->f:Lads_mobile_sdk/g12;

    iget-object v2, p0, Lads_mobile_sdk/x02;->g:Lcom/google/gson/JsonObject;

    invoke-direct {p1, v0, v1, v2, p2}, Lads_mobile_sdk/x02;-><init>(Lads_mobile_sdk/s02;Lads_mobile_sdk/g12;Lcom/google/gson/JsonObject;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 1
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 2
    invoke-virtual {p0, p1, p2}, Lads_mobile_sdk/x02;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lads_mobile_sdk/x02;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lads_mobile_sdk/x02;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 8

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 93
    iget v1, p0, Lads_mobile_sdk/x02;->d:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1f

    if-ne v1, v2, :cond_17

    iget-object v0, p0, Lads_mobile_sdk/x02;->c:Lads_mobile_sdk/s02;

    iget-object v1, p0, Lads_mobile_sdk/x02;->b:Lads_mobile_sdk/rr3;

    iget-object v2, p0, Lads_mobile_sdk/x02;->a:Lads_mobile_sdk/rr3;

    :try_start_11
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_14
    .catchall {:try_start_11 .. :try_end_14} :catchall_15

    goto :goto_4a

    :catchall_15
    move-exception p1

    goto :goto_55

    .line 94
    :cond_17
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1f
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 95
    iget-object p1, p0, Lads_mobile_sdk/x02;->e:Lads_mobile_sdk/s02;

    .line 96
    sget-object v1, Lads_mobile_sdk/s11;->r0:Lads_mobile_sdk/s11;

    iget-object v3, p0, Lads_mobile_sdk/x02;->f:Lads_mobile_sdk/g12;

    iget-object v4, p0, Lads_mobile_sdk/x02;->g:Lcom/google/gson/JsonObject;

    .line 274
    sget-object v5, Lads_mobile_sdk/hs3;->a:Ljava/util/WeakHashMap;

    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v5

    invoke-static {v1, v5, v2}, Lads_mobile_sdk/hs3;->a(Lads_mobile_sdk/s11;Ljava/util/List;Z)Lads_mobile_sdk/rr3;

    move-result-object v1

    .line 275
    :try_start_34
    iget-object v3, v3, Lads_mobile_sdk/g12;->c:Lads_mobile_sdk/v42;

    .line 276
    const-string v5, "attribution"

    iput-object v1, p0, Lads_mobile_sdk/x02;->a:Lads_mobile_sdk/rr3;

    iput-object v1, p0, Lads_mobile_sdk/x02;->b:Lads_mobile_sdk/rr3;

    iput-object p1, p0, Lads_mobile_sdk/x02;->c:Lads_mobile_sdk/s02;

    iput v2, p0, Lads_mobile_sdk/x02;->d:I

    invoke-virtual {v3, v4, v5, p0}, Lads_mobile_sdk/v42;->a(Lcom/google/gson/JsonObject;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2
    :try_end_44
    .catchall {:try_start_34 .. :try_end_44} :catchall_58

    if-ne v2, v0, :cond_47

    return-object v0

    :cond_47
    move-object v0, p1

    move-object p1, v2

    move-object v2, v1

    .line 277
    :goto_4a
    :try_start_4a
    check-cast p1, Lads_mobile_sdk/ak1;
    :try_end_4c
    .catchall {:try_start_4a .. :try_end_4c} :catchall_15

    const/4 v2, 0x0

    .line 463
    invoke-static {v1, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 464
    iput-object p1, v0, Lads_mobile_sdk/s02;->h:Lads_mobile_sdk/ak1;

    .line 468
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    :goto_55
    move-object v0, v1

    move-object v1, v2

    goto :goto_5a

    :catchall_58
    move-exception p1

    move-object v0, v1

    .line 654
    :goto_5a
    :try_start_5a
    invoke-virtual {v1, p1}, Lads_mobile_sdk/rr3;->b(Ljava/lang/Throwable;)V

    .line 658
    instance-of v2, p1, Lads_mobile_sdk/v24;

    if-nez v2, :cond_92

    .line 660
    instance-of v2, p1, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v2, :cond_6f

    instance-of v2, p1, Ljava/util/concurrent/CancellationException;

    if-nez v2, :cond_6f

    .line 666
    invoke-virtual {v1, p1}, Lads_mobile_sdk/rr3;->a(Ljava/lang/Throwable;)V

    goto :goto_6f

    :catchall_6d
    move-exception p1

    goto :goto_93

    .line 672
    :cond_6f
    :goto_6f
    instance-of v1, p1, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v1, :cond_8a

    .line 673
    instance-of v1, p1, Ljava/util/concurrent/CancellationException;

    if-nez v1, :cond_82

    .line 674
    instance-of v1, p1, Lads_mobile_sdk/w01;

    if-eqz v1, :cond_7c

    throw p1

    .line 675
    :cond_7c
    new-instance v1, Lads_mobile_sdk/b01;

    invoke-direct {v1, p1}, Lads_mobile_sdk/b01;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 676
    :cond_82
    new-instance v1, Lads_mobile_sdk/wz0;

    check-cast p1, Ljava/util/concurrent/CancellationException;

    invoke-direct {v1, p1}, Lads_mobile_sdk/wz0;-><init>(Ljava/util/concurrent/CancellationException;)V

    throw v1

    .line 677
    :cond_8a
    new-instance v1, Lads_mobile_sdk/i21;

    check-cast p1, Lkotlinx/coroutines/TimeoutCancellationException;

    invoke-direct {v1, p1}, Lads_mobile_sdk/i21;-><init>(Lkotlinx/coroutines/TimeoutCancellationException;)V

    throw v1

    .line 678
    :cond_92
    throw p1
    :try_end_93
    .catchall {:try_start_5a .. :try_end_93} :catchall_6d

    .line 679
    :goto_93
    :try_start_93
    throw p1
    :try_end_94
    .catchall {:try_start_93 .. :try_end_94} :catchall_94

    :catchall_94
    move-exception v1

    invoke-static {v0, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v1
.end method
