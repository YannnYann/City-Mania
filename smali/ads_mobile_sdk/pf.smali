###### Class ads_mobile_sdk.pf (ads_mobile_sdk.pf)
.class public final Lads_mobile_sdk/pf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/rh3;


# instance fields
.field public final a:Lads_mobile_sdk/hf;

.field public final b:Ljava/util/List;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/ex0;Lads_mobile_sdk/hf;)V
    .registers 4

    .line 1
    const-string v0, "flags"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adapterInitializer"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p2, p0, Lads_mobile_sdk/pf;->a:Lads_mobile_sdk/hf;

    .line 27
    invoke-virtual {p1}, Lads_mobile_sdk/ex0;->d0()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lads_mobile_sdk/pf;->b:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final f()Lads_mobile_sdk/y11;
    .registers 2

    .line 1
    sget-object v0, Lads_mobile_sdk/y11;->c:Lads_mobile_sdk/y11;

    return-object v0
.end method

.method public final s(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 8

    .line 1
    instance-of v0, p1, Lads_mobile_sdk/of;

    if-eqz v0, :cond_13

    move-object v0, p1

    check-cast v0, Lads_mobile_sdk/of;

    iget v1, v0, Lads_mobile_sdk/of;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/of;->e:I

    goto :goto_18

    :cond_13
    new-instance v0, Lads_mobile_sdk/of;

    invoke-direct {v0, p0, p1}, Lads_mobile_sdk/of;-><init>(Lads_mobile_sdk/pf;Lkotlin/coroutines/Continuation;)V

    :goto_18
    iget-object p1, v0, Lads_mobile_sdk/of;->c:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 29
    iget v2, v0, Lads_mobile_sdk/of;->e:I

    const/4 v3, 0x1

    if-eqz v2, :cond_35

    if-ne v2, v3, :cond_2d

    iget-object v1, v0, Lads_mobile_sdk/of;->b:Ljava/util/LinkedHashMap;

    iget-object v0, v0, Lads_mobile_sdk/of;->a:Lads_mobile_sdk/pf;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_69

    :cond_2d
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_35
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 30
    iget-object p1, p0, Lads_mobile_sdk/pf;->b:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_4f

    .line 31
    new-instance p1, Lads_mobile_sdk/q01;

    new-instance v0, Lads_mobile_sdk/nf;

    invoke-static {}, Lkotlin/collections/MapsKt__MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, v1}, Lads_mobile_sdk/nf;-><init>(Ljava/util/Map;)V

    invoke-direct {p1, v0}, Lads_mobile_sdk/q01;-><init>(Ljava/lang/Object;)V

    return-object p1

    .line 34
    :cond_4f
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 35
    iget-object v2, p0, Lads_mobile_sdk/pf;->a:Lads_mobile_sdk/hf;

    iput-object p0, v0, Lads_mobile_sdk/of;->a:Lads_mobile_sdk/pf;

    iput-object p1, v0, Lads_mobile_sdk/of;->b:Ljava/util/LinkedHashMap;

    iput v3, v0, Lads_mobile_sdk/of;->e:I

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 36
    invoke-static {v2, v0}, Lads_mobile_sdk/hf;->a(Lads_mobile_sdk/hf;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_66

    return-object v1

    :cond_66
    move-object v1, p1

    move-object p1, v0

    move-object v0, p0

    .line 37
    :goto_69
    check-cast p1, Ljava/util/Map;

    .line 45
    iget-object v0, v0, Lads_mobile_sdk/pf;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_71
    :goto_71
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 47
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lads_mobile_sdk/yd;

    if-eqz v3, :cond_8f

    .line 48
    iget-object v3, v3, Lads_mobile_sdk/yd;->a:Lcom/google/android/libraries/ads/mobile/sdk/initialization/AdapterStatus;

    if-eqz v3, :cond_8f

    .line 49
    invoke-interface {v3}, Lcom/google/android/libraries/ads/mobile/sdk/initialization/AdapterStatus;->getInitializationState()Lcom/google/android/libraries/ads/mobile/sdk/initialization/AdapterStatus$InitializationState;

    move-result-object v3

    if-nez v3, :cond_91

    :cond_8f
    sget-object v3, Lcom/google/android/libraries/ads/mobile/sdk/initialization/AdapterStatus$InitializationState;->NOT_STARTED:Lcom/google/android/libraries/ads/mobile/sdk/initialization/AdapterStatus$InitializationState;

    .line 50
    :cond_91
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lads_mobile_sdk/yd;

    if-eqz v4, :cond_9c

    .line 51
    iget-object v4, v4, Lads_mobile_sdk/yd;->b:Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/AdapterVersionData;

    goto :goto_9d

    :cond_9c
    const/4 v4, 0x0

    .line 52
    :goto_9d
    sget-object v5, Lcom/google/android/libraries/ads/mobile/sdk/initialization/AdapterStatus$InitializationState;->COMPLETE:Lcom/google/android/libraries/ads/mobile/sdk/initialization/AdapterStatus$InitializationState;

    if-ne v3, v5, :cond_71

    if-eqz v4, :cond_71

    .line 53
    invoke-interface {v1, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_71

    .line 57
    :cond_a7
    new-instance p1, Lads_mobile_sdk/q01;

    new-instance v0, Lads_mobile_sdk/nf;

    invoke-direct {v0, v1}, Lads_mobile_sdk/nf;-><init>(Ljava/util/Map;)V

    invoke-direct {p1, v0}, Lads_mobile_sdk/q01;-><init>(Ljava/lang/Object;)V

    return-object p1
.end method
