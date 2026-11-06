###### Class com.unity3d.ads.core.domain.billing.ProductDetailsFetcherWithFallback (com.unity3d.ads.core.domain.billing.ProductDetailsFetcherWithFallback)
.class public final Lcom/unity3d/ads/core/domain/billing/ProductDetailsFetcherWithFallback;
.super Ljava/lang/Object;
.source "ProductDetailsFetcherWithFallback.kt"

# interfaces
.implements Lcom/unity3d/ads/core/domain/billing/ProductDetailsFetcher;


# instance fields
.field private final primaryFetcher:Lcom/unity3d/ads/core/domain/billing/ProductDetailsFetcher;

.field private final secondaryFetcher:Lcom/unity3d/ads/core/domain/billing/ProductDetailsFetcher;


# direct methods
.method public constructor <init>(Lcom/unity3d/ads/core/domain/billing/ProductDetailsFetcher;Lcom/unity3d/ads/core/domain/billing/ProductDetailsFetcher;)V
    .registers 4

    const-string v0, "primaryFetcher"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "secondaryFetcher"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object p1, p0, Lcom/unity3d/ads/core/domain/billing/ProductDetailsFetcherWithFallback;->primaryFetcher:Lcom/unity3d/ads/core/domain/billing/ProductDetailsFetcher;

    .line 9
    iput-object p2, p0, Lcom/unity3d/ads/core/domain/billing/ProductDetailsFetcherWithFallback;->secondaryFetcher:Lcom/unity3d/ads/core/domain/billing/ProductDetailsFetcher;

    return-void
.end method


# virtual methods
.method public fetchProductDetails(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/unity3d/ads/core/domain/billing/ProductDetailsResult;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lcom/unity3d/ads/core/domain/billing/ProductDetailsFetcherWithFallback$fetchProductDetails$1;

    if-eqz v0, :cond_13

    move-object v0, p2

    check-cast v0, Lcom/unity3d/ads/core/domain/billing/ProductDetailsFetcherWithFallback$fetchProductDetails$1;

    iget v1, v0, Lcom/unity3d/ads/core/domain/billing/ProductDetailsFetcherWithFallback$fetchProductDetails$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/unity3d/ads/core/domain/billing/ProductDetailsFetcherWithFallback$fetchProductDetails$1;->label:I

    goto :goto_18

    :cond_13
    new-instance v0, Lcom/unity3d/ads/core/domain/billing/ProductDetailsFetcherWithFallback$fetchProductDetails$1;

    invoke-direct {v0, p0, p2}, Lcom/unity3d/ads/core/domain/billing/ProductDetailsFetcherWithFallback$fetchProductDetails$1;-><init>(Lcom/unity3d/ads/core/domain/billing/ProductDetailsFetcherWithFallback;Lkotlin/coroutines/Continuation;)V

    :goto_18
    iget-object p2, v0, Lcom/unity3d/ads/core/domain/billing/ProductDetailsFetcherWithFallback$fetchProductDetails$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 12
    iget v2, v0, Lcom/unity3d/ads/core/domain/billing/ProductDetailsFetcherWithFallback$fetchProductDetails$1;->label:I

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v2, :cond_47

    if-eq v2, v5, :cond_3f

    if-eq v2, v4, :cond_3b

    if-ne v2, v3, :cond_33

    iget-object p1, v0, Lcom/unity3d/ads/core/domain/billing/ProductDetailsFetcherWithFallback$fetchProductDetails$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lcom/unity3d/ads/core/domain/billing/ProductDetailsResult;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_85

    :cond_33
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3b
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    return-object p2

    :cond_3f
    iget-object p1, v0, Lcom/unity3d/ads/core/domain/billing/ProductDetailsFetcherWithFallback$fetchProductDetails$1;->L$0:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_57

    :cond_47
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 16
    iget-object p2, p0, Lcom/unity3d/ads/core/domain/billing/ProductDetailsFetcherWithFallback;->primaryFetcher:Lcom/unity3d/ads/core/domain/billing/ProductDetailsFetcher;

    iput-object p1, v0, Lcom/unity3d/ads/core/domain/billing/ProductDetailsFetcherWithFallback$fetchProductDetails$1;->L$0:Ljava/lang/Object;

    iput v5, v0, Lcom/unity3d/ads/core/domain/billing/ProductDetailsFetcherWithFallback$fetchProductDetails$1;->label:I

    invoke-interface {p2, p1, v0}, Lcom/unity3d/ads/core/domain/billing/ProductDetailsFetcher;->fetchProductDetails(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_57

    goto :goto_81

    .line 12
    :cond_57
    :goto_57
    check-cast p2, Lcom/unity3d/ads/core/domain/billing/ProductDetailsResult;

    .line 17
    instance-of v2, p2, Lcom/unity3d/ads/core/domain/billing/ProductDetailsResult$Success;

    if-eqz v2, :cond_5e

    return-object p2

    .line 18
    :cond_5e
    instance-of v2, p2, Lcom/unity3d/ads/core/domain/billing/ProductDetailsResult$NotFound;

    if-eqz v2, :cond_71

    .line 20
    iget-object p2, p0, Lcom/unity3d/ads/core/domain/billing/ProductDetailsFetcherWithFallback;->secondaryFetcher:Lcom/unity3d/ads/core/domain/billing/ProductDetailsFetcher;

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/unity3d/ads/core/domain/billing/ProductDetailsFetcherWithFallback$fetchProductDetails$1;->L$0:Ljava/lang/Object;

    iput v4, v0, Lcom/unity3d/ads/core/domain/billing/ProductDetailsFetcherWithFallback$fetchProductDetails$1;->label:I

    invoke-interface {p2, p1, v0}, Lcom/unity3d/ads/core/domain/billing/ProductDetailsFetcher;->fetchProductDetails(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_70

    goto :goto_81

    :cond_70
    return-object p1

    .line 22
    :cond_71
    instance-of v2, p2, Lcom/unity3d/ads/core/domain/billing/ProductDetailsResult$Failure;

    if-eqz v2, :cond_8d

    .line 24
    iget-object v2, p0, Lcom/unity3d/ads/core/domain/billing/ProductDetailsFetcherWithFallback;->secondaryFetcher:Lcom/unity3d/ads/core/domain/billing/ProductDetailsFetcher;

    iput-object p2, v0, Lcom/unity3d/ads/core/domain/billing/ProductDetailsFetcherWithFallback$fetchProductDetails$1;->L$0:Ljava/lang/Object;

    iput v3, v0, Lcom/unity3d/ads/core/domain/billing/ProductDetailsFetcherWithFallback$fetchProductDetails$1;->label:I

    invoke-interface {v2, p1, v0}, Lcom/unity3d/ads/core/domain/billing/ProductDetailsFetcher;->fetchProductDetails(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_82

    :goto_81
    return-object v1

    :cond_82
    move-object v6, p2

    move-object p2, p1

    move-object p1, v6

    .line 12
    :goto_85
    check-cast p2, Lcom/unity3d/ads/core/domain/billing/ProductDetailsResult;

    .line 26
    instance-of v0, p2, Lcom/unity3d/ads/core/domain/billing/ProductDetailsResult$Success;

    if-eqz v0, :cond_8c

    return-object p2

    :cond_8c
    return-object p1

    .line 16
    :cond_8d
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1
.end method

###### Class com.unity3d.ads.core.domain.billing.ProductDetailsFetcherWithFallback.AnonymousClass1 (com.unity3d.ads.core.domain.billing.ProductDetailsFetcherWithFallback$fetchProductDetails$1)
.class final Lcom/unity3d/ads/core/domain/billing/ProductDetailsFetcherWithFallback$fetchProductDetails$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "ProductDetailsFetcherWithFallback.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity3d/ads/core/domain/billing/ProductDetailsFetcherWithFallback;->fetchProductDetails(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.unity3d.ads.core.domain.billing.ProductDetailsFetcherWithFallback"
    f = "ProductDetailsFetcherWithFallback.kt"
    l = {
        0x10,
        0x14,
        0x18
    }
    m = "fetchProductDetails"
.end annotation


# instance fields
.field L$0:Ljava/lang/Object;

.field label:I

.field synthetic result:Ljava/lang/Object;

.field final synthetic this$0:Lcom/unity3d/ads/core/domain/billing/ProductDetailsFetcherWithFallback;


# direct methods
.method public constructor <init>(Lcom/unity3d/ads/core/domain/billing/ProductDetailsFetcherWithFallback;Lkotlin/coroutines/Continuation;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/unity3d/ads/core/domain/billing/ProductDetailsFetcherWithFallback;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/unity3d/ads/core/domain/billing/ProductDetailsFetcherWithFallback$fetchProductDetails$1;",
            ">;)V"
        }
    .end annotation

    .line 0
    iput-object p1, p0, Lcom/unity3d/ads/core/domain/billing/ProductDetailsFetcherWithFallback$fetchProductDetails$1;->this$0:Lcom/unity3d/ads/core/domain/billing/ProductDetailsFetcherWithFallback;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    iput-object p1, p0, Lcom/unity3d/ads/core/domain/billing/ProductDetailsFetcherWithFallback$fetchProductDetails$1;->result:Ljava/lang/Object;

    iget p1, p0, Lcom/unity3d/ads/core/domain/billing/ProductDetailsFetcherWithFallback$fetchProductDetails$1;->label:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/unity3d/ads/core/domain/billing/ProductDetailsFetcherWithFallback$fetchProductDetails$1;->label:I

    iget-object p1, p0, Lcom/unity3d/ads/core/domain/billing/ProductDetailsFetcherWithFallback$fetchProductDetails$1;->this$0:Lcom/unity3d/ads/core/domain/billing/ProductDetailsFetcherWithFallback;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p0}, Lcom/unity3d/ads/core/domain/billing/ProductDetailsFetcherWithFallback;->fetchProductDetails(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
