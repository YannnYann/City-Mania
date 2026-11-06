###### Class ads_mobile_sdk.d23 (ads_mobile_sdk.d23)
.class public final Lads_mobile_sdk/d23;
.super Lads_mobile_sdk/l13;
.source "SourceFile"


# instance fields
.field public final n:Lads_mobile_sdk/q73;

.field public final o:Z

.field public final p:Lads_mobile_sdk/md1;

.field public final q:Lads_mobile_sdk/pb;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/q73;Lads_mobile_sdk/ks3;Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;Lads_mobile_sdk/j53;JILads_mobile_sdk/i2;Lads_mobile_sdk/zy;Lads_mobile_sdk/ec3;Ljava/lang/String;ZLads_mobile_sdk/md1;Lads_mobile_sdk/pb;Lads_mobile_sdk/dw2;)V
    .registers 31

    move-object/from16 v12, p1

    move-object/from16 v13, p13

    move-object/from16 v14, p14

    .line 1
    const-string v0, "recursiveAdLoader"

    invoke-static {v12, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "traceMetaSet"

    move-object/from16 v1, p2

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "baseRequest"

    move-object/from16 v2, p3

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "requestType"

    move-object/from16 v3, p4

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adConfiguration"

    move-object/from16 v7, p8

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "commonConfiguration"

    move-object/from16 v8, p9

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "serverTransaction"

    move-object/from16 v9, p10

    invoke-static {v9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "renderId"

    move-object/from16 v10, p11

    invoke-static {v10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "inspectorAdLifecycleMonitor"

    invoke-static {v13, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adSourceResponseInfoCollector"

    invoke-static {v14, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "placementIdWrapperProvider"

    move-object/from16 v4, p15

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-interface {v4}, Lads_mobile_sdk/cw2;->get()Ljava/lang/Object;

    move-result-object v0

    const-string v4, "get(...)"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v11, v0

    check-cast v11, Lads_mobile_sdk/eo2;

    move-object v0, p0

    move-wide/from16 v4, p5

    move/from16 v6, p7

    .line 3
    invoke-direct/range {v0 .. v11}, Lads_mobile_sdk/l13;-><init>(Lads_mobile_sdk/ks3;Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;Lads_mobile_sdk/j53;JILads_mobile_sdk/i2;Lads_mobile_sdk/zy;Lads_mobile_sdk/ec3;Ljava/lang/String;Lads_mobile_sdk/eo2;)V

    .line 4
    iput-object v12, p0, Lads_mobile_sdk/d23;->n:Lads_mobile_sdk/q73;

    move/from16 v1, p12

    .line 14
    iput-boolean v1, p0, Lads_mobile_sdk/d23;->o:Z

    .line 15
    iput-object v13, p0, Lads_mobile_sdk/d23;->p:Lads_mobile_sdk/md1;

    .line 16
    iput-object v14, p0, Lads_mobile_sdk/d23;->q:Lads_mobile_sdk/pb;

    return-void
.end method


# virtual methods
.method public final a(ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 12

    .line 1
    instance-of p1, p2, Lads_mobile_sdk/c23;

    if-eqz p1, :cond_14

    move-object p1, p2

    check-cast p1, Lads_mobile_sdk/c23;

    iget v0, p1, Lads_mobile_sdk/c23;->c:I

    const/high16 v1, -0x80000000

    and-int v2, v0, v1

    if-eqz v2, :cond_14

    sub-int/2addr v0, v1

    iput v0, p1, Lads_mobile_sdk/c23;->c:I

    :goto_12
    move-object v8, p1

    goto :goto_1a

    :cond_14
    new-instance p1, Lads_mobile_sdk/c23;

    invoke-direct {p1, p0, p2}, Lads_mobile_sdk/c23;-><init>(Lads_mobile_sdk/d23;Lkotlin/coroutines/Continuation;)V

    goto :goto_12

    :goto_1a
    iget-object p1, v8, Lads_mobile_sdk/c23;->a:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p2

    .line 59
    iget v0, v8, Lads_mobile_sdk/c23;->c:I

    const/4 v1, 0x1

    if-eqz v0, :cond_33

    if-ne v0, v1, :cond_2b

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_83

    :cond_2b
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_33
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 62
    sget-object p1, Lads_mobile_sdk/ds1;->a:Lads_mobile_sdk/ds1;

    .line 63
    iget-object p1, p0, Lads_mobile_sdk/n2;->f:Lads_mobile_sdk/i2;

    .line 64
    iget-object p1, p1, Lads_mobile_sdk/i2;->c:Lcom/google/gson/JsonObject;

    const-string v0, "pubid"

    invoke-static {p1, v0}, Lads_mobile_sdk/ds1;->a(Lcom/google/gson/JsonObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 65
    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 118
    iput-object p1, p0, Lads_mobile_sdk/l13;->l:Ljava/lang/String;

    .line 119
    invoke-virtual {p0}, Lads_mobile_sdk/l13;->h()V

    .line 121
    invoke-virtual {p0}, Lads_mobile_sdk/l13;->g()Landroid/os/Bundle;

    move-result-object p1

    .line 122
    const-string v0, "googleExtrasBundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 123
    iget-object v0, p0, Lads_mobile_sdk/n2;->b:Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;

    .line 124
    invoke-virtual {v0}, Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;->getAdSourceExtrasBundles()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/MapsKt__MapsKt;->toMutableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    .line 125
    const-string v2, "com.google.ads.mediation.admob.AdMobAdapter"

    invoke-interface {v0, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    iget-object v2, p0, Lads_mobile_sdk/d23;->n:Lads_mobile_sdk/q73;

    .line 127
    invoke-virtual {p0, p1, v0}, Lads_mobile_sdk/l13;->a(Landroid/os/Bundle;Ljava/util/Map;)Lcom/google/android/libraries/ads/mobile/sdk/common/AdRequest;

    move-result-object p1

    move-object v0, v2

    .line 128
    iget-object v2, p0, Lads_mobile_sdk/n2;->c:Lads_mobile_sdk/j53;

    .line 129
    iget-object v3, p0, Lads_mobile_sdk/n2;->a:Lads_mobile_sdk/ks3;

    .line 130
    iget-boolean v4, p0, Lads_mobile_sdk/d23;->o:Z

    .line 131
    iget-object v5, p0, Lads_mobile_sdk/l13;->m:Lads_mobile_sdk/m13;

    .line 132
    iget-object v6, p0, Lads_mobile_sdk/d23;->p:Lads_mobile_sdk/md1;

    .line 133
    iget-object v7, p0, Lads_mobile_sdk/d23;->q:Lads_mobile_sdk/pb;

    .line 134
    iput v1, v8, Lads_mobile_sdk/c23;->c:I

    check-cast v0, Lads_mobile_sdk/s73;

    move-object v1, p1

    invoke-virtual/range {v0 .. v8}, Lads_mobile_sdk/s73;->a(Lcom/google/android/libraries/ads/mobile/sdk/common/AdRequest;Lads_mobile_sdk/j53;Lads_mobile_sdk/ks3;ZLads_mobile_sdk/m13;Lads_mobile_sdk/md1;Lads_mobile_sdk/pb;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, p2, :cond_83

    return-object p2

    .line 135
    :cond_83
    :goto_83
    check-cast p1, Lkotlin/Pair;

    invoke-virtual {p1}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lads_mobile_sdk/v01;

    .line 146
    instance-of p2, p1, Lads_mobile_sdk/q01;

    if-eqz p2, :cond_99

    new-instance p2, Lads_mobile_sdk/q01;

    invoke-static {p1}, Lkotlinx/coroutines/flow/FlowKt;->flowOf(Ljava/lang/Object;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    invoke-direct {p2, p1}, Lads_mobile_sdk/q01;-><init>(Ljava/lang/Object;)V

    return-object p2

    .line 147
    :cond_99
    instance-of p2, p1, Lads_mobile_sdk/i01;

    if-eqz p2, :cond_9e

    return-object p1

    .line 148
    :cond_9e
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1
.end method
