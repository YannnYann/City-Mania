###### Class ads_mobile_sdk.cx2 (ads_mobile_sdk.cx2)
.class public final Lads_mobile_sdk/cx2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# instance fields
.field public a:I

.field public synthetic b:Lkotlinx/coroutines/flow/FlowCollector;

.field public synthetic c:Ljava/lang/Throwable;

.field public final synthetic d:Lads_mobile_sdk/px2;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/px2;Lkotlin/coroutines/Continuation;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lads_mobile_sdk/cx2;->d:Lads_mobile_sdk/px2;

    const/4 p1, 0x3

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6

    .line 1
    check-cast p1, Lkotlinx/coroutines/flow/FlowCollector;

    check-cast p2, Ljava/lang/Throwable;

    check-cast p3, Lkotlin/coroutines/Continuation;

    .line 2
    new-instance v0, Lads_mobile_sdk/cx2;

    iget-object v1, p0, Lads_mobile_sdk/cx2;->d:Lads_mobile_sdk/px2;

    invoke-direct {v0, v1, p3}, Lads_mobile_sdk/cx2;-><init>(Lads_mobile_sdk/px2;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lads_mobile_sdk/cx2;->b:Lkotlinx/coroutines/flow/FlowCollector;

    iput-object p2, v0, Lads_mobile_sdk/cx2;->c:Ljava/lang/Throwable;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, p1}, Lads_mobile_sdk/cx2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 9

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 192
    iget v1, p0, Lads_mobile_sdk/cx2;->a:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_22

    if-eq v1, v3, :cond_1a

    if-ne v1, v2, :cond_12

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_72

    :cond_12
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1a
    iget-object v1, p0, Lads_mobile_sdk/cx2;->c:Ljava/lang/Throwable;

    iget-object v3, p0, Lads_mobile_sdk/cx2;->b:Lkotlinx/coroutines/flow/FlowCollector;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_3e

    :cond_22
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lads_mobile_sdk/cx2;->b:Lkotlinx/coroutines/flow/FlowCollector;

    iget-object v1, p0, Lads_mobile_sdk/cx2;->c:Ljava/lang/Throwable;

    .line 193
    const-string v4, "Ad failed to load"

    invoke-static {v4, v1}, Lads_mobile_sdk/f01;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 194
    iget-object v4, p0, Lads_mobile_sdk/cx2;->d:Lads_mobile_sdk/px2;

    iput-object p1, p0, Lads_mobile_sdk/cx2;->b:Lkotlinx/coroutines/flow/FlowCollector;

    iput-object v1, p0, Lads_mobile_sdk/cx2;->c:Ljava/lang/Throwable;

    iput v3, p0, Lads_mobile_sdk/cx2;->a:I

    invoke-virtual {v4, p0}, Lads_mobile_sdk/px2;->c(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v0, :cond_3d

    goto :goto_71

    :cond_3d
    move-object v3, p1

    .line 195
    :goto_3e
    iget-object p1, p0, Lads_mobile_sdk/cx2;->d:Lads_mobile_sdk/px2;

    new-instance v4, Lads_mobile_sdk/j01;

    const/4 v5, 0x6

    const/4 v6, 0x0

    invoke-direct {v4, v1, v6, v6, v5}, Lads_mobile_sdk/j01;-><init>(Ljava/lang/Throwable;Lads_mobile_sdk/kk1;Ljava/lang/String;I)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p1, "error"

    invoke-static {v4, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 196
    new-instance p1, Lcom/google/android/libraries/ads/mobile/sdk/common/LoadAdError;

    .line 197
    invoke-virtual {v4}, Lads_mobile_sdk/j01;->a()Lads_mobile_sdk/kk1;

    move-result-object v1

    invoke-virtual {v1}, Lads_mobile_sdk/kk1;->d()Lcom/google/android/libraries/ads/mobile/sdk/common/LoadAdError$ErrorCode;

    move-result-object v1

    .line 198
    invoke-static {v4}, Lads_mobile_sdk/h01;->a(Lads_mobile_sdk/i01;)Ljava/lang/String;

    move-result-object v4

    .line 199
    invoke-direct {p1, v1, v4, v6}, Lcom/google/android/libraries/ads/mobile/sdk/common/LoadAdError;-><init>(Lcom/google/android/libraries/ads/mobile/sdk/common/LoadAdError$ErrorCode;Ljava/lang/String;Lcom/google/android/libraries/ads/mobile/sdk/common/ResponseInfo;)V

    .line 200
    new-instance v1, Lads_mobile_sdk/qx2;

    invoke-direct {v1, p1}, Lads_mobile_sdk/qx2;-><init>(Lcom/google/android/libraries/ads/mobile/sdk/common/LoadAdError;)V

    iput-object v6, p0, Lads_mobile_sdk/cx2;->b:Lkotlinx/coroutines/flow/FlowCollector;

    iput-object v6, p0, Lads_mobile_sdk/cx2;->c:Ljava/lang/Throwable;

    iput v2, p0, Lads_mobile_sdk/cx2;->a:I

    invoke-interface {v3, v1, p0}, Lkotlinx/coroutines/flow/FlowCollector;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_72

    :goto_71
    return-object v0

    .line 201
    :cond_72
    :goto_72
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
