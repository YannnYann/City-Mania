###### Class ads_mobile_sdk.qz2 (ads_mobile_sdk.qz2)
.class public final Lads_mobile_sdk/qz2;
.super Lads_mobile_sdk/px2;
.source "SourceFile"


# instance fields
.field public final n:Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdRequest;

.field public final o:Lads_mobile_sdk/cw2;

.field public final p:I


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/CoroutineScope;Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdRequest;Lads_mobile_sdk/ks3;Lads_mobile_sdk/ex0;Lads_mobile_sdk/g83;Ljava/lang/String;Lads_mobile_sdk/j53;Lads_mobile_sdk/ja1;ZLads_mobile_sdk/md1;Lads_mobile_sdk/dw2;ILkotlinx/coroutines/flow/SharedFlow;Lads_mobile_sdk/qn;)V
    .registers 31

    move-object/from16 v8, p3

    move-object/from16 v14, p12

    .line 1
    const-string v0, "loadScope"

    move-object/from16 v1, p1

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "backgroundScope"

    move-object/from16 v2, p2

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nativeAdRequest"

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "traceMetaSet"

    move-object/from16 v3, p4

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "flags"

    move-object/from16 v4, p5

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rootTraceCreator"

    move-object/from16 v5, p6

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "publisherRequestId"

    move-object/from16 v6, p7

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "requestType"

    move-object/from16 v7, p8

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "initializationConfigWrapper"

    move-object/from16 v10, p9

    invoke-static {v10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "inspectorAdLifecycleMonitor"

    move-object/from16 v11, p11

    invoke-static {v11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "componentProvider"

    invoke-static {v14, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cancellationChannel"

    move-object/from16 v12, p14

    invoke-static {v12, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "appState"

    move-object/from16 v13, p15

    invoke-static {v13, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, p0

    move/from16 v9, p10

    .line 2
    invoke-direct/range {v0 .. v13}, Lads_mobile_sdk/px2;-><init>(Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/CoroutineScope;Lads_mobile_sdk/ks3;Lads_mobile_sdk/ex0;Lads_mobile_sdk/g83;Ljava/lang/String;Lads_mobile_sdk/j53;Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;ZLads_mobile_sdk/ja1;Lads_mobile_sdk/md1;Lkotlinx/coroutines/flow/SharedFlow;Lads_mobile_sdk/qn;)V

    .line 3
    iput-object v8, p0, Lads_mobile_sdk/qz2;->n:Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdRequest;

    .line 12
    iput-object v14, p0, Lads_mobile_sdk/qz2;->o:Lads_mobile_sdk/cw2;

    move/from16 v1, p13

    .line 13
    iput v1, p0, Lads_mobile_sdk/qz2;->p:I

    return-void
.end method


# virtual methods
.method public final b(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 4

    .line 66
    iget-object v0, p0, Lads_mobile_sdk/qz2;->o:Lads_mobile_sdk/cw2;

    invoke-interface {v0}, Lads_mobile_sdk/cw2;->get()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "get(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lads_mobile_sdk/bn1;

    iget-object v1, p0, Lads_mobile_sdk/qz2;->n:Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdRequest;

    invoke-virtual {p0, v0, v1}, Lads_mobile_sdk/px2;->a(Lads_mobile_sdk/bn1;Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;)Lads_mobile_sdk/bn1;

    move-result-object v0

    check-cast v0, Lads_mobile_sdk/sm1;

    .line 67
    iget-object v1, p0, Lads_mobile_sdk/qz2;->n:Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdRequest;

    check-cast v0, Lads_mobile_sdk/ug0;

    invoke-virtual {v0, v1}, Lads_mobile_sdk/ug0;->a(Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeRequest;)Lads_mobile_sdk/ug0;

    move-result-object v0

    .line 68
    iget v1, p0, Lads_mobile_sdk/qz2;->p:I

    invoke-virtual {v0, v1}, Lads_mobile_sdk/ug0;->a(I)Lads_mobile_sdk/ug0;

    move-result-object v0

    const/4 v1, 0x0

    .line 69
    invoke-virtual {v0, v1}, Lads_mobile_sdk/ug0;->d(Z)Lads_mobile_sdk/ug0;

    move-result-object v0

    .line 70
    new-instance v1, Lads_mobile_sdk/pz2;

    invoke-direct {v1}, Lads_mobile_sdk/pz2;-><init>()V

    .line 71
    iput-object v1, v0, Lads_mobile_sdk/ug0;->o:Lads_mobile_sdk/gj1;

    .line 72
    invoke-virtual {v0}, Lads_mobile_sdk/ug0;->a()Lads_mobile_sdk/vg0;

    move-result-object v0

    .line 73
    iget-object v0, v0, Lads_mobile_sdk/vg0;->K0:Lads_mobile_sdk/dw2;

    invoke-interface {v0}, Lads_mobile_sdk/cw2;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lads_mobile_sdk/mi1;

    .line 74
    check-cast v0, Lads_mobile_sdk/si1;

    invoke-virtual {v0, p1}, Lads_mobile_sdk/si1;->a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
