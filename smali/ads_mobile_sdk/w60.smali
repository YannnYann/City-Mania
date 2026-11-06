###### Class ads_mobile_sdk.w60 (ads_mobile_sdk.w60)
.class public final Lads_mobile_sdk/w60;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public a:Lorg/chromium/net/CronetProvider;

.field public b:Ljava/util/concurrent/atomic/AtomicReference;

.field public c:I

.field public final synthetic d:Lads_mobile_sdk/k70;

.field public final synthetic e:Ljava/util/concurrent/atomic/AtomicReference;

.field public final synthetic f:Ljava/lang/Long;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/k70;Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Long;Lkotlin/coroutines/Continuation;)V
    .registers 5

    .line 1
    iput-object p1, p0, Lads_mobile_sdk/w60;->d:Lads_mobile_sdk/k70;

    iput-object p2, p0, Lads_mobile_sdk/w60;->e:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p3, p0, Lads_mobile_sdk/w60;->f:Ljava/lang/Long;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 6

    .line 1
    new-instance p1, Lads_mobile_sdk/w60;

    iget-object v0, p0, Lads_mobile_sdk/w60;->d:Lads_mobile_sdk/k70;

    iget-object v1, p0, Lads_mobile_sdk/w60;->e:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v2, p0, Lads_mobile_sdk/w60;->f:Ljava/lang/Long;

    invoke-direct {p1, v0, v1, v2, p2}, Lads_mobile_sdk/w60;-><init>(Lads_mobile_sdk/k70;Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Long;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 1
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 2
    invoke-virtual {p0, p1, p2}, Lads_mobile_sdk/w60;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lads_mobile_sdk/w60;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lads_mobile_sdk/w60;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 10

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 567
    iget v1, p0, Lads_mobile_sdk/w60;->c:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1d

    if-ne v1, v2, :cond_15

    iget-object v0, p0, Lads_mobile_sdk/w60;->b:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v1, p0, Lads_mobile_sdk/w60;->a:Lorg/chromium/net/CronetProvider;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_154

    :cond_15
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1d
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 569
    iget-object p1, p0, Lads_mobile_sdk/w60;->d:Lads_mobile_sdk/k70;

    .line 570
    iget-object v1, p1, Lads_mobile_sdk/k70;->d:Landroid/content/Context;

    .line 571
    invoke-static {v1}, Lorg/chromium/net/CronetProvider;->getAllProviders(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    .line 573
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 872
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 873
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_34
    :goto_34
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_57

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Lorg/chromium/net/CronetProvider;

    .line 874
    invoke-virtual {v6}, Lorg/chromium/net/CronetProvider;->isEnabled()Z

    move-result v7

    if-eqz v7, :cond_34

    invoke-virtual {v6}, Lorg/chromium/net/CronetProvider;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "Fallback-Cronet-Provider"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_34

    .line 1173
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_34

    .line 1174
    :cond_57
    invoke-static {v4}, Lkotlin/collections/CollectionsKt___CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v1

    .line 1474
    instance-of v4, v1, Ljava/util/Collection;

    const-string v5, "HttpEngine-Native-Provider"

    if-eqz v4, :cond_68

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_68

    goto :goto_83

    .line 1475
    :cond_68
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_6c
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_83

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/chromium/net/CronetProvider;

    .line 1476
    invoke-virtual {v6}, Lorg/chromium/net/CronetProvider;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6c

    goto :goto_93

    .line 1478
    :cond_83
    :goto_83
    :try_start_83
    new-instance v4, Lorg/chromium/net/impl/HttpEngineNativeProvider;

    iget-object v6, p1, Lads_mobile_sdk/k70;->d:Landroid/content/Context;

    invoke-direct {v4, v6}, Lorg/chromium/net/impl/HttpEngineNativeProvider;-><init>(Landroid/content/Context;)V

    .line 1479
    invoke-virtual {v4}, Lorg/chromium/net/impl/HttpEngineNativeProvider;->isEnabled()Z

    move-result v6

    if-eqz v6, :cond_93

    .line 1480
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_93
    .catchall {:try_start_83 .. :try_end_93} :catchall_93

    .line 1481
    :catchall_93
    :cond_93
    :goto_93
    iget-object v4, p1, Lads_mobile_sdk/k70;->r:Lkotlin/Lazy;

    invoke-interface {v4}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_a6

    .line 1482
    sget-object v4, Lads_mobile_sdk/s60;->a:Lads_mobile_sdk/s60;

    invoke-static {v1, v4}, Lkotlin/collections/CollectionsKt__MutableCollectionsKt;->removeAll(Ljava/util/List;Lkotlin/jvm/functions/Function1;)Z

    .line 1485
    :cond_a6
    iget-object p1, p1, Lads_mobile_sdk/k70;->b:Lads_mobile_sdk/ex0;

    if-eqz p1, :cond_c1

    .line 1487
    const-string v4, "key"

    const-string v6, "gads:cronet_provider"

    invoke-static {v6, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "defaultValue"

    const-string v7, ""

    invoke-static {v7, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1529
    sget-object v4, Lads_mobile_sdk/yr;->o:Lads_mobile_sdk/wr;

    invoke-virtual {p1, v6, v7, v4}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    goto :goto_c2

    :cond_c1
    move-object p1, v3

    :goto_c2
    if-eqz p1, :cond_ec

    .line 1530
    invoke-static {p1}, Lkotlin/text/StringsKt__StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_cb

    goto :goto_ec

    .line 1809
    :cond_cb
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_cf
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_e7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Lorg/chromium/net/CronetProvider;

    .line 1810
    invoke-virtual {v5}, Lorg/chromium/net/CronetProvider;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_cf

    goto :goto_e8

    :cond_e7
    move-object v4, v3

    .line 2089
    :goto_e8
    check-cast v4, Lorg/chromium/net/CronetProvider;

    :cond_ea
    move-object v1, v4

    goto :goto_137

    .line 2090
    :cond_ec
    :goto_ec
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_f0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_108

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v6, v4

    check-cast v6, Lorg/chromium/net/CronetProvider;

    .line 2091
    invoke-virtual {v6}, Lorg/chromium/net/CronetProvider;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_f0

    goto :goto_109

    :cond_108
    move-object v4, v3

    :goto_109
    check-cast v4, Lorg/chromium/net/CronetProvider;

    if-nez v4, :cond_ea

    .line 2371
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_111
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_12b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Lorg/chromium/net/CronetProvider;

    .line 2372
    invoke-virtual {v5}, Lorg/chromium/net/CronetProvider;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "Google-Play-Services-Cronet-Provider"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_111

    goto :goto_12c

    :cond_12b
    move-object v4, v3

    :goto_12c
    check-cast v4, Lorg/chromium/net/CronetProvider;

    if-nez v4, :cond_ea

    .line 2373
    invoke-static {v1}, Lkotlin/collections/CollectionsKt___CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/chromium/net/CronetProvider;

    move-object v1, p1

    :goto_137
    if-eqz v1, :cond_175

    .line 2374
    invoke-virtual {v1}, Lorg/chromium/net/CronetProvider;->createBuilder()Lorg/chromium/net/CronetEngine$Builder;

    move-result-object p1

    .line 2375
    iget-object v4, p0, Lads_mobile_sdk/w60;->e:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v5, p0, Lads_mobile_sdk/w60;->d:Lads_mobile_sdk/k70;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v6, p0, Lads_mobile_sdk/w60;->f:Ljava/lang/Long;

    iput-object v1, p0, Lads_mobile_sdk/w60;->a:Lorg/chromium/net/CronetProvider;

    iput-object v4, p0, Lads_mobile_sdk/w60;->b:Ljava/util/concurrent/atomic/AtomicReference;

    iput v2, p0, Lads_mobile_sdk/w60;->c:I

    invoke-static {v5, p1, v6, p0}, Lads_mobile_sdk/k70;->a(Lads_mobile_sdk/k70;Lorg/chromium/net/CronetEngine$Builder;Ljava/lang/Long;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_153

    return-object v0

    :cond_153
    move-object v0, v4

    .line 2376
    :goto_154
    check-cast p1, Lorg/chromium/net/CronetEngine$Builder;

    invoke-virtual {p1}, Lorg/chromium/net/CronetEngine$Builder;->build()Lorg/chromium/net/CronetEngine;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 2377
    invoke-static {}, Lads_mobile_sdk/hs3;->b()Lads_mobile_sdk/gs3;

    move-result-object p1

    .line 2378
    iget-object p1, p1, Lads_mobile_sdk/gs3;->a:Lads_mobile_sdk/rr3;

    if-eqz p1, :cond_169

    .line 2379
    invoke-virtual {p1}, Lads_mobile_sdk/rr3;->e()Lads_mobile_sdk/uj2;

    move-result-object v3

    :cond_169
    if-nez v3, :cond_16c

    goto :goto_172

    :cond_16c
    invoke-virtual {v1}, Lorg/chromium/net/CronetProvider;->getName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v3, Lads_mobile_sdk/uj2;->z:Ljava/lang/String;

    .line 2380
    :goto_172
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 2381
    :cond_175
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "No native Cronet provider found."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
