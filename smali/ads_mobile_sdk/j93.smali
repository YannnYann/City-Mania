###### Class ads_mobile_sdk.j93 (ads_mobile_sdk.j93)
.class public final Lads_mobile_sdk/j93;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/rh3;


# instance fields
.field public final a:Ljava/util/Optional;

.field public final b:Ljava/util/Optional;

.field public final c:Lads_mobile_sdk/b93;

.field public final d:Lads_mobile_sdk/j53;

.field public final e:Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;

.field public final f:Ljava/util/List;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/ex0;Ljava/util/Optional;Ljava/util/Optional;Lads_mobile_sdk/b93;Lads_mobile_sdk/j53;Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;)V
    .registers 8

    .line 1
    const-string v0, "flags"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "optionalBannerRequest"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "optionalSignalRequest"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rtbAdapterSignalCollector"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "requestType"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adRequest"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p2, p0, Lads_mobile_sdk/j93;->a:Ljava/util/Optional;

    .line 27
    iput-object p3, p0, Lads_mobile_sdk/j93;->b:Ljava/util/Optional;

    .line 28
    iput-object p4, p0, Lads_mobile_sdk/j93;->c:Lads_mobile_sdk/b93;

    .line 29
    iput-object p5, p0, Lads_mobile_sdk/j93;->d:Lads_mobile_sdk/j53;

    .line 30
    iput-object p6, p0, Lads_mobile_sdk/j93;->e:Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;

    .line 34
    invoke-virtual {p1}, Lads_mobile_sdk/ex0;->G0()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lads_mobile_sdk/j93;->f:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final f()Lads_mobile_sdk/y11;
    .registers 2

    .line 1
    sget-object v0, Lads_mobile_sdk/y11;->R:Lads_mobile_sdk/y11;

    return-object v0
.end method

.method public final s(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 8

    .line 1
    instance-of v0, p1, Lads_mobile_sdk/i93;

    if-eqz v0, :cond_13

    move-object v0, p1

    check-cast v0, Lads_mobile_sdk/i93;

    iget v1, v0, Lads_mobile_sdk/i93;->c:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/i93;->c:I

    goto :goto_18

    :cond_13
    new-instance v0, Lads_mobile_sdk/i93;

    invoke-direct {v0, p0, p1}, Lads_mobile_sdk/i93;-><init>(Lads_mobile_sdk/j93;Lkotlin/coroutines/Continuation;)V

    :goto_18
    iget-object p1, v0, Lads_mobile_sdk/i93;->a:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 36
    iget v2, v0, Lads_mobile_sdk/i93;->c:I

    const/4 v3, 0x1

    if-eqz v2, :cond_31

    if-ne v2, v3, :cond_29

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_80

    :cond_29
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_31
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 37
    iget-object p1, p0, Lads_mobile_sdk/j93;->b:Ljava/util/Optional;

    invoke-static {p1}, Lkotlin/jvm/optionals/OptionalsKt;->getOrNull(Ljava/util/Optional;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/libraries/ads/mobile/sdk/signal/SignalRequest;

    if-eqz p1, :cond_61

    .line 42
    iget-object v2, p0, Lads_mobile_sdk/j93;->f:Ljava/util/List;

    .line 43
    invoke-virtual {p1}, Lcom/google/android/libraries/ads/mobile/sdk/signal/SignalRequest;->a()Lads_mobile_sdk/x11;

    move-result-object p1

    invoke-virtual {p1}, Lads_mobile_sdk/x11;->getNumber()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    .line 44
    invoke-interface {v2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_61

    .line 48
    new-instance p1, Lads_mobile_sdk/q01;

    new-instance v0, Lads_mobile_sdk/f93;

    .line 49
    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Lads_mobile_sdk/f93;-><init>(Ljava/util/List;)V

    .line 50
    invoke-direct {p1, v0}, Lads_mobile_sdk/q01;-><init>(Ljava/lang/Object;)V

    return-object p1

    .line 52
    :cond_61
    iget-object p1, p0, Lads_mobile_sdk/j93;->a:Ljava/util/Optional;

    invoke-static {p1}, Lkotlin/jvm/optionals/OptionalsKt;->getOrNull(Ljava/util/Optional;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/libraries/ads/mobile/sdk/banner/BannerRequest;

    if-eqz p1, :cond_70

    invoke-interface {p1}, Lcom/google/android/libraries/ads/mobile/sdk/banner/BannerRequest;->getAdSize()Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;

    move-result-object p1

    goto :goto_71

    :cond_70
    const/4 p1, 0x0

    .line 55
    :goto_71
    iget-object v2, p0, Lads_mobile_sdk/j93;->c:Lads_mobile_sdk/b93;

    iget-object v4, p0, Lads_mobile_sdk/j93;->d:Lads_mobile_sdk/j53;

    iget-object v5, p0, Lads_mobile_sdk/j93;->e:Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;

    iput v3, v0, Lads_mobile_sdk/i93;->c:I

    invoke-virtual {v2, p1, v4, v5, v0}, Lads_mobile_sdk/b93;->a(Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;Lads_mobile_sdk/j53;Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_80

    return-object v1

    .line 56
    :cond_80
    :goto_80
    check-cast p1, Ljava/util/List;

    new-instance v0, Lads_mobile_sdk/f93;

    invoke-direct {v0, p1}, Lads_mobile_sdk/f93;-><init>(Ljava/util/List;)V

    .line 57
    new-instance p1, Lads_mobile_sdk/q01;

    invoke-direct {p1, v0}, Lads_mobile_sdk/q01;-><init>(Ljava/lang/Object;)V

    return-object p1
.end method
