###### Class io.bidmachine.internal.C4218b (io.bidmachine.internal.b)
.class public final Lio/bidmachine/internal/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/bidmachine/internal/i;


# instance fields
.field public final a:Lkotlinx/coroutines/CoroutineDispatcher;

.field public final b:Lkotlin/jvm/functions/Function0;

.field public final c:Lkotlin/Lazy;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/CoroutineDispatcher;Lkotlin/jvm/functions/Function0;)V
    .registers 4

    const-string v0, "ioDispatcher"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lio/bidmachine/internal/b;->a:Lkotlinx/coroutines/CoroutineDispatcher;

    .line 3
    iput-object p2, p0, Lio/bidmachine/internal/b;->b:Lkotlin/jvm/functions/Function0;

    .line 6
    new-instance p1, Lio/bidmachine/internal/b$a;

    invoke-direct {p1, p0}, Lio/bidmachine/internal/b$a;-><init>(Lio/bidmachine/internal/b;)V

    invoke-static {p1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/internal/b;->c:Lkotlin/Lazy;

    return-void
.end method

.method public synthetic constructor <init>(Lkotlinx/coroutines/CoroutineDispatcher;Lkotlin/jvm/functions/Function0;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 5

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_e

    .line 7
    sget-object p1, Lio/bidmachine/util/SdkDispatchers;->Companion:Lio/bidmachine/util/SdkDispatchers$Companion;

    invoke-virtual {p1}, Lio/bidmachine/util/SdkDispatchers$Companion;->getDefault()Lio/bidmachine/util/SdkDispatchers;

    move-result-object p1

    invoke-virtual {p1}, Lio/bidmachine/util/SdkDispatchers;->getIo()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object p1

    .line 8
    :cond_e
    invoke-direct {p0, p1, p2}, Lio/bidmachine/internal/b;-><init>(Lkotlinx/coroutines/CoroutineDispatcher;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public static final synthetic a(Lio/bidmachine/internal/b;Lio/bidmachine/rendering/model/AdElementParams;Lio/bidmachine/util/cache/MediaFileCacheManager;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 4

    .line 6
    invoke-virtual {p0, p1, p2, p3}, Lio/bidmachine/internal/b;->a(Lio/bidmachine/rendering/model/AdElementParams;Lio/bidmachine/util/cache/MediaFileCacheManager;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic a(Lio/bidmachine/internal/b;Lio/bidmachine/rendering/model/AdParams;Lio/bidmachine/util/cache/MediaFileCacheManager;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 4

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lio/bidmachine/internal/b;->a(Lio/bidmachine/rendering/model/AdParams;Lio/bidmachine/util/cache/MediaFileCacheManager;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic a(Lio/bidmachine/internal/b;Lio/bidmachine/rendering/model/AdParams;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 3

    .line 2
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/internal/b;->a(Lio/bidmachine/rendering/model/AdParams;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic a(Lio/bidmachine/internal/b;Lio/bidmachine/rendering/model/AdPhaseParams;Lio/bidmachine/util/cache/MediaFileCacheManager;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 4

    .line 3
    invoke-virtual {p0, p1, p2, p3}, Lio/bidmachine/internal/b;->a(Lio/bidmachine/rendering/model/AdPhaseParams;Lio/bidmachine/util/cache/MediaFileCacheManager;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic a(Lio/bidmachine/internal/b;Ljava/util/List;ILio/bidmachine/util/cache/MediaFileCacheManager;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 5

    .line 4
    invoke-virtual {p0, p1, p2, p3, p4}, Lio/bidmachine/internal/b;->a(Ljava/util/List;ILio/bidmachine/util/cache/MediaFileCacheManager;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic a(Lio/bidmachine/internal/b;)Lkotlinx/coroutines/CoroutineDispatcher;
    .registers 1

    .line 5
    iget-object p0, p0, Lio/bidmachine/internal/b;->a:Lkotlinx/coroutines/CoroutineDispatcher;

    return-object p0
.end method


# virtual methods
.method public final a(Lio/bidmachine/rendering/model/AdElementParams;Lio/bidmachine/util/cache/MediaFileCacheManager;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 14

    instance-of v0, p3, Lio/bidmachine/internal/b$g;

    if-eqz v0, :cond_13

    move-object v0, p3

    check-cast v0, Lio/bidmachine/internal/b$g;

    iget v1, v0, Lio/bidmachine/internal/b$g;->c:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lio/bidmachine/internal/b$g;->c:I

    goto :goto_18

    :cond_13
    new-instance v0, Lio/bidmachine/internal/b$g;

    invoke-direct {v0, p0, p3}, Lio/bidmachine/internal/b$g;-><init>(Lio/bidmachine/internal/b;Lkotlin/coroutines/Continuation;)V

    :goto_18
    iget-object p3, v0, Lio/bidmachine/internal/b$g;->a:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 455
    iget v2, v0, Lio/bidmachine/internal/b$g;->c:I

    const/4 v3, 0x1

    if-eqz v2, :cond_31

    if-ne v2, v3, :cond_29

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_71

    :cond_29
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_31
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 457
    invoke-virtual {p0, p1}, Lio/bidmachine/internal/b;->a(Lio/bidmachine/rendering/model/AdElementParams;)Ljava/util/Set;

    move-result-object p1

    .line 501
    new-instance p3, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {p1, v2}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {p3, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 502
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_47
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_68

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 503
    check-cast v2, Ljava/lang/String;

    .line 504
    invoke-virtual {p0}, Lio/bidmachine/internal/b;->a()Lkotlinx/coroutines/CoroutineScope;

    move-result-object v4

    new-instance v7, Lio/bidmachine/internal/b$h;

    const/4 v5, 0x0

    invoke-direct {v7, p2, v2, v5}, Lio/bidmachine/internal/b$h;-><init>(Lio/bidmachine/util/cache/MediaFileCacheManager;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    const/4 v8, 0x3

    const/4 v9, 0x0

    const/4 v6, 0x0

    invoke-static/range {v4 .. v9}, Lkotlinx/coroutines/BuildersKt;->async$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Deferred;

    move-result-object v2

    .line 549
    invoke-interface {p3, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_47

    .line 550
    :cond_68
    iput v3, v0, Lio/bidmachine/internal/b$g;->c:I

    invoke-static {p3, v0}, Lkotlinx/coroutines/AwaitKt;->awaitAll(Ljava/util/Collection;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_71

    return-object v1

    .line 551
    :cond_71
    :goto_71
    check-cast p3, Ljava/lang/Iterable;

    .line 556
    invoke-static {p3}, Lkotlin/collections/CollectionsKt___CollectionsKt;->filterNotNull(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lio/bidmachine/rendering/model/AdParams;Lio/bidmachine/util/cache/MediaFileCacheManager;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 12

    instance-of v0, p3, Lio/bidmachine/internal/b$e;

    if-eqz v0, :cond_13

    move-object v0, p3

    check-cast v0, Lio/bidmachine/internal/b$e;

    iget v1, v0, Lio/bidmachine/internal/b$e;->i:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lio/bidmachine/internal/b$e;->i:I

    goto :goto_18

    :cond_13
    new-instance v0, Lio/bidmachine/internal/b$e;

    invoke-direct {v0, p0, p3}, Lio/bidmachine/internal/b$e;-><init>(Lio/bidmachine/internal/b;Lkotlin/coroutines/Continuation;)V

    :goto_18
    iget-object p3, v0, Lio/bidmachine/internal/b$e;->g:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 109
    iget v2, v0, Lio/bidmachine/internal/b$e;->i:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_69

    if-eq v2, v4, :cond_4d

    if-ne v2, v3, :cond_45

    iget-object p1, v0, Lio/bidmachine/internal/b$e;->f:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    iget-object p2, v0, Lio/bidmachine/internal/b$e;->e:Ljava/lang/Object;

    check-cast p2, Ljava/util/Iterator;

    iget-object v2, v0, Lio/bidmachine/internal/b$e;->d:Ljava/lang/Object;

    check-cast v2, Ljava/util/Collection;

    iget-object v4, v0, Lio/bidmachine/internal/b$e;->c:Ljava/lang/Object;

    check-cast v4, Ljava/util/List;

    iget-object v5, v0, Lio/bidmachine/internal/b$e;->b:Ljava/lang/Object;

    check-cast v5, Lio/bidmachine/util/cache/MediaFileCacheManager;

    iget-object v6, v0, Lio/bidmachine/internal/b$e;->a:Ljava/lang/Object;

    check-cast v6, Lio/bidmachine/internal/b;

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_da

    :cond_45
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4d
    iget-object p1, v0, Lio/bidmachine/internal/b$e;->f:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    iget-object p2, v0, Lio/bidmachine/internal/b$e;->e:Ljava/lang/Object;

    check-cast p2, Ljava/util/List;

    iget-object v2, v0, Lio/bidmachine/internal/b$e;->d:Ljava/lang/Object;

    check-cast v2, Ljava/util/List;

    iget-object v4, v0, Lio/bidmachine/internal/b$e;->c:Ljava/lang/Object;

    check-cast v4, Lio/bidmachine/util/cache/MediaFileCacheManager;

    iget-object v5, v0, Lio/bidmachine/internal/b$e;->b:Ljava/lang/Object;

    check-cast v5, Lio/bidmachine/rendering/model/AdParams;

    iget-object v6, v0, Lio/bidmachine/internal/b$e;->a:Ljava/lang/Object;

    check-cast v6, Lio/bidmachine/internal/b;

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_92

    :cond_69
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 111
    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsJVMKt;->createListBuilder()Ljava/util/List;

    move-result-object p3

    .line 113
    invoke-virtual {p1}, Lio/bidmachine/rendering/model/AdParams;->getPlaceholderParams()Lio/bidmachine/rendering/model/AdPhaseParams;

    move-result-object v2

    if-eqz v2, :cond_9f

    iput-object p0, v0, Lio/bidmachine/internal/b$e;->a:Ljava/lang/Object;

    iput-object p1, v0, Lio/bidmachine/internal/b$e;->b:Ljava/lang/Object;

    iput-object p2, v0, Lio/bidmachine/internal/b$e;->c:Ljava/lang/Object;

    iput-object p3, v0, Lio/bidmachine/internal/b$e;->d:Ljava/lang/Object;

    iput-object p3, v0, Lio/bidmachine/internal/b$e;->e:Ljava/lang/Object;

    iput-object p3, v0, Lio/bidmachine/internal/b$e;->f:Ljava/lang/Object;

    iput v4, v0, Lio/bidmachine/internal/b$e;->i:I

    invoke-virtual {p0, v2, p2, v0}, Lio/bidmachine/internal/b;->a(Lio/bidmachine/rendering/model/AdPhaseParams;Lio/bidmachine/util/cache/MediaFileCacheManager;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_8b

    goto :goto_d9

    :cond_8b
    move-object v6, p0

    move-object v5, p1

    move-object v4, p2

    move-object p1, p3

    move-object p2, p1

    move-object p3, v2

    move-object v2, p2

    :goto_92
    check-cast p3, Ljava/util/Collection;

    invoke-interface {p1, p3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move-result p1

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-object p3, p2

    move-object p2, v4

    move-object p1, v5

    goto :goto_a1

    :cond_9f
    move-object v6, p0

    move-object v2, p3

    .line 115
    :goto_a1
    invoke-virtual {p1}, Lio/bidmachine/rendering/model/AdParams;->getAdPhaseParamsQueue()Ljava/util/Queue;

    move-result-object p1

    .line 177
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 178
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    move-object v5, v4

    move-object v4, v2

    move-object v2, v5

    move-object v5, p2

    move-object p2, p1

    move-object p1, p3

    :goto_b4
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_e0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    .line 179
    check-cast p3, Lio/bidmachine/rendering/model/AdPhaseParams;

    .line 180
    const-string v7, "it"

    invoke-static {p3, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v6, v0, Lio/bidmachine/internal/b$e;->a:Ljava/lang/Object;

    iput-object v5, v0, Lio/bidmachine/internal/b$e;->b:Ljava/lang/Object;

    iput-object v4, v0, Lio/bidmachine/internal/b$e;->c:Ljava/lang/Object;

    iput-object v2, v0, Lio/bidmachine/internal/b$e;->d:Ljava/lang/Object;

    iput-object p2, v0, Lio/bidmachine/internal/b$e;->e:Ljava/lang/Object;

    iput-object p1, v0, Lio/bidmachine/internal/b$e;->f:Ljava/lang/Object;

    iput v3, v0, Lio/bidmachine/internal/b$e;->i:I

    invoke-virtual {v6, p3, v5, v0}, Lio/bidmachine/internal/b;->a(Lio/bidmachine/rendering/model/AdPhaseParams;Lio/bidmachine/util/cache/MediaFileCacheManager;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_da

    :goto_d9
    return-object v1

    :cond_da
    :goto_da
    check-cast p3, Ljava/util/List;

    .line 245
    invoke-static {v2, p3}, Lkotlin/collections/CollectionsKt__MutableCollectionsKt;->addAll(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    goto :goto_b4

    .line 247
    :cond_e0
    check-cast v2, Ljava/util/List;

    .line 248
    invoke-interface {p1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 249
    invoke-static {v4}, Lkotlin/collections/CollectionsKt__CollectionsJVMKt;->build(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lio/bidmachine/rendering/model/AdParams;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 7

    instance-of v0, p2, Lio/bidmachine/internal/b$d;

    if-eqz v0, :cond_13

    move-object v0, p2

    check-cast v0, Lio/bidmachine/internal/b$d;

    iget v1, v0, Lio/bidmachine/internal/b$d;->c:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lio/bidmachine/internal/b$d;->c:I

    goto :goto_18

    :cond_13
    new-instance v0, Lio/bidmachine/internal/b$d;

    invoke-direct {v0, p0, p2}, Lio/bidmachine/internal/b$d;-><init>(Lio/bidmachine/internal/b;Lkotlin/coroutines/Continuation;)V

    :goto_18
    iget-object p2, v0, Lio/bidmachine/internal/b$d;->a:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 102
    iget v2, v0, Lio/bidmachine/internal/b$d;->c:I

    const/4 v3, 0x1

    if-eqz v2, :cond_31

    if-ne v2, v3, :cond_29

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_49

    :cond_29
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_31
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 103
    iget-object p2, p0, Lio/bidmachine/internal/b;->b:Lkotlin/jvm/functions/Function0;

    if-eqz p2, :cond_4c

    invoke-interface {p2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lio/bidmachine/util/cache/MediaFileCacheManager;

    if-eqz p2, :cond_4c

    .line 104
    iput v3, v0, Lio/bidmachine/internal/b$d;->c:I

    invoke-virtual {p0, p1, p2, v0}, Lio/bidmachine/internal/b;->a(Lio/bidmachine/rendering/model/AdParams;Lio/bidmachine/util/cache/MediaFileCacheManager;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_49

    return-object v1

    :cond_49
    :goto_49
    check-cast p2, Ljava/util/List;

    goto :goto_4d

    :cond_4c
    const/4 p2, 0x0

    .line 105
    :goto_4d
    invoke-static {}, Lkotlin/collections/MapsKt__MapsJVMKt;->createMapBuilder()Ljava/util/Map;

    move-result-object p1

    if-eqz p2, :cond_5f

    .line 106
    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5a

    goto :goto_5f

    .line 107
    :cond_5a
    const-string v0, "adaptive_resources_cache"

    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    :cond_5f
    :goto_5f
    invoke-static {p1}, Lkotlin/collections/MapsKt__MapsJVMKt;->build(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lio/bidmachine/rendering/model/AdPhaseParams;Lio/bidmachine/util/cache/MediaFileCacheManager;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 12

    instance-of v0, p3, Lio/bidmachine/internal/b$f;

    if-eqz v0, :cond_13

    move-object v0, p3

    check-cast v0, Lio/bidmachine/internal/b$f;

    iget v1, v0, Lio/bidmachine/internal/b$f;->i:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lio/bidmachine/internal/b$f;->i:I

    goto :goto_18

    :cond_13
    new-instance v0, Lio/bidmachine/internal/b$f;

    invoke-direct {v0, p0, p3}, Lio/bidmachine/internal/b$f;-><init>(Lio/bidmachine/internal/b;Lkotlin/coroutines/Continuation;)V

    :goto_18
    iget-object p3, v0, Lio/bidmachine/internal/b$f;->g:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 250
    iget v2, v0, Lio/bidmachine/internal/b$f;->i:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_5d

    if-eq v2, v4, :cond_3d

    if-ne v2, v3, :cond_35

    iget-object p1, v0, Lio/bidmachine/internal/b$f;->b:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    iget-object p2, v0, Lio/bidmachine/internal/b$f;->a:Ljava/lang/Object;

    check-cast p2, Ljava/util/List;

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_ab

    :cond_35
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3d
    iget-object p1, v0, Lio/bidmachine/internal/b$f;->f:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    iget-object p2, v0, Lio/bidmachine/internal/b$f;->e:Ljava/lang/Object;

    check-cast p2, Ljava/util/List;

    iget-object v2, v0, Lio/bidmachine/internal/b$f;->d:Ljava/lang/Object;

    check-cast v2, Ljava/util/List;

    iget-object v4, v0, Lio/bidmachine/internal/b$f;->c:Ljava/lang/Object;

    check-cast v4, Lio/bidmachine/util/cache/MediaFileCacheManager;

    iget-object v5, v0, Lio/bidmachine/internal/b$f;->b:Ljava/lang/Object;

    check-cast v5, Lio/bidmachine/rendering/model/AdPhaseParams;

    iget-object v6, v0, Lio/bidmachine/internal/b$f;->a:Ljava/lang/Object;

    check-cast v6, Lio/bidmachine/internal/b;

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v7, p3

    move-object p3, p1

    move-object p1, v5

    move-object v5, v7

    goto :goto_86

    :cond_5d
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 252
    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsJVMKt;->createListBuilder()Ljava/util/List;

    move-result-object p3

    .line 253
    invoke-virtual {p1}, Lio/bidmachine/rendering/model/AdPhaseParams;->getAdsList()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p1}, Lio/bidmachine/rendering/model/AdPhaseParams;->getSequence()I

    move-result v5

    iput-object p0, v0, Lio/bidmachine/internal/b$f;->a:Ljava/lang/Object;

    iput-object p1, v0, Lio/bidmachine/internal/b$f;->b:Ljava/lang/Object;

    iput-object p2, v0, Lio/bidmachine/internal/b$f;->c:Ljava/lang/Object;

    iput-object p3, v0, Lio/bidmachine/internal/b$f;->d:Ljava/lang/Object;

    iput-object p3, v0, Lio/bidmachine/internal/b$f;->e:Ljava/lang/Object;

    iput-object p3, v0, Lio/bidmachine/internal/b$f;->f:Ljava/lang/Object;

    iput v4, v0, Lio/bidmachine/internal/b$f;->i:I

    invoke-virtual {p0, v2, v5, p2, v0}, Lio/bidmachine/internal/b;->a(Ljava/util/List;ILio/bidmachine/util/cache/MediaFileCacheManager;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_81

    goto :goto_a8

    :cond_81
    move-object v6, p0

    move-object v4, p2

    move-object p2, p3

    move-object v5, v2

    move-object v2, p2

    :goto_86
    check-cast v5, Ljava/util/Collection;

    invoke-interface {p3, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 254
    invoke-virtual {p1}, Lio/bidmachine/rendering/model/AdPhaseParams;->getControlsList()Ljava/util/List;

    move-result-object p3

    invoke-virtual {p1}, Lio/bidmachine/rendering/model/AdPhaseParams;->getSequence()I

    move-result p1

    iput-object v2, v0, Lio/bidmachine/internal/b$f;->a:Ljava/lang/Object;

    iput-object p2, v0, Lio/bidmachine/internal/b$f;->b:Ljava/lang/Object;

    const/4 v5, 0x0

    iput-object v5, v0, Lio/bidmachine/internal/b$f;->c:Ljava/lang/Object;

    iput-object v5, v0, Lio/bidmachine/internal/b$f;->d:Ljava/lang/Object;

    iput-object v5, v0, Lio/bidmachine/internal/b$f;->e:Ljava/lang/Object;

    iput-object v5, v0, Lio/bidmachine/internal/b$f;->f:Ljava/lang/Object;

    iput v3, v0, Lio/bidmachine/internal/b$f;->i:I

    invoke-virtual {v6, p3, p1, v4, v0}, Lio/bidmachine/internal/b;->a(Ljava/util/List;ILio/bidmachine/util/cache/MediaFileCacheManager;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_a9

    :goto_a8
    return-object v1

    :cond_a9
    move-object p1, p2

    move-object p2, v2

    :goto_ab
    check-cast p3, Ljava/util/Collection;

    invoke-interface {p1, p3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 255
    invoke-static {p2}, Lkotlin/collections/CollectionsKt__CollectionsJVMKt;->build(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public a(Lio/bidmachine/unified/UnifiedMediationParams;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 8

    instance-of v0, p2, Lio/bidmachine/internal/b$c;

    if-eqz v0, :cond_13

    move-object v0, p2

    check-cast v0, Lio/bidmachine/internal/b$c;

    iget v1, v0, Lio/bidmachine/internal/b$c;->c:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lio/bidmachine/internal/b$c;->c:I

    goto :goto_18

    :cond_13
    new-instance v0, Lio/bidmachine/internal/b$c;

    invoke-direct {v0, p0, p2}, Lio/bidmachine/internal/b$c;-><init>(Lio/bidmachine/internal/b;Lkotlin/coroutines/Continuation;)V

    :goto_18
    iget-object p2, v0, Lio/bidmachine/internal/b$c;->a:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 8
    iget v2, v0, Lio/bidmachine/internal/b$c;->c:I

    const/4 v3, 0x1

    if-eqz v2, :cond_31

    if-ne v2, v3, :cond_29

    :try_start_25
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_28} :catch_6b

    goto :goto_61

    :cond_29
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_31
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 11
    :try_start_34
    const-string p2, "rendering_configuration"

    invoke-interface {p1, p2}, Lio/bidmachine/utils/data/DataRetriever;->getObjectOrNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_66

    .line 95
    instance-of v2, p2, Lio/bidmachine/protobuf/rendering/Rendering;

    const/4 v4, 0x0

    if-eqz v2, :cond_43

    move-object v2, p2

    goto :goto_44

    :cond_43
    move-object v2, v4

    :goto_44
    if-eqz v2, :cond_49

    .line 96
    check-cast p2, Lio/bidmachine/protobuf/rendering/Rendering;

    goto :goto_4a

    :cond_49
    move-object p2, v4

    :goto_4a
    if-eqz p2, :cond_66

    .line 97
    new-instance p2, Lio/bidmachine/ads/networks/adaptiverendering/AdaptiveRenderingParams;

    const/4 v2, 0x2

    invoke-direct {p2, p1, v4, v2, v4}, Lio/bidmachine/ads/networks/adaptiverendering/AdaptiveRenderingParams;-><init>(Lio/bidmachine/unified/UnifiedMediationParams;Lio/bidmachine/unified/UnifiedAdCallback;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {p2}, Lio/bidmachine/ads/networks/adaptiverendering/AdaptiveRenderingParams;->getAdParams()Lio/bidmachine/rendering/model/AdParams;

    move-result-object p1

    if-eqz p1, :cond_66

    .line 98
    iput v3, v0, Lio/bidmachine/internal/b$c;->c:I

    invoke-virtual {p0, p1, v0}, Lio/bidmachine/internal/b;->a(Lio/bidmachine/rendering/model/AdParams;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_61

    return-object v1

    :cond_61
    :goto_61
    check-cast p2, Ljava/util/Map;

    if-eqz p2, :cond_66

    return-object p2

    .line 99
    :cond_66
    invoke-static {}, Lkotlin/collections/MapsKt__MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object p1
    :try_end_6a
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_6a} :catch_6b

    return-object p1

    .line 101
    :catch_6b
    invoke-static {}, Lkotlin/collections/MapsKt__MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/util/List;ILio/bidmachine/util/cache/MediaFileCacheManager;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 30

    move-object/from16 v0, p4

    instance-of v1, v0, Lio/bidmachine/internal/b$b;

    if-eqz v1, :cond_17

    move-object v1, v0

    check-cast v1, Lio/bidmachine/internal/b$b;

    iget v2, v1, Lio/bidmachine/internal/b$b;->i:I

    const/high16 v3, -0x80000000

    and-int v4, v2, v3

    if-eqz v4, :cond_17

    sub-int/2addr v2, v3

    iput v2, v1, Lio/bidmachine/internal/b$b;->i:I

    move-object/from16 v2, p0

    goto :goto_1e

    :cond_17
    new-instance v1, Lio/bidmachine/internal/b$b;

    move-object/from16 v2, p0

    invoke-direct {v1, v2, v0}, Lio/bidmachine/internal/b$b;-><init>(Lio/bidmachine/internal/b;Lkotlin/coroutines/Continuation;)V

    :goto_1e
    iget-object v0, v1, Lio/bidmachine/internal/b$b;->g:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v3

    .line 256
    iget v4, v1, Lio/bidmachine/internal/b$b;->i:I

    const/4 v5, 0x1

    if-eqz v4, :cond_55

    if-ne v4, v5, :cond_4d

    iget v4, v1, Lio/bidmachine/internal/b$b;->f:I

    iget-object v6, v1, Lio/bidmachine/internal/b$b;->e:Ljava/lang/Object;

    check-cast v6, Lio/bidmachine/rendering/model/AdElementParams;

    iget-object v7, v1, Lio/bidmachine/internal/b$b;->d:Ljava/lang/Object;

    check-cast v7, Ljava/util/Iterator;

    iget-object v8, v1, Lio/bidmachine/internal/b$b;->c:Ljava/lang/Object;

    check-cast v8, Ljava/util/Collection;

    iget-object v9, v1, Lio/bidmachine/internal/b$b;->b:Ljava/lang/Object;

    check-cast v9, Lio/bidmachine/util/cache/MediaFileCacheManager;

    iget-object v10, v1, Lio/bidmachine/internal/b$b;->a:Ljava/lang/Object;

    check-cast v10, Lio/bidmachine/internal/b;

    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v24, v6

    move-object v6, v1

    move-object v1, v9

    move-object v9, v8

    move-object v8, v7

    move-object/from16 v7, v24

    goto :goto_93

    :cond_4d
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_55
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 314
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 315
    invoke-interface/range {p1 .. p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v8, v0

    move-object v10, v2

    move-object v7, v4

    move/from16 v0, p2

    move-object v4, v1

    move-object/from16 v1, p3

    :goto_69
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_158

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 316
    check-cast v6, Lio/bidmachine/rendering/model/AdElementParams;

    .line 317
    iput-object v10, v4, Lio/bidmachine/internal/b$b;->a:Ljava/lang/Object;

    iput-object v1, v4, Lio/bidmachine/internal/b$b;->b:Ljava/lang/Object;

    iput-object v8, v4, Lio/bidmachine/internal/b$b;->c:Ljava/lang/Object;

    iput-object v7, v4, Lio/bidmachine/internal/b$b;->d:Ljava/lang/Object;

    iput-object v6, v4, Lio/bidmachine/internal/b$b;->e:Ljava/lang/Object;

    iput v0, v4, Lio/bidmachine/internal/b$b;->f:I

    iput v5, v4, Lio/bidmachine/internal/b$b;->i:I

    invoke-virtual {v10, v6, v1, v4}, Lio/bidmachine/internal/b;->a(Lio/bidmachine/rendering/model/AdElementParams;Lio/bidmachine/util/cache/MediaFileCacheManager;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v9

    if-ne v9, v3, :cond_8a

    return-object v3

    :cond_8a
    move-object/from16 v24, v4

    move v4, v0

    move-object v0, v9

    move-object v9, v8

    move-object v8, v7

    move-object v7, v6

    move-object/from16 v6, v24

    .line 318
    :goto_93
    check-cast v0, Ljava/lang/Iterable;

    .line 379
    new-instance v11, Ljava/util/ArrayList;

    const/16 v12, 0xa

    invoke-static {v0, v12}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v12

    invoke-direct {v11, v12}, Ljava/util/ArrayList;-><init>(I)V

    .line 380
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_14e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    .line 381
    check-cast v12, Lio/bidmachine/util/cache/MediaFileMetadata;

    .line 382
    invoke-virtual {v7}, Lio/bidmachine/rendering/model/AdElementParams;->getName()Ljava/lang/String;

    move-result-object v13

    const-string v14, "view"

    invoke-static {v14, v13}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v13

    .line 383
    invoke-static {v4}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "phase"

    invoke-static {v15, v14}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v14

    .line 385
    invoke-virtual {v12}, Lio/bidmachine/util/cache/MediaFileMetadata;->getSizeBytes()J

    move-result-wide v15

    invoke-static/range {v15 .. v16}, Lkotlin/coroutines/jvm/internal/Boxing;->boxLong(J)Ljava/lang/Long;

    move-result-object v15

    const-string v5, "size"

    invoke-static {v5, v15}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v16

    .line 386
    invoke-virtual {v12}, Lio/bidmachine/util/cache/MediaFileMetadata;->getMimeType()Ljava/lang/String;

    move-result-object v5

    const-string v15, "mime"

    invoke-static {v15, v5}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v17

    .line 387
    invoke-virtual {v12}, Lio/bidmachine/util/cache/MediaFileMetadata;->getUsageFrequency()J

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Lkotlin/coroutines/jvm/internal/Boxing;->boxLong(J)Ljava/lang/Long;

    move-result-object v5

    const-string v15, "asset_usage_frequency"

    invoke-static {v15, v5}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v18

    .line 388
    invoke-virtual {v12}, Lio/bidmachine/util/cache/MediaFileMetadata;->getCreatedAt()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v19

    invoke-static/range {v19 .. v20}, Lkotlin/coroutines/jvm/internal/Boxing;->boxLong(J)Ljava/lang/Long;

    move-result-object v5

    const-string v15, "created_at"

    invoke-static {v15, v5}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v19

    .line 389
    invoke-virtual {v12}, Lio/bidmachine/util/cache/MediaFileMetadata;->getLastUsedTime()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v20

    invoke-static/range {v20 .. v21}, Lkotlin/coroutines/jvm/internal/Boxing;->boxLong(J)Ljava/lang/Long;

    move-result-object v5

    const-string v15, "last_used_at"

    invoke-static {v15, v5}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v20

    .line 390
    invoke-virtual {v12}, Lio/bidmachine/util/cache/MediaFileMetadata;->getPingTime-UwyO8pc()J

    move-result-wide v21

    invoke-static/range {v21 .. v22}, Lkotlin/time/Duration;->getInWholeMilliseconds-impl(J)J

    move-result-wide v21

    invoke-static/range {v21 .. v22}, Lkotlin/coroutines/jvm/internal/Boxing;->boxLong(J)Ljava/lang/Long;

    move-result-object v5

    const-string v15, "ping"

    invoke-static {v15, v5}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v21

    .line 391
    invoke-virtual {v12}, Lio/bidmachine/util/cache/MediaFileMetadata;->getDownloadTime-UwyO8pc()J

    move-result-wide v22

    invoke-static/range {v22 .. v23}, Lkotlin/time/Duration;->getInWholeMilliseconds-impl(J)J

    move-result-wide v22

    invoke-static/range {v22 .. v23}, Lkotlin/coroutines/jvm/internal/Boxing;->boxLong(J)Ljava/lang/Long;

    move-result-object v5

    const-string v12, "download_time"

    invoke-static {v12, v5}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v22

    filled-new-array/range {v16 .. v22}, [Lkotlin/Pair;

    move-result-object v5

    .line 392
    invoke-static {v5}, Lkotlin/collections/MapsKt__MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v5

    const-string v12, "cache"

    invoke-static {v12, v5}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v5

    filled-new-array {v13, v14, v5}, [Lkotlin/Pair;

    move-result-object v5

    .line 393
    invoke-static {v5}, Lkotlin/collections/MapsKt__MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v5

    .line 450
    invoke-interface {v11, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    const/4 v5, 0x1

    goto/16 :goto_a4

    .line 452
    :cond_14e
    invoke-static {v9, v11}, Lkotlin/collections/CollectionsKt__MutableCollectionsKt;->addAll(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    move v0, v4

    move-object v4, v6

    move-object v7, v8

    move-object v8, v9

    const/4 v5, 0x1

    goto/16 :goto_69

    .line 454
    :cond_158
    check-cast v8, Ljava/util/List;

    return-object v8
.end method

.method public final a(Lio/bidmachine/rendering/model/AdElementParams;)Ljava/util/Set;
    .registers 6

    .line 557
    invoke-static {}, Lkotlin/collections/SetsKt__SetsJVMKt;->createSetBuilder()Ljava/util/Set;

    move-result-object v0

    .line 559
    invoke-virtual {p1}, Lio/bidmachine/rendering/model/AdElementParams;->getResource()Lio/bidmachine/rendering/model/Resource;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_27

    invoke-virtual {v1}, Lio/bidmachine/rendering/model/Resource;->getSource()Lio/bidmachine/rendering/model/ResourceSource;

    move-result-object v1

    if-eqz v1, :cond_27

    .line 601
    instance-of v3, v1, Lio/bidmachine/rendering/model/UrlResourceSource;

    if-eqz v3, :cond_17

    move-object v3, v1

    goto :goto_18

    :cond_17
    move-object v3, v2

    :goto_18
    if-eqz v3, :cond_1d

    .line 602
    check-cast v1, Lio/bidmachine/rendering/model/UrlResourceSource;

    goto :goto_1e

    :cond_1d
    move-object v1, v2

    :goto_1e
    if-eqz v1, :cond_27

    .line 603
    invoke-virtual {v1}, Lio/bidmachine/rendering/model/UrlResourceSource;->getUrls()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 606
    :cond_27
    invoke-virtual {p1}, Lio/bidmachine/rendering/model/AdElementParams;->getPlaceholder()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3a

    invoke-static {v1}, Lio/bidmachine/util/UtilsKt;->isHttpUrl(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_34

    goto :goto_35

    :cond_34
    move-object v1, v2

    :goto_35
    if-eqz v1, :cond_3a

    .line 607
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 609
    :cond_3a
    invoke-virtual {p1}, Lio/bidmachine/rendering/model/AdElementParams;->getAppearanceParams()Lio/bidmachine/rendering/model/AppearanceParams;

    move-result-object p1

    invoke-virtual {p1}, Lio/bidmachine/rendering/model/AppearanceParams;->getBackground()Lio/bidmachine/rendering/model/Background;

    move-result-object p1

    if-eqz p1, :cond_80

    invoke-virtual {p1}, Lio/bidmachine/rendering/model/Background;->getSource()Lio/bidmachine/rendering/model/BackgroundSource;

    move-result-object p1

    if-eqz p1, :cond_80

    .line 647
    instance-of v1, p1, Lio/bidmachine/rendering/model/ImageBackgroundSource;

    if-eqz v1, :cond_50

    move-object v1, p1

    goto :goto_51

    :cond_50
    move-object v1, v2

    :goto_51
    if-eqz v1, :cond_56

    .line 648
    check-cast p1, Lio/bidmachine/rendering/model/ImageBackgroundSource;

    goto :goto_57

    :cond_56
    move-object p1, v2

    :goto_57
    if-eqz p1, :cond_80

    .line 649
    invoke-virtual {p1}, Lio/bidmachine/rendering/model/ImageBackgroundSource;->getImage()Lio/bidmachine/rendering/model/Image;

    move-result-object p1

    if-eqz p1, :cond_80

    invoke-virtual {p1}, Lio/bidmachine/rendering/model/Image;->getResource()Lio/bidmachine/rendering/model/Resource;

    move-result-object p1

    if-eqz p1, :cond_80

    invoke-virtual {p1}, Lio/bidmachine/rendering/model/Resource;->getSource()Lio/bidmachine/rendering/model/ResourceSource;

    move-result-object p1

    if-eqz p1, :cond_80

    .line 689
    instance-of v1, p1, Lio/bidmachine/rendering/model/UrlResourceSource;

    if-eqz v1, :cond_71

    move-object v1, p1

    goto :goto_72

    :cond_71
    move-object v1, v2

    :goto_72
    if-eqz v1, :cond_77

    .line 690
    move-object v2, p1

    check-cast v2, Lio/bidmachine/rendering/model/UrlResourceSource;

    :cond_77
    if-eqz v2, :cond_80

    .line 691
    invoke-virtual {v2}, Lio/bidmachine/rendering/model/UrlResourceSource;->getUrls()Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 692
    :cond_80
    invoke-static {v0}, Lkotlin/collections/SetsKt__SetsJVMKt;->build(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public final a()Lkotlinx/coroutines/CoroutineScope;
    .registers 2

    .line 7
    iget-object v0, p0, Lio/bidmachine/internal/b;->c:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/CoroutineScope;

    return-object v0
.end method

.method public bridge synthetic getCacheParams(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 3

    .line 1
    check-cast p1, Lio/bidmachine/unified/UnifiedMediationParams;

    invoke-virtual {p0, p1, p2}, Lio/bidmachine/internal/b;->a(Lio/bidmachine/unified/UnifiedMediationParams;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

###### Class io.bidmachine.internal.C4218b.a (io.bidmachine.internal.b$a)
.class public final Lio/bidmachine/internal/b$a;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/internal/b;-><init>(Lkotlinx/coroutines/CoroutineDispatcher;Lkotlin/jvm/functions/Function0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lio/bidmachine/internal/b;


# direct methods
.method public constructor <init>(Lio/bidmachine/internal/b;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/bidmachine/internal/b$a;->a:Lio/bidmachine/internal/b;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()Lkotlinx/coroutines/CoroutineScope;
    .registers 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1
    invoke-static {v0, v1, v0}, Lkotlinx/coroutines/SupervisorKt;->SupervisorJob$default(Lkotlinx/coroutines/Job;ILjava/lang/Object;)Lkotlinx/coroutines/CompletableJob;

    move-result-object v0

    iget-object v1, p0, Lio/bidmachine/internal/b$a;->a:Lio/bidmachine/internal/b;

    invoke-static {v1}, Lio/bidmachine/internal/b;->a(Lio/bidmachine/internal/b;)Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v1

    invoke-interface {v0, v1}, Lkotlin/coroutines/CoroutineContext;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/internal/b$a;->a()Lkotlinx/coroutines/CoroutineScope;

    move-result-object v0

    return-object v0
.end method

###### Class io.bidmachine.internal.C4218b.C1164b (io.bidmachine.internal.b$b)
.class public final Lio/bidmachine/internal/b$b;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/internal/b;->a(Ljava/util/List;ILio/bidmachine/util/cache/MediaFileCacheManager;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public a:Ljava/lang/Object;

.field public b:Ljava/lang/Object;

.field public c:Ljava/lang/Object;

.field public d:Ljava/lang/Object;

.field public e:Ljava/lang/Object;

.field public f:I

.field public synthetic g:Ljava/lang/Object;

.field public final synthetic h:Lio/bidmachine/internal/b;

.field public i:I


# direct methods
.method public constructor <init>(Lio/bidmachine/internal/b;Lkotlin/coroutines/Continuation;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lio/bidmachine/internal/b$b;->h:Lio/bidmachine/internal/b;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 1
    iput-object p1, p0, Lio/bidmachine/internal/b$b;->g:Ljava/lang/Object;

    iget p1, p0, Lio/bidmachine/internal/b$b;->i:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lio/bidmachine/internal/b$b;->i:I

    iget-object p1, p0, Lio/bidmachine/internal/b$b;->h:Lio/bidmachine/internal/b;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p1, v0, v1, v0, p0}, Lio/bidmachine/internal/b;->a(Lio/bidmachine/internal/b;Ljava/util/List;ILio/bidmachine/util/cache/MediaFileCacheManager;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

###### Class io.bidmachine.internal.C4218b.c (io.bidmachine.internal.b$c)
.class public final Lio/bidmachine/internal/b$c;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/internal/b;->a(Lio/bidmachine/unified/UnifiedMediationParams;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public synthetic a:Ljava/lang/Object;

.field public final synthetic b:Lio/bidmachine/internal/b;

.field public c:I


# direct methods
.method public constructor <init>(Lio/bidmachine/internal/b;Lkotlin/coroutines/Continuation;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lio/bidmachine/internal/b$c;->b:Lio/bidmachine/internal/b;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 1
    iput-object p1, p0, Lio/bidmachine/internal/b$c;->a:Ljava/lang/Object;

    iget p1, p0, Lio/bidmachine/internal/b$c;->c:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lio/bidmachine/internal/b$c;->c:I

    iget-object p1, p0, Lio/bidmachine/internal/b$c;->b:Lio/bidmachine/internal/b;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p0}, Lio/bidmachine/internal/b;->a(Lio/bidmachine/unified/UnifiedMediationParams;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

###### Class io.bidmachine.internal.C4218b.d (io.bidmachine.internal.b$d)
.class public final Lio/bidmachine/internal/b$d;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/internal/b;->a(Lio/bidmachine/rendering/model/AdParams;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public synthetic a:Ljava/lang/Object;

.field public final synthetic b:Lio/bidmachine/internal/b;

.field public c:I


# direct methods
.method public constructor <init>(Lio/bidmachine/internal/b;Lkotlin/coroutines/Continuation;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lio/bidmachine/internal/b$d;->b:Lio/bidmachine/internal/b;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 1
    iput-object p1, p0, Lio/bidmachine/internal/b$d;->a:Ljava/lang/Object;

    iget p1, p0, Lio/bidmachine/internal/b$d;->c:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lio/bidmachine/internal/b$d;->c:I

    iget-object p1, p0, Lio/bidmachine/internal/b$d;->b:Lio/bidmachine/internal/b;

    const/4 v0, 0x0

    invoke-static {p1, v0, p0}, Lio/bidmachine/internal/b;->a(Lio/bidmachine/internal/b;Lio/bidmachine/rendering/model/AdParams;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

###### Class io.bidmachine.internal.C4218b.e (io.bidmachine.internal.b$e)
.class public final Lio/bidmachine/internal/b$e;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/internal/b;->a(Lio/bidmachine/rendering/model/AdParams;Lio/bidmachine/util/cache/MediaFileCacheManager;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public a:Ljava/lang/Object;

.field public b:Ljava/lang/Object;

.field public c:Ljava/lang/Object;

.field public d:Ljava/lang/Object;

.field public e:Ljava/lang/Object;

.field public f:Ljava/lang/Object;

.field public synthetic g:Ljava/lang/Object;

.field public final synthetic h:Lio/bidmachine/internal/b;

.field public i:I


# direct methods
.method public constructor <init>(Lio/bidmachine/internal/b;Lkotlin/coroutines/Continuation;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lio/bidmachine/internal/b$e;->h:Lio/bidmachine/internal/b;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 1
    iput-object p1, p0, Lio/bidmachine/internal/b$e;->g:Ljava/lang/Object;

    iget p1, p0, Lio/bidmachine/internal/b$e;->i:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lio/bidmachine/internal/b$e;->i:I

    iget-object p1, p0, Lio/bidmachine/internal/b$e;->h:Lio/bidmachine/internal/b;

    const/4 v0, 0x0

    invoke-static {p1, v0, v0, p0}, Lio/bidmachine/internal/b;->a(Lio/bidmachine/internal/b;Lio/bidmachine/rendering/model/AdParams;Lio/bidmachine/util/cache/MediaFileCacheManager;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

###### Class io.bidmachine.internal.C4218b.f (io.bidmachine.internal.b$f)
.class public final Lio/bidmachine/internal/b$f;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/internal/b;->a(Lio/bidmachine/rendering/model/AdPhaseParams;Lio/bidmachine/util/cache/MediaFileCacheManager;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public a:Ljava/lang/Object;

.field public b:Ljava/lang/Object;

.field public c:Ljava/lang/Object;

.field public d:Ljava/lang/Object;

.field public e:Ljava/lang/Object;

.field public f:Ljava/lang/Object;

.field public synthetic g:Ljava/lang/Object;

.field public final synthetic h:Lio/bidmachine/internal/b;

.field public i:I


# direct methods
.method public constructor <init>(Lio/bidmachine/internal/b;Lkotlin/coroutines/Continuation;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lio/bidmachine/internal/b$f;->h:Lio/bidmachine/internal/b;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 1
    iput-object p1, p0, Lio/bidmachine/internal/b$f;->g:Ljava/lang/Object;

    iget p1, p0, Lio/bidmachine/internal/b$f;->i:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lio/bidmachine/internal/b$f;->i:I

    iget-object p1, p0, Lio/bidmachine/internal/b$f;->h:Lio/bidmachine/internal/b;

    const/4 v0, 0x0

    invoke-static {p1, v0, v0, p0}, Lio/bidmachine/internal/b;->a(Lio/bidmachine/internal/b;Lio/bidmachine/rendering/model/AdPhaseParams;Lio/bidmachine/util/cache/MediaFileCacheManager;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

###### Class io.bidmachine.internal.C4218b.g (io.bidmachine.internal.b$g)
.class public final Lio/bidmachine/internal/b$g;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/internal/b;->a(Lio/bidmachine/rendering/model/AdElementParams;Lio/bidmachine/util/cache/MediaFileCacheManager;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public synthetic a:Ljava/lang/Object;

.field public final synthetic b:Lio/bidmachine/internal/b;

.field public c:I


# direct methods
.method public constructor <init>(Lio/bidmachine/internal/b;Lkotlin/coroutines/Continuation;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lio/bidmachine/internal/b$g;->b:Lio/bidmachine/internal/b;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 1
    iput-object p1, p0, Lio/bidmachine/internal/b$g;->a:Ljava/lang/Object;

    iget p1, p0, Lio/bidmachine/internal/b$g;->c:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lio/bidmachine/internal/b$g;->c:I

    iget-object p1, p0, Lio/bidmachine/internal/b$g;->b:Lio/bidmachine/internal/b;

    const/4 v0, 0x0

    invoke-static {p1, v0, v0, p0}, Lio/bidmachine/internal/b;->a(Lio/bidmachine/internal/b;Lio/bidmachine/rendering/model/AdElementParams;Lio/bidmachine/util/cache/MediaFileCacheManager;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

###### Class io.bidmachine.internal.C4218b.h (io.bidmachine.internal.b$h)
.class public final Lio/bidmachine/internal/b$h;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/internal/b;->a(Lio/bidmachine/rendering/model/AdElementParams;Lio/bidmachine/util/cache/MediaFileCacheManager;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public a:I

.field public final synthetic b:Lio/bidmachine/util/cache/MediaFileCacheManager;

.field public final synthetic c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lio/bidmachine/util/cache/MediaFileCacheManager;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V
    .registers 4

    .line 1
    iput-object p1, p0, Lio/bidmachine/internal/b$h;->b:Lio/bidmachine/util/cache/MediaFileCacheManager;

    iput-object p2, p0, Lio/bidmachine/internal/b$h;->c:Ljava/lang/String;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final a(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 3

    .line 1
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/internal/b$h;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lio/bidmachine/internal/b$h;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lio/bidmachine/internal/b$h;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 5

    .line 1
    new-instance p1, Lio/bidmachine/internal/b$h;

    iget-object v0, p0, Lio/bidmachine/internal/b$h;->b:Lio/bidmachine/util/cache/MediaFileCacheManager;

    iget-object v1, p0, Lio/bidmachine/internal/b$h;->c:Ljava/lang/String;

    invoke-direct {p1, v0, v1, p2}, Lio/bidmachine/internal/b$h;-><init>(Lio/bidmachine/util/cache/MediaFileCacheManager;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 1
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lio/bidmachine/internal/b$h;->a(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 1
    iget v1, p0, Lio/bidmachine/internal/b$h;->a:I

    const/4 v2, 0x1

    if-eqz v1, :cond_17

    if-ne v1, v2, :cond_f

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    return-object p1

    :cond_f
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_17
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lio/bidmachine/internal/b$h;->b:Lio/bidmachine/util/cache/MediaFileCacheManager;

    iget-object v1, p0, Lio/bidmachine/internal/b$h;->c:Ljava/lang/String;

    iput v2, p0, Lio/bidmachine/internal/b$h;->a:I

    invoke-virtual {p1, v1, p0}, Lio/bidmachine/util/cache/MediaFileCacheManager;->getMediaFileMetadata(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_27

    return-object v0

    :cond_27
    return-object p1
.end method
