###### Class ads_mobile_sdk.vy2 (ads_mobile_sdk.vy2)
.class public final Lads_mobile_sdk/vy2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public a:I

.field public final synthetic b:Lads_mobile_sdk/ck1;

.field public final synthetic c:Lads_mobile_sdk/wy2;

.field public final synthetic d:Lads_mobile_sdk/ck1;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/ck1;Lads_mobile_sdk/wy2;Lads_mobile_sdk/ck1;Lkotlin/coroutines/Continuation;)V
    .registers 5

    .line 1
    iput-object p1, p0, Lads_mobile_sdk/vy2;->b:Lads_mobile_sdk/ck1;

    iput-object p2, p0, Lads_mobile_sdk/vy2;->c:Lads_mobile_sdk/wy2;

    iput-object p3, p0, Lads_mobile_sdk/vy2;->d:Lads_mobile_sdk/ck1;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 6

    .line 1
    new-instance p1, Lads_mobile_sdk/vy2;

    iget-object v0, p0, Lads_mobile_sdk/vy2;->b:Lads_mobile_sdk/ck1;

    iget-object v1, p0, Lads_mobile_sdk/vy2;->c:Lads_mobile_sdk/wy2;

    iget-object v2, p0, Lads_mobile_sdk/vy2;->d:Lads_mobile_sdk/ck1;

    invoke-direct {p1, v0, v1, v2, p2}, Lads_mobile_sdk/vy2;-><init>(Lads_mobile_sdk/ck1;Lads_mobile_sdk/wy2;Lads_mobile_sdk/ck1;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 1
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 2
    invoke-virtual {p0, p1, p2}, Lads_mobile_sdk/vy2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lads_mobile_sdk/vy2;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lads_mobile_sdk/vy2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 279
    iget v1, p0, Lads_mobile_sdk/vy2;->a:I

    const/4 v2, 0x1

    if-eqz v1, :cond_17

    if-ne v1, v2, :cond_f

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_32

    :cond_f
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_17
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 282
    iget-object p1, p0, Lads_mobile_sdk/vy2;->b:Lads_mobile_sdk/ck1;

    if-eqz p1, :cond_27

    invoke-virtual {p1}, Lads_mobile_sdk/ck1;->n()Lads_mobile_sdk/g33;

    move-result-object p1

    if-eqz p1, :cond_27

    invoke-interface {p1}, Lads_mobile_sdk/g33;->f()V

    .line 284
    :cond_27
    iget-object p1, p0, Lads_mobile_sdk/vy2;->c:Lads_mobile_sdk/wy2;

    iput v2, p0, Lads_mobile_sdk/vy2;->a:I

    invoke-virtual {p1, p0}, Lads_mobile_sdk/wy2;->d(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_32

    return-object v0

    .line 285
    :cond_32
    :goto_32
    check-cast p1, Lads_mobile_sdk/o53;

    .line 291
    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 292
    iget-object v0, p0, Lads_mobile_sdk/vy2;->d:Lads_mobile_sdk/ck1;

    invoke-virtual {v0}, Lads_mobile_sdk/ck1;->m()Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;

    move-result-object v0

    invoke-virtual {p1, v0}, Lads_mobile_sdk/o53;->a(Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;)V

    .line 294
    iget-object v0, p0, Lads_mobile_sdk/vy2;->d:Lads_mobile_sdk/ck1;

    invoke-virtual {v0}, Lads_mobile_sdk/ck1;->o()Landroid/view/View;

    move-result-object v0

    .line 295
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 296
    instance-of v2, v1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_82

    .line 297
    iget-object v2, p0, Lads_mobile_sdk/vy2;->c:Lads_mobile_sdk/wy2;

    invoke-virtual {v2}, Lads_mobile_sdk/wy2;->e()Lads_mobile_sdk/js1;

    move-result-object v2

    invoke-virtual {v2}, Lads_mobile_sdk/js1;->a()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lads_mobile_sdk/ck1;

    invoke-virtual {v2}, Lads_mobile_sdk/ci1;->getResponseInfo()Lcom/google/android/libraries/ads/mobile/sdk/common/ResponseInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/libraries/ads/mobile/sdk/common/ResponseInfo;->getAdapterClassName()Ljava/lang/String;

    move-result-object v2

    .line 298
    sget-object v3, Lads_mobile_sdk/f01;->a:Lcom/google/common/base/Splitter;

    .line 299
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Banner view provided from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " already has a parent view. Removing its old parent."

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 300
    invoke-static {v2}, Lads_mobile_sdk/f01;->c(Ljava/lang/String;)V

    .line 303
    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 305
    :cond_82
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 306
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
