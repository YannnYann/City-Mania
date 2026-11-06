###### Class ads_mobile_sdk.gy2 (ads_mobile_sdk.gy2)
.class public final Lads_mobile_sdk/gy2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic a:Lads_mobile_sdk/wy2;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/wy2;Lkotlin/coroutines/Continuation;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lads_mobile_sdk/gy2;->a:Lads_mobile_sdk/wy2;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 4

    .line 1
    new-instance p1, Lads_mobile_sdk/gy2;

    iget-object v0, p0, Lads_mobile_sdk/gy2;->a:Lads_mobile_sdk/wy2;

    invoke-direct {p1, v0, p2}, Lads_mobile_sdk/gy2;-><init>(Lads_mobile_sdk/wy2;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 1
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 2
    new-instance p1, Lads_mobile_sdk/gy2;

    iget-object v0, p0, Lads_mobile_sdk/gy2;->a:Lads_mobile_sdk/wy2;

    invoke-direct {p1, v0, p2}, Lads_mobile_sdk/gy2;-><init>(Lads_mobile_sdk/wy2;Lkotlin/coroutines/Continuation;)V

    .line 3
    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lads_mobile_sdk/gy2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 326
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 327
    iget-object p1, p0, Lads_mobile_sdk/gy2;->a:Lads_mobile_sdk/wy2;

    .line 328
    iget-object v0, p1, Lads_mobile_sdk/wy2;->t:Lcom/google/android/libraries/ads/mobile/sdk/banner/BannerAdRequest;

    .line 329
    invoke-virtual {v0}, Lcom/google/android/libraries/ads/mobile/sdk/banner/BannerAdRequest;->getAdSize()Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;

    move-result-object v0

    iget-object v1, p0, Lads_mobile_sdk/gy2;->a:Lads_mobile_sdk/wy2;

    .line 330
    iget-object v1, v1, Lads_mobile_sdk/wy2;->n:Landroid/content/Context;

    .line 331
    invoke-virtual {p1, v1, v0}, Lads_mobile_sdk/wy2;->a(Landroid/content/Context;Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;)Lads_mobile_sdk/o53;

    move-result-object v0

    .line 332
    iput-object v0, p1, Lads_mobile_sdk/wy2;->z:Lads_mobile_sdk/o53;

    .line 333
    iget-object p1, p0, Lads_mobile_sdk/gy2;->a:Lads_mobile_sdk/wy2;

    .line 334
    iget-object v0, p1, Lads_mobile_sdk/wy2;->B:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    if-eqz v0, :cond_2c

    .line 335
    iget-object p1, p1, Lads_mobile_sdk/wy2;->z:Lads_mobile_sdk/o53;

    if-nez p1, :cond_29

    .line 336
    const-string p1, "_adFrame"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v1

    :cond_29
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 337
    :cond_2c
    iget-object p1, p0, Lads_mobile_sdk/gy2;->a:Lads_mobile_sdk/wy2;

    .line 338
    iput-object v1, p1, Lads_mobile_sdk/wy2;->B:Landroid/view/ViewGroup;

    .line 339
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
