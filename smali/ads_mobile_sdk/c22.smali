###### Class ads_mobile_sdk.c22 (ads_mobile_sdk.c22)
.class public final Lads_mobile_sdk/c22;
.super Lads_mobile_sdk/n2;
.source "SourceFile"


# instance fields
.field public final l:Lads_mobile_sdk/mb0;

.field public final m:Lads_mobile_sdk/cw2;

.field public final n:Lads_mobile_sdk/cw2;

.field public final o:Lads_mobile_sdk/t52;

.field public final p:Lads_mobile_sdk/g12;

.field public final q:Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeRequest;

.field public final r:Lads_mobile_sdk/bq2;

.field public final s:Lads_mobile_sdk/g83;

.field public final t:Lkotlinx/coroutines/CoroutineScope;

.field public final u:I

.field public final v:Lads_mobile_sdk/cw2;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/mb0;Lads_mobile_sdk/dw2;Lads_mobile_sdk/dw2;Lads_mobile_sdk/t52;Lads_mobile_sdk/g12;Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeRequest;Lads_mobile_sdk/bq2;Lads_mobile_sdk/g83;Lads_mobile_sdk/ks3;Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;Lads_mobile_sdk/j53;JILads_mobile_sdk/i2;Lads_mobile_sdk/zy;Lads_mobile_sdk/ec3;Ljava/lang/String;Lkotlinx/coroutines/CoroutineScope;ILads_mobile_sdk/dw2;)V
    .registers 38

    move-object/from16 v12, p1

    move-object/from16 v13, p2

    move-object/from16 v14, p3

    move-object/from16 v15, p4

    move-object/from16 v0, p5

    move-object/from16 v1, p6

    move-object/from16 v2, p7

    move-object/from16 v3, p8

    move-object/from16 v4, p19

    move-object/from16 v5, p21

    .line 1
    const-string v6, "csiTicker"

    invoke-static {v12, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "adComponentProvider"

    invoke-static {v13, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "mediaAdComponentProvider"

    invoke-static {v14, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "nativeJavascriptEngineFactory"

    invoke-static {v15, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "nativeAdAssetsFactory"

    invoke-static {v0, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "nativeRequest"

    invoke-static {v1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "preRenderNativeJavascriptEngineConfigurator"

    invoke-static {v2, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "rootTraceCreator"

    invoke-static {v3, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "traceMetaSet"

    move-object/from16 v7, p9

    invoke-static {v7, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "baseRequest"

    move-object/from16 v8, p10

    invoke-static {v8, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "requestType"

    move-object/from16 v9, p11

    invoke-static {v9, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "adConfiguration"

    move-object/from16 v10, p15

    invoke-static {v10, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "commonConfiguration"

    move-object/from16 v11, p16

    invoke-static {v11, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "serverTransaction"

    move-object/from16 v0, p17

    invoke-static {v0, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "renderId"

    move-object/from16 v0, p18

    invoke-static {v0, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "backgroundScope"

    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "placementIdWrapperProvider"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-interface {v5}, Lads_mobile_sdk/cw2;->get()Ljava/lang/Object;

    move-result-object v6

    const-string v0, "get(...)"

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v6, Lads_mobile_sdk/eo2;

    move-object/from16 v0, p0

    move-wide/from16 v4, p12

    move-object v1, v7

    move-object v2, v8

    move-object v3, v9

    move-object v7, v10

    move-object v8, v11

    move-object/from16 v9, p17

    move-object/from16 v10, p18

    move-object v11, v6

    move/from16 v6, p14

    .line 3
    invoke-direct/range {v0 .. v11}, Lads_mobile_sdk/n2;-><init>(Lads_mobile_sdk/ks3;Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;Lads_mobile_sdk/j53;JILads_mobile_sdk/i2;Lads_mobile_sdk/zy;Lads_mobile_sdk/ec3;Ljava/lang/String;Lads_mobile_sdk/eo2;)V

    .line 4
    iput-object v12, v0, Lads_mobile_sdk/c22;->l:Lads_mobile_sdk/mb0;

    .line 5
    iput-object v13, v0, Lads_mobile_sdk/c22;->m:Lads_mobile_sdk/cw2;

    .line 6
    iput-object v14, v0, Lads_mobile_sdk/c22;->n:Lads_mobile_sdk/cw2;

    .line 7
    iput-object v15, v0, Lads_mobile_sdk/c22;->o:Lads_mobile_sdk/t52;

    move-object/from16 v1, p5

    .line 8
    iput-object v1, v0, Lads_mobile_sdk/c22;->p:Lads_mobile_sdk/g12;

    move-object/from16 v1, p6

    .line 9
    iput-object v1, v0, Lads_mobile_sdk/c22;->q:Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeRequest;

    move-object/from16 v2, p7

    .line 10
    iput-object v2, v0, Lads_mobile_sdk/c22;->r:Lads_mobile_sdk/bq2;

    move-object/from16 v3, p8

    .line 12
    iput-object v3, v0, Lads_mobile_sdk/c22;->s:Lads_mobile_sdk/g83;

    move-object/from16 v4, p19

    .line 22
    iput-object v4, v0, Lads_mobile_sdk/c22;->t:Lkotlinx/coroutines/CoroutineScope;

    move/from16 v1, p20

    .line 23
    iput v1, v0, Lads_mobile_sdk/c22;->u:I

    move-object/from16 v5, p21

    .line 24
    iput-object v5, v0, Lads_mobile_sdk/c22;->v:Lads_mobile_sdk/cw2;

    return-void
.end method

.method public static a(Lads_mobile_sdk/c22;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 13

    .line 310
    instance-of v0, p1, Lads_mobile_sdk/a22;

    if-eqz v0, :cond_13

    move-object v0, p1

    check-cast v0, Lads_mobile_sdk/a22;

    iget v1, v0, Lads_mobile_sdk/a22;->f:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/a22;->f:I

    goto :goto_18

    :cond_13
    new-instance v0, Lads_mobile_sdk/a22;

    invoke-direct {v0, p0, p1}, Lads_mobile_sdk/a22;-><init>(Lads_mobile_sdk/c22;Lkotlin/coroutines/Continuation;)V

    :goto_18
    iget-object p1, v0, Lads_mobile_sdk/a22;->d:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 311
    iget v2, v0, Lads_mobile_sdk/a22;->f:I

    const-string v3, "null cannot be cast to non-null type com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Success<T of com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Companion.returnIfError>"

    const/4 v4, 0x5

    const/4 v5, 0x4

    const/4 v6, 0x3

    const/4 v7, 0x2

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-eqz v2, :cond_60

    if-eq v2, v8, :cond_5a

    if-eq v2, v7, :cond_50

    if-eq v2, v6, :cond_46

    if-eq v2, v5, :cond_41

    if-ne v2, v4, :cond_39

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_fb

    :cond_39
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_41
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_e1

    :cond_46
    iget-object p0, v0, Lads_mobile_sdk/a22;->c:Lcom/google/android/libraries/ads/mobile/sdk/internal/webview/PerAdNativeJavscriptEngineJsContext;

    iget-object v2, v0, Lads_mobile_sdk/a22;->b:Lads_mobile_sdk/q52;

    iget-object v6, v0, Lads_mobile_sdk/a22;->a:Lads_mobile_sdk/c22;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_b7

    :cond_50
    iget-object p0, v0, Lads_mobile_sdk/a22;->c:Lcom/google/android/libraries/ads/mobile/sdk/internal/webview/PerAdNativeJavscriptEngineJsContext;

    iget-object v2, v0, Lads_mobile_sdk/a22;->b:Lads_mobile_sdk/q52;

    iget-object v7, v0, Lads_mobile_sdk/a22;->a:Lads_mobile_sdk/c22;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_a5

    :cond_5a
    iget-object p0, v0, Lads_mobile_sdk/a22;->a:Lads_mobile_sdk/c22;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_76

    :cond_60
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 315
    iget-object p1, p0, Lads_mobile_sdk/c22;->o:Lads_mobile_sdk/t52;

    .line 316
    iget-object v2, p0, Lads_mobile_sdk/n2;->f:Lads_mobile_sdk/i2;

    .line 317
    iput-object p0, v0, Lads_mobile_sdk/a22;->a:Lads_mobile_sdk/c22;

    iput v8, v0, Lads_mobile_sdk/a22;->f:I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 318
    invoke-static {p1, v2, v0}, Lads_mobile_sdk/t52;->a(Lads_mobile_sdk/t52;Lads_mobile_sdk/i2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_76

    goto/16 :goto_fa

    .line 319
    :cond_76
    :goto_76
    check-cast p1, Lads_mobile_sdk/v01;

    .line 488
    instance-of v2, p1, Lads_mobile_sdk/i01;

    if-eqz v2, :cond_7f

    check-cast p1, Lads_mobile_sdk/i01;

    return-object p1

    .line 489
    :cond_7f
    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lads_mobile_sdk/q01;

    .line 490
    iget-object p1, p1, Lads_mobile_sdk/q01;->b:Ljava/lang/Object;

    .line 491
    check-cast p1, Lads_mobile_sdk/q52;

    .line 494
    new-instance v2, Lcom/google/android/libraries/ads/mobile/sdk/internal/webview/PerAdNativeJavscriptEngineJsContext;

    invoke-interface {p1}, Lads_mobile_sdk/q52;->a()Lads_mobile_sdk/nr1;

    move-result-object v10

    .line 495
    invoke-direct {v2, v10, v9}, Lcom/google/android/libraries/ads/mobile/sdk/internal/webview/PerAdNativeJavscriptEngineJsContext;-><init>(Lads_mobile_sdk/nr1;Ljava/lang/String;)V

    .line 496
    iget-object v10, p0, Lads_mobile_sdk/c22;->r:Lads_mobile_sdk/bq2;

    iput-object p0, v0, Lads_mobile_sdk/a22;->a:Lads_mobile_sdk/c22;

    iput-object p1, v0, Lads_mobile_sdk/a22;->b:Lads_mobile_sdk/q52;

    iput-object v2, v0, Lads_mobile_sdk/a22;->c:Lcom/google/android/libraries/ads/mobile/sdk/internal/webview/PerAdNativeJavscriptEngineJsContext;

    iput v7, v0, Lads_mobile_sdk/a22;->f:I

    invoke-virtual {v10, v2, v0}, Lads_mobile_sdk/pr1;->a(Lads_mobile_sdk/nr1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v7

    if-ne v7, v1, :cond_a2

    goto :goto_fa

    :cond_a2
    move-object v7, p0

    move-object p0, v2

    move-object v2, p1

    .line 497
    :goto_a5
    iget-object p1, v7, Lads_mobile_sdk/n2;->f:Lads_mobile_sdk/i2;

    .line 498
    iput-object v7, v0, Lads_mobile_sdk/a22;->a:Lads_mobile_sdk/c22;

    iput-object v2, v0, Lads_mobile_sdk/a22;->b:Lads_mobile_sdk/q52;

    iput-object p0, v0, Lads_mobile_sdk/a22;->c:Lcom/google/android/libraries/ads/mobile/sdk/internal/webview/PerAdNativeJavscriptEngineJsContext;

    iput v6, v0, Lads_mobile_sdk/a22;->f:I

    invoke-virtual {v7, v2, p1, v0}, Lads_mobile_sdk/c22;->a(Lads_mobile_sdk/q52;Lads_mobile_sdk/i2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_b6

    goto :goto_fa

    :cond_b6
    move-object v6, v7

    .line 499
    :goto_b7
    check-cast p1, Lads_mobile_sdk/v01;

    .line 670
    instance-of v7, p1, Lads_mobile_sdk/i01;

    if-eqz v7, :cond_c0

    check-cast p1, Lads_mobile_sdk/i01;

    return-object p1

    .line 671
    :cond_c0
    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lads_mobile_sdk/q01;

    .line 672
    iget-object p1, p1, Lads_mobile_sdk/q01;->b:Ljava/lang/Object;

    .line 673
    check-cast p1, Lcom/google/gson/JsonArray;

    .line 677
    iget v3, v6, Lads_mobile_sdk/c22;->u:I

    if-le v3, v8, :cond_e7

    .line 679
    iput-object v9, v0, Lads_mobile_sdk/a22;->a:Lads_mobile_sdk/c22;

    iput-object v9, v0, Lads_mobile_sdk/a22;->b:Lads_mobile_sdk/q52;

    iput-object v9, v0, Lads_mobile_sdk/a22;->c:Lcom/google/android/libraries/ads/mobile/sdk/internal/webview/PerAdNativeJavscriptEngineJsContext;

    iput v5, v0, Lads_mobile_sdk/a22;->f:I

    .line 680
    new-instance p0, Lads_mobile_sdk/z12;

    invoke-direct {p0, v3, v6, p1, v9}, Lads_mobile_sdk/z12;-><init>(ILads_mobile_sdk/c22;Lcom/google/gson/JsonArray;Lkotlin/coroutines/Continuation;)V

    invoke-static {p0}, Lkotlinx/coroutines/flow/FlowKt;->channelFlow(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    if-ne p1, v1, :cond_e1

    goto :goto_fa

    .line 681
    :cond_e1
    :goto_e1
    new-instance p0, Lads_mobile_sdk/q01;

    invoke-direct {p0, p1}, Lads_mobile_sdk/q01;-><init>(Ljava/lang/Object;)V

    return-object p0

    :cond_e7
    const/4 v3, 0x0

    .line 688
    invoke-static {p1, v3}, Lads_mobile_sdk/ds1;->a(Lcom/google/gson/JsonArray;I)Lcom/google/gson/JsonObject;

    move-result-object p1

    .line 689
    iput-object v9, v0, Lads_mobile_sdk/a22;->a:Lads_mobile_sdk/c22;

    iput-object v9, v0, Lads_mobile_sdk/a22;->b:Lads_mobile_sdk/q52;

    iput-object v9, v0, Lads_mobile_sdk/a22;->c:Lcom/google/android/libraries/ads/mobile/sdk/internal/webview/PerAdNativeJavscriptEngineJsContext;

    iput v4, v0, Lads_mobile_sdk/a22;->f:I

    invoke-virtual {v6, p1, v2, p0, v0}, Lads_mobile_sdk/c22;->a(Lcom/google/gson/JsonObject;Lads_mobile_sdk/q52;Lcom/google/android/libraries/ads/mobile/sdk/internal/webview/PerAdNativeJavscriptEngineJsContext;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_fb

    :goto_fa
    return-object v1

    .line 690
    :cond_fb
    :goto_fb
    check-cast p1, Lads_mobile_sdk/v01;

    .line 718
    instance-of p0, p1, Lads_mobile_sdk/q01;

    if-eqz p0, :cond_10b

    new-instance p0, Lads_mobile_sdk/q01;

    invoke-static {p1}, Lkotlinx/coroutines/flow/FlowKt;->flowOf(Ljava/lang/Object;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    invoke-direct {p0, p1}, Lads_mobile_sdk/q01;-><init>(Ljava/lang/Object;)V

    return-object p0

    .line 719
    :cond_10b
    instance-of p0, p1, Lads_mobile_sdk/i01;

    if-eqz p0, :cond_110

    return-object p1

    :cond_110
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0
.end method


# virtual methods
.method public final a(Lads_mobile_sdk/q52;Lads_mobile_sdk/i2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 9

    .line 1
    instance-of v0, p3, Lads_mobile_sdk/x12;

    if-eqz v0, :cond_13

    move-object v0, p3

    check-cast v0, Lads_mobile_sdk/x12;

    iget v1, v0, Lads_mobile_sdk/x12;->c:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/x12;->c:I

    goto :goto_18

    :cond_13
    new-instance v0, Lads_mobile_sdk/x12;

    invoke-direct {v0, p0, p3}, Lads_mobile_sdk/x12;-><init>(Lads_mobile_sdk/c22;Lkotlin/coroutines/Continuation;)V

    :goto_18
    iget-object p3, v0, Lads_mobile_sdk/x12;->a:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 225
    iget v2, v0, Lads_mobile_sdk/x12;->c:I

    const/4 v3, 0x1

    if-eqz v2, :cond_31

    if-ne v2, v3, :cond_29

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_7e

    :cond_29
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_31
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 230
    new-instance p3, Lcom/google/gson/JsonObject;

    invoke-direct {p3}, Lcom/google/gson/JsonObject;-><init>()V

    .line 231
    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v4, "isNonagon"

    invoke-virtual {p3, v4, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 234
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1e

    if-lt v2, v4, :cond_51

    .line 235
    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v4, "skipDeepLinkValidation"

    invoke-virtual {p3, v4, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 239
    :cond_51
    new-instance v2, Lcom/google/gson/JsonObject;

    invoke-direct {v2}, Lcom/google/gson/JsonObject;-><init>()V

    .line 240
    iget-object p2, p2, Lads_mobile_sdk/i2;->J:Lads_mobile_sdk/vc1;

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object p2, p2, Lads_mobile_sdk/vc1;->d:Lcom/google/gson/JsonObject;

    const-string v4, "response"

    invoke-virtual {v2, v4, p2}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    .line 241
    const-string p2, "sdk_params"

    invoke-virtual {v2, p2, p3}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    .line 244
    iput v3, v0, Lads_mobile_sdk/x12;->c:I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 245
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "toString(...)"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "google.afma.nativeAds.preProcessJson"

    invoke-interface {p1, p3, p2, v0}, Lads_mobile_sdk/eq1;->a(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_7e

    return-object v1

    .line 246
    :cond_7e
    :goto_7e
    check-cast p3, Lads_mobile_sdk/v01;

    .line 287
    instance-of p1, p3, Lads_mobile_sdk/i01;

    if-eqz p1, :cond_87

    check-cast p3, Lads_mobile_sdk/i01;

    return-object p3

    .line 288
    :cond_87
    const-string p1, "null cannot be cast to non-null type com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Success<T of com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Companion.returnIfError>"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p3, Lads_mobile_sdk/q01;

    .line 289
    iget-object p1, p3, Lads_mobile_sdk/q01;->b:Ljava/lang/Object;

    .line 290
    check-cast p1, Lcom/google/gson/JsonObject;

    .line 293
    const-string p2, "success"

    const/4 p3, 0x0

    .line 294
    invoke-static {p1, p2, p3}, Lads_mobile_sdk/ds1;->a(Lcom/google/gson/JsonObject;Ljava/lang/String;Z)Z

    move-result p2

    if-nez p2, :cond_a5

    .line 295
    new-instance p1, Lads_mobile_sdk/m01;

    const-string p2, "Process native ad json failed"

    .line 296
    sget-object p3, Lads_mobile_sdk/kk1;->a:Lads_mobile_sdk/kk1;

    .line 297
    invoke-direct {p1, p2, p3}, Lads_mobile_sdk/m01;-><init>(Ljava/lang/String;Lads_mobile_sdk/kk1;)V

    return-object p1

    .line 298
    :cond_a5
    const-string p2, "json"

    const/4 p3, 0x0

    .line 299
    invoke-static {p1, p2, p3}, Lads_mobile_sdk/ds1;->a(Lcom/google/gson/JsonObject;Ljava/lang/String;Lcom/google/gson/JsonObject;)Lcom/google/gson/JsonObject;

    move-result-object p1

    if-eqz p1, :cond_ca

    .line 300
    const-string p2, "ads"

    invoke-static {p1, p2}, Lads_mobile_sdk/ds1;->e(Lcom/google/gson/JsonObject;Ljava/lang/String;)Lcom/google/gson/JsonArray;

    move-result-object p1

    if-nez p1, :cond_b7

    goto :goto_ca

    .line 302
    :cond_b7
    invoke-virtual {p1}, Lcom/google/gson/JsonArray;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_c4

    .line 303
    new-instance p1, Lads_mobile_sdk/n01;

    const/4 p2, 0x3

    invoke-direct {p1, p3, p2}, Lads_mobile_sdk/n01;-><init>(Ljava/lang/String;I)V

    return-object p1

    .line 305
    :cond_c4
    new-instance p2, Lads_mobile_sdk/q01;

    invoke-direct {p2, p1}, Lads_mobile_sdk/q01;-><init>(Ljava/lang/Object;)V

    return-object p2

    .line 306
    :cond_ca
    :goto_ca
    new-instance p1, Lads_mobile_sdk/m01;

    const-string p2, "Invalid processed native ad json"

    .line 307
    sget-object p3, Lads_mobile_sdk/kk1;->a:Lads_mobile_sdk/kk1;

    .line 308
    invoke-direct {p1, p2, p3}, Lads_mobile_sdk/m01;-><init>(Ljava/lang/String;Lads_mobile_sdk/kk1;)V

    return-object p1
.end method

.method public final a(Lcom/google/gson/JsonObject;Lads_mobile_sdk/q52;Lcom/google/android/libraries/ads/mobile/sdk/internal/webview/PerAdNativeJavscriptEngineJsContext;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    .line 720
    instance-of v3, v2, Lads_mobile_sdk/b22;

    if-eqz v3, :cond_19

    move-object v3, v2

    check-cast v3, Lads_mobile_sdk/b22;

    iget v4, v3, Lads_mobile_sdk/b22;->h:I

    const/high16 v5, -0x80000000

    and-int v6, v4, v5

    if-eqz v6, :cond_19

    sub-int/2addr v4, v5

    iput v4, v3, Lads_mobile_sdk/b22;->h:I

    goto :goto_1e

    :cond_19
    new-instance v3, Lads_mobile_sdk/b22;

    invoke-direct {v3, v0, v2}, Lads_mobile_sdk/b22;-><init>(Lads_mobile_sdk/c22;Lkotlin/coroutines/Continuation;)V

    :goto_1e
    iget-object v2, v3, Lads_mobile_sdk/b22;->f:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v4

    .line 893
    iget v5, v3, Lads_mobile_sdk/b22;->h:I

    const/4 v6, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x3

    const/4 v9, 0x0

    if-eqz v5, :cond_69

    if-eq v5, v7, :cond_50

    if-eq v5, v6, :cond_43

    if-ne v5, v8, :cond_3b

    iget-object v1, v3, Lads_mobile_sdk/b22;->a:Ljava/lang/Object;

    check-cast v1, Lads_mobile_sdk/cs;

    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_278

    :cond_3b
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_43
    iget-object v1, v3, Lads_mobile_sdk/b22;->b:Ljava/lang/Object;

    check-cast v1, Lads_mobile_sdk/cs;

    iget-object v5, v3, Lads_mobile_sdk/b22;->a:Ljava/lang/Object;

    check-cast v5, Lads_mobile_sdk/s02;

    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_15c

    :cond_50
    iget-object v1, v3, Lads_mobile_sdk/b22;->e:Lads_mobile_sdk/eo2;

    iget-object v5, v3, Lads_mobile_sdk/b22;->d:Lcom/google/android/libraries/ads/mobile/sdk/internal/webview/PerAdNativeJavscriptEngineJsContext;

    iget-object v7, v3, Lads_mobile_sdk/b22;->c:Lads_mobile_sdk/q52;

    iget-object v10, v3, Lads_mobile_sdk/b22;->b:Ljava/lang/Object;

    check-cast v10, Lcom/google/gson/JsonObject;

    iget-object v11, v3, Lads_mobile_sdk/b22;->a:Ljava/lang/Object;

    check-cast v11, Lads_mobile_sdk/c22;

    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v12, v11

    move-object v11, v7

    move-object v7, v12

    move-object v12, v5

    move-object v5, v2

    move-object v2, v1

    move-object v1, v10

    goto :goto_9e

    :cond_69
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    if-eqz v1, :cond_282

    .line 898
    invoke-virtual {v1}, Lcom/google/gson/JsonObject;->size()I

    move-result v2

    if-nez v2, :cond_76

    goto/16 :goto_282

    .line 901
    :cond_76
    iget-object v2, v0, Lads_mobile_sdk/c22;->v:Lads_mobile_sdk/cw2;

    invoke-interface {v2}, Lads_mobile_sdk/cw2;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lads_mobile_sdk/eo2;

    .line 903
    iget-object v5, v0, Lads_mobile_sdk/c22;->p:Lads_mobile_sdk/g12;

    .line 904
    iget-object v10, v0, Lads_mobile_sdk/n2;->f:Lads_mobile_sdk/i2;

    .line 905
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iput-object v0, v3, Lads_mobile_sdk/b22;->a:Ljava/lang/Object;

    iput-object v1, v3, Lads_mobile_sdk/b22;->b:Ljava/lang/Object;

    move-object/from16 v11, p2

    iput-object v11, v3, Lads_mobile_sdk/b22;->c:Lads_mobile_sdk/q52;

    move-object/from16 v12, p3

    iput-object v12, v3, Lads_mobile_sdk/b22;->d:Lcom/google/android/libraries/ads/mobile/sdk/internal/webview/PerAdNativeJavscriptEngineJsContext;

    iput-object v2, v3, Lads_mobile_sdk/b22;->e:Lads_mobile_sdk/eo2;

    iput v7, v3, Lads_mobile_sdk/b22;->h:I

    invoke-virtual {v5, v10, v1, v2, v3}, Lads_mobile_sdk/g12;->a(Lads_mobile_sdk/i2;Lcom/google/gson/JsonObject;Lads_mobile_sdk/eo2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v4, :cond_9d

    goto/16 :goto_277

    :cond_9d
    move-object v7, v0

    .line 906
    :goto_9e
    check-cast v5, Lads_mobile_sdk/v01;

    .line 996
    instance-of v10, v5, Lads_mobile_sdk/i01;

    if-eqz v10, :cond_a7

    check-cast v5, Lads_mobile_sdk/i01;

    return-object v5

    .line 997
    :cond_a7
    const-string v10, "null cannot be cast to non-null type com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Success<T of com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Companion.returnIfError>"

    invoke-static {v5, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v5, Lads_mobile_sdk/q01;

    .line 998
    iget-object v5, v5, Lads_mobile_sdk/q01;->b:Ljava/lang/Object;

    .line 999
    check-cast v5, Lads_mobile_sdk/s02;

    .line 1003
    iget-object v10, v5, Lads_mobile_sdk/s02;->j:Lads_mobile_sdk/r31;

    const/4 v13, 0x0

    const-string v14, "get(...)"

    if-eqz v10, :cond_101

    .line 1005
    iget-object v15, v7, Lads_mobile_sdk/c22;->n:Lads_mobile_sdk/cw2;

    invoke-interface {v15}, Lads_mobile_sdk/cw2;->get()Ljava/lang/Object;

    move-result-object v15

    invoke-static {v15, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v15, Lads_mobile_sdk/w1;

    .line 1006
    invoke-virtual {v7, v15, v13}, Lads_mobile_sdk/n2;->a(Lads_mobile_sdk/w1;Z)Lads_mobile_sdk/w1;

    move-result-object v13

    .line 1007
    check-cast v13, Lads_mobile_sdk/z52;

    .line 1008
    iget-object v14, v7, Lads_mobile_sdk/c22;->l:Lads_mobile_sdk/mb0;

    check-cast v13, Lads_mobile_sdk/mh0;

    .line 1009
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1010
    iput-object v14, v13, Lads_mobile_sdk/mh0;->s:Lads_mobile_sdk/mb0;

    .line 1011
    iput-object v5, v13, Lads_mobile_sdk/mh0;->q:Lads_mobile_sdk/s02;

    .line 1012
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1013
    iput-object v1, v13, Lads_mobile_sdk/mh0;->t:Lcom/google/gson/JsonObject;

    .line 1014
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1015
    iput-object v11, v13, Lads_mobile_sdk/mh0;->p:Lads_mobile_sdk/q52;

    .line 1016
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1017
    iput-object v12, v13, Lads_mobile_sdk/mh0;->r:Lcom/google/android/libraries/ads/mobile/sdk/internal/webview/PerAdNativeJavscriptEngineJsContext;

    .line 1018
    iget-object v1, v7, Lads_mobile_sdk/c22;->q:Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeRequest;

    .line 1019
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1020
    iput-object v1, v13, Lads_mobile_sdk/mh0;->u:Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeRequest;

    .line 1021
    iput-object v10, v13, Lads_mobile_sdk/mh0;->w:Lads_mobile_sdk/r31;

    .line 1022
    iput-object v10, v13, Lads_mobile_sdk/mh0;->v:Landroid/view/View;

    .line 1023
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v13, v2}, Lads_mobile_sdk/mh0;->a(Lads_mobile_sdk/eo2;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lads_mobile_sdk/z52;

    .line 1024
    check-cast v1, Lads_mobile_sdk/mh0;

    invoke-virtual {v1}, Lads_mobile_sdk/mh0;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lads_mobile_sdk/a62;

    goto :goto_144

    .line 1027
    :cond_101
    iget-object v10, v7, Lads_mobile_sdk/c22;->m:Lads_mobile_sdk/cw2;

    invoke-interface {v10}, Lads_mobile_sdk/cw2;->get()Ljava/lang/Object;

    move-result-object v10

    invoke-static {v10, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v10, Lads_mobile_sdk/w1;

    .line 1028
    invoke-virtual {v7, v10, v13}, Lads_mobile_sdk/n2;->a(Lads_mobile_sdk/w1;Z)Lads_mobile_sdk/w1;

    move-result-object v10

    .line 1029
    check-cast v10, Lads_mobile_sdk/i12;

    .line 1030
    iget-object v13, v7, Lads_mobile_sdk/c22;->l:Lads_mobile_sdk/mb0;

    check-cast v10, Lads_mobile_sdk/kh0;

    .line 1031
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1032
    iput-object v13, v10, Lads_mobile_sdk/kh0;->s:Lads_mobile_sdk/mb0;

    .line 1033
    iput-object v5, v10, Lads_mobile_sdk/kh0;->q:Lads_mobile_sdk/s02;

    .line 1034
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1035
    iput-object v1, v10, Lads_mobile_sdk/kh0;->t:Lcom/google/gson/JsonObject;

    .line 1036
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1037
    iput-object v11, v10, Lads_mobile_sdk/kh0;->p:Lads_mobile_sdk/q52;

    .line 1038
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1039
    iput-object v12, v10, Lads_mobile_sdk/kh0;->r:Lcom/google/android/libraries/ads/mobile/sdk/internal/webview/PerAdNativeJavscriptEngineJsContext;

    .line 1040
    iget-object v1, v7, Lads_mobile_sdk/c22;->q:Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeRequest;

    .line 1041
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1042
    iput-object v1, v10, Lads_mobile_sdk/kh0;->u:Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeRequest;

    .line 1043
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v10, v2}, Lads_mobile_sdk/kh0;->a(Lads_mobile_sdk/eo2;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lads_mobile_sdk/i12;

    .line 1044
    check-cast v1, Lads_mobile_sdk/kh0;

    invoke-virtual {v1}, Lads_mobile_sdk/kh0;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lads_mobile_sdk/cs;

    .line 1045
    :goto_144
    invoke-interface {v1}, Lads_mobile_sdk/cs;->d()Lads_mobile_sdk/hp2;

    move-result-object v2

    iput-object v5, v3, Lads_mobile_sdk/b22;->a:Ljava/lang/Object;

    iput-object v1, v3, Lads_mobile_sdk/b22;->b:Ljava/lang/Object;

    iput-object v9, v3, Lads_mobile_sdk/b22;->c:Lads_mobile_sdk/q52;

    iput-object v9, v3, Lads_mobile_sdk/b22;->d:Lcom/google/android/libraries/ads/mobile/sdk/internal/webview/PerAdNativeJavscriptEngineJsContext;

    iput-object v9, v3, Lads_mobile_sdk/b22;->e:Lads_mobile_sdk/eo2;

    iput v6, v3, Lads_mobile_sdk/b22;->h:I

    invoke-virtual {v2, v12, v3}, Lads_mobile_sdk/pr1;->a(Lads_mobile_sdk/nr1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v4, :cond_15c

    goto/16 :goto_277

    .line 1046
    :cond_15c
    :goto_15c
    instance-of v2, v1, Lads_mobile_sdk/a62;

    if-eqz v2, :cond_278

    .line 1047
    iget-object v2, v5, Lads_mobile_sdk/s02;->j:Lads_mobile_sdk/r31;

    if-eqz v2, :cond_278

    .line 1048
    move-object v5, v1

    check-cast v5, Lads_mobile_sdk/a62;

    .line 1049
    check-cast v5, Lads_mobile_sdk/nh0;

    .line 1050
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v6, 0x7

    .line 1052
    invoke-static {v6}, Lcom/google/common/collect/ImmutableMap;->builderWithExpectedSize(I)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v6

    .line 1054
    iget-object v7, v5, Lads_mobile_sdk/nh0;->Q:Lads_mobile_sdk/ol0;

    invoke-virtual {v7}, Lads_mobile_sdk/ol0;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lads_mobile_sdk/ah2;

    .line 1055
    const-string v10, "openGmsgHandler"

    invoke-static {v7, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1116
    new-instance v10, Lads_mobile_sdk/sp2;

    invoke-direct {v10, v7}, Lads_mobile_sdk/sp2;-><init>(Lads_mobile_sdk/r41;)V

    .line 1117
    const-string v7, "/open"

    invoke-virtual {v6, v7, v10}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    .line 1119
    iget-object v7, v5, Lads_mobile_sdk/nh0;->M:Lads_mobile_sdk/dw2;

    invoke-interface {v7}, Lads_mobile_sdk/cw2;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lads_mobile_sdk/dw;

    .line 1120
    const-string v10, "clickGmsgHandler"

    invoke-static {v7, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1187
    new-instance v10, Lads_mobile_sdk/sp2;

    invoke-direct {v10, v7}, Lads_mobile_sdk/sp2;-><init>(Lads_mobile_sdk/r41;)V

    .line 1188
    const-string v7, "/click"

    invoke-virtual {v6, v7, v10}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    .line 1190
    iget-object v7, v5, Lads_mobile_sdk/nh0;->h1:Lads_mobile_sdk/dw2;

    invoke-interface {v7}, Lads_mobile_sdk/cw2;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lads_mobile_sdk/d92;

    .line 1191
    const-string v10, "nativeVideoClickedGmsgHandler"

    invoke-static {v7, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1265
    new-instance v10, Lads_mobile_sdk/sp2;

    invoke-direct {v10, v7}, Lads_mobile_sdk/sp2;-><init>(Lads_mobile_sdk/r41;)V

    .line 1266
    const-string v7, "/videoClicked"

    invoke-virtual {v6, v7, v10}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    .line 1268
    iget-object v7, v5, Lads_mobile_sdk/nh0;->i1:Lads_mobile_sdk/dw2;

    invoke-interface {v7}, Lads_mobile_sdk/cw2;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lads_mobile_sdk/zs3;

    .line 1269
    const-string v10, "trackActiveViewUnitGmsgHandler"

    invoke-static {v7, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1350
    new-instance v10, Lads_mobile_sdk/sp2;

    invoke-direct {v10, v7}, Lads_mobile_sdk/sp2;-><init>(Lads_mobile_sdk/r41;)V

    .line 1351
    const-string v7, "/trackActiveViewUnit"

    invoke-virtual {v6, v7, v10}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    .line 1353
    iget-object v7, v5, Lads_mobile_sdk/nh0;->j1:Lads_mobile_sdk/dw2;

    invoke-interface {v7}, Lads_mobile_sdk/cw2;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lads_mobile_sdk/iw3;

    .line 1354
    const-string v10, "untrackActiveViewUnitGmsgHandler"

    invoke-static {v7, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1442
    new-instance v10, Lads_mobile_sdk/sp2;

    invoke-direct {v10, v7}, Lads_mobile_sdk/sp2;-><init>(Lads_mobile_sdk/r41;)V

    .line 1443
    const-string v7, "/untrackActiveViewUnit"

    invoke-virtual {v6, v7, v10}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    .line 1445
    iget-object v7, v5, Lads_mobile_sdk/nh0;->k1:Lads_mobile_sdk/dw2;

    invoke-interface {v7}, Lads_mobile_sdk/cw2;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lads_mobile_sdk/v32;

    .line 1446
    const-string v10, "nativeAdViewSignalsGmsgHandler"

    invoke-static {v7, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1541
    new-instance v10, Lads_mobile_sdk/sp2;

    invoke-direct {v10, v7}, Lads_mobile_sdk/sp2;-><init>(Lads_mobile_sdk/r41;)V

    .line 1542
    const-string v7, "/getNativeAdViewSignals"

    invoke-virtual {v6, v7, v10}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    .line 1544
    iget-object v7, v5, Lads_mobile_sdk/nh0;->l1:Lads_mobile_sdk/dw2;

    invoke-interface {v7}, Lads_mobile_sdk/cw2;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lads_mobile_sdk/x42;

    .line 1545
    const-string v10, "nativeClickMetaGmsgHandler"

    invoke-static {v7, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1646
    new-instance v10, Lads_mobile_sdk/sp2;

    invoke-direct {v10, v7}, Lads_mobile_sdk/sp2;-><init>(Lads_mobile_sdk/r41;)V

    .line 1647
    const-string v7, "/getNativeClickMeta"

    invoke-virtual {v6, v7, v10}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    .line 1648
    invoke-virtual {v6}, Lcom/google/common/collect/ImmutableMap$Builder;->build()Lcom/google/common/collect/ImmutableMap;

    move-result-object v6

    .line 1649
    const-string v7, "gmsgHandlers"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1757
    new-instance v11, Lads_mobile_sdk/np2;

    invoke-direct {v11, v6}, Lads_mobile_sdk/np2;-><init>(Lcom/google/common/collect/ImmutableMap;)V

    .line 1759
    iget-object v6, v5, Lads_mobile_sdk/nh0;->r1:Lads_mobile_sdk/dw2;

    invoke-interface {v6}, Lads_mobile_sdk/cw2;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lads_mobile_sdk/c24;

    .line 1760
    const-string v7, "webViewViewabilityMonitor"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1875
    new-instance v13, Lads_mobile_sdk/rp2;

    invoke-direct {v13, v6}, Lads_mobile_sdk/rp2;-><init>(Lads_mobile_sdk/c24;)V

    .line 1877
    iget-object v5, v5, Lads_mobile_sdk/nh0;->x:Lads_mobile_sdk/dw2;

    invoke-interface {v5}, Lads_mobile_sdk/cw2;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lads_mobile_sdk/s93;

    .line 1878
    const-string v6, "safeBrowsingManager"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1999
    new-instance v15, Lads_mobile_sdk/qp2;

    invoke-direct {v15, v5}, Lads_mobile_sdk/qp2;-><init>(Lads_mobile_sdk/s93;)V

    .line 2000
    const-string v10, "GmsgHandlerInstaller"

    const-string v12, "NativeVideoViewabilityMonitorInitializer"

    const-string v14, "SafeBrowsingClickListener"

    invoke-static/range {v10 .. v15}, Lcom/google/common/collect/ImmutableMap;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v5

    .line 2001
    const-string v6, "modifiers"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2130
    new-instance v6, Lads_mobile_sdk/lp2;

    invoke-direct {v6, v5}, Lads_mobile_sdk/lp2;-><init>(Lcom/google/common/collect/ImmutableMap;)V

    .line 2131
    invoke-virtual {v2}, Lads_mobile_sdk/r31;->c()Lads_mobile_sdk/nr1;

    move-result-object v5

    instance-of v7, v5, Lads_mobile_sdk/a04;

    if-eqz v7, :cond_263

    check-cast v5, Lads_mobile_sdk/a04;

    goto :goto_264

    :cond_263
    move-object v5, v9

    :goto_264
    if-nez v5, :cond_26b

    new-instance v5, Lads_mobile_sdk/km0;

    invoke-direct {v5, v2}, Lads_mobile_sdk/km0;-><init>(Lads_mobile_sdk/r31;)V

    :cond_26b
    iput-object v1, v3, Lads_mobile_sdk/b22;->a:Ljava/lang/Object;

    iput-object v9, v3, Lads_mobile_sdk/b22;->b:Ljava/lang/Object;

    iput v8, v3, Lads_mobile_sdk/b22;->h:I

    invoke-virtual {v6, v5, v3}, Lads_mobile_sdk/pr1;->a(Lads_mobile_sdk/nr1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v4, :cond_278

    :goto_277
    return-object v4

    .line 2134
    :cond_278
    :goto_278
    new-instance v2, Lads_mobile_sdk/q01;

    invoke-interface {v1}, Lads_mobile_sdk/x1;->a()Lads_mobile_sdk/zh1;

    move-result-object v1

    invoke-direct {v2, v1}, Lads_mobile_sdk/q01;-><init>(Ljava/lang/Object;)V

    return-object v2

    .line 2135
    :cond_282
    :goto_282
    new-instance v1, Lads_mobile_sdk/n01;

    invoke-direct {v1, v9, v8}, Lads_mobile_sdk/n01;-><init>(Ljava/lang/String;I)V

    return-object v1
.end method

.method public final a(ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 3

    .line 309
    invoke-static {p0, p2}, Lads_mobile_sdk/c22;->a(Lads_mobile_sdk/c22;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final b()Z
    .registers 2

    .line 2
    iget-object v0, p0, Lads_mobile_sdk/n2;->f:Lads_mobile_sdk/i2;

    .line 3
    iget-object v0, v0, Lads_mobile_sdk/i2;->J:Lads_mobile_sdk/vc1;

    if-eqz v0, :cond_9

    iget-object v0, v0, Lads_mobile_sdk/vc1;->d:Lcom/google/gson/JsonObject;

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    if-eqz v0, :cond_e

    const/4 v0, 0x1

    return v0

    :cond_e
    const/4 v0, 0x0

    return v0
.end method
