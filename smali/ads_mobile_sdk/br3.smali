###### Class ads_mobile_sdk.br3 (ads_mobile_sdk.br3)
.class public final Lads_mobile_sdk/br3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/libraries/ads/mobile/sdk/common/VideoController$VideoLifecycleCallbacks;


# instance fields
.field public final a:Lads_mobile_sdk/s02;

.field public final b:Lkotlinx/coroutines/CoroutineScope;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/s02;Lkotlinx/coroutines/CoroutineScope;)V
    .registers 4

    .line 1
    const-string v0, "nativeAdAssets"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uiScope"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lads_mobile_sdk/br3;->a:Lads_mobile_sdk/s02;

    .line 17
    iput-object p2, p0, Lads_mobile_sdk/br3;->b:Lkotlinx/coroutines/CoroutineScope;

    return-void
.end method


# virtual methods
.method public final onVideoEnd()V
    .registers 8

    .line 37
    iget-object v0, p0, Lads_mobile_sdk/br3;->a:Lads_mobile_sdk/s02;

    iget-object v0, v0, Lads_mobile_sdk/s02;->m:Lcom/google/android/libraries/ads/mobile/sdk/common/VideoController;

    if-eqz v0, :cond_31

    invoke-interface {v0}, Lcom/google/android/libraries/ads/mobile/sdk/common/VideoController;->getVideoLifecycleCallbacks()Lcom/google/android/libraries/ads/mobile/sdk/common/VideoController$VideoLifecycleCallbacks;

    move-result-object v0

    if-eqz v0, :cond_31

    .line 38
    iget-object v1, p0, Lads_mobile_sdk/br3;->b:Lkotlinx/coroutines/CoroutineScope;

    new-instance v2, Lads_mobile_sdk/uq3;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3}, Lads_mobile_sdk/uq3;-><init>(Lcom/google/android/libraries/ads/mobile/sdk/common/VideoController$VideoLifecycleCallbacks;Lkotlin/coroutines/Continuation;)V

    move-object v0, v2

    .line 39
    sget-object v2, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    .line 40
    const-string v4, "<this>"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "context"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "block"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 298
    new-instance v4, Lads_mobile_sdk/ws3;

    invoke-direct {v4, v0, v3}, Lads_mobile_sdk/ws3;-><init>(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)V

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    :cond_31
    return-void
.end method

.method public final onVideoMute(Z)V
    .registers 9

    .line 43
    iget-object v0, p0, Lads_mobile_sdk/br3;->a:Lads_mobile_sdk/s02;

    iget-object v0, v0, Lads_mobile_sdk/s02;->m:Lcom/google/android/libraries/ads/mobile/sdk/common/VideoController;

    if-eqz v0, :cond_31

    invoke-interface {v0}, Lcom/google/android/libraries/ads/mobile/sdk/common/VideoController;->getVideoLifecycleCallbacks()Lcom/google/android/libraries/ads/mobile/sdk/common/VideoController$VideoLifecycleCallbacks;

    move-result-object v0

    if-eqz v0, :cond_31

    .line 44
    iget-object v1, p0, Lads_mobile_sdk/br3;->b:Lkotlinx/coroutines/CoroutineScope;

    new-instance v2, Lads_mobile_sdk/wq3;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3, p1}, Lads_mobile_sdk/wq3;-><init>(Lcom/google/android/libraries/ads/mobile/sdk/common/VideoController$VideoLifecycleCallbacks;Lkotlin/coroutines/Continuation;Z)V

    move-object p1, v2

    .line 45
    sget-object v2, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    .line 46
    const-string v0, "<this>"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "block"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 304
    new-instance v4, Lads_mobile_sdk/ws3;

    invoke-direct {v4, p1, v3}, Lads_mobile_sdk/ws3;-><init>(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)V

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    :cond_31
    return-void
.end method

.method public final onVideoPause()V
    .registers 8

    .line 31
    iget-object v0, p0, Lads_mobile_sdk/br3;->a:Lads_mobile_sdk/s02;

    iget-object v0, v0, Lads_mobile_sdk/s02;->m:Lcom/google/android/libraries/ads/mobile/sdk/common/VideoController;

    if-eqz v0, :cond_31

    invoke-interface {v0}, Lcom/google/android/libraries/ads/mobile/sdk/common/VideoController;->getVideoLifecycleCallbacks()Lcom/google/android/libraries/ads/mobile/sdk/common/VideoController$VideoLifecycleCallbacks;

    move-result-object v0

    if-eqz v0, :cond_31

    .line 32
    iget-object v1, p0, Lads_mobile_sdk/br3;->b:Lkotlinx/coroutines/CoroutineScope;

    new-instance v2, Lads_mobile_sdk/yq3;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3}, Lads_mobile_sdk/yq3;-><init>(Lcom/google/android/libraries/ads/mobile/sdk/common/VideoController$VideoLifecycleCallbacks;Lkotlin/coroutines/Continuation;)V

    move-object v0, v2

    .line 33
    sget-object v2, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    .line 34
    const-string v4, "<this>"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "context"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "block"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 292
    new-instance v4, Lads_mobile_sdk/ws3;

    invoke-direct {v4, v0, v3}, Lads_mobile_sdk/ws3;-><init>(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)V

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    :cond_31
    return-void
.end method

.method public final onVideoPlay()V
    .registers 8

    .line 25
    iget-object v0, p0, Lads_mobile_sdk/br3;->a:Lads_mobile_sdk/s02;

    iget-object v0, v0, Lads_mobile_sdk/s02;->m:Lcom/google/android/libraries/ads/mobile/sdk/common/VideoController;

    if-eqz v0, :cond_31

    invoke-interface {v0}, Lcom/google/android/libraries/ads/mobile/sdk/common/VideoController;->getVideoLifecycleCallbacks()Lcom/google/android/libraries/ads/mobile/sdk/common/VideoController$VideoLifecycleCallbacks;

    move-result-object v0

    if-eqz v0, :cond_31

    .line 26
    iget-object v1, p0, Lads_mobile_sdk/br3;->b:Lkotlinx/coroutines/CoroutineScope;

    new-instance v2, Lads_mobile_sdk/ar3;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3}, Lads_mobile_sdk/ar3;-><init>(Lcom/google/android/libraries/ads/mobile/sdk/common/VideoController$VideoLifecycleCallbacks;Lkotlin/coroutines/Continuation;)V

    move-object v0, v2

    .line 27
    sget-object v2, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    .line 28
    const-string v4, "<this>"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "context"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "block"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 286
    new-instance v4, Lads_mobile_sdk/ws3;

    invoke-direct {v4, v0, v3}, Lads_mobile_sdk/ws3;-><init>(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)V

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    :cond_31
    return-void
.end method

.method public final onVideoStart()V
    .registers 1

    .line 0
    return-void
.end method
