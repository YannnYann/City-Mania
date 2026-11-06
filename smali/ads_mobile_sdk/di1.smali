###### Class ads_mobile_sdk.di1 (ads_mobile_sdk.di1)
.class public final Lads_mobile_sdk/di1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic a:Lads_mobile_sdk/ck1;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/ck1;Lkotlin/coroutines/Continuation;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lads_mobile_sdk/di1;->a:Lads_mobile_sdk/ck1;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 4

    .line 1
    new-instance p1, Lads_mobile_sdk/di1;

    iget-object v0, p0, Lads_mobile_sdk/di1;->a:Lads_mobile_sdk/ck1;

    invoke-direct {p1, v0, p2}, Lads_mobile_sdk/di1;-><init>(Lads_mobile_sdk/ck1;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 1
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 2
    new-instance p1, Lads_mobile_sdk/di1;

    iget-object v0, p0, Lads_mobile_sdk/di1;->a:Lads_mobile_sdk/ck1;

    invoke-direct {p1, v0, p2}, Lads_mobile_sdk/di1;-><init>(Lads_mobile_sdk/ck1;Lkotlin/coroutines/Continuation;)V

    .line 3
    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lads_mobile_sdk/di1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 35
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lads_mobile_sdk/di1;->a:Lads_mobile_sdk/ck1;

    .line 36
    new-instance v0, Lads_mobile_sdk/o53;

    invoke-virtual {p1}, Lads_mobile_sdk/ck1;->m()Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;

    move-result-object v1

    .line 37
    iget-object v2, p1, Lads_mobile_sdk/ck1;->n:Landroid/view/View;

    .line 38
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "getContext(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v2, v1}, Lads_mobile_sdk/o53;-><init>(Landroid/content/Context;Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;)V

    .line 39
    iget-object p1, p1, Lads_mobile_sdk/ck1;->n:Landroid/view/View;

    .line 40
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-object v0
.end method
