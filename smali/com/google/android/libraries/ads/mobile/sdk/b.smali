###### Class com.google.android.libraries.ads.mobile.sdk.b (com.google.android.libraries.ads.mobile.sdk.b)
.class public final Lcom/google/android/libraries/ads/mobile/sdk/b;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Lads_mobile_sdk/eh3;

.field public final synthetic b:Lcom/google/android/libraries/ads/mobile/sdk/signal/SignalGenerationCallback;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/eh3;Lcom/google/android/libraries/ads/mobile/sdk/signal/SignalGenerationCallback;Lkotlin/coroutines/Continuation;)V
    .registers 4

    .line 1
    iput-object p1, p0, Lcom/google/android/libraries/ads/mobile/sdk/b;->a:Lads_mobile_sdk/eh3;

    iput-object p2, p0, Lcom/google/android/libraries/ads/mobile/sdk/b;->b:Lcom/google/android/libraries/ads/mobile/sdk/signal/SignalGenerationCallback;

    const/4 p1, 0x1

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 5

    .line 0
    new-instance v0, Lcom/google/android/libraries/ads/mobile/sdk/b;

    iget-object v1, p0, Lcom/google/android/libraries/ads/mobile/sdk/b;->a:Lads_mobile_sdk/eh3;

    iget-object v2, p0, Lcom/google/android/libraries/ads/mobile/sdk/b;->b:Lcom/google/android/libraries/ads/mobile/sdk/signal/SignalGenerationCallback;

    invoke-direct {v0, v1, v2, p1}, Lcom/google/android/libraries/ads/mobile/sdk/b;-><init>(Lads_mobile_sdk/eh3;Lcom/google/android/libraries/ads/mobile/sdk/signal/SignalGenerationCallback;Lkotlin/coroutines/Continuation;)V

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    check-cast p1, Lkotlin/coroutines/Continuation;

    .line 1
    new-instance v0, Lcom/google/android/libraries/ads/mobile/sdk/b;

    iget-object v1, p0, Lcom/google/android/libraries/ads/mobile/sdk/b;->a:Lads_mobile_sdk/eh3;

    iget-object v2, p0, Lcom/google/android/libraries/ads/mobile/sdk/b;->b:Lcom/google/android/libraries/ads/mobile/sdk/signal/SignalGenerationCallback;

    invoke-direct {v0, v1, v2, p1}, Lcom/google/android/libraries/ads/mobile/sdk/b;-><init>(Lads_mobile_sdk/eh3;Lcom/google/android/libraries/ads/mobile/sdk/signal/SignalGenerationCallback;Lkotlin/coroutines/Continuation;)V

    .line 2
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, p1}, Lcom/google/android/libraries/ads/mobile/sdk/b;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 10

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Lcom/google/android/libraries/ads/mobile/sdk/b;->a:Lads_mobile_sdk/eh3;

    iget-object v0, p0, Lcom/google/android/libraries/ads/mobile/sdk/b;->b:Lcom/google/android/libraries/ads/mobile/sdk/signal/SignalGenerationCallback;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    const-string v1, "signalGenerationCallback"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    iget-object v2, p1, Lads_mobile_sdk/eh3;->a:Lkotlinx/coroutines/CoroutineScope;

    new-instance v1, Lads_mobile_sdk/yg3;

    const/4 v3, 0x0

    invoke-direct {v1, p1, v0, v3}, Lads_mobile_sdk/yg3;-><init>(Lads_mobile_sdk/eh3;Lcom/google/android/libraries/ads/mobile/sdk/signal/SignalGenerationCallback;Lkotlin/coroutines/Continuation;)V

    move-object p1, v3

    .line 86
    sget-object v3, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    .line 87
    const-string v0, "<this>"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "block"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 345
    new-instance v5, Lads_mobile_sdk/ws3;

    invoke-direct {v5, v1, p1}, Lads_mobile_sdk/ws3;-><init>(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)V

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v4, 0x0

    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 346
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
