###### Class ads_mobile_sdk.xl0 (ads_mobile_sdk.xl0)
.class public final Lads_mobile_sdk/xl0;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic a:Lads_mobile_sdk/fm0;

.field public final synthetic b:Lcom/google/android/libraries/ads/mobile/sdk/common/AdValue;


# direct methods
.method public constructor <init>(Lkotlin/coroutines/Continuation;Lads_mobile_sdk/fm0;Lcom/google/android/libraries/ads/mobile/sdk/common/AdValue;)V
    .registers 4

    .line 1
    iput-object p2, p0, Lads_mobile_sdk/xl0;->a:Lads_mobile_sdk/fm0;

    iput-object p3, p0, Lads_mobile_sdk/xl0;->b:Lcom/google/android/libraries/ads/mobile/sdk/common/AdValue;

    const/4 p2, 0x2

    invoke-direct {p0, p2, p1}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 5

    .line 1
    new-instance p1, Lads_mobile_sdk/xl0;

    iget-object v0, p0, Lads_mobile_sdk/xl0;->a:Lads_mobile_sdk/fm0;

    iget-object v1, p0, Lads_mobile_sdk/xl0;->b:Lcom/google/android/libraries/ads/mobile/sdk/common/AdValue;

    invoke-direct {p1, p2, v0, v1}, Lads_mobile_sdk/xl0;-><init>(Lkotlin/coroutines/Continuation;Lads_mobile_sdk/fm0;Lcom/google/android/libraries/ads/mobile/sdk/common/AdValue;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    .line 1
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 2
    new-instance p1, Lads_mobile_sdk/xl0;

    iget-object v0, p0, Lads_mobile_sdk/xl0;->a:Lads_mobile_sdk/fm0;

    iget-object v1, p0, Lads_mobile_sdk/xl0;->b:Lcom/google/android/libraries/ads/mobile/sdk/common/AdValue;

    invoke-direct {p1, p2, v0, v1}, Lads_mobile_sdk/xl0;-><init>(Lkotlin/coroutines/Continuation;Lads_mobile_sdk/fm0;Lcom/google/android/libraries/ads/mobile/sdk/common/AdValue;)V

    .line 3
    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lads_mobile_sdk/xl0;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 618
    iget-object p1, p0, Lads_mobile_sdk/xl0;->a:Lads_mobile_sdk/fm0;

    invoke-virtual {p1}, Lads_mobile_sdk/fm0;->f()Lcom/google/android/libraries/ads/mobile/sdk/common/AdEventCallback;

    move-result-object p1

    if-eqz p1, :cond_13

    iget-object v0, p0, Lads_mobile_sdk/xl0;->b:Lcom/google/android/libraries/ads/mobile/sdk/common/AdValue;

    invoke-interface {p1, v0}, Lcom/google/android/libraries/ads/mobile/sdk/common/AdEventCallback;->onAdPaid(Lcom/google/android/libraries/ads/mobile/sdk/common/AdValue;)V

    .line 619
    :cond_13
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
