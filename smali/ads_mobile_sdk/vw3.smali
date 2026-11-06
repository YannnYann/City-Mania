###### Class ads_mobile_sdk.vw3 (ads_mobile_sdk.vw3)
.class public final Lads_mobile_sdk/vw3;
.super Lads_mobile_sdk/nc1;
.source "SourceFile"


# instance fields
.field public final c:Lkotlinx/coroutines/CoroutineScope;

.field public final d:Lads_mobile_sdk/e01;

.field public final e:Lkotlinx/coroutines/channels/Channel;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/CoroutineScope;Lads_mobile_sdk/e01;)V
    .registers 5

    .line 1
    const-string v0, "backgroundScope"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "httpClient"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x3

    const/4 v1, 0x0

    .line 28
    invoke-direct {p0, v1, v0}, Lads_mobile_sdk/nc1;-><init>(Lads_mobile_sdk/s11;I)V

    .line 29
    iput-object p1, p0, Lads_mobile_sdk/vw3;->c:Lkotlinx/coroutines/CoroutineScope;

    .line 30
    iput-object p2, p0, Lads_mobile_sdk/vw3;->d:Lads_mobile_sdk/e01;

    const p1, 0x7fffffff

    const/4 p2, 0x6

    .line 34
    invoke-static {p1, v1, v1, p2, v1}, Lkotlinx/coroutines/channels/ChannelKt;->Channel$default(ILkotlinx/coroutines/channels/BufferOverflow;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lkotlinx/coroutines/channels/Channel;

    move-result-object p1

    iput-object p1, p0, Lads_mobile_sdk/vw3;->e:Lkotlinx/coroutines/channels/Channel;

    return-void
.end method


# virtual methods
.method public final u(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 8

    .line 2
    iget-object v0, p0, Lads_mobile_sdk/vw3;->c:Lkotlinx/coroutines/CoroutineScope;

    .line 3
    new-instance p1, Lads_mobile_sdk/uw3;

    const/4 v1, 0x0

    invoke-direct {p1, p0, v1}, Lads_mobile_sdk/uw3;-><init>(Lads_mobile_sdk/vw3;Lkotlin/coroutines/Continuation;)V

    move-object v2, v1

    .line 4
    sget-object v1, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    .line 5
    const-string v3, "<this>"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "context"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "block"

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 263
    new-instance v3, Lads_mobile_sdk/ws3;

    invoke-direct {v3, p1, v2}, Lads_mobile_sdk/ws3;-><init>(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)V

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v2, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 264
    new-instance p1, Lads_mobile_sdk/q01;

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-direct {p1, v0}, Lads_mobile_sdk/q01;-><init>(Ljava/lang/Object;)V

    return-object p1
.end method

.method public final v(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 11

    .line 1
    instance-of v0, p1, Lads_mobile_sdk/tw3;

    if-eqz v0, :cond_13

    move-object v0, p1

    check-cast v0, Lads_mobile_sdk/tw3;

    iget v1, v0, Lads_mobile_sdk/tw3;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/tw3;->e:I

    goto :goto_18

    :cond_13
    new-instance v0, Lads_mobile_sdk/tw3;

    invoke-direct {v0, p0, p1}, Lads_mobile_sdk/tw3;-><init>(Lads_mobile_sdk/vw3;Lkotlin/coroutines/Continuation;)V

    :goto_18
    iget-object p1, v0, Lads_mobile_sdk/tw3;->c:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 58
    iget v2, v0, Lads_mobile_sdk/tw3;->e:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_41

    if-eq v2, v4, :cond_3a

    if-ne v2, v3, :cond_32

    iget-object v2, v0, Lads_mobile_sdk/tw3;->b:Landroid/net/Uri;

    iget-object v5, v0, Lads_mobile_sdk/tw3;->a:Lads_mobile_sdk/vw3;

    :try_start_2c
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_2f} :catch_30

    goto :goto_7f

    :catch_30
    move-exception p1

    goto :goto_92

    .line 59
    :cond_32
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3a
    iget-object v2, v0, Lads_mobile_sdk/tw3;->a:Lads_mobile_sdk/vw3;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v5, v2

    goto :goto_57

    :cond_41
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object p1, p0

    .line 61
    :goto_45
    iget-object v2, p1, Lads_mobile_sdk/vw3;->e:Lkotlinx/coroutines/channels/Channel;

    iput-object p1, v0, Lads_mobile_sdk/tw3;->a:Lads_mobile_sdk/vw3;

    const/4 v5, 0x0

    iput-object v5, v0, Lads_mobile_sdk/tw3;->b:Landroid/net/Uri;

    iput v4, v0, Lads_mobile_sdk/tw3;->e:I

    invoke-interface {v2, v0}, Lkotlinx/coroutines/channels/ReceiveChannel;->receive(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_55

    goto :goto_7e

    :cond_55
    move-object v5, p1

    move-object p1, v2

    .line 62
    :goto_57
    check-cast p1, Lkotlin/Pair;

    invoke-virtual {p1}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    invoke-virtual {p1}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    .line 64
    :try_start_65
    iget-object v6, v5, Lads_mobile_sdk/vw3;->d:Lads_mobile_sdk/e01;

    new-instance v7, Ljava/net/URL;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v5, v0, Lads_mobile_sdk/tw3;->a:Lads_mobile_sdk/vw3;

    iput-object v2, v0, Lads_mobile_sdk/tw3;->b:Landroid/net/Uri;

    iput v3, v0, Lads_mobile_sdk/tw3;->e:I

    const/16 v8, 0x1a

    invoke-static {v6, v7, p1, v0, v8}, Lads_mobile_sdk/e01;->a(Lads_mobile_sdk/e01;Ljava/net/URL;Ljava/util/Map;Lkotlin/coroutines/Continuation;I)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_7f

    :goto_7e
    return-object v1

    .line 65
    :cond_7f
    :goto_7f
    check-cast p1, Lads_mobile_sdk/v01;

    .line 70
    instance-of v6, p1, Lads_mobile_sdk/q01;

    if-eqz v6, :cond_90

    check-cast p1, Lads_mobile_sdk/q01;

    invoke-virtual {p1}, Lads_mobile_sdk/q01;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lads_mobile_sdk/h81;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_90
    .catch Ljava/lang/Exception; {:try_start_65 .. :try_end_90} :catch_30

    :cond_90
    :goto_90
    move-object p1, v5

    goto :goto_45

    .line 72
    :goto_92
    sget-object v6, Lads_mobile_sdk/f01;->a:Lcom/google/common/base/Splitter;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error while pinging URL: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lads_mobile_sdk/f01;->b(Ljava/lang/String;)V

    goto :goto_90
.end method
