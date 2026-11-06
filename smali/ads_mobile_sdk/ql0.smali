###### Class ads_mobile_sdk.ql0 (ads_mobile_sdk.ql0)
.class public final Lads_mobile_sdk/ql0;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic a:Lads_mobile_sdk/fm0;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/fm0;Lkotlin/coroutines/Continuation;)V
    .registers 3

    .line 2
    iput-object p1, p0, Lads_mobile_sdk/ql0;->a:Lads_mobile_sdk/fm0;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 4

    .line 1
    new-instance p1, Lads_mobile_sdk/ql0;

    iget-object v0, p0, Lads_mobile_sdk/ql0;->a:Lads_mobile_sdk/fm0;

    invoke-direct {p1, v0, p2}, Lads_mobile_sdk/ql0;-><init>(Lads_mobile_sdk/fm0;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 1
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 2
    new-instance p1, Lads_mobile_sdk/ql0;

    iget-object v0, p0, Lads_mobile_sdk/ql0;->a:Lads_mobile_sdk/fm0;

    invoke-direct {p1, v0, p2}, Lads_mobile_sdk/ql0;-><init>(Lads_mobile_sdk/fm0;Lkotlin/coroutines/Continuation;)V

    .line 3
    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lads_mobile_sdk/ql0;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 618
    iget-object p1, p0, Lads_mobile_sdk/ql0;->a:Lads_mobile_sdk/fm0;

    invoke-virtual {p1}, Lads_mobile_sdk/fm0;->f()Lcom/google/android/libraries/ads/mobile/sdk/common/AdEventCallback;

    move-result-object p1

    if-eqz p1, :cond_11

    invoke-interface {p1}, Lcom/google/android/libraries/ads/mobile/sdk/common/AdEventCallback;->onAdClicked()V

    .line 619
    :cond_11
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
