###### Class ads_mobile_sdk.el1 (ads_mobile_sdk.el1)
.class public final Lads_mobile_sdk/el1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic a:Lads_mobile_sdk/r31;

.field public final synthetic b:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/r31;Ljava/util/concurrent/Executor;Lkotlin/coroutines/Continuation;)V
    .registers 4

    .line 1
    iput-object p1, p0, Lads_mobile_sdk/el1;->a:Lads_mobile_sdk/r31;

    iput-object p2, p0, Lads_mobile_sdk/el1;->b:Ljava/util/concurrent/Executor;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 5

    .line 1
    new-instance p1, Lads_mobile_sdk/el1;

    iget-object v0, p0, Lads_mobile_sdk/el1;->a:Lads_mobile_sdk/r31;

    iget-object v1, p0, Lads_mobile_sdk/el1;->b:Ljava/util/concurrent/Executor;

    invoke-direct {p1, v0, v1, p2}, Lads_mobile_sdk/el1;-><init>(Lads_mobile_sdk/r31;Ljava/util/concurrent/Executor;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    .line 1
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 2
    new-instance p1, Lads_mobile_sdk/el1;

    iget-object v0, p0, Lads_mobile_sdk/el1;->a:Lads_mobile_sdk/r31;

    iget-object v1, p0, Lads_mobile_sdk/el1;->b:Ljava/util/concurrent/Executor;

    invoke-direct {p1, v0, v1, p2}, Lads_mobile_sdk/el1;-><init>(Lads_mobile_sdk/r31;Ljava/util/concurrent/Executor;Lkotlin/coroutines/Continuation;)V

    .line 3
    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lads_mobile_sdk/el1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 96
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 97
    sget-object p1, Lads_mobile_sdk/az3;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 98
    iget-object p1, p0, Lads_mobile_sdk/el1;->a:Lads_mobile_sdk/r31;

    .line 100
    iget-object v0, p0, Lads_mobile_sdk/el1;->b:Ljava/util/concurrent/Executor;

    .line 101
    const-string v1, "webView"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "url"

    const-string v2, "https://googlemobileads.com/warmup"

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "executor"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 278
    sget-object v1, Lads_mobile_sdk/az3;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    const/4 v3, 0x0

    if-nez v1, :cond_27

    goto :goto_37

    .line 287
    :cond_27
    :try_start_27
    new-instance v1, Lads_mobile_sdk/xy3;

    invoke-direct {v1}, Lads_mobile_sdk/xy3;-><init>()V

    const/4 v4, 0x0

    .line 288
    invoke-static {p1, v2, v4, v0, v1}, Landroidx/webkit/WebViewCompat;->prerenderUrlAsync(Landroid/webkit/WebView;Ljava/lang/String;Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Landroidx/webkit/PrerenderOperationCallback;)V
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_30} :catch_32

    const/4 v3, 0x1

    goto :goto_37

    .line 307
    :catch_32
    sget-object p1, Lads_mobile_sdk/az3;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 308
    :goto_37
    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
