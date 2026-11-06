###### Class ads_mobile_sdk.zw2 (ads_mobile_sdk.zw2)
.class public final Lads_mobile_sdk/zw2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# instance fields
.field public final synthetic a:Lkotlinx/coroutines/flow/FlowCollector;

.field public final synthetic b:Lads_mobile_sdk/px2;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/flow/FlowCollector;Lads_mobile_sdk/px2;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lads_mobile_sdk/zw2;->a:Lkotlinx/coroutines/flow/FlowCollector;

    iput-object p2, p0, Lads_mobile_sdk/zw2;->b:Lads_mobile_sdk/px2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 13

    .line 1
    instance-of v0, p2, Lads_mobile_sdk/yw2;

    if-eqz v0, :cond_13

    move-object v0, p2

    check-cast v0, Lads_mobile_sdk/yw2;

    iget v1, v0, Lads_mobile_sdk/yw2;->b:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/yw2;->b:I

    goto :goto_18

    :cond_13
    new-instance v0, Lads_mobile_sdk/yw2;

    invoke-direct {v0, p0, p2}, Lads_mobile_sdk/yw2;-><init>(Lads_mobile_sdk/zw2;Lkotlin/coroutines/Continuation;)V

    :goto_18
    iget-object p2, v0, Lads_mobile_sdk/yw2;->a:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lads_mobile_sdk/yw2;->b:I

    const/4 v3, 0x5

    const/4 v4, 0x4

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz v2, :cond_78

    if-eq v2, v7, :cond_6a

    if-eq v2, v6, :cond_5b

    if-eq v2, v5, :cond_50

    if-eq v2, v4, :cond_3f

    if-ne v2, v3, :cond_37

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_16a

    :cond_37
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3f
    iget-object p1, v0, Lads_mobile_sdk/yw2;->g:Lcom/google/android/libraries/ads/mobile/sdk/common/ResponseInfo;

    iget-object v2, v0, Lads_mobile_sdk/yw2;->f:Lads_mobile_sdk/v01;

    iget-object v4, v0, Lads_mobile_sdk/yw2;->e:Ljava/lang/Object;

    check-cast v4, Lkotlinx/coroutines/flow/FlowCollector;

    iget-object v5, v0, Lads_mobile_sdk/yw2;->c:Lkotlinx/coroutines/flow/FlowCollector;

    check-cast v5, Lads_mobile_sdk/zw2;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_148

    :cond_50
    iget-object p1, v0, Lads_mobile_sdk/yw2;->e:Ljava/lang/Object;

    check-cast p1, Lads_mobile_sdk/v01;

    iget-object v2, v0, Lads_mobile_sdk/yw2;->c:Lkotlinx/coroutines/flow/FlowCollector;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_107

    :cond_5b
    iget-object p1, v0, Lads_mobile_sdk/yw2;->f:Lads_mobile_sdk/v01;

    iget-object v2, v0, Lads_mobile_sdk/yw2;->e:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/flow/FlowCollector;

    iget-object v4, v0, Lads_mobile_sdk/yw2;->c:Lkotlinx/coroutines/flow/FlowCollector;

    check-cast v4, Lads_mobile_sdk/zw2;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_ed

    :cond_6a
    iget-object p1, v0, Lads_mobile_sdk/yw2;->f:Lads_mobile_sdk/v01;

    iget-object v2, v0, Lads_mobile_sdk/yw2;->e:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/flow/FlowCollector;

    iget-object v4, v0, Lads_mobile_sdk/yw2;->c:Lkotlinx/coroutines/flow/FlowCollector;

    check-cast v4, Lads_mobile_sdk/zw2;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_cc

    :cond_78
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 50
    iget-object p2, p0, Lads_mobile_sdk/zw2;->a:Lkotlinx/coroutines/flow/FlowCollector;

    .line 51
    check-cast p1, Lkotlin/Pair;

    .line 52
    invoke-virtual {p1}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lads_mobile_sdk/v01;

    invoke-virtual {p1}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/libraries/ads/mobile/sdk/common/ResponseInfo;

    .line 54
    instance-of v9, v2, Lads_mobile_sdk/q01;

    if-eqz v9, :cond_113

    .line 55
    move-object p1, v2

    check-cast p1, Lads_mobile_sdk/q01;

    invoke-virtual {p1}, Lads_mobile_sdk/q01;->a()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lads_mobile_sdk/zh1;

    invoke-interface {v4}, Lads_mobile_sdk/zh1;->b()Lads_mobile_sdk/i2;

    move-result-object v4

    iget-boolean v4, v4, Lads_mobile_sdk/i2;->A0:Z

    if-nez v4, :cond_b3

    .line 57
    iget-object v4, p0, Lads_mobile_sdk/zw2;->b:Lads_mobile_sdk/px2;

    invoke-virtual {v4}, Lads_mobile_sdk/px2;->a()Lads_mobile_sdk/ks3;

    move-result-object v4

    invoke-virtual {p1}, Lads_mobile_sdk/q01;->a()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lads_mobile_sdk/zh1;

    invoke-interface {v9}, Lads_mobile_sdk/zh1;->a()Lads_mobile_sdk/ks3;

    move-result-object v9

    invoke-virtual {v4, v9}, Lads_mobile_sdk/ks3;->a(Lads_mobile_sdk/ks3;)V

    .line 59
    :cond_b3
    invoke-virtual {p1}, Lads_mobile_sdk/q01;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lads_mobile_sdk/zh1;

    iput-object p0, v0, Lads_mobile_sdk/yw2;->c:Lkotlinx/coroutines/flow/FlowCollector;

    iput-object p2, v0, Lads_mobile_sdk/yw2;->e:Ljava/lang/Object;

    iput-object v2, v0, Lads_mobile_sdk/yw2;->f:Lads_mobile_sdk/v01;

    iput v7, v0, Lads_mobile_sdk/yw2;->b:I

    invoke-interface {p1, v0}, Lads_mobile_sdk/zh1;->a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_c9

    goto/16 :goto_169

    :cond_c9
    move-object v4, p0

    move-object p1, v2

    move-object v2, p2

    .line 60
    :goto_cc
    iget-object p2, v4, Lads_mobile_sdk/zw2;->b:Lads_mobile_sdk/px2;

    invoke-static {p2}, Lads_mobile_sdk/px2;->a(Lads_mobile_sdk/px2;)Z

    move-result p2

    if-nez p2, :cond_ed

    .line 65
    move-object p2, p1

    check-cast p2, Lads_mobile_sdk/q01;

    invoke-virtual {p2}, Lads_mobile_sdk/q01;->a()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lads_mobile_sdk/zh1;

    iput-object v4, v0, Lads_mobile_sdk/yw2;->c:Lkotlinx/coroutines/flow/FlowCollector;

    iput-object v2, v0, Lads_mobile_sdk/yw2;->e:Ljava/lang/Object;

    iput-object p1, v0, Lads_mobile_sdk/yw2;->f:Lads_mobile_sdk/v01;

    iput v6, v0, Lads_mobile_sdk/yw2;->b:I

    invoke-interface {p2, v0}, Lads_mobile_sdk/zh1;->a(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Lkotlin/Unit;

    move-result-object p2

    if-ne p2, v1, :cond_ed

    goto/16 :goto_169

    .line 67
    :cond_ed
    :goto_ed
    iget-object p2, v4, Lads_mobile_sdk/zw2;->b:Lads_mobile_sdk/px2;

    move-object v4, p1

    check-cast v4, Lads_mobile_sdk/q01;

    invoke-virtual {v4}, Lads_mobile_sdk/q01;->a()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lads_mobile_sdk/zh1;

    iput-object v2, v0, Lads_mobile_sdk/yw2;->c:Lkotlinx/coroutines/flow/FlowCollector;

    iput-object p1, v0, Lads_mobile_sdk/yw2;->e:Ljava/lang/Object;

    iput-object v8, v0, Lads_mobile_sdk/yw2;->f:Lads_mobile_sdk/v01;

    iput v5, v0, Lads_mobile_sdk/yw2;->b:I

    invoke-virtual {p2, v4, v0}, Lads_mobile_sdk/px2;->a(Lads_mobile_sdk/zh1;Lads_mobile_sdk/yw2;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_107

    goto :goto_169

    .line 68
    :cond_107
    :goto_107
    new-instance p2, Lads_mobile_sdk/rx2;

    check-cast p1, Lads_mobile_sdk/q01;

    invoke-virtual {p1}, Lads_mobile_sdk/q01;->a()Ljava/lang/Object;

    move-result-object p1

    invoke-direct {p2, p1}, Lads_mobile_sdk/rx2;-><init>(Ljava/lang/Object;)V

    goto :goto_159

    .line 71
    :cond_113
    instance-of v5, v2, Lads_mobile_sdk/i01;

    if-eqz v5, :cond_16d

    .line 72
    sget-object v5, Lads_mobile_sdk/f01;->a:Lcom/google/common/base/Splitter;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Ad failed to load: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lads_mobile_sdk/f01;->b(Ljava/lang/String;)V

    .line 73
    move-object v5, v2

    check-cast v5, Lads_mobile_sdk/i01;

    invoke-static {v5, v7}, Lads_mobile_sdk/xs3;->a(Lads_mobile_sdk/i01;Z)V

    .line 74
    iget-object v5, p0, Lads_mobile_sdk/zw2;->b:Lads_mobile_sdk/px2;

    iput-object p0, v0, Lads_mobile_sdk/yw2;->c:Lkotlinx/coroutines/flow/FlowCollector;

    iput-object p2, v0, Lads_mobile_sdk/yw2;->e:Ljava/lang/Object;

    iput-object v2, v0, Lads_mobile_sdk/yw2;->f:Lads_mobile_sdk/v01;

    iput-object p1, v0, Lads_mobile_sdk/yw2;->g:Lcom/google/android/libraries/ads/mobile/sdk/common/ResponseInfo;

    iput v4, v0, Lads_mobile_sdk/yw2;->b:I

    invoke-virtual {v5, v0}, Lads_mobile_sdk/px2;->c(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v1, :cond_146

    goto :goto_169

    :cond_146
    move-object v5, p0

    move-object v4, p2

    .line 75
    :goto_148
    iget-object p2, v5, Lads_mobile_sdk/zw2;->b:Lads_mobile_sdk/px2;

    check-cast v2, Lads_mobile_sdk/i01;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2, p1}, Lads_mobile_sdk/px2;->a(Lads_mobile_sdk/i01;Lcom/google/android/libraries/ads/mobile/sdk/common/ResponseInfo;)Lcom/google/android/libraries/ads/mobile/sdk/common/LoadAdError;

    move-result-object p1

    .line 76
    new-instance p2, Lads_mobile_sdk/qx2;

    invoke-direct {p2, p1}, Lads_mobile_sdk/qx2;-><init>(Lcom/google/android/libraries/ads/mobile/sdk/common/LoadAdError;)V

    move-object v2, v4

    .line 77
    :goto_159
    iput-object v8, v0, Lads_mobile_sdk/yw2;->c:Lkotlinx/coroutines/flow/FlowCollector;

    iput-object v8, v0, Lads_mobile_sdk/yw2;->e:Ljava/lang/Object;

    iput-object v8, v0, Lads_mobile_sdk/yw2;->f:Lads_mobile_sdk/v01;

    iput-object v8, v0, Lads_mobile_sdk/yw2;->g:Lcom/google/android/libraries/ads/mobile/sdk/common/ResponseInfo;

    iput v3, v0, Lads_mobile_sdk/yw2;->b:I

    invoke-interface {v2, p2, v0}, Lkotlinx/coroutines/flow/FlowCollector;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_16a

    :goto_169
    return-object v1

    .line 78
    :cond_16a
    :goto_16a
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 104
    :cond_16d
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1
.end method
