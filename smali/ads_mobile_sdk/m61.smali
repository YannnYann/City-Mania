###### Class ads_mobile_sdk.m61 (ads_mobile_sdk.m61)
.class public final Lads_mobile_sdk/m61;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public a:I

.field public final synthetic b:Lads_mobile_sdk/p61;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:Ljava/util/Map;

.field public final synthetic f:Z


# direct methods
.method public constructor <init>(Lads_mobile_sdk/p61;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;ZLkotlin/coroutines/Continuation;)V
    .registers 7

    .line 1
    iput-object p1, p0, Lads_mobile_sdk/m61;->b:Lads_mobile_sdk/p61;

    iput-object p2, p0, Lads_mobile_sdk/m61;->c:Ljava/lang/String;

    iput-object p3, p0, Lads_mobile_sdk/m61;->d:Ljava/lang/String;

    iput-object p4, p0, Lads_mobile_sdk/m61;->e:Ljava/util/Map;

    iput-boolean p5, p0, Lads_mobile_sdk/m61;->f:Z

    const/4 p1, 0x2

    invoke-direct {p0, p1, p6}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 10

    .line 1
    new-instance v0, Lads_mobile_sdk/m61;

    iget-object v1, p0, Lads_mobile_sdk/m61;->b:Lads_mobile_sdk/p61;

    iget-object v2, p0, Lads_mobile_sdk/m61;->c:Ljava/lang/String;

    iget-object v3, p0, Lads_mobile_sdk/m61;->d:Ljava/lang/String;

    iget-object v4, p0, Lads_mobile_sdk/m61;->e:Ljava/util/Map;

    iget-boolean v5, p0, Lads_mobile_sdk/m61;->f:Z

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lads_mobile_sdk/m61;-><init>(Lads_mobile_sdk/p61;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;ZLkotlin/coroutines/Continuation;)V

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 1
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 2
    invoke-virtual {p0, p1, p2}, Lads_mobile_sdk/m61;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lads_mobile_sdk/m61;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lads_mobile_sdk/m61;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 11

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 98
    iget v1, p0, Lads_mobile_sdk/m61;->a:I

    const/4 v2, 0x1

    if-eqz v1, :cond_17

    if-ne v1, v2, :cond_f

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_65

    :cond_f
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_17
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 99
    iget-object p1, p0, Lads_mobile_sdk/m61;->b:Lads_mobile_sdk/p61;

    iget-object v4, p0, Lads_mobile_sdk/m61;->c:Ljava/lang/String;

    iget-object v5, p0, Lads_mobile_sdk/m61;->d:Ljava/lang/String;

    iget-object v7, p0, Lads_mobile_sdk/m61;->e:Ljava/util/Map;

    iget-boolean v8, p0, Lads_mobile_sdk/m61;->f:Z

    .line 143
    iput v2, p0, Lads_mobile_sdk/m61;->a:I

    .line 144
    new-instance v1, Lkotlinx/coroutines/CancellableContinuationImpl;

    invoke-static {p0}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsJvmKt;->intercepted(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v3

    invoke-direct {v1, v3, v2}, Lkotlinx/coroutines/CancellableContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;I)V

    .line 150
    invoke-virtual {v1}, Lkotlinx/coroutines/CancellableContinuationImpl;->initCancellability()V

    .line 151
    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 155
    new-instance v6, Lads_mobile_sdk/l61;

    invoke-direct {v6, v2, v1}, Lads_mobile_sdk/l61;-><init>(Ljava/util/concurrent/atomic/AtomicBoolean;Lkotlinx/coroutines/CancellableContinuationImpl;)V

    .line 156
    iget-object v2, p1, Lads_mobile_sdk/p61;->c:Lkotlin/Lazy;

    .line 157
    invoke-interface {v2}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/play/core/hsdp/service/HsdpDeepLinkService;

    .line 158
    monitor-enter v2

    .line 159
    :try_start_46
    iget-object p1, p1, Lads_mobile_sdk/p61;->c:Lkotlin/Lazy;

    invoke-interface {p1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Lcom/google/android/play/core/hsdp/service/HsdpDeepLinkService;

    .line 160
    invoke-interface/range {v3 .. v8}, Lcom/google/android/play/core/hsdp/service/HsdpDeepLinkService;->open(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/play/core/hsdp/service/HsdpDeepLinkService$HsdpDeepLinkServiceListener;Ljava/util/Map;Z)V

    .line 167
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_54
    .catchall {:try_start_46 .. :try_end_54} :catchall_68

    .line 168
    monitor-exit v2

    .line 169
    invoke-virtual {v1}, Lkotlinx/coroutines/CancellableContinuationImpl;->getResult()Ljava/lang/Object;

    move-result-object p1

    .line 170
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    if-ne p1, v1, :cond_62

    invoke-static {p0}, Lkotlin/coroutines/jvm/internal/DebugProbesKt;->probeCoroutineSuspended(Lkotlin/coroutines/Continuation;)V

    :cond_62
    if-ne p1, v0, :cond_65

    return-object v0

    .line 171
    :cond_65
    :goto_65
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    :catchall_68
    move-exception v0

    move-object p1, v0

    .line 172
    monitor-exit v2

    throw p1
.end method
