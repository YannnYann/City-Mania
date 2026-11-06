###### Class ads_mobile_sdk.mz2 (ads_mobile_sdk.mz2)
.class public final Lads_mobile_sdk/mz2;
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
    iput-object v0, v2, Lads_mobile_sdk/mz2;->y:Lads_mobile_sdk/cw2;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lads_mobile_sdk/tf3;Lads_mobile_sdk/vx2;)Ljava/lang/Object;
    .registers 15

    .line 2
    iget-object v0, p2, Lads_mobile_sdk/tf3;->b:Lcom/google/android/libraries/ads/mobile/sdk/signal/SignalRequest;

    .line 3
    instance-of v1, v0, Lcom/google/android/libraries/ads/mobile/sdk/interstitial/InterstitialSignalRequest;

    if-nez v1, :cond_13

    .line 4
    new-instance p1, Lkotlin/Pair;

    .line 5
    sget-object p2, Lads_mobile_sdk/yx2;->v:Lads_mobile_sdk/m01;

    const/4 p3, 0x0

    .line 6
    invoke-direct {p1, p2, p3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {p1}, Lkotlinx/coroutines/flow/FlowKt;->flowOf(Ljava/lang/Object;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    return-object p1

    .line 10
    :cond_13
    iget-object v1, p0, Lads_mobile_sdk/mz2;->y:Lads_mobile_sdk/cw2;

    invoke-interface {v1}, Lads_mobile_sdk/cw2;->get()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "get(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lads_mobile_sdk/mj1;

    .line 11
    invoke-virtual {p0, v1, v0, p1, p2}, Lads_mobile_sdk/px2;->a(Lads_mobile_sdk/mj1;Lcom/google/android/libraries/ads/mobile/sdk/signal/SignalRequest;Ljava/lang/String;Lads_mobile_sdk/tf3;)Lads_mobile_sdk/mj1;

    move-result-object p1

    check-cast p1, Lads_mobile_sdk/rk1;

    .line 17
    check-cast p1, Lads_mobile_sdk/og0;

    .line 18
    iget-object p2, p1, Lads_mobile_sdk/og0;->b:Lads_mobile_sdk/tf3;

    .line 19
    const-class v0, Lads_mobile_sdk/tf3;

    invoke-static {p2, v0}, Lads_mobile_sdk/kq2;->a(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 20
    iget-object p2, p1, Lads_mobile_sdk/og0;->c:Ljava/lang/String;

    const-class v0, Ljava/lang/String;

    invoke-static {p2, v0}, Lads_mobile_sdk/kq2;->a(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 21
    iget-object p2, p1, Lads_mobile_sdk/og0;->d:Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;

    const-class v0, Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;

    invoke-static {p2, v0}, Lads_mobile_sdk/kq2;->a(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 22
    iget-object p2, p1, Lads_mobile_sdk/og0;->e:Lads_mobile_sdk/j53;

    const-class v0, Lads_mobile_sdk/j53;

    invoke-static {p2, v0}, Lads_mobile_sdk/kq2;->a(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 23
    iget-object p2, p1, Lads_mobile_sdk/og0;->f:Ljava/lang/Boolean;

    const-class v0, Ljava/lang/Boolean;

    invoke-static {p2, v0}, Lads_mobile_sdk/kq2;->a(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 24
    iget-object p2, p1, Lads_mobile_sdk/og0;->g:Lads_mobile_sdk/n03;

    const-class v0, Lads_mobile_sdk/n03;

    invoke-static {p2, v0}, Lads_mobile_sdk/kq2;->a(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 25
    iget-object p2, p1, Lads_mobile_sdk/og0;->h:Lads_mobile_sdk/tn1;

    const-class v0, Lads_mobile_sdk/tn1;

    invoke-static {p2, v0}, Lads_mobile_sdk/kq2;->a(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 26
    iget-object p2, p1, Lads_mobile_sdk/og0;->i:Lads_mobile_sdk/md1;

    const-class v0, Lads_mobile_sdk/md1;

    invoke-static {p2, v0}, Lads_mobile_sdk/kq2;->a(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 27
    new-instance v1, Lads_mobile_sdk/pg0;

    iget-object v2, p1, Lads_mobile_sdk/og0;->a:Lads_mobile_sdk/vf0;

    iget-object v3, p1, Lads_mobile_sdk/og0;->b:Lads_mobile_sdk/tf3;

    iget-object v4, p1, Lads_mobile_sdk/og0;->c:Ljava/lang/String;

    iget-object v5, p1, Lads_mobile_sdk/og0;->d:Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;

    iget-object v6, p1, Lads_mobile_sdk/og0;->e:Lads_mobile_sdk/j53;

    iget-object v7, p1, Lads_mobile_sdk/og0;->f:Ljava/lang/Boolean;

    iget-object v8, p1, Lads_mobile_sdk/og0;->g:Lads_mobile_sdk/n03;

    iget-object v9, p1, Lads_mobile_sdk/og0;->h:Lads_mobile_sdk/tn1;

    iget-object v10, p1, Lads_mobile_sdk/og0;->i:Lads_mobile_sdk/md1;

    invoke-direct/range {v1 .. v10}, Lads_mobile_sdk/pg0;-><init>(Lads_mobile_sdk/vf0;Lads_mobile_sdk/tf3;Ljava/lang/String;Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;Lads_mobile_sdk/j53;Ljava/lang/Boolean;Lads_mobile_sdk/n03;Lads_mobile_sdk/tn1;Lads_mobile_sdk/md1;)V

    .line 28
    iget-object p1, v1, Lads_mobile_sdk/pg0;->A:Lads_mobile_sdk/dw2;

    invoke-interface {p1}, Lads_mobile_sdk/cw2;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lads_mobile_sdk/mi1;

    .line 29
    check-cast p1, Lads_mobile_sdk/si1;

    invoke-virtual {p1, p3}, Lads_mobile_sdk/si1;->a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
