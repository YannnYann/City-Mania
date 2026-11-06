###### Class ads_mobile_sdk.tp3 (ads_mobile_sdk.tp3)
.class public final Lads_mobile_sdk/tp3;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic a:Lads_mobile_sdk/vp3;

.field public final synthetic b:Ljava/util/Map;

.field public final synthetic c:Landroid/view/View;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/vp3;Ljava/util/Map;Landroid/view/View;Lkotlin/coroutines/Continuation;)V
    .registers 5

    .line 1
    iput-object p1, p0, Lads_mobile_sdk/tp3;->a:Lads_mobile_sdk/vp3;

    iput-object p2, p0, Lads_mobile_sdk/tp3;->b:Ljava/util/Map;

    iput-object p3, p0, Lads_mobile_sdk/tp3;->c:Landroid/view/View;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 6

    .line 1
    new-instance p1, Lads_mobile_sdk/tp3;

    iget-object v0, p0, Lads_mobile_sdk/tp3;->a:Lads_mobile_sdk/vp3;

    iget-object v1, p0, Lads_mobile_sdk/tp3;->b:Ljava/util/Map;

    iget-object v2, p0, Lads_mobile_sdk/tp3;->c:Landroid/view/View;

    invoke-direct {p1, v0, v1, v2, p2}, Lads_mobile_sdk/tp3;-><init>(Lads_mobile_sdk/vp3;Ljava/util/Map;Landroid/view/View;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 1
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 2
    invoke-virtual {p0, p1, p2}, Lads_mobile_sdk/tp3;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lads_mobile_sdk/tp3;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lads_mobile_sdk/tp3;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 10

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 47
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 48
    iget-object p1, p0, Lads_mobile_sdk/tp3;->a:Lads_mobile_sdk/vp3;

    iget-object v0, p0, Lads_mobile_sdk/tp3;->b:Ljava/util/Map;

    .line 49
    iget-object v1, p1, Lads_mobile_sdk/vp3;->k:Lads_mobile_sdk/i2;

    .line 50
    iget-object v1, v1, Lads_mobile_sdk/i2;->m0:Lcom/google/gson/JsonObject;

    invoke-virtual {v1}, Lcom/google/gson/JsonObject;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_16

    goto/16 :goto_cd

    .line 54
    :cond_16
    iget-object v1, p1, Lads_mobile_sdk/vp3;->k:Lads_mobile_sdk/i2;

    iget-object v1, v1, Lads_mobile_sdk/i2;->m0:Lcom/google/gson/JsonObject;

    invoke-virtual {v1}, Lcom/google/gson/JsonObject;->keySet()Ljava/util/Set;

    move-result-object v1

    const-string v2, "keySet(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 206
    instance-of v2, v1, Ljava/util/Collection;

    if-eqz v2, :cond_2f

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2f

    goto/16 :goto_cd

    .line 207
    :cond_2f
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :catch_33
    :goto_33
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_cd

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 208
    sget-object v3, Lads_mobile_sdk/ds1;->a:Lads_mobile_sdk/ds1;

    iget-object v3, p1, Lads_mobile_sdk/vp3;->k:Lads_mobile_sdk/i2;

    iget-object v3, v3, Lads_mobile_sdk/i2;->m0:Lcom/google/gson/JsonObject;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v3, v2}, Lads_mobile_sdk/ds1;->e(Lcom/google/gson/JsonObject;Ljava/lang/String;)Lcom/google/gson/JsonArray;

    move-result-object v3

    if-nez v3, :cond_4f

    goto :goto_33

    .line 211
    :cond_4f
    const-string v4, "3010"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_65

    .line 212
    iget-object v2, p1, Lads_mobile_sdk/vp3;->i:Lads_mobile_sdk/p12;

    invoke-interface {v2}, Lads_mobile_sdk/p12;->a()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_ce

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    goto :goto_79

    .line 214
    :cond_65
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    if-eqz v2, :cond_ce

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    if-eqz v2, :cond_ce

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 218
    :goto_79
    :try_start_79
    iget-object v4, p1, Lads_mobile_sdk/vp3;->l:Lads_mobile_sdk/k32;

    .line 361
    new-instance v6, Ljava/util/ArrayList;

    const/16 v7, 0xa

    invoke-static {v3, v7}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v7

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 362
    invoke-virtual {v3}, Lcom/google/gson/JsonArray;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_8a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_9e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .line 363
    check-cast v7, Lcom/google/gson/JsonElement;

    .line 364
    invoke-virtual {v7}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v7

    .line 509
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8a

    .line 510
    :cond_9e
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 511
    const-string v3, "classOfView"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "allowedClasses"

    invoke-static {v6, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 851
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :catchall_af
    :cond_af
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_ce

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;
    :try_end_bb
    .catch Ljava/lang/RuntimeException; {:try_start_79 .. :try_end_bb} :catch_33

    .line 853
    :try_start_bb
    iget-object v7, v4, Lads_mobile_sdk/k32;->a:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v7

    invoke-static {v6, v5, v7}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v6

    .line 854
    invoke-virtual {v6, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v6
    :try_end_c9
    .catchall {:try_start_bb .. :try_end_c9} :catchall_af

    if-eqz v6, :cond_af

    goto/16 :goto_33

    :cond_cd
    :goto_cd
    const/4 v5, 0x1

    .line 855
    :cond_ce
    iput-boolean v5, p1, Lads_mobile_sdk/vp3;->m:Z

    .line 856
    iget-object p1, p0, Lads_mobile_sdk/tp3;->c:Landroid/view/View;

    if-eqz p1, :cond_11e

    iget-object v0, p0, Lads_mobile_sdk/tp3;->a:Lads_mobile_sdk/vp3;

    iget-object v1, p0, Lads_mobile_sdk/tp3;->b:Ljava/util/Map;

    .line 857
    iget-object v0, v0, Lads_mobile_sdk/vp3;->i:Lads_mobile_sdk/p12;

    .line 858
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 867
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_e7
    :goto_e7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_113

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 868
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    if-eqz v3, :cond_10c

    invoke-static {v4, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    goto :goto_10d

    :cond_10c
    const/4 v3, 0x0

    :goto_10d
    if-eqz v3, :cond_e7

    .line 1012
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_e7

    .line 1013
    :cond_113
    invoke-static {v2}, Lkotlin/collections/MapsKt__MapsKt;->toMap(Ljava/lang/Iterable;)Ljava/util/Map;

    move-result-object v1

    .line 1014
    invoke-static {}, Lkotlin/collections/MapsKt__MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, p1, v1, v2}, Lads_mobile_sdk/p12;->a(Landroid/view/View;Ljava/util/Map;Ljava/util/Map;)V

    .line 1016
    :cond_11e
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
