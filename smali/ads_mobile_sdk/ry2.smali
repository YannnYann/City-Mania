###### Class ads_mobile_sdk.ry2 (ads_mobile_sdk.ry2)
.class public final Lads_mobile_sdk/ry2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic a:Lads_mobile_sdk/wy2;

.field public final synthetic b:Lads_mobile_sdk/v01;

.field public final synthetic c:Lcom/google/android/libraries/ads/mobile/sdk/common/ResponseInfo;


# direct methods
.method public constructor <init>(Lcom/google/android/libraries/ads/mobile/sdk/common/ResponseInfo;Lads_mobile_sdk/wy2;Lads_mobile_sdk/v01;Lkotlin/coroutines/Continuation;)V
    .registers 5

    .line 2
    iput-object p2, p0, Lads_mobile_sdk/ry2;->a:Lads_mobile_sdk/wy2;

    iput-object p3, p0, Lads_mobile_sdk/ry2;->b:Lads_mobile_sdk/v01;

    iput-object p1, p0, Lads_mobile_sdk/ry2;->c:Lcom/google/android/libraries/ads/mobile/sdk/common/ResponseInfo;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 6

    .line 1
    new-instance p1, Lads_mobile_sdk/ry2;

    iget-object v0, p0, Lads_mobile_sdk/ry2;->a:Lads_mobile_sdk/wy2;

    iget-object v1, p0, Lads_mobile_sdk/ry2;->b:Lads_mobile_sdk/v01;

    iget-object v2, p0, Lads_mobile_sdk/ry2;->c:Lcom/google/android/libraries/ads/mobile/sdk/common/ResponseInfo;

    invoke-direct {p1, v2, v0, v1, p2}, Lads_mobile_sdk/ry2;-><init>(Lcom/google/android/libraries/ads/mobile/sdk/common/ResponseInfo;Lads_mobile_sdk/wy2;Lads_mobile_sdk/v01;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 1
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 2
    invoke-virtual {p0, p1, p2}, Lads_mobile_sdk/ry2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lads_mobile_sdk/ry2;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lads_mobile_sdk/ry2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 618
    iget-object p1, p0, Lads_mobile_sdk/ry2;->a:Lads_mobile_sdk/wy2;

    .line 619
    iget-object p1, p1, Lads_mobile_sdk/wy2;->y:Lads_mobile_sdk/ei1;

    if-eqz p1, :cond_19

    .line 620
    iget-object v0, p0, Lads_mobile_sdk/ry2;->b:Lads_mobile_sdk/v01;

    check-cast v0, Lads_mobile_sdk/i01;

    iget-object v1, p0, Lads_mobile_sdk/ry2;->c:Lcom/google/android/libraries/ads/mobile/sdk/common/ResponseInfo;

    .line 621
    invoke-static {v0, v1}, Lads_mobile_sdk/px2;->a(Lads_mobile_sdk/i01;Lcom/google/android/libraries/ads/mobile/sdk/common/ResponseInfo;)Lcom/google/android/libraries/ads/mobile/sdk/common/LoadAdError;

    move-result-object v0

    .line 622
    invoke-virtual {p1, v0}, Lads_mobile_sdk/ei1;->a(Lcom/google/android/libraries/ads/mobile/sdk/common/LoadAdError;)V

    .line 623
    :cond_19
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
