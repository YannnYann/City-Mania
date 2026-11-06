###### Class ads_mobile_sdk.t53 (ads_mobile_sdk.t53)
.class public final Lads_mobile_sdk/t53;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/r41;


# instance fields
.field public final a:Lkotlinx/coroutines/sync/Mutex;

.field public final b:Ljava/util/HashMap;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 24
    invoke-static {v0}, Lkotlinx/coroutines/sync/MutexKt;->Mutex(Z)Lkotlinx/coroutines/sync/Mutex;

    move-result-object v0

    iput-object v0, p0, Lads_mobile_sdk/t53;->a:Lkotlinx/coroutines/sync/Mutex;

    .line 26
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lads_mobile_sdk/t53;->b:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public final a(Lads_mobile_sdk/r31;Ljava/util/Map;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 10

    .line 1
    instance-of p1, p3, Lads_mobile_sdk/q53;

    if-eqz p1, :cond_13

    move-object p1, p3

    check-cast p1, Lads_mobile_sdk/q53;

    iget v0, p1, Lads_mobile_sdk/q53;->i:I

    const/high16 v1, -0x80000000

    and-int v2, v0, v1

    if-eqz v2, :cond_13

    sub-int/2addr v0, v1

    iput v0, p1, Lads_mobile_sdk/q53;->i:I

    goto :goto_18

    :cond_13
    new-instance p1, Lads_mobile_sdk/q53;

    invoke-direct {p1, p0, p3}, Lads_mobile_sdk/q53;-><init>(Lads_mobile_sdk/t53;Lkotlin/coroutines/Continuation;)V

    :goto_18
    iget-object p3, p1, Lads_mobile_sdk/q53;->g:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 33
    iget v1, p1, Lads_mobile_sdk/q53;->i:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_3e

    if-ne v1, v2, :cond_36

    iget-object p2, p1, Lads_mobile_sdk/q53;->f:Lkotlinx/coroutines/sync/Mutex;

    iget-object v0, p1, Lads_mobile_sdk/q53;->e:Ljava/lang/String;

    iget-object v1, p1, Lads_mobile_sdk/q53;->d:Ljava/lang/String;

    iget-object v2, p1, Lads_mobile_sdk/q53;->c:Ljava/lang/String;

    iget-object v4, p1, Lads_mobile_sdk/q53;->b:Ljava/util/Map;

    iget-object p1, p1, Lads_mobile_sdk/q53;->a:Lads_mobile_sdk/t53;

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_7a

    :cond_36
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3e
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 34
    const-string p3, "id"

    invoke-interface {p2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    if-nez p3, :cond_4e

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 35
    :cond_4e
    const-string v1, "fail"

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 36
    const-string v4, "result"

    invoke-interface {p2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 37
    iget-object v5, p0, Lads_mobile_sdk/t53;->a:Lkotlinx/coroutines/sync/Mutex;

    .line 112
    iput-object p0, p1, Lads_mobile_sdk/q53;->a:Lads_mobile_sdk/t53;

    iput-object p2, p1, Lads_mobile_sdk/q53;->b:Ljava/util/Map;

    iput-object p3, p1, Lads_mobile_sdk/q53;->c:Ljava/lang/String;

    iput-object v1, p1, Lads_mobile_sdk/q53;->d:Ljava/lang/String;

    iput-object v4, p1, Lads_mobile_sdk/q53;->e:Ljava/lang/String;

    iput-object v5, p1, Lads_mobile_sdk/q53;->f:Lkotlinx/coroutines/sync/Mutex;

    iput v2, p1, Lads_mobile_sdk/q53;->i:I

    invoke-interface {v5, v3, p1}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_75

    return-object v0

    :cond_75
    move-object p1, p0

    move-object v2, p3

    move-object v0, v4

    move-object v4, p2

    move-object p2, v5

    .line 113
    :goto_7a
    :try_start_7a
    iget-object p1, p1, Lads_mobile_sdk/t53;->b:Ljava/util/HashMap;

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlinx/coroutines/CompletableDeferred;
    :try_end_82
    .catchall {:try_start_7a .. :try_end_82} :catchall_116

    .line 192
    invoke-interface {p2, v3}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    if-nez p1, :cond_8a

    .line 193
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 195
    :cond_8a
    const-string p2, "fail_stack"

    invoke-interface {v4, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 196
    const-string p3, "fail_reason"

    invoke-interface {v4, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    if-eqz p2, :cond_a2

    .line 197
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_a4

    .line 198
    :cond_a2
    const-string p3, "Unknown Fail Reason."

    :cond_a4
    if-eqz p2, :cond_b2

    .line 200
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_ad

    goto :goto_b2

    :cond_ad
    invoke-static {p2}, Lkotlin/text/StringsKt__IndentKt;->trimIndent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_b4

    :cond_b2
    :goto_b2
    const-string p2, ""

    :goto_b4
    if-eqz v1, :cond_ea

    .line 202
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_bd

    goto :goto_ea

    .line 203
    :cond_bd
    new-instance v0, Ljava/util/concurrent/CancellationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lkotlinx/coroutines/Job;->cancel(Ljava/util/concurrent/CancellationException;)V

    .line 204
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x6

    invoke-static {p1, v3, p2}, Lads_mobile_sdk/xs3;->a(Ljava/lang/String;Ljava/lang/Throwable;I)V

    .line 205
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    :cond_ea
    :goto_ea
    if-nez v0, :cond_f2

    .line 208
    invoke-interface {p1, v3}, Lkotlinx/coroutines/CompletableDeferred;->complete(Ljava/lang/Object;)Z

    .line 209
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 213
    :cond_f2
    :try_start_f2
    new-instance p2, Lcom/google/gson/Gson;

    invoke-direct {p2}, Lcom/google/gson/Gson;-><init>()V

    const-class p3, Lcom/google/gson/JsonObject;

    invoke-virtual {p2, v0, p3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/gson/JsonObject;

    .line 214
    invoke-interface {p1, p2}, Lkotlinx/coroutines/CompletableDeferred;->complete(Ljava/lang/Object;)Z
    :try_end_102
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_f2 .. :try_end_102} :catch_103

    goto :goto_113

    :catch_103
    move-exception p2

    .line 216
    new-instance p3, Ljava/util/concurrent/CancellationException;

    invoke-virtual {p2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p3, v0}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    invoke-interface {p1, p3}, Lkotlinx/coroutines/Job;->cancel(Ljava/util/concurrent/CancellationException;)V

    .line 218
    :goto_113
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    :catchall_116
    move-exception p1

    .line 272
    invoke-interface {p2, v3}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw p1
.end method

.method public final a(Lcom/google/gson/JsonObject;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 10

    .line 273
    instance-of v0, p2, Lads_mobile_sdk/r53;

    if-eqz v0, :cond_13

    move-object v0, p2

    check-cast v0, Lads_mobile_sdk/r53;

    iget v1, v0, Lads_mobile_sdk/r53;->i:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/r53;->i:I

    goto :goto_18

    :cond_13
    new-instance v0, Lads_mobile_sdk/r53;

    invoke-direct {v0, p0, p2}, Lads_mobile_sdk/r53;-><init>(Lads_mobile_sdk/t53;Lkotlin/coroutines/Continuation;)V

    :goto_18
    iget-object p2, v0, Lads_mobile_sdk/r53;->g:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 336
    iget v2, v0, Lads_mobile_sdk/r53;->i:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_3e

    if-ne v2, v3, :cond_36

    iget-object p1, v0, Lads_mobile_sdk/r53;->f:Lkotlinx/coroutines/sync/Mutex;

    iget-object v1, v0, Lads_mobile_sdk/r53;->e:Lcom/google/gson/JsonObject;

    iget-object v2, v0, Lads_mobile_sdk/r53;->d:Ljava/lang/String;

    iget-object v3, v0, Lads_mobile_sdk/r53;->c:Ljava/lang/String;

    iget-object v5, v0, Lads_mobile_sdk/r53;->b:Lcom/google/gson/JsonObject;

    iget-object v0, v0, Lads_mobile_sdk/r53;->a:Lads_mobile_sdk/t53;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_6f

    :cond_36
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3e
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 337
    const-string p2, "id"

    invoke-static {p1, p2}, Lads_mobile_sdk/ds1;->h(Lcom/google/gson/JsonObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 338
    const-string v2, "fail"

    invoke-static {p1, v2}, Lads_mobile_sdk/ds1;->h(Lcom/google/gson/JsonObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 339
    const-string v5, "result"

    invoke-static {p1, v5}, Lads_mobile_sdk/ds1;->f(Lcom/google/gson/JsonObject;Ljava/lang/String;)Lcom/google/gson/JsonObject;

    move-result-object v5

    .line 340
    iget-object v6, p0, Lads_mobile_sdk/t53;->a:Lkotlinx/coroutines/sync/Mutex;

    .line 395
    iput-object p0, v0, Lads_mobile_sdk/r53;->a:Lads_mobile_sdk/t53;

    iput-object p1, v0, Lads_mobile_sdk/r53;->b:Lcom/google/gson/JsonObject;

    iput-object p2, v0, Lads_mobile_sdk/r53;->c:Ljava/lang/String;

    iput-object v2, v0, Lads_mobile_sdk/r53;->d:Ljava/lang/String;

    iput-object v5, v0, Lads_mobile_sdk/r53;->e:Lcom/google/gson/JsonObject;

    iput-object v6, v0, Lads_mobile_sdk/r53;->f:Lkotlinx/coroutines/sync/Mutex;

    iput v3, v0, Lads_mobile_sdk/r53;->i:I

    invoke-interface {v6, v4, v0}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_6a

    return-object v1

    :cond_6a
    move-object v0, p0

    move-object v3, p2

    move-object v1, v5

    move-object v5, p1

    move-object p1, v6

    .line 396
    :goto_6f
    :try_start_6f
    iget-object p2, v0, Lads_mobile_sdk/t53;->b:Ljava/util/HashMap;

    invoke-virtual {p2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lkotlinx/coroutines/CompletableDeferred;
    :try_end_77
    .catchall {:try_start_6f .. :try_end_77} :catchall_e1

    .line 455
    invoke-interface {p1, v4}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    if-nez p2, :cond_7f

    .line 456
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 458
    :cond_7f
    const-string p1, "fail_stack"

    invoke-static {v5, p1}, Lads_mobile_sdk/ds1;->h(Lcom/google/gson/JsonObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 459
    const-string v0, "fail_reason"

    invoke-static {v5, v0}, Lads_mobile_sdk/ds1;->h(Lcom/google/gson/JsonObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 460
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_93

    .line 461
    const-string v0, "Unknown Fail Reason."

    .line 463
    :cond_93
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_9c

    const-string p1, ""

    goto :goto_a0

    :cond_9c
    invoke-static {p1}, Lkotlin/text/StringsKt__IndentKt;->trimIndent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 465
    :goto_a0
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_d3

    .line 466
    new-instance v1, Ljava/util/concurrent/CancellationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    invoke-interface {p2, v1}, Lkotlinx/coroutines/Job;->cancel(Ljava/util/concurrent/CancellationException;)V

    .line 467
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x6

    invoke-static {p1, v4, p2}, Lads_mobile_sdk/xs3;->a(Ljava/lang/String;Ljava/lang/Throwable;I)V

    .line 468
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    :cond_d3
    if-nez v1, :cond_db

    .line 472
    invoke-interface {p2, v4}, Lkotlinx/coroutines/CompletableDeferred;->complete(Ljava/lang/Object;)Z

    .line 473
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 476
    :cond_db
    invoke-interface {p2, v1}, Lkotlinx/coroutines/CompletableDeferred;->complete(Ljava/lang/Object;)Z

    .line 477
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    :catchall_e1
    move-exception p2

    .line 515
    invoke-interface {p1, v4}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw p2
.end method

.method public final a(Ljava/lang/String;Lkotlinx/coroutines/CompletableDeferred;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 9

    .line 516
    instance-of v0, p3, Lads_mobile_sdk/s53;

    if-eqz v0, :cond_13

    move-object v0, p3

    check-cast v0, Lads_mobile_sdk/s53;

    iget v1, v0, Lads_mobile_sdk/s53;->g:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/s53;->g:I

    goto :goto_18

    :cond_13
    new-instance v0, Lads_mobile_sdk/s53;

    invoke-direct {v0, p0, p3}, Lads_mobile_sdk/s53;-><init>(Lads_mobile_sdk/t53;Lkotlin/coroutines/Continuation;)V

    :goto_18
    iget-object p3, v0, Lads_mobile_sdk/s53;->e:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 543
    iget v2, v0, Lads_mobile_sdk/s53;->g:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_3c

    if-ne v2, v3, :cond_34

    iget-object p1, v0, Lads_mobile_sdk/s53;->d:Lkotlinx/coroutines/sync/Mutex;

    iget-object p2, v0, Lads_mobile_sdk/s53;->c:Lkotlinx/coroutines/CompletableDeferred;

    iget-object v1, v0, Lads_mobile_sdk/s53;->b:Ljava/lang/String;

    iget-object v0, v0, Lads_mobile_sdk/s53;->a:Lads_mobile_sdk/t53;

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object p3, p1

    move-object p1, v1

    goto :goto_53

    :cond_34
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3c
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 544
    iget-object p3, p0, Lads_mobile_sdk/t53;->a:Lkotlinx/coroutines/sync/Mutex;

    .line 616
    iput-object p0, v0, Lads_mobile_sdk/s53;->a:Lads_mobile_sdk/t53;

    iput-object p1, v0, Lads_mobile_sdk/s53;->b:Ljava/lang/String;

    iput-object p2, v0, Lads_mobile_sdk/s53;->c:Lkotlinx/coroutines/CompletableDeferred;

    iput-object p3, v0, Lads_mobile_sdk/s53;->d:Lkotlinx/coroutines/sync/Mutex;

    iput v3, v0, Lads_mobile_sdk/s53;->g:I

    invoke-interface {p3, v4, v0}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_52

    return-object v1

    :cond_52
    move-object v0, p0

    .line 617
    :goto_53
    :try_start_53
    iget-object v0, v0, Lads_mobile_sdk/t53;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 618
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_5a
    .catchall {:try_start_53 .. :try_end_5a} :catchall_5e

    .line 692
    invoke-interface {p3, v4}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    return-object p1

    :catchall_5e
    move-exception p1

    .line 693
    invoke-interface {p3, v4}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw p1
.end method

.method public final g()Lads_mobile_sdk/u11;
    .registers 2

    .line 1
    sget-object v0, Lads_mobile_sdk/u11;->d:Lads_mobile_sdk/u11;

    return-object v0
.end method
