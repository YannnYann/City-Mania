###### Class ads_mobile_sdk.mx2 (ads_mobile_sdk.mx2)
.class public final Lads_mobile_sdk/mx2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic a:Lads_mobile_sdk/ei1;

.field public final synthetic b:Lads_mobile_sdk/sx2;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/ei1;Lads_mobile_sdk/sx2;Lkotlin/coroutines/Continuation;)V
    .registers 4

    .line 2
    iput-object p1, p0, Lads_mobile_sdk/mx2;->a:Lads_mobile_sdk/ei1;

    iput-object p2, p0, Lads_mobile_sdk/mx2;->b:Lads_mobile_sdk/sx2;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 5

    .line 1
    new-instance p1, Lads_mobile_sdk/mx2;

    iget-object v0, p0, Lads_mobile_sdk/mx2;->a:Lads_mobile_sdk/ei1;

    iget-object v1, p0, Lads_mobile_sdk/mx2;->b:Lads_mobile_sdk/sx2;

    invoke-direct {p1, v0, v1, p2}, Lads_mobile_sdk/mx2;-><init>(Lads_mobile_sdk/ei1;Lads_mobile_sdk/sx2;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    .line 1
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 2
    new-instance p1, Lads_mobile_sdk/mx2;

    iget-object v0, p0, Lads_mobile_sdk/mx2;->a:Lads_mobile_sdk/ei1;

    iget-object v1, p0, Lads_mobile_sdk/mx2;->b:Lads_mobile_sdk/sx2;

    invoke-direct {p1, v0, v1, p2}, Lads_mobile_sdk/mx2;-><init>(Lads_mobile_sdk/ei1;Lads_mobile_sdk/sx2;Lkotlin/coroutines/Continuation;)V

    .line 3
    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lads_mobile_sdk/mx2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 618
    iget-object p1, p0, Lads_mobile_sdk/mx2;->a:Lads_mobile_sdk/ei1;

    iget-object v0, p0, Lads_mobile_sdk/mx2;->b:Lads_mobile_sdk/sx2;

    check-cast v0, Lads_mobile_sdk/qx2;

    .line 619
    iget-object v0, v0, Lads_mobile_sdk/qx2;->a:Lcom/google/android/libraries/ads/mobile/sdk/common/LoadAdError;

    .line 620
    invoke-virtual {p1, v0}, Lads_mobile_sdk/ei1;->a(Lcom/google/android/libraries/ads/mobile/sdk/common/LoadAdError;)V

    .line 621
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
