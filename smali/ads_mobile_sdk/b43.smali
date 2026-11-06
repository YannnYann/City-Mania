###### Class ads_mobile_sdk.b43 (ads_mobile_sdk.b43)
.class public abstract Lads_mobile_sdk/b43;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lads_mobile_sdk/cw2;

.field public final b:Lads_mobile_sdk/e01;

.field public final c:Lads_mobile_sdk/ex0;

.field public final d:Lads_mobile_sdk/zw3;

.field public e:Lads_mobile_sdk/g30;

.field public f:Lkotlinx/coroutines/CoroutineScope;

.field public g:Lads_mobile_sdk/uv;

.field public h:Ljava/lang/Object;

.field public final i:Lkotlinx/coroutines/channels/Channel;

.field public final j:Ljava/util/LinkedList;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/dw2;Lads_mobile_sdk/e01;Lads_mobile_sdk/ex0;Lads_mobile_sdk/zw3;)V
    .registers 6

    .line 1
    const-string v0, "consentManagerProvider"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "httpClient"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "flags"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "userAgentProvider"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lads_mobile_sdk/b43;->a:Lads_mobile_sdk/cw2;

    .line 4
    iput-object p2, p0, Lads_mobile_sdk/b43;->b:Lads_mobile_sdk/e01;

    .line 5
    iput-object p3, p0, Lads_mobile_sdk/b43;->c:Lads_mobile_sdk/ex0;

    .line 6
    iput-object p4, p0, Lads_mobile_sdk/b43;->d:Lads_mobile_sdk/zw3;

    const/4 p1, 0x0

    const/4 p2, 0x7

    const/4 p3, 0x0

    .line 21
    invoke-static {p3, p1, p1, p2, p1}, Lkotlinx/coroutines/channels/ChannelKt;->Channel$default(ILkotlinx/coroutines/channels/BufferOverflow;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lkotlinx/coroutines/channels/Channel;

    move-result-object p1

    iput-object p1, p0, Lads_mobile_sdk/b43;->i:Lkotlinx/coroutines/channels/Channel;

    .line 24
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lads_mobile_sdk/b43;->j:Ljava/util/LinkedList;

    return-void
.end method


# virtual methods
.method public abstract a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end method

.method public final a([BLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 10

    .line 2361
    instance-of v0, p2, Lads_mobile_sdk/x33;

    if-eqz v0, :cond_14

    move-object v0, p2

    check-cast v0, Lads_mobile_sdk/x33;

    iget v1, v0, Lads_mobile_sdk/x33;->c:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_14

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/x33;->c:I

    :goto_12
    move-object v5, v0

    goto :goto_1a

    :cond_14
    new-instance v0, Lads_mobile_sdk/x33;

    invoke-direct {v0, p0, p2}, Lads_mobile_sdk/x33;-><init>(Lads_mobile_sdk/b43;Lkotlin/coroutines/Continuation;)V

    goto :goto_12

    :goto_1a
    iget-object p2, v5, Lads_mobile_sdk/x33;->a:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 2825
    iget v1, v5, Lads_mobile_sdk/x33;->c:I

    const/4 v2, 0x1

    if-eqz v1, :cond_36

    if-ne v1, v2, :cond_2e

    :try_start_27
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_2a
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_2a} :catch_2b

    goto :goto_78

    :catch_2b
    move-exception v0

    move-object p1, v0

    goto :goto_62

    .line 2826
    :cond_2e
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_36
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 2829
    :try_start_39
    new-instance p2, Lads_mobile_sdk/e81;

    invoke-direct {p2}, Lads_mobile_sdk/e81;-><init>()V

    .line 2830
    iget-object v1, p0, Lads_mobile_sdk/b43;->c:Lads_mobile_sdk/ex0;

    invoke-virtual {v1}, Lads_mobile_sdk/ex0;->w0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lads_mobile_sdk/e81;->b(Ljava/lang/String;)Lads_mobile_sdk/e81;

    move-result-object p2

    .line 2831
    const-string v1, "application/x-protobuf"

    invoke-virtual {p2, v1, p1}, Lads_mobile_sdk/e81;->b(Ljava/lang/String;[B)Lads_mobile_sdk/e81;

    move-result-object p1

    .line 2832
    invoke-virtual {p1}, Lads_mobile_sdk/e81;->a()Lads_mobile_sdk/f81;

    move-result-object p1

    .line 2833
    iget-object v1, p0, Lads_mobile_sdk/b43;->b:Lads_mobile_sdk/e01;

    iput v2, v5, Lads_mobile_sdk/x33;->c:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v6, 0x1e

    move-object v2, p1

    invoke-static/range {v1 .. v6}, Lads_mobile_sdk/e01;->a(Lads_mobile_sdk/e01;Lads_mobile_sdk/f81;Lkotlin/time/Duration;ZLkotlin/coroutines/Continuation;I)Ljava/lang/Object;

    move-result-object p1
    :try_end_5f
    .catch Ljava/io/IOException; {:try_start_39 .. :try_end_5f} :catch_2b

    if-ne p1, v0, :cond_78

    return-object v0

    .line 2835
    :goto_62
    sget-object p2, Lads_mobile_sdk/f01;->a:Lcom/google/common/base/Splitter;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failed to ping RCS payload: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lads_mobile_sdk/f01;->b(Ljava/lang/String;)V

    .line 2837
    :cond_78
    :goto_78
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final a(Ljava/lang/Object;)V
    .registers 3

    .line 1915
    const-string v0, "snapshot"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2357
    monitor-enter p0

    :try_start_6
    iget-object v0, p0, Lads_mobile_sdk/b43;->j:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
    :try_end_b
    .catchall {:try_start_6 .. :try_end_b} :catchall_1a

    monitor-exit p0

    .line 2358
    invoke-virtual {p0}, Lads_mobile_sdk/b43;->a()Z

    move-result p1

    if-eqz p1, :cond_19

    .line 2359
    iget-object p1, p0, Lads_mobile_sdk/b43;->i:Lkotlinx/coroutines/channels/Channel;

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-interface {p1, v0}, Lkotlinx/coroutines/channels/SendChannel;->trySend-JP2dKIU(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_19
    return-void

    :catchall_1a
    move-exception p1

    .line 2360
    monitor-exit p0

    throw p1
.end method

.method public final a(Lkotlinx/coroutines/CoroutineScope;Lads_mobile_sdk/vz0;Lads_mobile_sdk/uv;)V
    .registers 11

    .line 1
    const-string v0, "backgroundScope"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "baseMessage"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "chromeVariationsProvider"

    invoke-static {p3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    const-string v1, "<set-?>"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 412
    iput-object p1, p0, Lads_mobile_sdk/b43;->f:Lkotlinx/coroutines/CoroutineScope;

    .line 413
    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 829
    iput-object p2, p0, Lads_mobile_sdk/b43;->h:Ljava/lang/Object;

    .line 830
    iget-object p1, p0, Lads_mobile_sdk/b43;->a:Lads_mobile_sdk/cw2;

    invoke-interface {p1}, Lads_mobile_sdk/cw2;->get()Ljava/lang/Object;

    move-result-object p1

    const-string p2, "get(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lads_mobile_sdk/g30;

    .line 831
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1240
    iput-object p1, p0, Lads_mobile_sdk/b43;->e:Lads_mobile_sdk/g30;

    .line 1241
    invoke-static {p3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1652
    iput-object p3, p0, Lads_mobile_sdk/b43;->g:Lads_mobile_sdk/uv;

    .line 1653
    iget-object p1, p0, Lads_mobile_sdk/b43;->f:Lkotlinx/coroutines/CoroutineScope;

    const/4 p2, 0x0

    if-eqz p1, :cond_39

    move-object v1, p1

    goto :goto_3d

    :cond_39
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, p2

    .line 1654
    :goto_3d
    new-instance p1, Lads_mobile_sdk/a43;

    invoke-direct {p1, p0, p2}, Lads_mobile_sdk/a43;-><init>(Lads_mobile_sdk/b43;Lkotlin/coroutines/Continuation;)V

    .line 1655
    sget-object v2, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    .line 1656
    const-string p3, "<this>"

    invoke-static {v1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "context"

    invoke-static {v2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "block"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1914
    new-instance v4, Lads_mobile_sdk/ws3;

    invoke-direct {v4, p1, p2}, Lads_mobile_sdk/ws3;-><init>(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)V

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public abstract a()Z
.end method

.method public abstract b()J
.end method
