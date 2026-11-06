###### Class ads_mobile_sdk.tz2 (ads_mobile_sdk.tz2)
.class public final Lads_mobile_sdk/tz2;
.super Lads_mobile_sdk/yx2;
.source "SourceFile"


# instance fields
.field public final y:Lads_mobile_sdk/cw2;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/dw2;Lads_mobile_sdk/yf3;Lads_mobile_sdk/p70;Ljava/lang/String;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/CoroutineScope;Lads_mobile_sdk/ks3;Lads_mobile_sdk/ex0;Lads_mobile_sdk/g83;Ljava/lang/String;Lads_mobile_sdk/j53;Lads_mobile_sdk/ja1;Lads_mobile_sdk/md1;Lcom/google/gson/Gson;Lads_mobile_sdk/e01;Lads_mobile_sdk/vw3;Lkotlinx/coroutines/flow/SharedFlow;Lads_mobile_sdk/qn;)V
    .registers 39

    move-object/from16 v0, p1

    .line 1
    const-string v1, "componentProvider"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "signalGenerationMap"

    move-object/from16 v3, p2

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "cryptoUtil"

    move-object/from16 v4, p3

    invoke-static {v4, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "adString"

    move-object/from16 v5, p4

    invoke-static {v5, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "loadScope"

    move-object/from16 v9, p5

    invoke-static {v9, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "backgroundScope"

    move-object/from16 v10, p6

    invoke-static {v10, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "traceMetaSet"

    move-object/from16 v11, p7

    invoke-static {v11, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "flags"

    move-object/from16 v12, p8

    invoke-static {v12, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "rootTraceCreator"

    move-object/from16 v13, p9

    invoke-static {v13, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "publisherRequestId"

    move-object/from16 v14, p10

    invoke-static {v14, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "requestType"

    move-object/from16 v15, p11

    invoke-static {v15, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "initializationConfigWrapper"

    move-object/from16 v2, p12

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "inspectorAdLifecycleMonitor"

    move-object/from16 v6, p13

    invoke-static {v6, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "gson"

    move-object/from16 v7, p14

    invoke-static {v7, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "httpClient"

    move-object/from16 v8, p15

    invoke-static {v8, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "urlPinger"

    move-object/from16 v2, p16

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "cancellationChannel"

    move-object/from16 v2, p17

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "appState"

    move-object/from16 v2, p18

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v16, p12

    move-object/from16 v18, p17

    move-object/from16 v19, v2

    move-object/from16 v17, v6

    move-object v6, v7

    move-object v7, v8

    move-object/from16 v2, p0

    move-object/from16 v8, p16

    .line 2
    invoke-direct/range {v2 .. v19}, Lads_mobile_sdk/yx2;-><init>(Lads_mobile_sdk/yf3;Lads_mobile_sdk/p70;Ljava/lang/String;Lcom/google/gson/Gson;Lads_mobile_sdk/e01;Lads_mobile_sdk/vw3;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/CoroutineScope;Lads_mobile_sdk/ks3;Lads_mobile_sdk/ex0;Lads_mobile_sdk/g83;Ljava/lang/String;Lads_mobile_sdk/j53;Lads_mobile_sdk/ja1;Lads_mobile_sdk/md1;Lkotlinx/coroutines/flow/SharedFlow;Lads_mobile_sdk/qn;)V

    .line 3
    iput-object v0, v2, Lads_mobile_sdk/tz2;->y:Lads_mobile_sdk/cw2;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lads_mobile_sdk/tf3;Lads_mobile_sdk/vx2;)Ljava/lang/Object;
    .registers 21

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 2
    iget-object v2, v1, Lads_mobile_sdk/tf3;->b:Lcom/google/android/libraries/ads/mobile/sdk/signal/SignalRequest;

    .line 3
    instance-of v3, v2, Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeSignalRequest;

    if-nez v3, :cond_17

    .line 4
    new-instance v1, Lkotlin/Pair;

    .line 5
    sget-object v2, Lads_mobile_sdk/yx2;->v:Lads_mobile_sdk/m01;

    const/4 v3, 0x0

    .line 6
    invoke-direct {v1, v2, v3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v1}, Lkotlinx/coroutines/flow/FlowKt;->flowOf(Ljava/lang/Object;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v1

    return-object v1

    .line 10
    :cond_17
    iget-object v3, v0, Lads_mobile_sdk/tz2;->y:Lads_mobile_sdk/cw2;

    invoke-interface {v3}, Lads_mobile_sdk/cw2;->get()Ljava/lang/Object;

    move-result-object v3

    const-string v4, "get(...)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Lads_mobile_sdk/mj1;

    move-object/from16 v4, p1

    .line 11
    invoke-virtual {v0, v3, v2, v4, v1}, Lads_mobile_sdk/px2;->a(Lads_mobile_sdk/mj1;Lcom/google/android/libraries/ads/mobile/sdk/signal/SignalRequest;Ljava/lang/String;Lads_mobile_sdk/tf3;)Lads_mobile_sdk/mj1;

    move-result-object v1

    check-cast v1, Lads_mobile_sdk/qm1;

    .line 17
    check-cast v2, Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeRequest;

    check-cast v1, Lads_mobile_sdk/sg0;

    .line 18
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    iput-object v2, v1, Lads_mobile_sdk/sg0;->k:Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeRequest;

    .line 20
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v2, v1, Lads_mobile_sdk/sg0;->j:Ljava/lang/Boolean;

    .line 21
    new-instance v2, Lads_mobile_sdk/sz2;

    invoke-direct {v2}, Lads_mobile_sdk/sz2;-><init>()V

    .line 22
    iput-object v2, v1, Lads_mobile_sdk/sg0;->l:Lads_mobile_sdk/gj1;

    .line 23
    iget-object v2, v1, Lads_mobile_sdk/sg0;->b:Lads_mobile_sdk/tf3;

    const-class v3, Lads_mobile_sdk/tf3;

    invoke-static {v2, v3}, Lads_mobile_sdk/kq2;->a(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 24
    iget-object v2, v1, Lads_mobile_sdk/sg0;->c:Ljava/lang/String;

    const-class v3, Ljava/lang/String;

    invoke-static {v2, v3}, Lads_mobile_sdk/kq2;->a(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 25
    iget-object v2, v1, Lads_mobile_sdk/sg0;->d:Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;

    const-class v3, Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;

    invoke-static {v2, v3}, Lads_mobile_sdk/kq2;->a(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 26
    iget-object v2, v1, Lads_mobile_sdk/sg0;->e:Lads_mobile_sdk/j53;

    const-class v3, Lads_mobile_sdk/j53;

    invoke-static {v2, v3}, Lads_mobile_sdk/kq2;->a(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 27
    iget-object v2, v1, Lads_mobile_sdk/sg0;->f:Ljava/lang/Boolean;

    const-class v3, Ljava/lang/Boolean;

    invoke-static {v2, v3}, Lads_mobile_sdk/kq2;->a(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 28
    iget-object v2, v1, Lads_mobile_sdk/sg0;->g:Lads_mobile_sdk/n03;

    const-class v4, Lads_mobile_sdk/n03;

    invoke-static {v2, v4}, Lads_mobile_sdk/kq2;->a(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 29
    iget-object v2, v1, Lads_mobile_sdk/sg0;->h:Lads_mobile_sdk/tn1;

    const-class v4, Lads_mobile_sdk/tn1;

    invoke-static {v2, v4}, Lads_mobile_sdk/kq2;->a(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 30
    iget-object v2, v1, Lads_mobile_sdk/sg0;->i:Lads_mobile_sdk/md1;

    const-class v4, Lads_mobile_sdk/md1;

    invoke-static {v2, v4}, Lads_mobile_sdk/kq2;->a(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 31
    iget-object v2, v1, Lads_mobile_sdk/sg0;->j:Ljava/lang/Boolean;

    invoke-static {v2, v3}, Lads_mobile_sdk/kq2;->a(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 32
    iget-object v2, v1, Lads_mobile_sdk/sg0;->k:Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeRequest;

    const-class v3, Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeRequest;

    invoke-static {v2, v3}, Lads_mobile_sdk/kq2;->a(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 33
    iget-object v2, v1, Lads_mobile_sdk/sg0;->l:Lads_mobile_sdk/gj1;

    const-class v3, Lads_mobile_sdk/gj1;

    invoke-static {v2, v3}, Lads_mobile_sdk/kq2;->a(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 34
    new-instance v4, Lads_mobile_sdk/tg0;

    iget-object v5, v1, Lads_mobile_sdk/sg0;->a:Lads_mobile_sdk/vf0;

    iget-object v6, v1, Lads_mobile_sdk/sg0;->b:Lads_mobile_sdk/tf3;

    iget-object v7, v1, Lads_mobile_sdk/sg0;->c:Ljava/lang/String;

    iget-object v8, v1, Lads_mobile_sdk/sg0;->d:Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;

    iget-object v9, v1, Lads_mobile_sdk/sg0;->e:Lads_mobile_sdk/j53;

    iget-object v10, v1, Lads_mobile_sdk/sg0;->f:Ljava/lang/Boolean;

    iget-object v11, v1, Lads_mobile_sdk/sg0;->g:Lads_mobile_sdk/n03;

    iget-object v12, v1, Lads_mobile_sdk/sg0;->h:Lads_mobile_sdk/tn1;

    iget-object v13, v1, Lads_mobile_sdk/sg0;->i:Lads_mobile_sdk/md1;

    iget-object v14, v1, Lads_mobile_sdk/sg0;->j:Ljava/lang/Boolean;

    iget-object v15, v1, Lads_mobile_sdk/sg0;->k:Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeRequest;

    iget-object v1, v1, Lads_mobile_sdk/sg0;->l:Lads_mobile_sdk/gj1;

    move-object/from16 v16, v1

    invoke-direct/range {v4 .. v16}, Lads_mobile_sdk/tg0;-><init>(Lads_mobile_sdk/vf0;Lads_mobile_sdk/tf3;Ljava/lang/String;Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;Lads_mobile_sdk/j53;Ljava/lang/Boolean;Lads_mobile_sdk/n03;Lads_mobile_sdk/tn1;Lads_mobile_sdk/md1;Ljava/lang/Boolean;Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeRequest;Lads_mobile_sdk/gj1;)V

    .line 35
    iget-object v1, v4, Lads_mobile_sdk/tg0;->G:Lads_mobile_sdk/dw2;

    invoke-interface {v1}, Lads_mobile_sdk/cw2;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lads_mobile_sdk/mi1;

    .line 36
    check-cast v1, Lads_mobile_sdk/si1;

    move-object/from16 v2, p3

    invoke-virtual {v1, v2}, Lads_mobile_sdk/si1;->a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method
