###### Class ads_mobile_sdk.x71 (ads_mobile_sdk.x71)
.class public final Lads_mobile_sdk/x71;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lokhttp3/Callback;


# instance fields
.field public final synthetic a:Lkotlinx/coroutines/CancellableContinuation;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/CancellableContinuationImpl;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lads_mobile_sdk/x71;->a:Lkotlinx/coroutines/CancellableContinuation;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
    .registers 7

    .line 1
    const-string v0, "call"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "e"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 535
    instance-of v0, p2, Ljava/net/UnknownServiceException;

    if-eqz v0, :cond_1c

    .line 536
    new-instance v0, Lads_mobile_sdk/o01;

    .line 537
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_18

    const-string v1, "Non-retryable OkHttp network error"

    .line 538
    :cond_18
    invoke-direct {v0, v1, p2}, Lads_mobile_sdk/o01;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_25

    .line 543
    :cond_1c
    new-instance v0, Lads_mobile_sdk/j01;

    sget-object v1, Lads_mobile_sdk/kk1;->e:Lads_mobile_sdk/kk1;

    const/4 v2, 0x0

    const/4 v3, 0x4

    invoke-direct {v0, p2, v1, v2, v3}, Lads_mobile_sdk/j01;-><init>(Ljava/lang/Throwable;Lads_mobile_sdk/kk1;Ljava/lang/String;I)V

    .line 545
    :goto_25
    iget-object p2, p0, Lads_mobile_sdk/x71;->a:Lkotlinx/coroutines/CancellableContinuation;

    new-instance v1, Lads_mobile_sdk/v71;

    invoke-direct {v1, p1}, Lads_mobile_sdk/v71;-><init>(Lokhttp3/Call;)V

    invoke-interface {p2, v0, v1}, Lkotlinx/coroutines/CancellableContinuation;->resume(Ljava/lang/Object;Lkotlin/jvm/functions/Function3;)V

    return-void
.end method

.method public final onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
    .registers 5

    .line 1
    const-string v0, "call"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "response"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 547
    iget-object v0, p0, Lads_mobile_sdk/x71;->a:Lkotlinx/coroutines/CancellableContinuation;

    new-instance v1, Lads_mobile_sdk/q01;

    invoke-direct {v1, p2}, Lads_mobile_sdk/q01;-><init>(Ljava/lang/Object;)V

    new-instance p2, Lads_mobile_sdk/w71;

    invoke-direct {p2, p1}, Lads_mobile_sdk/w71;-><init>(Lokhttp3/Call;)V

    invoke-interface {v0, v1, p2}, Lkotlinx/coroutines/CancellableContinuation;->resume(Ljava/lang/Object;Lkotlin/jvm/functions/Function3;)V

    return-void
.end method
