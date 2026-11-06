###### Class ads_mobile_sdk.x13 (ads_mobile_sdk.x13)
.class public final Lads_mobile_sdk/x13;
.super Lads_mobile_sdk/l13;
.source "SourceFile"


# instance fields
.field public final n:Lads_mobile_sdk/vo1;

.field public final o:Z

.field public final p:Lads_mobile_sdk/md1;

.field public final q:Lads_mobile_sdk/pb;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/vo1;Lads_mobile_sdk/ks3;Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;Lads_mobile_sdk/j53;JILads_mobile_sdk/i2;Lads_mobile_sdk/zy;Lads_mobile_sdk/ec3;Ljava/lang/String;ZLads_mobile_sdk/md1;Lads_mobile_sdk/pb;Lads_mobile_sdk/dw2;)V
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
    iput-object v12, p0, Lads_mobile_sdk/x13;->n:Lads_mobile_sdk/vo1;

    move/from16 v1, p12

    .line 14
    iput-boolean v1, p0, Lads_mobile_sdk/x13;->o:Z

    .line 15
    iput-object v13, p0, Lads_mobile_sdk/x13;->p:Lads_mobile_sdk/md1;

    .line 16
    iput-object v14, p0, Lads_mobile_sdk/x13;->q:Lads_mobile_sdk/pb;

    return-void
.end method


# virtual methods
.method public final a(ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 13

    .line 1
    instance-of p1, p2, Lads_mobile_sdk/w13;

    if-eqz p1, :cond_13

    move-object p1, p2

    check-cast p1, Lads_mobile_sdk/w13;

    iget v0, p1, Lads_mobile_sdk/w13;->c:I

    const/high16 v1, -0x80000000

    and-int v2, v0, v1

    if-eqz v2, :cond_13

    sub-int/2addr v0, v1

    iput v0, p1, Lads_mobile_sdk/w13;->c:I

    goto :goto_18

    :cond_13
    new-instance p1, Lads_mobile_sdk/w13;

    invoke-direct {p1, p0, p2}, Lads_mobile_sdk/w13;-><init>(Lads_mobile_sdk/x13;Lkotlin/coroutines/Continuation;)V

    :goto_18
    iget-object p2, p1, Lads_mobile_sdk/w13;->a:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 60
    iget v1, p1, Lads_mobile_sdk/w13;->c:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_3a

    if-eq v1, v3, :cond_35

    if-ne v1, v2, :cond_2d

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_fd

    :cond_2d
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_35
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_f2

    :cond_3a
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 63
    sget-object p2, Lads_mobile_sdk/ds1;->a:Lads_mobile_sdk/ds1;

    .line 64
    iget-object p2, p0, Lads_mobile_sdk/n2;->f:Lads_mobile_sdk/i2;

    .line 65
    iget-object p2, p2, Lads_mobile_sdk/i2;->c:Lcom/google/gson/JsonObject;

    const-string v1, "pubid"

    invoke-static {p2, v1}, Lads_mobile_sdk/ds1;->a(Lcom/google/gson/JsonObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 66
    const-string v1, "<set-?>"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 119
    iput-object p2, p0, Lads_mobile_sdk/l13;->l:Ljava/lang/String;

    .line 120
    invoke-virtual {p0}, Lads_mobile_sdk/l13;->h()V

    .line 122
    invoke-virtual {p0}, Lads_mobile_sdk/l13;->g()Landroid/os/Bundle;

    move-result-object p2

    .line 123
    const-string v1, "googleExtrasBundle"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 124
    iget-object v1, p0, Lads_mobile_sdk/n2;->b:Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;

    .line 125
    invoke-virtual {v1}, Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;->getAdSourceExtrasBundles()Ljava/util/Map;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/MapsKt__MapsKt;->toMutableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    .line 126
    const-string v4, "com.google.ads.mediation.admob.AdMobAdapter"

    invoke-interface {v1, v4, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    iget-object v4, p0, Lads_mobile_sdk/x13;->n:Lads_mobile_sdk/vo1;

    .line 129
    invoke-virtual {p0, p2, v1}, Lads_mobile_sdk/l13;->a(Landroid/os/Bundle;Ljava/util/Map;)Lcom/google/android/libraries/ads/mobile/sdk/common/AdRequest;

    move-result-object p2

    .line 130
    iget-object v1, p0, Lads_mobile_sdk/n2;->c:Lads_mobile_sdk/j53;

    .line 131
    iget-object v5, p0, Lads_mobile_sdk/n2;->a:Lads_mobile_sdk/ks3;

    .line 132
    iget-boolean v6, p0, Lads_mobile_sdk/x13;->o:Z

    .line 133
    iget-object v7, p0, Lads_mobile_sdk/l13;->m:Lads_mobile_sdk/m13;

    .line 134
    iget-object v8, p0, Lads_mobile_sdk/x13;->p:Lads_mobile_sdk/md1;

    .line 135
    iget-object v9, p0, Lads_mobile_sdk/x13;->q:Lads_mobile_sdk/pb;

    .line 136
    iput v3, p1, Lads_mobile_sdk/w13;->c:I

    check-cast v4, Lads_mobile_sdk/wo1;

    .line 137
    iget-object v4, v4, Lads_mobile_sdk/wo1;->a:Lads_mobile_sdk/cw2;

    .line 138
    invoke-interface {v4}, Lads_mobile_sdk/cw2;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lads_mobile_sdk/tk1;

    .line 139
    check-cast v4, Lads_mobile_sdk/qg0;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 140
    iput-object p2, v4, Lads_mobile_sdk/qg0;->c:Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;

    .line 141
    invoke-virtual {v4, v1}, Lads_mobile_sdk/qg0;->a(Lads_mobile_sdk/j53;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lads_mobile_sdk/tk1;

    .line 142
    iget-object v1, v5, Lads_mobile_sdk/ks3;->a:Lads_mobile_sdk/n03;

    check-cast p2, Lads_mobile_sdk/qg0;

    invoke-virtual {p2, v1}, Lads_mobile_sdk/qg0;->a(Lads_mobile_sdk/n03;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lads_mobile_sdk/tk1;

    .line 143
    iget-object v1, v5, Lads_mobile_sdk/ks3;->b:Lads_mobile_sdk/tn1;

    check-cast p2, Lads_mobile_sdk/qg0;

    invoke-virtual {p2, v1}, Lads_mobile_sdk/qg0;->a(Lads_mobile_sdk/tn1;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lads_mobile_sdk/tk1;

    .line 144
    check-cast p2, Lads_mobile_sdk/qg0;

    invoke-virtual {p2, v6}, Lads_mobile_sdk/qg0;->a(Z)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lads_mobile_sdk/tk1;

    .line 145
    check-cast p2, Lads_mobile_sdk/qg0;

    invoke-virtual {p2, v7}, Lads_mobile_sdk/qg0;->a(Lads_mobile_sdk/m13;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lads_mobile_sdk/tk1;

    .line 146
    check-cast p2, Lads_mobile_sdk/qg0;

    invoke-virtual {p2, v3}, Lads_mobile_sdk/qg0;->b(Z)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lads_mobile_sdk/tk1;

    .line 147
    check-cast p2, Lads_mobile_sdk/qg0;

    invoke-virtual {p2, v8}, Lads_mobile_sdk/qg0;->a(Lads_mobile_sdk/md1;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lads_mobile_sdk/tk1;

    .line 148
    check-cast p2, Lads_mobile_sdk/qg0;

    invoke-virtual {p2, v9}, Lads_mobile_sdk/qg0;->a(Lads_mobile_sdk/pb;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lads_mobile_sdk/tk1;

    .line 149
    check-cast p2, Lads_mobile_sdk/qg0;

    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Lads_mobile_sdk/qg0;->c(Z)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lads_mobile_sdk/tk1;

    .line 150
    check-cast p2, Lads_mobile_sdk/qg0;

    invoke-virtual {p2}, Lads_mobile_sdk/qg0;->a()Lads_mobile_sdk/rg0;

    move-result-object p2

    .line 151
    iget-object p2, p2, Lads_mobile_sdk/rg0;->D0:Lads_mobile_sdk/dw2;

    invoke-interface {p2}, Lads_mobile_sdk/cw2;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lads_mobile_sdk/mi1;

    .line 152
    check-cast p2, Lads_mobile_sdk/si1;

    invoke-virtual {p2, p1}, Lads_mobile_sdk/si1;->a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v0, :cond_f2

    goto :goto_fc

    .line 153
    :cond_f2
    :goto_f2
    check-cast p2, Lkotlinx/coroutines/flow/Flow;

    .line 174
    iput v2, p1, Lads_mobile_sdk/w13;->c:I

    invoke-static {p2, p1}, Lkotlinx/coroutines/flow/FlowKt;->first(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v0, :cond_fd

    :goto_fc
    return-object v0

    .line 175
    :cond_fd
    :goto_fd
    check-cast p2, Lkotlin/Pair;

    invoke-virtual {p2}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lads_mobile_sdk/v01;

    .line 178
    instance-of p2, p1, Lads_mobile_sdk/q01;

    if-eqz p2, :cond_113

    new-instance p2, Lads_mobile_sdk/q01;

    invoke-static {p1}, Lkotlinx/coroutines/flow/FlowKt;->flowOf(Ljava/lang/Object;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    invoke-direct {p2, p1}, Lads_mobile_sdk/q01;-><init>(Ljava/lang/Object;)V

    return-object p2

    .line 179
    :cond_113
    instance-of p2, p1, Lads_mobile_sdk/i01;

    if-eqz p2, :cond_118

    return-object p1

    .line 180
    :cond_118
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1
.end method
