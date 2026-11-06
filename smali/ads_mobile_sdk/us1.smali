###### Class ads_mobile_sdk.us1 (ads_mobile_sdk.us1)
.class public final Lads_mobile_sdk/us1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/r41;


# instance fields
.field public final a:Lads_mobile_sdk/j12;

.field public final b:Lads_mobile_sdk/q52;

.field public final c:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/j12;Lads_mobile_sdk/q52;)V
    .registers 4

    .line 1
    const-string v0, "nativeAdCore"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nativeJavascriptEngine"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lads_mobile_sdk/us1;->a:Lads_mobile_sdk/j12;

    .line 25
    iput-object p2, p0, Lads_mobile_sdk/us1;->b:Lads_mobile_sdk/q52;

    .line 30
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lads_mobile_sdk/us1;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method


# virtual methods
.method public final a(Lads_mobile_sdk/r31;Ljava/util/Map;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 16

    .line 1
    const-string p1, "id"

    instance-of v0, p3, Lads_mobile_sdk/ts1;

    if-eqz v0, :cond_16

    move-object v0, p3

    check-cast v0, Lads_mobile_sdk/ts1;

    iget v1, v0, Lads_mobile_sdk/ts1;->g:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_16

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/ts1;->g:I

    :goto_14
    move-object v5, v0

    goto :goto_1c

    :cond_16
    new-instance v0, Lads_mobile_sdk/ts1;

    invoke-direct {v0, p0, p3}, Lads_mobile_sdk/ts1;-><init>(Lads_mobile_sdk/us1;Lkotlin/coroutines/Continuation;)V

    goto :goto_14

    :goto_1c
    iget-object p3, v5, Lads_mobile_sdk/ts1;->e:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 32
    iget v1, v5, Lads_mobile_sdk/ts1;->g:I

    const/4 v7, 0x0

    const/4 v8, 0x6

    const/4 v9, 0x2

    const/4 v2, 0x1

    const/4 v10, 0x0

    if-eqz v1, :cond_5e

    if-eq v1, v2, :cond_48

    if-ne v1, v9, :cond_40

    iget-object p1, v5, Lads_mobile_sdk/ts1;->b:Ljava/lang/Object;

    check-cast p1, Ljava/io/Closeable;

    iget-object p2, v5, Lads_mobile_sdk/ts1;->a:Ljava/lang/Object;

    check-cast p2, Lads_mobile_sdk/rr3;

    :try_start_37
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_3a
    .catchall {:try_start_37 .. :try_end_3a} :catchall_3c

    goto/16 :goto_111

    :catchall_3c
    move-exception v0

    move-object p3, v0

    goto/16 :goto_117

    .line 33
    :cond_40
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_48
    iget-object p2, v5, Lads_mobile_sdk/ts1;->d:Lads_mobile_sdk/rr3;

    iget-object v1, v5, Lads_mobile_sdk/ts1;->c:Lads_mobile_sdk/rr3;

    iget-object v2, v5, Lads_mobile_sdk/ts1;->b:Ljava/lang/Object;

    check-cast v2, Ljava/util/Map;

    iget-object v3, v5, Lads_mobile_sdk/ts1;->a:Ljava/lang/Object;

    check-cast v3, Lads_mobile_sdk/us1;

    :try_start_54
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_57
    .catchall {:try_start_54 .. :try_end_57} :catchall_58

    goto :goto_ba

    :catchall_58
    move-exception v0

    move-object p3, v0

    move-object p1, p2

    move-object p2, v1

    goto/16 :goto_117

    .line 34
    :cond_5e
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 35
    const-string p3, "overlayHtml"

    invoke-interface {p2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    if-nez p3, :cond_6e

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 36
    :cond_6e
    const-string v1, "baseUrl"

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Ljava/lang/String;

    .line 38
    iget-object v1, p0, Lads_mobile_sdk/us1;->a:Lads_mobile_sdk/j12;

    invoke-virtual {v1}, Lads_mobile_sdk/j12;->i()Ljava/lang/ref/WeakReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lads_mobile_sdk/r31;

    if-nez v1, :cond_8d

    .line 40
    const-string p1, "Handling loadHtml gmsg while 1.5 click overlay not available"

    invoke-static {p1, v10, v8}, Lads_mobile_sdk/xs3;->a(Ljava/lang/String;Ljava/lang/Throwable;I)V

    .line 41
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 43
    :cond_8d
    sget-object v4, Lads_mobile_sdk/s11;->e1:Lads_mobile_sdk/s11;

    .line 79
    sget-object v6, Lads_mobile_sdk/hs3;->a:Ljava/util/WeakHashMap;

    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v6

    invoke-static {v4, v6, v2}, Lads_mobile_sdk/hs3;->a(Lads_mobile_sdk/s11;Ljava/util/List;Z)Lads_mobile_sdk/rr3;

    move-result-object v11

    .line 80
    :try_start_99
    iget-object v4, p0, Lads_mobile_sdk/us1;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4, v7, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v4

    if-eqz v4, :cond_10f

    .line 82
    iput-object p0, v5, Lads_mobile_sdk/ts1;->a:Ljava/lang/Object;

    iput-object p2, v5, Lads_mobile_sdk/ts1;->b:Ljava/lang/Object;

    iput-object v11, v5, Lads_mobile_sdk/ts1;->c:Lads_mobile_sdk/rr3;

    iput-object v11, v5, Lads_mobile_sdk/ts1;->d:Lads_mobile_sdk/rr3;

    iput v2, v5, Lads_mobile_sdk/ts1;->g:I

    const/4 v4, 0x0

    const/16 v6, 0xc

    move-object v2, p3

    invoke-static/range {v1 .. v6}, Lads_mobile_sdk/r31;->a(Lads_mobile_sdk/r31;Ljava/lang/String;Ljava/lang/String;ZLkotlin/coroutines/Continuation;I)Ljava/lang/Object;

    move-result-object p3
    :try_end_b3
    .catchall {:try_start_99 .. :try_end_b3} :catchall_10b

    if-ne p3, v0, :cond_b6

    goto :goto_103

    :cond_b6
    move-object v3, p0

    move-object v2, p2

    move-object p2, v11

    move-object v1, p2

    .line 83
    :goto_ba
    :try_start_ba
    check-cast p3, Lads_mobile_sdk/v01;

    .line 101
    iget-object v4, v3, Lads_mobile_sdk/us1;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4, v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    .line 102
    instance-of v4, p3, Lads_mobile_sdk/i01;

    if-eqz v4, :cond_da

    .line 103
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Error loading html overlay: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v10, v8}, Lads_mobile_sdk/xs3;->a(Ljava/lang/String;Ljava/lang/Throwable;I)V

    goto :goto_104

    .line 106
    :cond_da
    new-instance p3, Lcom/google/gson/JsonObject;

    invoke-direct {p3}, Lcom/google/gson/JsonObject;-><init>()V

    .line 107
    const-string v4, "messageType"

    const-string v6, "htmlLoaded"

    invoke-virtual {p3, v4, v6}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p3, p1, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    iget-object p1, v3, Lads_mobile_sdk/us1;->b:Lads_mobile_sdk/q52;

    const-string v2, "sendMessageToNativeJs"

    iput-object v1, v5, Lads_mobile_sdk/ts1;->a:Ljava/lang/Object;

    iput-object p2, v5, Lads_mobile_sdk/ts1;->b:Ljava/lang/Object;

    iput-object v10, v5, Lads_mobile_sdk/ts1;->c:Lads_mobile_sdk/rr3;

    iput-object v10, v5, Lads_mobile_sdk/ts1;->d:Lads_mobile_sdk/rr3;

    iput v9, v5, Lads_mobile_sdk/ts1;->g:I

    invoke-interface {p1, p3, v2, v5}, Lads_mobile_sdk/eq1;->a(Lcom/google/gson/JsonObject;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1
    :try_end_101
    .catchall {:try_start_ba .. :try_end_101} :catchall_107

    if-ne p1, v0, :cond_104

    :goto_103
    return-object v0

    :cond_104
    :goto_104
    move-object p1, p2

    move-object p2, v1

    goto :goto_111

    :catchall_107
    move-exception v0

    move-object p1, v0

    move-object v11, v1

    goto :goto_11a

    :catchall_10b
    move-exception v0

    move-object p1, v0

    move-object p2, v11

    goto :goto_11a

    :cond_10f
    move-object p1, v11

    move-object p2, p1

    .line 113
    :goto_111
    :try_start_111
    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_113
    .catchall {:try_start_111 .. :try_end_113} :catchall_3c

    .line 136
    invoke-static {p1, v10}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object p2

    :goto_117
    move-object v11, p2

    move-object p2, p1

    move-object p1, p3

    .line 144
    :goto_11a
    :try_start_11a
    invoke-virtual {v11, p1}, Lads_mobile_sdk/rr3;->b(Ljava/lang/Throwable;)V

    .line 148
    instance-of p3, p1, Lads_mobile_sdk/v24;

    if-nez p3, :cond_153

    .line 150
    instance-of p3, p1, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez p3, :cond_130

    instance-of p3, p1, Ljava/util/concurrent/CancellationException;

    if-nez p3, :cond_130

    .line 156
    invoke-virtual {v11, p1}, Lads_mobile_sdk/rr3;->a(Ljava/lang/Throwable;)V

    goto :goto_130

    :catchall_12d
    move-exception v0

    move-object p1, v0

    goto :goto_154

    .line 162
    :cond_130
    :goto_130
    instance-of p3, p1, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez p3, :cond_14b

    .line 163
    instance-of p3, p1, Ljava/util/concurrent/CancellationException;

    if-nez p3, :cond_143

    .line 164
    instance-of p3, p1, Lads_mobile_sdk/w01;

    if-eqz p3, :cond_13d

    throw p1

    .line 165
    :cond_13d
    new-instance p3, Lads_mobile_sdk/b01;

    invoke-direct {p3, p1}, Lads_mobile_sdk/b01;-><init>(Ljava/lang/Throwable;)V

    throw p3

    .line 166
    :cond_143
    new-instance p3, Lads_mobile_sdk/wz0;

    check-cast p1, Ljava/util/concurrent/CancellationException;

    invoke-direct {p3, p1}, Lads_mobile_sdk/wz0;-><init>(Ljava/util/concurrent/CancellationException;)V

    throw p3

    .line 167
    :cond_14b
    new-instance p3, Lads_mobile_sdk/i21;

    check-cast p1, Lkotlinx/coroutines/TimeoutCancellationException;

    invoke-direct {p3, p1}, Lads_mobile_sdk/i21;-><init>(Lkotlinx/coroutines/TimeoutCancellationException;)V

    throw p3

    .line 168
    :cond_153
    throw p1
    :try_end_154
    .catchall {:try_start_11a .. :try_end_154} :catchall_12d

    .line 169
    :goto_154
    :try_start_154
    throw p1
    :try_end_155
    .catchall {:try_start_154 .. :try_end_155} :catchall_155

    :catchall_155
    move-exception v0

    move-object p3, v0

    invoke-static {p2, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p3
.end method

.method public final g()Lads_mobile_sdk/u11;
    .registers 2

    .line 1
    sget-object v0, Lads_mobile_sdk/u11;->T:Lads_mobile_sdk/u11;

    return-object v0
.end method
