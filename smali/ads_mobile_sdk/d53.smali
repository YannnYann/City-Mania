###### Class ads_mobile_sdk.d53 (ads_mobile_sdk.d53)
.class public final Lads_mobile_sdk/d53;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/ai1;


# instance fields
.field public final a:Lads_mobile_sdk/b53;

.field public final b:Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;

.field public final c:Lads_mobile_sdk/j53;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/b53;Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;Lads_mobile_sdk/j53;)V
    .registers 5

    .line 1
    const-string v0, "requestThrottlerV2"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "baseRequest"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "requestType"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lads_mobile_sdk/d53;->a:Lads_mobile_sdk/b53;

    .line 14
    iput-object p2, p0, Lads_mobile_sdk/d53;->b:Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;

    .line 15
    iput-object p3, p0, Lads_mobile_sdk/d53;->c:Lads_mobile_sdk/j53;

    return-void
.end method


# virtual methods
.method public final r(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 8

    .line 1
    instance-of v0, p1, Lads_mobile_sdk/c53;

    if-eqz v0, :cond_13

    move-object v0, p1

    check-cast v0, Lads_mobile_sdk/c53;

    iget v1, v0, Lads_mobile_sdk/c53;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/c53;->d:I

    goto :goto_18

    :cond_13
    new-instance v0, Lads_mobile_sdk/c53;

    invoke-direct {v0, p0, p1}, Lads_mobile_sdk/c53;-><init>(Lads_mobile_sdk/d53;Lkotlin/coroutines/Continuation;)V

    :goto_18
    iget-object p1, v0, Lads_mobile_sdk/c53;->b:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 18
    iget v2, v0, Lads_mobile_sdk/c53;->d:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3a

    if-eq v2, v4, :cond_34

    if-ne v2, v3, :cond_2c

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_75

    :cond_2c
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_34
    iget-object v2, v0, Lads_mobile_sdk/c53;->a:Lads_mobile_sdk/d53;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_56

    :cond_3a
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 20
    iget-object p1, p0, Lads_mobile_sdk/d53;->a:Lads_mobile_sdk/b53;

    iget-object v2, p0, Lads_mobile_sdk/d53;->b:Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;

    invoke-virtual {v2}, Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;->getAdUnitId()Ljava/lang/String;

    move-result-object v2

    iget-object v5, p0, Lads_mobile_sdk/d53;->c:Lads_mobile_sdk/j53;

    iput-object p0, v0, Lads_mobile_sdk/c53;->a:Lads_mobile_sdk/d53;

    iput v4, v0, Lads_mobile_sdk/c53;->d:I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    invoke-static {p1, v2, v5, v0}, Lads_mobile_sdk/b53;->a(Lads_mobile_sdk/b53;Ljava/lang/String;Lads_mobile_sdk/j53;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_55

    goto :goto_74

    :cond_55
    move-object v2, p0

    .line 22
    :goto_56
    check-cast p1, Lads_mobile_sdk/zr0;

    .line 25
    sget-object v4, Lads_mobile_sdk/zr0;->f:Lads_mobile_sdk/zr0;

    if-ne p1, v4, :cond_78

    .line 26
    iget-object p1, v2, Lads_mobile_sdk/d53;->a:Lads_mobile_sdk/b53;

    iget-object v4, v2, Lads_mobile_sdk/d53;->b:Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;

    invoke-virtual {v4}, Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;->getAdUnitId()Ljava/lang/String;

    move-result-object v4

    iget-object v2, v2, Lads_mobile_sdk/d53;->c:Lads_mobile_sdk/j53;

    const/4 v5, 0x0

    iput-object v5, v0, Lads_mobile_sdk/c53;->a:Lads_mobile_sdk/d53;

    iput v3, v0, Lads_mobile_sdk/c53;->d:I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    invoke-static {p1, v4, v2, v0}, Lads_mobile_sdk/b53;->c(Lads_mobile_sdk/b53;Ljava/lang/String;Lads_mobile_sdk/j53;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_75

    :goto_74
    return-object v1

    .line 28
    :cond_75
    :goto_75
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    :cond_78
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
