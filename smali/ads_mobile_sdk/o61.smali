###### Class ads_mobile_sdk.o61 (ads_mobile_sdk.o61)
.class public final Lads_mobile_sdk/o61;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public a:I

.field public final synthetic b:Lads_mobile_sdk/p61;

.field public final synthetic c:Lcom/google/android/play/core/hsdp/service/HsdpPrewarmRequest;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/p61;Lcom/google/android/play/core/hsdp/service/HsdpPrewarmRequest;Lkotlin/coroutines/Continuation;)V
    .registers 4

    .line 1
    iput-object p1, p0, Lads_mobile_sdk/o61;->b:Lads_mobile_sdk/p61;

    iput-object p2, p0, Lads_mobile_sdk/o61;->c:Lcom/google/android/play/core/hsdp/service/HsdpPrewarmRequest;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 5

    .line 1
    new-instance p1, Lads_mobile_sdk/o61;

    iget-object v0, p0, Lads_mobile_sdk/o61;->b:Lads_mobile_sdk/p61;

    iget-object v1, p0, Lads_mobile_sdk/o61;->c:Lcom/google/android/play/core/hsdp/service/HsdpPrewarmRequest;

    invoke-direct {p1, v0, v1, p2}, Lads_mobile_sdk/o61;-><init>(Lads_mobile_sdk/p61;Lcom/google/android/play/core/hsdp/service/HsdpPrewarmRequest;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    .line 1
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 2
    new-instance p1, Lads_mobile_sdk/o61;

    iget-object v0, p0, Lads_mobile_sdk/o61;->b:Lads_mobile_sdk/p61;

    iget-object v1, p0, Lads_mobile_sdk/o61;->c:Lcom/google/android/play/core/hsdp/service/HsdpPrewarmRequest;

    invoke-direct {p1, v0, v1, p2}, Lads_mobile_sdk/o61;-><init>(Lads_mobile_sdk/p61;Lcom/google/android/play/core/hsdp/service/HsdpPrewarmRequest;Lkotlin/coroutines/Continuation;)V

    .line 3
    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lads_mobile_sdk/o61;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 69
    iget v1, p0, Lads_mobile_sdk/o61;->a:I

    const/4 v2, 0x1

    if-eqz v1, :cond_17

    if-ne v1, v2, :cond_f

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_62

    :cond_f
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_17
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 70
    iget-object p1, p0, Lads_mobile_sdk/o61;->b:Lads_mobile_sdk/p61;

    iget-object v1, p0, Lads_mobile_sdk/o61;->c:Lcom/google/android/play/core/hsdp/service/HsdpPrewarmRequest;

    .line 143
    iput v2, p0, Lads_mobile_sdk/o61;->a:I

    .line 144
    new-instance v3, Lkotlinx/coroutines/CancellableContinuationImpl;

    invoke-static {p0}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsJvmKt;->intercepted(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Lkotlinx/coroutines/CancellableContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;I)V

    .line 150
    invoke-virtual {v3}, Lkotlinx/coroutines/CancellableContinuationImpl;->initCancellability()V

    .line 151
    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v4, 0x0

    invoke-direct {v2, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 154
    new-instance v4, Lads_mobile_sdk/n61;

    invoke-direct {v4, v2, v3}, Lads_mobile_sdk/n61;-><init>(Ljava/util/concurrent/atomic/AtomicBoolean;Lkotlinx/coroutines/CancellableContinuationImpl;)V

    .line 155
    iget-object v2, p1, Lads_mobile_sdk/p61;->c:Lkotlin/Lazy;

    .line 156
    invoke-interface {v2}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/play/core/hsdp/service/HsdpDeepLinkService;

    .line 157
    monitor-enter v2

    .line 158
    :try_start_40
    iget-object p1, p1, Lads_mobile_sdk/p61;->c:Lkotlin/Lazy;

    invoke-interface {p1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/play/core/hsdp/service/HsdpDeepLinkService;

    .line 159
    invoke-static {v1}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOfNotNull(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {p1, v1, v4}, Lcom/google/android/play/core/hsdp/service/HsdpDeepLinkService;->prewarm(Ljava/util/List;Lcom/google/android/play/core/hsdp/service/HsdpDeepLinkService$HsdpPrewarmListener;)V

    .line 160
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_51
    .catchall {:try_start_40 .. :try_end_51} :catchall_65

    .line 161
    monitor-exit v2

    .line 162
    invoke-virtual {v3}, Lkotlinx/coroutines/CancellableContinuationImpl;->getResult()Ljava/lang/Object;

    move-result-object p1

    .line 163
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    if-ne p1, v1, :cond_5f

    invoke-static {p0}, Lkotlin/coroutines/jvm/internal/DebugProbesKt;->probeCoroutineSuspended(Lkotlin/coroutines/Continuation;)V

    :cond_5f
    if-ne p1, v0, :cond_62

    return-object v0

    .line 164
    :cond_62
    :goto_62
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    :catchall_65
    move-exception p1

    .line 165
    monitor-exit v2

    throw p1
.end method
