###### Class ads_mobile_sdk.q41 (ads_mobile_sdk.q41)
.class public final Lads_mobile_sdk/q41;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/libraries/ads/mobile/sdk/common/VideoController;


# instance fields
.field public final a:Lkotlinx/coroutines/CoroutineScope;

.field public final b:Lads_mobile_sdk/r31;

.field public c:F

.field public final d:Z

.field public final e:Lkotlinx/coroutines/CompletableDeferred;

.field public final f:Ljava/lang/Object;

.field public g:F

.field public h:F

.field public i:Lads_mobile_sdk/k41;

.field public j:Z

.field public k:Z

.field public l:Lcom/google/android/libraries/ads/mobile/sdk/common/VideoController$VideoLifecycleCallbacks;

.field public m:Z


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/CoroutineScope;Lads_mobile_sdk/r31;FZ)V
    .registers 6

    .line 1
    const-string v0, "uiScope"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "webView"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lads_mobile_sdk/q41;->a:Lkotlinx/coroutines/CoroutineScope;

    .line 5
    iput-object p2, p0, Lads_mobile_sdk/q41;->b:Lads_mobile_sdk/r31;

    .line 6
    iput p3, p0, Lads_mobile_sdk/q41;->c:F

    .line 7
    iput-boolean p4, p0, Lads_mobile_sdk/q41;->d:Z

    const/4 p1, 0x0

    const/4 p2, 0x1

    .line 10
    invoke-static {p1, p2, p1}, Lkotlinx/coroutines/CompletableDeferredKt;->CompletableDeferred$default(Lkotlinx/coroutines/Job;ILjava/lang/Object;)Lkotlinx/coroutines/CompletableDeferred;

    move-result-object p1

    iput-object p1, p0, Lads_mobile_sdk/q41;->e:Lkotlinx/coroutines/CompletableDeferred;

    .line 12
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lads_mobile_sdk/q41;->f:Ljava/lang/Object;

    .line 18
    sget-object p1, Lads_mobile_sdk/k41;->b:Lads_mobile_sdk/k41;

    iput-object p1, p0, Lads_mobile_sdk/q41;->i:Lads_mobile_sdk/k41;

    .line 33
    iput-boolean p2, p0, Lads_mobile_sdk/q41;->m:Z

    return-void
.end method


# virtual methods
.method public final a()F
    .registers 3

    .line 100
    iget-object v0, p0, Lads_mobile_sdk/q41;->f:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget v1, p0, Lads_mobile_sdk/q41;->h:F
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    monitor-exit v0

    return v1

    :catchall_7
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public final a(Lcom/google/android/libraries/ads/mobile/sdk/common/VideoOptions;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .registers 7

    .line 240
    iget-object v0, p0, Lads_mobile_sdk/q41;->f:Ljava/lang/Object;

    monitor-enter v0

    .line 241
    :try_start_3
    invoke-virtual {p1}, Lcom/google/android/libraries/ads/mobile/sdk/common/VideoOptions;->getCustomControlsRequested()Z

    move-result v1

    iput-boolean v1, p0, Lads_mobile_sdk/q41;->j:Z

    .line 242
    invoke-virtual {p1}, Lcom/google/android/libraries/ads/mobile/sdk/common/VideoOptions;->getClickToExpandRequested()Z

    .line 243
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_52

    .line 244
    monitor-exit v0

    .line 249
    new-instance v0, Lcom/google/gson/JsonObject;

    invoke-direct {v0}, Lcom/google/gson/JsonObject;-><init>()V

    .line 250
    const-string v2, "muteStart"

    invoke-virtual {p1}, Lcom/google/android/libraries/ads/mobile/sdk/common/VideoOptions;->getStartMuted()Z

    move-result v3

    if-eqz v3, :cond_1f

    const-string v3, "1"

    goto :goto_21

    :cond_1f
    const-string v3, "0"

    :goto_21
    invoke-virtual {v0, v2, v3}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    const-string v2, "customControlsRequested"

    .line 253
    invoke-virtual {p1}, Lcom/google/android/libraries/ads/mobile/sdk/common/VideoOptions;->getCustomControlsRequested()Z

    move-result v3

    if-eqz v3, :cond_2f

    const-string v3, "1"

    goto :goto_31

    :cond_2f
    const-string v3, "0"

    .line 254
    :goto_31
    invoke-virtual {v0, v2, v3}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    const-string v2, "clickToExpandRequested"

    invoke-virtual {p1}, Lcom/google/android/libraries/ads/mobile/sdk/common/VideoOptions;->getClickToExpandRequested()Z

    move-result p1

    if-eqz p1, :cond_3f

    const-string p1, "1"

    goto :goto_41

    :cond_3f
    const-string p1, "0"

    :goto_41
    invoke-virtual {v0, v2, p1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    const-string p1, "initialState"

    invoke-virtual {p0, v0, p1, p2}, Lads_mobile_sdk/q41;->a(Lcom/google/gson/JsonObject;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_51

    return-object p1

    :cond_51
    return-object v1

    :catchall_52
    move-exception p1

    .line 261
    monitor-exit v0

    throw p1
.end method

.method public final a(Lcom/google/gson/JsonObject;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 5

    if-nez p1, :cond_7

    .line 4
    new-instance p1, Lcom/google/gson/JsonObject;

    invoke-direct {p1}, Lcom/google/gson/JsonObject;-><init>()V

    .line 5
    :cond_7
    const-string v0, "action"

    invoke-virtual {p1, v0, p2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    iget-object p2, p0, Lads_mobile_sdk/q41;->b:Lads_mobile_sdk/r31;

    const-string v0, "pubVideoCmd"

    invoke-virtual {p2, p1, v0, p3}, Lads_mobile_sdk/r31;->a(Lcom/google/gson/JsonObject;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_1b

    return-object p1

    :cond_1b
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final a(F)V
    .registers 3

    .line 344
    iget-object v0, p0, Lads_mobile_sdk/q41;->f:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iput p1, p0, Lads_mobile_sdk/q41;->g:F

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_9

    monitor-exit v0

    return-void

    :catchall_9
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public final a(FLads_mobile_sdk/k41;ZF)V
    .registers 14

    .line 101
    const-string v0, "playbackState"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 222
    iget-object v1, p0, Lads_mobile_sdk/q41;->f:Ljava/lang/Object;

    monitor-enter v1

    .line 223
    :try_start_8
    iput p1, p0, Lads_mobile_sdk/q41;->c:F

    .line 224
    invoke-virtual {p0}, Lads_mobile_sdk/q41;->isMuted()Z

    move-result v6

    .line 225
    invoke-virtual {p0, p3}, Lads_mobile_sdk/q41;->a(Z)V

    .line 226
    iget-object v4, p0, Lads_mobile_sdk/q41;->i:Lads_mobile_sdk/k41;

    .line 227
    iput-object p2, p0, Lads_mobile_sdk/q41;->i:Lads_mobile_sdk/k41;

    .line 228
    iget p1, p0, Lads_mobile_sdk/q41;->h:F

    .line 229
    iput p4, p0, Lads_mobile_sdk/q41;->h:F

    sub-float/2addr p4, p1

    .line 233
    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const p4, 0x38d1b717    # 1.0E-4f

    cmpl-float p1, p1, p4

    if-lez p1, :cond_2e

    .line 234
    iget-object p1, p0, Lads_mobile_sdk/q41;->b:Lads_mobile_sdk/r31;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    goto :goto_2e

    :catchall_2b
    move-exception v0

    move-object p1, v0

    goto :goto_46

    .line 235
    :cond_2e
    :goto_2e
    iget-object p1, p0, Lads_mobile_sdk/q41;->a:Lkotlinx/coroutines/CoroutineScope;

    new-instance v2, Lads_mobile_sdk/l41;

    const/4 v8, 0x0

    move-object v3, p0

    move-object v5, p2

    move v7, p3

    invoke-direct/range {v2 .. v8}, Lads_mobile_sdk/l41;-><init>(Lads_mobile_sdk/q41;Lads_mobile_sdk/k41;Lads_mobile_sdk/k41;ZZLkotlin/coroutines/Continuation;)V

    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v5, v2

    move-object v2, p1

    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 236
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_44
    .catchall {:try_start_8 .. :try_end_44} :catchall_2b

    .line 237
    monitor-exit v1

    return-void

    .line 238
    :goto_46
    monitor-exit v1

    throw p1
.end method

.method public final a(Ljava/lang/String;)V
    .registers 3

    .line 2
    iget-object v0, p0, Lads_mobile_sdk/q41;->e:Lkotlinx/coroutines/CompletableDeferred;

    invoke-interface {v0, p1}, Lkotlinx/coroutines/CompletableDeferred;->complete(Ljava/lang/Object;)Z

    return-void
.end method

.method public final a(Z)V
    .registers 3

    .line 398
    iget-object v0, p0, Lads_mobile_sdk/q41;->f:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iput-boolean p1, p0, Lads_mobile_sdk/q41;->m:Z

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_9

    monitor-exit v0

    return-void

    :catchall_9
    move-exception p1

    .line 399
    monitor-exit v0

    throw p1
.end method

.method public final getVideoLifecycleCallbacks()Lcom/google/android/libraries/ads/mobile/sdk/common/VideoController$VideoLifecycleCallbacks;
    .registers 3

    .line 44
    iget-object v0, p0, Lads_mobile_sdk/q41;->f:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lads_mobile_sdk/q41;->l:Lcom/google/android/libraries/ads/mobile/sdk/common/VideoController$VideoLifecycleCallbacks;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    monitor-exit v0

    return-object v1

    :catchall_7
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public final isMuted()Z
    .registers 3

    .line 52
    iget-object v0, p0, Lads_mobile_sdk/q41;->f:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-boolean v1, p0, Lads_mobile_sdk/q41;->m:Z
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    monitor-exit v0

    return v1

    :catchall_7
    move-exception v1

    monitor-exit v0

    throw v1
.end method
