###### Class ads_mobile_sdk.j43 (ads_mobile_sdk.j43)
.class public final Lads_mobile_sdk/j43;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lads_mobile_sdk/ex0;

.field public final b:Lads_mobile_sdk/g30;

.field public final c:Lads_mobile_sdk/ur3;

.field public final d:Lads_mobile_sdk/at;

.field public final e:Ljava/util/Optional;

.field public final f:Lads_mobile_sdk/j40;

.field public final g:Lads_mobile_sdk/jb3;

.field public final h:I

.field public final i:Landroid/content/Context;

.field public j:Ljava/lang/String;

.field public k:Z

.field public l:Z

.field public m:Z

.field public final n:Ljava/util/LinkedHashSet;

.field public final o:Ljava/util/LinkedHashSet;

.field public final p:Ljava/util/LinkedHashMap;

.field public q:Ljava/util/Map;

.field public final r:Ljava/util/LinkedHashMap;

.field public final s:Lcom/google/gson/Gson;

.field public t:Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;

.field public u:Lcom/google/gson/JsonObject;

.field public final v:Lcom/google/gson/JsonObject;

.field public final w:Ljava/util/LinkedHashMap;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    .line 0
    return-void
.end method

.method public constructor <init>(Lads_mobile_sdk/ex0;Lads_mobile_sdk/g30;Lads_mobile_sdk/ur3;Lads_mobile_sdk/at;Ljava/util/Optional;Lads_mobile_sdk/j40;Lads_mobile_sdk/jb3;ILandroid/content/Context;)V
    .registers 11

    .line 1
    const-string v0, "flags"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "consentManager"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "traceLogger"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "blobEncrypter"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "optionalNativeRequest"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "correlatorProvider"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sdkCoreJavascriptEngine"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput-object p1, p0, Lads_mobile_sdk/j43;->a:Lads_mobile_sdk/ex0;

    .line 76
    iput-object p2, p0, Lads_mobile_sdk/j43;->b:Lads_mobile_sdk/g30;

    .line 77
    iput-object p3, p0, Lads_mobile_sdk/j43;->c:Lads_mobile_sdk/ur3;

    .line 78
    iput-object p4, p0, Lads_mobile_sdk/j43;->d:Lads_mobile_sdk/at;

    .line 79
    iput-object p5, p0, Lads_mobile_sdk/j43;->e:Ljava/util/Optional;

    .line 80
    iput-object p6, p0, Lads_mobile_sdk/j43;->f:Lads_mobile_sdk/j40;

    .line 81
    iput-object p7, p0, Lads_mobile_sdk/j43;->g:Lads_mobile_sdk/jb3;

    .line 82
    iput p8, p0, Lads_mobile_sdk/j43;->h:I

    .line 83
    iput-object p9, p0, Lads_mobile_sdk/j43;->i:Landroid/content/Context;

    .line 86
    const-string p1, "https://googleads.g.doubleclick.net/mads/gma"

    iput-object p1, p0, Lads_mobile_sdk/j43;->j:Ljava/lang/String;

    .line 92
    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object p1, p0, Lads_mobile_sdk/j43;->n:Ljava/util/LinkedHashSet;

    .line 93
    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object p1, p0, Lads_mobile_sdk/j43;->o:Ljava/util/LinkedHashSet;

    .line 94
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lads_mobile_sdk/j43;->p:Ljava/util/LinkedHashMap;

    .line 96
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lads_mobile_sdk/j43;->r:Ljava/util/LinkedHashMap;

    .line 98
    new-instance p1, Lcom/google/gson/GsonBuilder;

    invoke-direct {p1}, Lcom/google/gson/GsonBuilder;-><init>()V

    new-instance p2, Lcom/google/android/libraries/ads/mobile/sdk/internal/util/AndroidBundleTypeAdapterFactory;

    invoke-direct {p2}, Lcom/google/android/libraries/ads/mobile/sdk/internal/util/AndroidBundleTypeAdapterFactory;-><init>()V

    invoke-virtual {p1, p2}, Lcom/google/gson/GsonBuilder;->registerTypeAdapterFactory(Lcom/google/gson/TypeAdapterFactory;)Lcom/google/gson/GsonBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object p1

    iput-object p1, p0, Lads_mobile_sdk/j43;->s:Lcom/google/gson/Gson;

    .line 103
    new-instance p1, Lcom/google/gson/JsonObject;

    invoke-direct {p1}, Lcom/google/gson/JsonObject;-><init>()V

    iput-object p1, p0, Lads_mobile_sdk/j43;->v:Lcom/google/gson/JsonObject;

    .line 104
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lads_mobile_sdk/j43;->w:Ljava/util/LinkedHashMap;

    return-void
.end method

.method public static final synthetic a(Lads_mobile_sdk/j43;)Lcom/google/gson/JsonObject;
    .registers 1

    .line 70
    iget-object p0, p0, Lads_mobile_sdk/j43;->u:Lcom/google/gson/JsonObject;

    return-object p0
.end method

.method public static a(Lads_mobile_sdk/j43;Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;Lads_mobile_sdk/yp2;Lads_mobile_sdk/hj2;Ljava/util/Map;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 32

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p5

    .line 2607
    const-string v3, "key"

    instance-of v4, v2, Lads_mobile_sdk/d43;

    if-eqz v4, :cond_1b

    move-object v4, v2

    check-cast v4, Lads_mobile_sdk/d43;

    iget v5, v4, Lads_mobile_sdk/d43;->h:I

    const/high16 v6, -0x80000000

    and-int v7, v5, v6

    if-eqz v7, :cond_1b

    sub-int/2addr v5, v6

    iput v5, v4, Lads_mobile_sdk/d43;->h:I

    goto :goto_20

    :cond_1b
    new-instance v4, Lads_mobile_sdk/d43;

    invoke-direct {v4, v0, v2}, Lads_mobile_sdk/d43;-><init>(Lads_mobile_sdk/j43;Lkotlin/coroutines/Continuation;)V

    :goto_20
    iget-object v2, v4, Lads_mobile_sdk/d43;->f:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v5

    .line 2725
    iget v6, v4, Lads_mobile_sdk/d43;->h:I

    const-string v7, "getAsJsonObject(...)"

    const/4 v8, 0x5

    const/4 v9, 0x4

    const/4 v10, 0x3

    const/4 v11, 0x2

    const/4 v12, 0x1

    const/4 v13, 0x0

    const/4 v14, 0x0

    if-eqz v6, :cond_9e

    if-eq v6, v12, :cond_84

    if-eq v6, v11, :cond_75

    if-eq v6, v10, :cond_66

    if-eq v6, v9, :cond_57

    if-ne v6, v8, :cond_4f

    iget-object v0, v4, Lads_mobile_sdk/d43;->b:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Ljava/io/Closeable;

    iget-object v0, v4, Lads_mobile_sdk/d43;->a:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Lads_mobile_sdk/rr3;

    :try_start_47
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_4a
    .catchall {:try_start_47 .. :try_end_4a} :catchall_4c

    goto/16 :goto_38c

    :catchall_4c
    move-exception v0

    goto/16 :goto_39d

    :cond_4f
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2726
    :cond_57
    iget-object v0, v4, Lads_mobile_sdk/d43;->b:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Ljava/io/Closeable;

    iget-object v0, v4, Lads_mobile_sdk/d43;->a:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Lads_mobile_sdk/rr3;

    :try_start_61
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_64
    .catchall {:try_start_61 .. :try_end_64} :catchall_4c

    goto/16 :goto_349

    .line 2727
    :cond_66
    iget-object v0, v4, Lads_mobile_sdk/d43;->b:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Ljava/io/Closeable;

    iget-object v0, v4, Lads_mobile_sdk/d43;->a:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Lads_mobile_sdk/rr3;

    :try_start_70
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_73
    .catchall {:try_start_70 .. :try_end_73} :catchall_4c

    goto/16 :goto_319

    .line 2728
    :cond_75
    iget-object v0, v4, Lads_mobile_sdk/d43;->b:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Ljava/io/Closeable;

    iget-object v0, v4, Lads_mobile_sdk/d43;->a:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Lads_mobile_sdk/rr3;

    :try_start_7f
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_82
    .catchall {:try_start_7f .. :try_end_82} :catchall_4c

    goto/16 :goto_1c2

    .line 2729
    :cond_84
    iget-object v1, v4, Lads_mobile_sdk/d43;->e:Lads_mobile_sdk/rr3;

    iget-object v6, v4, Lads_mobile_sdk/d43;->d:Lads_mobile_sdk/rr3;

    iget-object v0, v4, Lads_mobile_sdk/d43;->c:Lads_mobile_sdk/hj2;

    iget-object v15, v4, Lads_mobile_sdk/d43;->b:Ljava/lang/Object;

    check-cast v15, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;

    iget-object v8, v4, Lads_mobile_sdk/d43;->a:Ljava/lang/Object;

    check-cast v8, Lads_mobile_sdk/j43;

    :try_start_92
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_95
    .catchall {:try_start_92 .. :try_end_95} :catchall_9a

    move-object v2, v6

    move-object v6, v0

    move-object v0, v8

    goto/16 :goto_16e

    :catchall_9a
    move-exception v0

    move-object v3, v6

    goto/16 :goto_39d

    .line 2730
    :cond_9e
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 2736
    sget-object v2, Lads_mobile_sdk/s11;->x1:Lads_mobile_sdk/s11;

    .line 3808
    sget-object v6, Lads_mobile_sdk/hs3;->a:Ljava/util/WeakHashMap;

    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v6

    invoke-static {v2, v6, v12}, Lads_mobile_sdk/hs3;->a(Lads_mobile_sdk/s11;Ljava/util/List;Z)Lads_mobile_sdk/rr3;

    move-result-object v2

    .line 3809
    :try_start_ad
    iput-boolean v13, v0, Lads_mobile_sdk/j43;->l:Z

    .line 3810
    iput-boolean v13, v0, Lads_mobile_sdk/j43;->m:Z

    move-object/from16 v6, p4

    .line 3811
    iput-object v6, v0, Lads_mobile_sdk/j43;->q:Ljava/util/Map;

    .line 3812
    iput-object v1, v0, Lads_mobile_sdk/j43;->t:Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;

    .line 3814
    invoke-virtual {v0}, Lads_mobile_sdk/j43;->f()V

    .line 3815
    iget-object v6, v0, Lads_mobile_sdk/j43;->s:Lcom/google/gson/Gson;

    invoke-virtual {v6, v1}, Lcom/google/gson/Gson;->toJsonTree(Ljava/lang/Object;)Lcom/google/gson/JsonElement;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v6

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v6, v0, Lads_mobile_sdk/j43;->u:Lcom/google/gson/JsonObject;

    move-object/from16 v6, p2

    .line 3817
    invoke-virtual {v0, v6}, Lads_mobile_sdk/j43;->a(Lads_mobile_sdk/yp2;)V

    .line 3819
    iget-object v6, v0, Lads_mobile_sdk/j43;->w:Ljava/util/LinkedHashMap;

    invoke-virtual {v6}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v6

    const/16 v8, 0xa

    .line 4884
    invoke-static {v6, v8}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v8

    invoke-static {v8}, Lkotlin/collections/MapsKt__MapsJVMKt;->mapCapacity(I)I

    move-result v8

    const/16 v15, 0x10

    invoke-static {v8, v15}, Lkotlin/ranges/RangesKt___RangesKt;->coerceAtLeast(II)I

    move-result v8

    .line 4885
    new-instance v15, Ljava/util/LinkedHashMap;

    invoke-direct {v15, v8}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 4886
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_ed
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_154

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    .line 4887
    check-cast v8, Ljava/util/Map$Entry;

    .line 4888
    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v13

    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lads_mobile_sdk/ne3;

    .line 4889
    invoke-virtual {v8}, Lads_mobile_sdk/ne3;->A()Z

    move-result v16

    if-eqz v16, :cond_118

    .line 4890
    invoke-virtual {v8}, Lads_mobile_sdk/ne3;->v()Z

    move-result v8

    if-eqz v8, :cond_115

    const-string v8, "1"

    goto :goto_143

    :catchall_112
    move-exception v0

    goto/16 :goto_39f

    :cond_115
    const-string v8, "0"

    goto :goto_143

    .line 4891
    :cond_118
    invoke-virtual {v8}, Lads_mobile_sdk/ne3;->D()Z

    move-result v16

    if-eqz v16, :cond_123

    .line 4892
    invoke-virtual {v8}, Lads_mobile_sdk/ne3;->z()Ljava/lang/String;

    move-result-object v8

    goto :goto_143

    .line 4893
    :cond_123
    invoke-virtual {v8}, Lads_mobile_sdk/ne3;->B()Z

    move-result v16

    if-eqz v16, :cond_132

    .line 4894
    invoke-virtual {v8}, Lads_mobile_sdk/ne3;->x()D

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v8

    goto :goto_143

    .line 4895
    :cond_132
    invoke-virtual {v8}, Lads_mobile_sdk/ne3;->C()Z

    move-result v16

    if-eqz v16, :cond_141

    .line 4896
    invoke-virtual {v8}, Lads_mobile_sdk/ne3;->y()J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    goto :goto_143

    .line 4898
    :cond_141
    const-string v8, ""

    .line 4899
    :goto_143
    invoke-static {v13, v8}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v8

    .line 5967
    invoke-virtual {v8}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v8}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v15, v13, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v13, 0x0

    goto :goto_ed

    .line 5968
    :cond_154
    iput-object v15, v1, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;->preProcessedSignals:Ljava/util/Map;

    .line 5971
    iput-object v0, v4, Lads_mobile_sdk/d43;->a:Ljava/lang/Object;

    iput-object v1, v4, Lads_mobile_sdk/d43;->b:Ljava/lang/Object;

    move-object/from16 v6, p3

    iput-object v6, v4, Lads_mobile_sdk/d43;->c:Lads_mobile_sdk/hj2;

    iput-object v2, v4, Lads_mobile_sdk/d43;->d:Lads_mobile_sdk/rr3;

    iput-object v2, v4, Lads_mobile_sdk/d43;->e:Lads_mobile_sdk/rr3;

    iput v12, v4, Lads_mobile_sdk/d43;->h:I

    invoke-virtual {v0, v4}, Lads_mobile_sdk/j43;->a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v8
    :try_end_168
    .catchall {:try_start_ad .. :try_end_168} :catchall_112

    if-ne v8, v5, :cond_16c

    goto/16 :goto_389

    :cond_16c
    move-object v15, v1

    move-object v1, v2

    .line 5972
    :goto_16e
    :try_start_16e
    iget-object v8, v0, Lads_mobile_sdk/j43;->v:Lcom/google/gson/JsonObject;

    iput-object v8, v15, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;->localSignals:Lcom/google/gson/JsonObject;

    .line 5974
    iget-object v8, v0, Lads_mobile_sdk/j43;->s:Lcom/google/gson/Gson;

    invoke-virtual {v8, v15}, Lcom/google/gson/Gson;->toJsonTree(Ljava/lang/Object;)Lcom/google/gson/JsonElement;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v8

    invoke-static {v8, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v8, v0, Lads_mobile_sdk/j43;->u:Lcom/google/gson/JsonObject;

    .line 5976
    sget-object v7, Lads_mobile_sdk/f01;->a:Lcom/google/common/base/Splitter;

    new-instance v7, Lads_mobile_sdk/e43;

    invoke-direct {v7, v0}, Lads_mobile_sdk/e43;-><init>(Lads_mobile_sdk/j43;)V

    invoke-static {v7}, Lads_mobile_sdk/f01;->a(Lkotlin/jvm/functions/Function0;)V

    .line 5978
    invoke-virtual {v6}, Lads_mobile_sdk/hj2;->x()Lads_mobile_sdk/yh1$f;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_193
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1d1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lads_mobile_sdk/ej2;

    .line 5979
    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, v7}, Lads_mobile_sdk/j43;->b(Lads_mobile_sdk/ej2;)Lads_mobile_sdk/v01;

    move-result-object v7

    .line 7040
    instance-of v8, v7, Lads_mobile_sdk/i01;

    if-eqz v8, :cond_1c6

    check-cast v7, Lads_mobile_sdk/i01;

    .line 7041
    iput-object v2, v4, Lads_mobile_sdk/d43;->a:Ljava/lang/Object;

    iput-object v1, v4, Lads_mobile_sdk/d43;->b:Ljava/lang/Object;

    iput-object v14, v4, Lads_mobile_sdk/d43;->c:Lads_mobile_sdk/hj2;

    iput-object v14, v4, Lads_mobile_sdk/d43;->d:Lads_mobile_sdk/rr3;

    iput-object v14, v4, Lads_mobile_sdk/d43;->e:Lads_mobile_sdk/rr3;

    iput v11, v4, Lads_mobile_sdk/d43;->h:I

    invoke-virtual {v0, v7, v4}, Lads_mobile_sdk/j43;->a(Lads_mobile_sdk/v01;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0
    :try_end_1bc
    .catchall {:try_start_16e .. :try_end_1bc} :catchall_2a4

    if-ne v0, v5, :cond_1c0

    goto/16 :goto_389

    :cond_1c0
    move-object v3, v2

    move-object v2, v0

    .line 7042
    :goto_1c2
    :try_start_1c2
    check-cast v2, Lads_mobile_sdk/v01;
    :try_end_1c4
    .catchall {:try_start_1c2 .. :try_end_1c4} :catchall_4c

    goto/16 :goto_38e

    .line 8103
    :cond_1c6
    :try_start_1c6
    const-string v8, "null cannot be cast to non-null type com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Success<T of com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Companion.returnIfError>"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v7, Lads_mobile_sdk/q01;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_193

    .line 8104
    :cond_1d1
    invoke-virtual {v0}, Lads_mobile_sdk/j43;->g()V

    .line 8106
    iget-object v6, v0, Lads_mobile_sdk/j43;->r:Ljava/util/LinkedHashMap;

    invoke-virtual {v6}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1de
    :goto_1de
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_215

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/StringBuilder;

    .line 8107
    iget-object v11, v0, Lads_mobile_sdk/j43;->o:Ljava/util/LinkedHashSet;

    invoke-interface {v11}, Ljava/util/Set;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_206

    iget-object v11, v0, Lads_mobile_sdk/j43;->o:Ljava/util/LinkedHashSet;

    invoke-interface {v11, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1de

    .line 8108
    :cond_206
    iget-object v11, v0, Lads_mobile_sdk/j43;->p:Ljava/util/LinkedHashMap;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v13, "toString(...)"

    invoke-static {v7, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v11, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1de

    .line 8114
    :cond_215
    iget-object v6, v15, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;->googleExtrasBundle:Landroid/os/Bundle;

    if-eqz v6, :cond_225

    const-string v7, "_testRequestUri"

    invoke-virtual {v6, v7}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_225

    iput-object v6, v0, Lads_mobile_sdk/j43;->j:Ljava/lang/String;

    sget-object v6, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 8116
    :cond_225
    iget-object v6, v15, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;->isScarRequest:Ljava/lang/Boolean;

    invoke-static {v12}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    .line 8117
    invoke-virtual {v0}, Lads_mobile_sdk/j43;->a()Landroid/net/Uri;

    move-result-object v7

    if-eqz v6, :cond_241

    .line 8124
    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v8, v7

    :cond_239
    move-object/from16 v19, v14

    move-object/from16 v25, v19

    :goto_23d
    const/16 v24, 0x0

    goto/16 :goto_2f2

    .line 8129
    :cond_241
    invoke-virtual {v0}, Lads_mobile_sdk/j43;->b()Ljava/lang/String;

    move-result-object v8

    .line 8130
    iget-object v11, v0, Lads_mobile_sdk/j43;->a:Lads_mobile_sdk/ex0;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8131
    const-string v13, "gads:request_compression_min_length"

    invoke-static {v13, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v15, -0x1

    .line 8132
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    sget-object v12, Lads_mobile_sdk/yr;->f:Lads_mobile_sdk/nr;

    invoke-virtual {v11, v13, v15, v12}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Number;

    invoke-virtual {v11}, Ljava/lang/Number;->intValue()I

    move-result v11

    .line 8133
    iget-boolean v13, v0, Lads_mobile_sdk/j43;->m:Z

    if-eqz v13, :cond_2a7

    if-ltz v11, :cond_2a7

    if-eqz v11, :cond_26e

    .line 8135
    invoke-virtual {v0, v11, v8}, Lads_mobile_sdk/j43;->a(ILjava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_2a7

    .line 8139
    :cond_26e
    const-string v11, "application/x-www-form-urlencoded"

    .line 8140
    iget-object v12, v0, Lads_mobile_sdk/j43;->a:Lads_mobile_sdk/ex0;

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8141
    const-string v13, "gads:request_compression_exception_params"

    .line 8142
    sget-object v15, Lads_mobile_sdk/ex0;->C:Ljava/util/List;

    .line 8143
    invoke-static {v13, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "defaultValue"

    invoke-static {v15, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8188
    sget-object v3, Lads_mobile_sdk/yr;->g:Lads_mobile_sdk/qr;

    invoke-virtual {v12, v13, v15, v3}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 8189
    invoke-static {v3}, Lkotlin/collections/CollectionsKt___CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v3

    .line 8191
    invoke-virtual {v0, v8, v3}, Lads_mobile_sdk/j43;->a(Ljava/lang/String;Ljava/util/Set;)Lkotlin/Pair;

    move-result-object v3

    invoke-virtual {v3}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/net/Uri;

    .line 8192
    invoke-virtual {v3}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    move-object/from16 v19, v3

    move-object/from16 v25, v11

    const/16 v24, 0x1

    goto :goto_2f2

    :catchall_2a4
    move-exception v0

    goto/16 :goto_3a0

    .line 8193
    :cond_2a7
    invoke-virtual {v0, v8, v14}, Lads_mobile_sdk/j43;->a(Ljava/lang/String;Ljava/util/Set;)Lkotlin/Pair;

    move-result-object v8

    .line 8194
    invoke-virtual {v8}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/net/Uri;

    .line 8195
    invoke-virtual {v8}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    .line 8196
    iget-object v13, v0, Lads_mobile_sdk/j43;->a:Lads_mobile_sdk/ex0;

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8197
    const-string v15, "gads:url_size_to_post"

    invoke-static {v15, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v3, 0x3a98

    .line 8198
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v13, v15, v3, v12}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    if-lt v11, v3, :cond_239

    .line 8199
    const-string v11, "text/plain"

    .line 8200
    invoke-virtual {v8}, Landroid/net/Uri;->getEncodedQuery()Ljava/lang/String;

    move-result-object v3

    .line 8201
    invoke-virtual {v8}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v8

    invoke-virtual {v8}, Landroid/net/Uri$Builder;->clearQuery()Landroid/net/Uri$Builder;

    move-result-object v8

    invoke-virtual {v8}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v8

    const-string v12, "build(...)"

    invoke-static {v8, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v19, v3

    move-object/from16 v25, v11

    goto/16 :goto_23d

    :goto_2f2
    if-eqz v6, :cond_352

    .line 8214
    invoke-virtual {v8}, Landroid/net/Uri;->getQuery()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_31d

    .line 8216
    new-instance v3, Lads_mobile_sdk/m01;

    const-string v6, "Csrb scar query result is empty"

    .line 8217
    sget-object v7, Lads_mobile_sdk/kk1;->a:Lads_mobile_sdk/kk1;

    .line 8218
    invoke-direct {v3, v6, v7}, Lads_mobile_sdk/m01;-><init>(Ljava/lang/String;Lads_mobile_sdk/kk1;)V

    .line 8219
    iput-object v2, v4, Lads_mobile_sdk/d43;->a:Ljava/lang/Object;

    iput-object v1, v4, Lads_mobile_sdk/d43;->b:Ljava/lang/Object;

    iput-object v14, v4, Lads_mobile_sdk/d43;->c:Lads_mobile_sdk/hj2;

    iput-object v14, v4, Lads_mobile_sdk/d43;->d:Lads_mobile_sdk/rr3;

    iput-object v14, v4, Lads_mobile_sdk/d43;->e:Lads_mobile_sdk/rr3;

    iput v10, v4, Lads_mobile_sdk/d43;->h:I

    invoke-virtual {v0, v3, v4}, Lads_mobile_sdk/j43;->a(Lads_mobile_sdk/v01;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0
    :try_end_313
    .catchall {:try_start_1c6 .. :try_end_313} :catchall_2a4

    if-ne v0, v5, :cond_317

    goto/16 :goto_389

    :cond_317
    move-object v3, v2

    move-object v2, v0

    .line 8220
    :goto_319
    :try_start_319
    check-cast v2, Lads_mobile_sdk/v01;
    :try_end_31b
    .catchall {:try_start_319 .. :try_end_31b} :catchall_4c

    goto/16 :goto_38e

    .line 8223
    :cond_31d
    :try_start_31d
    iget-object v6, v0, Lads_mobile_sdk/j43;->d:Lads_mobile_sdk/at;

    invoke-virtual {v6, v3}, Lads_mobile_sdk/at;->a(Ljava/lang/String;)Lads_mobile_sdk/v01;

    move-result-object v3

    .line 8224
    instance-of v6, v3, Lads_mobile_sdk/q01;

    if-eqz v6, :cond_330

    check-cast v3, Lads_mobile_sdk/q01;

    .line 8225
    iget-object v3, v3, Lads_mobile_sdk/q01;->b:Ljava/lang/Object;

    .line 8226
    check-cast v3, Ljava/lang/String;

    :goto_32d
    move-object/from16 v21, v3

    goto :goto_35a

    .line 8227
    :cond_330
    instance-of v6, v3, Lads_mobile_sdk/i01;

    if-eqz v6, :cond_34c

    iput-object v2, v4, Lads_mobile_sdk/d43;->a:Ljava/lang/Object;

    iput-object v1, v4, Lads_mobile_sdk/d43;->b:Ljava/lang/Object;

    iput-object v14, v4, Lads_mobile_sdk/d43;->c:Lads_mobile_sdk/hj2;

    iput-object v14, v4, Lads_mobile_sdk/d43;->d:Lads_mobile_sdk/rr3;

    iput-object v14, v4, Lads_mobile_sdk/d43;->e:Lads_mobile_sdk/rr3;

    iput v9, v4, Lads_mobile_sdk/d43;->h:I

    invoke-virtual {v0, v3, v4}, Lads_mobile_sdk/j43;->a(Lads_mobile_sdk/v01;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0
    :try_end_344
    .catchall {:try_start_31d .. :try_end_344} :catchall_2a4

    if-ne v0, v5, :cond_347

    goto :goto_389

    :cond_347
    move-object v3, v2

    move-object v2, v0

    .line 8228
    :goto_349
    :try_start_349
    check-cast v2, Lads_mobile_sdk/v01;
    :try_end_34b
    .catchall {:try_start_349 .. :try_end_34b} :catchall_4c

    goto :goto_38e

    .line 8229
    :cond_34c
    :try_start_34c
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    .line 8232
    :cond_352
    invoke-virtual {v8}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    .line 8233
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    goto :goto_32d

    .line 8238
    :goto_35a
    new-instance v3, Lads_mobile_sdk/q01;

    .line 8239
    new-instance v16, Lads_mobile_sdk/zt;

    .line 8240
    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v17

    .line 8243
    iget-boolean v6, v0, Lads_mobile_sdk/j43;->l:Z

    .line 8245
    invoke-virtual {v7}, Landroid/net/Uri;->getQuery()Ljava/lang/String;

    move-result-object v22

    const/16 v18, 0x0

    const/16 v23, 0x0

    move/from16 v20, v6

    .line 8246
    invoke-direct/range {v16 .. v25}, Lads_mobile_sdk/zt;-><init>(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/util/List;ZLjava/lang/String;)V

    move-object/from16 v6, v16

    .line 8247
    invoke-direct {v3, v6}, Lads_mobile_sdk/q01;-><init>(Ljava/lang/Object;)V

    .line 8248
    iput-object v2, v4, Lads_mobile_sdk/d43;->a:Ljava/lang/Object;

    iput-object v1, v4, Lads_mobile_sdk/d43;->b:Ljava/lang/Object;

    iput-object v14, v4, Lads_mobile_sdk/d43;->c:Lads_mobile_sdk/hj2;

    iput-object v14, v4, Lads_mobile_sdk/d43;->d:Lads_mobile_sdk/rr3;

    iput-object v14, v4, Lads_mobile_sdk/d43;->e:Lads_mobile_sdk/rr3;

    const/4 v6, 0x5

    iput v6, v4, Lads_mobile_sdk/d43;->h:I

    invoke-virtual {v0, v3, v4}, Lads_mobile_sdk/j43;->a(Lads_mobile_sdk/v01;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0
    :try_end_387
    .catchall {:try_start_34c .. :try_end_387} :catchall_2a4

    if-ne v0, v5, :cond_38a

    :goto_389
    return-object v5

    :cond_38a
    move-object v3, v2

    move-object v2, v0

    .line 8249
    :goto_38c
    :try_start_38c
    check-cast v2, Lads_mobile_sdk/v01;

    .line 9233
    :goto_38e
    instance-of v0, v2, Lads_mobile_sdk/i01;

    if-eqz v0, :cond_399

    .line 9234
    move-object v0, v2

    check-cast v0, Lads_mobile_sdk/i01;

    const/4 v4, 0x0

    .line 9235
    invoke-static {v0, v4}, Lads_mobile_sdk/xs3;->a(Lads_mobile_sdk/i01;Z)V
    :try_end_399
    .catchall {:try_start_38c .. :try_end_399} :catchall_4c

    .line 9236
    :cond_399
    invoke-static {v1, v14}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object v2

    :goto_39d
    move-object v2, v3

    goto :goto_3a0

    :goto_39f
    move-object v1, v2

    .line 9253
    :goto_3a0
    :try_start_3a0
    invoke-virtual {v2, v0}, Lads_mobile_sdk/rr3;->b(Ljava/lang/Throwable;)V

    .line 9257
    instance-of v3, v0, Lads_mobile_sdk/v24;

    if-nez v3, :cond_3d9

    .line 9259
    instance-of v3, v0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v3, :cond_3b6

    instance-of v3, v0, Ljava/util/concurrent/CancellationException;

    if-nez v3, :cond_3b6

    .line 9265
    invoke-virtual {v2, v0}, Lads_mobile_sdk/rr3;->a(Ljava/lang/Throwable;)V

    goto :goto_3b6

    :catchall_3b3
    move-exception v0

    move-object v2, v0

    goto :goto_3da

    .line 9271
    :cond_3b6
    :goto_3b6
    instance-of v2, v0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v2, :cond_3d1

    .line 9272
    instance-of v2, v0, Ljava/util/concurrent/CancellationException;

    if-nez v2, :cond_3c9

    .line 9273
    instance-of v2, v0, Lads_mobile_sdk/w01;

    if-eqz v2, :cond_3c3

    throw v0

    .line 9274
    :cond_3c3
    new-instance v2, Lads_mobile_sdk/b01;

    invoke-direct {v2, v0}, Lads_mobile_sdk/b01;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 9275
    :cond_3c9
    new-instance v2, Lads_mobile_sdk/wz0;

    check-cast v0, Ljava/util/concurrent/CancellationException;

    invoke-direct {v2, v0}, Lads_mobile_sdk/wz0;-><init>(Ljava/util/concurrent/CancellationException;)V

    throw v2

    .line 9276
    :cond_3d1
    new-instance v2, Lads_mobile_sdk/i21;

    check-cast v0, Lkotlinx/coroutines/TimeoutCancellationException;

    invoke-direct {v2, v0}, Lads_mobile_sdk/i21;-><init>(Lkotlinx/coroutines/TimeoutCancellationException;)V

    throw v2

    .line 9277
    :cond_3d9
    throw v0
    :try_end_3da
    .catchall {:try_start_3a0 .. :try_end_3da} :catchall_3b3

    .line 9278
    :goto_3da
    :try_start_3da
    throw v2
    :try_end_3db
    .catchall {:try_start_3da .. :try_end_3db} :catchall_3db

    :catchall_3db
    move-exception v0

    invoke-static {v1, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method public final a(Lads_mobile_sdk/ej2;)Lads_mobile_sdk/v01;
    .registers 7

    .line 18570
    invoke-virtual {p1}, Lads_mobile_sdk/ej2;->F()Ljava/util/Map;

    move-result-object v0

    const-string v1, "getIncludeMap(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 18571
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lads_mobile_sdk/ej2;->I()Ljava/lang/String;

    move-result-object v3

    const-string v4, "getRuleLabel(...)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v2, v1, v3}, Lads_mobile_sdk/j43;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_11

    .line 18574
    :cond_3c
    invoke-virtual {p1}, Lads_mobile_sdk/ej2;->G()Lads_mobile_sdk/yh1$f;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_44
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_57

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lads_mobile_sdk/ia1;

    .line 18575
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, p1, v1}, Lads_mobile_sdk/j43;->a(Lads_mobile_sdk/ej2;Lads_mobile_sdk/ia1;)V

    goto :goto_44

    .line 18578
    :cond_57
    invoke-virtual {p1}, Lads_mobile_sdk/ej2;->A()Lads_mobile_sdk/yh1$f;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_74

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 18579
    iget-object v2, p0, Lads_mobile_sdk/j43;->n:Ljava/util/LinkedHashSet;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_5f

    .line 18582
    :cond_74
    invoke-virtual {p1}, Lads_mobile_sdk/ej2;->B()Lads_mobile_sdk/yh1$f;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_7c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_91

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 18583
    sget-object v2, Lads_mobile_sdk/f01;->a:Lcom/google/common/base/Splitter;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v1}, Lads_mobile_sdk/f01;->b(Ljava/lang/String;)V

    goto :goto_7c

    .line 18586
    :cond_91
    invoke-virtual {p1}, Lads_mobile_sdk/ej2;->x()Lads_mobile_sdk/yh1$f;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_99
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_ae

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 18587
    iget-object v2, p0, Lads_mobile_sdk/j43;->o:Ljava/util/LinkedHashSet;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_99

    .line 18590
    :cond_ae
    invoke-virtual {p1}, Lads_mobile_sdk/ej2;->K()Z

    move-result v0

    if-eqz v0, :cond_ba

    .line 18591
    invoke-virtual {p1}, Lads_mobile_sdk/ej2;->w()Z

    move-result v0

    iput-boolean v0, p0, Lads_mobile_sdk/j43;->l:Z

    .line 18594
    :cond_ba
    invoke-virtual {p1}, Lads_mobile_sdk/ej2;->J()Z

    move-result v0

    if-eqz v0, :cond_c6

    .line 18595
    invoke-virtual {p1}, Lads_mobile_sdk/ej2;->v()Z

    move-result v0

    iput-boolean v0, p0, Lads_mobile_sdk/j43;->m:Z

    .line 18598
    :cond_c6
    invoke-virtual {p1}, Lads_mobile_sdk/ej2;->N()Z

    move-result v0

    if-eqz v0, :cond_10b

    .line 18600
    invoke-virtual {p1}, Lads_mobile_sdk/ej2;->M()Z

    move-result v0

    if-eqz v0, :cond_fa

    .line 18601
    invoke-virtual {p1}, Lads_mobile_sdk/ej2;->D()I

    move-result v0

    packed-switch v0, :pswitch_data_152

    .line 18612
    :pswitch_d9
    sget-object v0, Lads_mobile_sdk/kk1;->a:Lads_mobile_sdk/kk1;

    goto :goto_fc

    .line 18613
    :pswitch_dc
    sget-object v0, Lads_mobile_sdk/kk1;->f:Lads_mobile_sdk/kk1;

    goto :goto_fc

    .line 18614
    :pswitch_df
    sget-object v0, Lads_mobile_sdk/kk1;->h:Lads_mobile_sdk/kk1;

    goto :goto_fc

    .line 18615
    :pswitch_e2
    sget-object v0, Lads_mobile_sdk/kk1;->i:Lads_mobile_sdk/kk1;

    goto :goto_fc

    .line 18616
    :pswitch_e5
    sget-object v0, Lads_mobile_sdk/kk1;->d:Lads_mobile_sdk/kk1;

    goto :goto_fc

    .line 18617
    :pswitch_e8
    sget-object v0, Lads_mobile_sdk/kk1;->k:Lads_mobile_sdk/kk1;

    goto :goto_fc

    .line 18618
    :pswitch_eb
    sget-object v0, Lads_mobile_sdk/kk1;->j:Lads_mobile_sdk/kk1;

    goto :goto_fc

    .line 18619
    :pswitch_ee
    sget-object v0, Lads_mobile_sdk/kk1;->c:Lads_mobile_sdk/kk1;

    goto :goto_fc

    .line 18620
    :pswitch_f1
    sget-object v0, Lads_mobile_sdk/kk1;->e:Lads_mobile_sdk/kk1;

    goto :goto_fc

    .line 18621
    :pswitch_f4
    sget-object v0, Lads_mobile_sdk/kk1;->b:Lads_mobile_sdk/kk1;

    goto :goto_fc

    .line 18622
    :pswitch_f7
    sget-object v0, Lads_mobile_sdk/kk1;->a:Lads_mobile_sdk/kk1;

    goto :goto_fc

    .line 18635
    :cond_fa
    sget-object v0, Lads_mobile_sdk/kk1;->a:Lads_mobile_sdk/kk1;

    .line 18637
    :goto_fc
    new-instance v1, Lads_mobile_sdk/m01;

    invoke-virtual {p1}, Lads_mobile_sdk/ej2;->E()Ljava/lang/String;

    move-result-object p1

    const-string v2, "getErrorString(...)"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v1, p1, v0}, Lads_mobile_sdk/m01;-><init>(Ljava/lang/String;Lads_mobile_sdk/kk1;)V

    return-object v1

    .line 18640
    :cond_10b
    invoke-virtual {p1}, Lads_mobile_sdk/ej2;->L()Z

    move-result v0

    if-eqz v0, :cond_14a

    .line 18641
    iget-boolean v0, p0, Lads_mobile_sdk/j43;->k:Z

    if-eqz v0, :cond_13c

    .line 18643
    invoke-virtual {p1}, Lads_mobile_sdk/ej2;->I()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Rule "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " attempted to modify the base URL after it has been set."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 18644
    iget-object v0, p0, Lads_mobile_sdk/j43;->c:Lads_mobile_sdk/ur3;

    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    check-cast v0, Lads_mobile_sdk/as3;

    invoke-virtual {v0, p1, v1}, Lads_mobile_sdk/as3;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_14a

    .line 18646
    :cond_13c
    invoke-virtual {p1}, Lads_mobile_sdk/ej2;->z()Ljava/lang/String;

    move-result-object p1

    const-string v0, "getBaseUrl(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lads_mobile_sdk/j43;->j:Ljava/lang/String;

    const/4 p1, 0x1

    .line 18647
    iput-boolean p1, p0, Lads_mobile_sdk/j43;->k:Z

    .line 18651
    :cond_14a
    :goto_14a
    new-instance p1, Lads_mobile_sdk/q01;

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-direct {p1, v0}, Lads_mobile_sdk/q01;-><init>(Ljava/lang/Object;)V

    return-object p1

    :pswitch_data_152
    .packed-switch 0x0
        :pswitch_f7
        :pswitch_f4
        :pswitch_f1
        :pswitch_ee
        :pswitch_eb
        :pswitch_e8
        :pswitch_d9
        :pswitch_d9
        :pswitch_e5
        :pswitch_d9
        :pswitch_e2
        :pswitch_df
        :pswitch_dc
    .end packed-switch
.end method

.method public final a()Landroid/net/Uri;
    .registers 6

    .line 1662
    iget-object v0, p0, Lads_mobile_sdk/j43;->j:Ljava/lang/String;

    .line 2595
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 2596
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 2598
    iget-object v1, p0, Lads_mobile_sdk/j43;->p:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_14
    :goto_14
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_43

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 2599
    iget-object v4, p0, Lads_mobile_sdk/j43;->o:Ljava/util/LinkedHashSet;

    invoke-interface {v4}, Ljava/util/Set;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3c

    iget-object v4, p0, Lads_mobile_sdk/j43;->o:Ljava/util/LinkedHashSet;

    invoke-interface {v4, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_14

    .line 2600
    :cond_3c
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v0, v3, v2}, Lads_mobile_sdk/c43;->a(Landroid/net/Uri$Builder;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_14

    .line 2604
    :cond_43
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lads_mobile_sdk/v01;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 13

    .line 15758
    instance-of v0, p2, Lads_mobile_sdk/h43;

    if-eqz v0, :cond_13

    move-object v0, p2

    check-cast v0, Lads_mobile_sdk/h43;

    iget v1, v0, Lads_mobile_sdk/h43;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/h43;->e:I

    goto :goto_18

    :cond_13
    new-instance v0, Lads_mobile_sdk/h43;

    invoke-direct {v0, p0, p2}, Lads_mobile_sdk/h43;-><init>(Lads_mobile_sdk/j43;Lkotlin/coroutines/Continuation;)V

    :goto_18
    iget-object p2, v0, Lads_mobile_sdk/h43;->c:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 16002
    iget v2, v0, Lads_mobile_sdk/h43;->e:I

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v2, :cond_4a

    if-eq v2, v5, :cond_3e

    if-ne v2, v4, :cond_36

    iget-object p1, v0, Lads_mobile_sdk/h43;->b:Ljava/lang/Object;

    check-cast p1, Lads_mobile_sdk/yt;

    iget-object v0, v0, Lads_mobile_sdk/h43;->a:Ljava/lang/Object;

    check-cast v0, Lads_mobile_sdk/v01;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_144

    :cond_36
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3e
    iget-object p1, v0, Lads_mobile_sdk/h43;->b:Ljava/lang/Object;

    check-cast p1, Lads_mobile_sdk/v01;

    iget-object v2, v0, Lads_mobile_sdk/h43;->a:Ljava/lang/Object;

    check-cast v2, Lads_mobile_sdk/j43;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_68

    :cond_4a
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 16006
    iget-object p2, p0, Lads_mobile_sdk/j43;->a:Lads_mobile_sdk/ex0;

    .line 16007
    iget p2, p2, Lads_mobile_sdk/ex0;->y:I

    if-eq p2, v4, :cond_74

    if-ne p2, v5, :cond_71

    .line 16008
    iget-object p2, p0, Lads_mobile_sdk/j43;->g:Lads_mobile_sdk/jb3;

    iput-object p0, v0, Lads_mobile_sdk/h43;->a:Ljava/lang/Object;

    iput-object p1, v0, Lads_mobile_sdk/h43;->b:Ljava/lang/Object;

    iput v5, v0, Lads_mobile_sdk/h43;->e:I

    check-cast p2, Lads_mobile_sdk/rp0;

    invoke-virtual {p2, v0}, Lads_mobile_sdk/rp0;->c(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_67

    goto/16 :goto_141

    :cond_67
    move-object v2, p0

    .line 16009
    :goto_68
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_72

    goto :goto_75

    :cond_71
    move-object v2, p0

    :cond_72
    const/4 v5, 0x0

    goto :goto_75

    :cond_74
    move-object v2, p0

    :goto_75
    if-nez v5, :cond_78

    return-object p1

    .line 16016
    :cond_78
    new-instance p2, Lcom/google/gson/JsonObject;

    invoke-direct {p2}, Lcom/google/gson/JsonObject;-><init>()V

    .line 16017
    iget-object v5, v2, Lads_mobile_sdk/j43;->u:Lcom/google/gson/JsonObject;

    if-nez v5, :cond_87

    const-string v5, "signalJson"

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v5, v3

    :cond_87
    const-string v6, "signals"

    invoke-virtual {p2, v6, v5}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    .line 16020
    instance-of v5, p1, Lads_mobile_sdk/m01;

    const-string v6, "error"

    if-eqz v5, :cond_9c

    move-object v5, p1

    check-cast v5, Lads_mobile_sdk/m01;

    .line 16021
    iget-object v5, v5, Lads_mobile_sdk/m01;->c:Ljava/lang/String;

    .line 16022
    invoke-virtual {p2, v6, v5}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_121

    .line 16023
    :cond_9c
    instance-of v5, p1, Lads_mobile_sdk/i01;

    if-eqz v5, :cond_a9

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v6, v5}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_121

    .line 16024
    :cond_a9
    instance-of v5, p1, Lads_mobile_sdk/q01;

    if-eqz v5, :cond_121

    .line 16025
    sget-object v5, Lads_mobile_sdk/f01;->a:Lcom/google/common/base/Splitter;

    new-instance v5, Lads_mobile_sdk/i43;

    invoke-direct {v5, p1}, Lads_mobile_sdk/i43;-><init>(Lads_mobile_sdk/v01;)V

    invoke-static {v5}, Lads_mobile_sdk/f01;->a(Lkotlin/jvm/functions/Function0;)V

    .line 16027
    move-object v5, p1

    check-cast v5, Lads_mobile_sdk/q01;

    .line 16028
    iget-object v5, v5, Lads_mobile_sdk/q01;->b:Ljava/lang/Object;

    .line 16029
    check-cast v5, Lads_mobile_sdk/zt;

    .line 16030
    iget-boolean v6, v5, Lads_mobile_sdk/zt;->d:Z

    invoke-static {v6}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v6

    const-string v7, "cookies_include"

    invoke-virtual {p2, v7, v6}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 16032
    iget-object v6, v5, Lads_mobile_sdk/zt;->e:Ljava/lang/String;

    const-string v7, "url"

    invoke-virtual {p2, v7, v6}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 16036
    new-instance v6, Lcom/google/gson/JsonObject;

    invoke-direct {v6}, Lcom/google/gson/JsonObject;-><init>()V

    .line 16037
    iget-object v7, v2, Lads_mobile_sdk/j43;->p:Ljava/util/LinkedHashMap;

    invoke-virtual {v7}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_df
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_fb

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 16038
    invoke-virtual {v6, v9, v8}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_df

    .line 16040
    :cond_fb
    sget-object v7, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 16041
    const-string v7, "c_params"

    invoke-virtual {p2, v7, v6}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    .line 16050
    iget-object v6, v5, Lads_mobile_sdk/zt;->c:Ljava/lang/String;

    if-eqz v6, :cond_121

    .line 16051
    const-string v7, "post_body"

    invoke-virtual {p2, v7, v6}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 16052
    iget-object v6, v5, Lads_mobile_sdk/zt;->i:Ljava/lang/String;

    if-nez v6, :cond_111

    const-string v6, "text/plain"

    :cond_111
    const-string v7, "content_type"

    invoke-virtual {p2, v7, v6}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 16053
    iget-boolean v5, v5, Lads_mobile_sdk/zt;->h:Z

    invoke-static {v5}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v5

    const-string v6, "use_compression"

    invoke-virtual {p2, v6, v5}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 16061
    :cond_121
    :goto_121
    sget-object v5, Lads_mobile_sdk/zt;->j:Lads_mobile_sdk/yt;

    .line 16062
    iget-object v2, v2, Lads_mobile_sdk/j43;->g:Lads_mobile_sdk/jb3;

    iput-object p1, v0, Lads_mobile_sdk/h43;->a:Ljava/lang/Object;

    iput-object v5, v0, Lads_mobile_sdk/h43;->b:Ljava/lang/Object;

    iput v4, v0, Lads_mobile_sdk/h43;->e:I

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16063
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v4, "toString(...)"

    invoke-static {p2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Lads_mobile_sdk/rp0;

    const-string v4, "google.afma.request.patchCSRB"

    invoke-virtual {v2, v4, p2, v0}, Lads_mobile_sdk/rp0;->a(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_142

    :goto_141
    return-object v1

    :cond_142
    move-object v0, p1

    move-object p1, v5

    .line 16064
    :goto_144
    check-cast p2, Lads_mobile_sdk/v01;

    .line 16110
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p2}, Lads_mobile_sdk/yt;->a(Lads_mobile_sdk/v01;)Lads_mobile_sdk/v01;

    move-result-object p1

    .line 16114
    instance-of p2, p1, Lads_mobile_sdk/i01;

    if-eqz p2, :cond_152

    return-object p1

    .line 16115
    :cond_152
    instance-of p2, p1, Lads_mobile_sdk/q01;

    if-eqz p2, :cond_172

    .line 16116
    move-object p2, p1

    check-cast p2, Lads_mobile_sdk/q01;

    .line 16117
    iget-object p2, p2, Lads_mobile_sdk/q01;->b:Ljava/lang/Object;

    .line 16118
    check-cast p2, Lads_mobile_sdk/zt;

    .line 16119
    instance-of v1, v0, Lads_mobile_sdk/q01;

    if-eqz v1, :cond_164

    check-cast v0, Lads_mobile_sdk/q01;

    goto :goto_165

    :cond_164
    move-object v0, v3

    :goto_165
    if-eqz v0, :cond_16f

    .line 16120
    iget-object v0, v0, Lads_mobile_sdk/q01;->b:Ljava/lang/Object;

    .line 16121
    check-cast v0, Lads_mobile_sdk/zt;

    if-eqz v0, :cond_16f

    iget-object v3, v0, Lads_mobile_sdk/zt;->f:Ljava/lang/String;

    .line 16122
    :cond_16f
    iput-object v3, p2, Lads_mobile_sdk/zt;->f:Ljava/lang/String;

    return-object p1

    .line 16124
    :cond_172
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1
.end method

.method public final a(Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;Lads_mobile_sdk/yp2;Lads_mobile_sdk/hj2;Ljava/util/Map;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .registers 6

    .line 2606
    invoke-static/range {p0 .. p5}, Lads_mobile_sdk/j43;->a(Lads_mobile_sdk/j43;Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;Lads_mobile_sdk/yp2;Lads_mobile_sdk/hj2;Ljava/util/Map;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 9279
    instance-of v2, v1, Lads_mobile_sdk/f43;

    if-eqz v2, :cond_17

    move-object v2, v1

    check-cast v2, Lads_mobile_sdk/f43;

    iget v3, v2, Lads_mobile_sdk/f43;->d:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_17

    sub-int/2addr v3, v4

    iput v3, v2, Lads_mobile_sdk/f43;->d:I

    goto :goto_1c

    :cond_17
    new-instance v2, Lads_mobile_sdk/f43;

    invoke-direct {v2, v0, v1}, Lads_mobile_sdk/f43;-><init>(Lads_mobile_sdk/j43;Lkotlin/coroutines/Continuation;)V

    :goto_1c
    iget-object v1, v2, Lads_mobile_sdk/f43;->b:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v3

    .line 9894
    iget v4, v2, Lads_mobile_sdk/f43;->d:I

    const/4 v5, 0x1

    if-eqz v4, :cond_38

    if-ne v4, v5, :cond_30

    iget-object v2, v2, Lads_mobile_sdk/f43;->a:Lads_mobile_sdk/j43;

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_383

    :cond_30
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_38
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 9895
    invoke-virtual {v0}, Lads_mobile_sdk/j43;->d()V

    .line 9896
    iget-object v1, v0, Lads_mobile_sdk/j43;->e:Ljava/util/Optional;

    invoke-static {v1}, Lkotlin/jvm/optionals/OptionalsKt;->getOrNull(Ljava/util/Optional;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeRequest;

    const/16 v4, 0xa

    const/4 v6, 0x0

    if-nez v1, :cond_4d

    goto/16 :goto_149

    .line 10460
    :cond_4d
    invoke-static {}, Lads_mobile_sdk/h42;->v()Lads_mobile_sdk/g42;

    move-result-object v7

    const-string v8, "newBuilder(...)"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10461
    const-string v9, "builder"

    invoke-static {v7, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10462
    invoke-interface {v1}, Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeRequest;->isImageLoadingDisabled()Z

    move-result v10

    if-eqz v10, :cond_64

    .line 10463
    invoke-virtual {v7}, Lads_mobile_sdk/g42;->h()V

    .line 10464
    :cond_64
    invoke-interface {v1}, Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeRequest;->getCustomMuteThisAdRequested()Z

    move-result v10

    if-eqz v10, :cond_6d

    .line 10465
    invoke-virtual {v7}, Lads_mobile_sdk/g42;->k()V

    .line 10466
    :cond_6d
    invoke-interface {v1}, Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeRequest;->getMediaAspectRatio()Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAd$NativeMediaAspectRatio;

    move-result-object v10

    sget-object v11, Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAd$NativeMediaAspectRatio;->UNKNOWN:Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAd$NativeMediaAspectRatio;

    const-string v12, "value"

    if-eq v10, v11, :cond_90

    .line 10467
    invoke-interface {v1}, Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeRequest;->getMediaAspectRatio()Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAd$NativeMediaAspectRatio;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v10

    sget-object v11, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v10, v11}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "toLowerCase(...)"

    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10468
    invoke-static {v10, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10636
    invoke-virtual {v7, v10}, Lads_mobile_sdk/g42;->a(Ljava/lang/String;)V

    .line 10637
    :cond_90
    invoke-interface {v1}, Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeRequest;->getAdChoicesPlacement()Lcom/google/android/libraries/ads/mobile/sdk/common/AdChoicesPlacement;

    move-result-object v10

    invoke-virtual {v10}, Lcom/google/android/libraries/ads/mobile/sdk/common/AdChoicesPlacement;->getValue()I

    move-result v10

    .line 10638
    invoke-virtual {v7, v10}, Lads_mobile_sdk/g42;->a(I)V

    .line 10639
    invoke-interface {v1}, Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeRequest;->getCustomClickGestureDirection()Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAd$SwipeGestureDirection;

    move-result-object v10

    const-string v11, "build(...)"

    if-eqz v10, :cond_cc

    .line 11189
    invoke-static {}, Lads_mobile_sdk/j42;->v()Lads_mobile_sdk/i42;

    move-result-object v13

    invoke-static {v13, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11190
    invoke-static {v13, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11191
    invoke-virtual {v10}, Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAd$SwipeGestureDirection;->getValue()I

    move-result v10

    .line 11192
    invoke-virtual {v13, v10}, Lads_mobile_sdk/i42;->a(I)V

    .line 11193
    invoke-interface {v1}, Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeRequest;->getCustomClickGestureAllowTaps()Z

    move-result v10

    if-eqz v10, :cond_bd

    .line 11194
    invoke-virtual {v13}, Lads_mobile_sdk/i42;->h()V

    .line 11195
    :cond_bd
    invoke-virtual {v13}, Lads_mobile_sdk/vz0$a;->b()Lads_mobile_sdk/vz0;

    move-result-object v10

    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v10, Lads_mobile_sdk/j42;

    .line 11196
    invoke-static {v10, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11436
    invoke-virtual {v7, v10}, Lads_mobile_sdk/g42;->a(Lads_mobile_sdk/j42;)V

    .line 11437
    :cond_cc
    invoke-interface {v1}, Lcom/google/android/libraries/ads/mobile/sdk/banner/BannerRequest;->getAdSize()Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;

    move-result-object v10

    if-eqz v10, :cond_d8

    .line 11438
    invoke-virtual {v7}, Lads_mobile_sdk/g42;->j()V

    .line 11439
    invoke-virtual {v7}, Lads_mobile_sdk/g42;->i()V

    .line 11440
    :cond_d8
    invoke-interface {v1}, Lcom/google/android/libraries/ads/mobile/sdk/banner/BannerRequest;->getVideoOptions()Lcom/google/android/libraries/ads/mobile/sdk/common/VideoOptions;

    move-result-object v1

    if-eqz v1, :cond_112

    .line 11978
    invoke-static {}, Lads_mobile_sdk/l42;->v()Lads_mobile_sdk/k42;

    move-result-object v10

    invoke-static {v10, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11979
    invoke-static {v10, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11980
    invoke-virtual {v1}, Lcom/google/android/libraries/ads/mobile/sdk/common/VideoOptions;->getStartMuted()Z

    move-result v8

    if-eqz v8, :cond_f1

    .line 11981
    invoke-virtual {v10}, Lads_mobile_sdk/k42;->j()V

    .line 11982
    :cond_f1
    invoke-virtual {v1}, Lcom/google/android/libraries/ads/mobile/sdk/common/VideoOptions;->getClickToExpandRequested()Z

    move-result v8

    if-eqz v8, :cond_fa

    .line 11983
    invoke-virtual {v10}, Lads_mobile_sdk/k42;->h()V

    .line 11984
    :cond_fa
    invoke-virtual {v1}, Lcom/google/android/libraries/ads/mobile/sdk/common/VideoOptions;->getCustomControlsRequested()Z

    move-result v1

    if-eqz v1, :cond_103

    .line 11985
    invoke-virtual {v10}, Lads_mobile_sdk/k42;->i()V

    .line 11986
    :cond_103
    invoke-virtual {v10}, Lads_mobile_sdk/vz0$a;->b()Lads_mobile_sdk/vz0;

    move-result-object v1

    invoke-static {v1, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lads_mobile_sdk/l42;

    .line 11987
    invoke-static {v1, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12032
    invoke-virtual {v7, v1}, Lads_mobile_sdk/g42;->a(Lads_mobile_sdk/l42;)V

    .line 12033
    :cond_112
    invoke-virtual {v7}, Lads_mobile_sdk/vz0$a;->b()Lads_mobile_sdk/vz0;

    move-result-object v1

    invoke-static {v1, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lads_mobile_sdk/h42;

    .line 12034
    iget-object v7, v0, Lads_mobile_sdk/j43;->v:Lcom/google/gson/JsonObject;

    .line 12035
    sget-object v8, Lads_mobile_sdk/dt;->qd:Lads_mobile_sdk/dt;

    .line 12036
    iget-object v8, v8, Lads_mobile_sdk/dt;->a:Ljava/util/ArrayList;

    .line 12037
    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 12038
    invoke-virtual {v1}, Lads_mobile_sdk/f;->c()[B

    move-result-object v1

    invoke-static {v1, v4}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v1

    const-string v9, "encode(...)"

    invoke-static {v1, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v10, Ljava/lang/String;

    sget-object v9, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v10, v1, v9}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    const/4 v14, 0x4

    const/4 v15, 0x0

    .line 12039
    const-string v11, "="

    const-string v12, "."

    const/4 v13, 0x0

    invoke-static/range {v10 .. v15}, Lkotlin/text/StringsKt__StringsJVMKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 12040
    invoke-virtual {v7, v8, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 12041
    :goto_149
    iget-object v1, v0, Lads_mobile_sdk/j43;->t:Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;

    const/4 v7, 0x0

    const-string v8, "signals"

    if-nez v1, :cond_154

    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v7

    :cond_154
    iget-object v1, v1, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;->neighboringContentUrls:Ljava/util/Set;

    if-eqz v1, :cond_199

    .line 12557
    new-instance v9, Ljava/util/ArrayList;

    invoke-static {v1, v4}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v9, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 12558
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_165
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_179

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 12559
    check-cast v4, Ljava/lang/String;

    .line 12560
    invoke-static {v4}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 13078
    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_165

    .line 13079
    :cond_179
    new-instance v1, Lcom/google/gson/JsonArray;

    invoke-direct {v1}, Lcom/google/gson/JsonArray;-><init>()V

    .line 13080
    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_182
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_192

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 13081
    invoke-virtual {v1, v9}, Lcom/google/gson/JsonArray;->add(Ljava/lang/String;)V

    goto :goto_182

    .line 13084
    :cond_192
    iget-object v4, v0, Lads_mobile_sdk/j43;->v:Lcom/google/gson/JsonObject;

    const-string v9, "neighboring_content_urls"

    invoke-virtual {v4, v9, v1}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    .line 13085
    :cond_199
    iget-object v1, v0, Lads_mobile_sdk/j43;->a:Lads_mobile_sdk/ex0;

    .line 13086
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13088
    const-string v4, "IAB_AUDIENCE_1_1"

    const-string v9, "3"

    invoke-static {v4, v9}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v4

    const-string v9, "IAB_CONTENT_2_1"

    const-string v10, "4"

    invoke-static {v9, v10}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v9

    const-string v10, "IAB_CONTENT_2_2"

    const-string v11, "5"

    invoke-static {v10, v11}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v10

    filled-new-array {v4, v9, v10}, [Lkotlin/Pair;

    move-result-object v4

    invoke-static {v4}, Lkotlin/collections/MapsKt__MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v4

    .line 13089
    const-string v9, "key"

    const-string v10, "pps_tx"

    invoke-static {v10, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v9, "defaultValue"

    invoke-static {v4, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13146
    sget-object v9, Lads_mobile_sdk/yr;->p:Lads_mobile_sdk/xr;

    invoke-virtual {v1, v10, v4, v9}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 13147
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 13156
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1df
    :goto_1df
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_201

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 13157
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v10, v4}, Lads_mobile_sdk/j43;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1df

    .line 13671
    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1df

    :cond_201
    const/16 v16, 0x3e

    const/16 v17, 0x0

    .line 13672
    const-string v10, "~"

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-static/range {v9 .. v17}, Lkotlin/collections/CollectionsKt___CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 13673
    invoke-static {v1}, Lkotlin/text/StringsKt__StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_225

    .line 13674
    iget-object v4, v0, Lads_mobile_sdk/j43;->v:Lcom/google/gson/JsonObject;

    sget-object v9, Lads_mobile_sdk/dt;->Lg:Lads_mobile_sdk/dt;

    .line 13675
    iget-object v9, v9, Lads_mobile_sdk/dt;->a:Ljava/util/ArrayList;

    .line 13676
    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 13677
    invoke-virtual {v4, v9, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 13678
    :cond_225
    iget-object v1, v0, Lads_mobile_sdk/j43;->t:Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;

    if-nez v1, :cond_22d

    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v7

    :cond_22d
    iget-object v1, v1, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;->qualitySignals:Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/QualitySignals;

    if-eqz v1, :cond_268

    iget-object v1, v1, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/QualitySignals;->appStats:Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/AppStats;

    if-eqz v1, :cond_268

    iget-wide v9, v1, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/AppStats;->timeInSessionMilliseconds:J

    .line 13679
    iget-object v1, v0, Lads_mobile_sdk/j43;->v:Lcom/google/gson/JsonObject;

    sget-object v4, Lads_mobile_sdk/dt;->Vk:Lads_mobile_sdk/dt;

    .line 13680
    iget-object v4, v4, Lads_mobile_sdk/dt;->a:Ljava/util/ArrayList;

    .line 13681
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 13682
    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v4, v11}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 13684
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    sub-long/2addr v11, v9

    const v1, 0xea60

    int-to-long v9, v1

    div-long/2addr v11, v9

    .line 13685
    iget-object v1, v0, Lads_mobile_sdk/j43;->v:Lcom/google/gson/JsonObject;

    .line 13686
    sget-object v4, Lads_mobile_sdk/dt;->kj:Lads_mobile_sdk/dt;

    .line 13687
    iget-object v4, v4, Lads_mobile_sdk/dt;->a:Ljava/util/ArrayList;

    .line 13688
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    mul-long/2addr v11, v9

    .line 13689
    invoke-static {v11, v12}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    .line 13690
    invoke-virtual {v1, v4, v9}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 13691
    :cond_268
    iget-object v1, v0, Lads_mobile_sdk/j43;->t:Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;

    if-nez v1, :cond_270

    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v7

    :cond_270
    iget-object v1, v1, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;->multipleAdSizeString:Ljava/lang/String;

    if-eqz v1, :cond_283

    .line 13695
    iget-object v4, v0, Lads_mobile_sdk/j43;->v:Lcom/google/gson/JsonObject;

    sget-object v9, Lads_mobile_sdk/dt;->Gb:Lads_mobile_sdk/dt;

    .line 13696
    iget-object v9, v9, Lads_mobile_sdk/dt;->a:Ljava/util/ArrayList;

    .line 13697
    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 13698
    invoke-virtual {v4, v9, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 13701
    :cond_283
    iget-object v1, v0, Lads_mobile_sdk/j43;->t:Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;

    if-nez v1, :cond_28b

    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v7

    :cond_28b
    iget-object v9, v1, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;->format:Ljava/lang/String;

    if-eqz v9, :cond_2dc

    .line 13703
    iget-object v1, v0, Lads_mobile_sdk/j43;->w:Ljava/util/LinkedHashMap;

    const-string v4, "request_type"

    invoke-virtual {v1, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lads_mobile_sdk/ne3;

    if-eqz v1, :cond_2cd

    invoke-virtual {v1}, Lads_mobile_sdk/ne3;->y()J

    move-result-wide v10

    .line 13704
    sget-object v1, Lads_mobile_sdk/i53;->b:Lads_mobile_sdk/i53;

    invoke-virtual {v1}, Lads_mobile_sdk/i53;->getNumber()I

    move-result v1

    int-to-long v12, v1

    cmp-long v1, v10, v12

    if-nez v1, :cond_2cd

    const-string v1, "interstitial_mb"

    invoke-static {v9, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2cd

    .line 13706
    iget-object v1, v0, Lads_mobile_sdk/j43;->v:Lcom/google/gson/JsonObject;

    sget-object v4, Lads_mobile_sdk/dt;->p8:Lads_mobile_sdk/dt;

    .line 13707
    iget-object v4, v4, Lads_mobile_sdk/dt;->a:Ljava/util/ArrayList;

    .line 13708
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const/4 v13, 0x4

    const/4 v14, 0x0

    .line 13709
    const-string v10, "_as"

    const-string v11, "_mb"

    const/4 v12, 0x0

    invoke-static/range {v9 .. v14}, Lkotlin/text/StringsKt__StringsJVMKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v4, v9}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2dc

    .line 13711
    :cond_2cd
    iget-object v1, v0, Lads_mobile_sdk/j43;->v:Lcom/google/gson/JsonObject;

    sget-object v4, Lads_mobile_sdk/dt;->p8:Lads_mobile_sdk/dt;

    .line 13712
    iget-object v4, v4, Lads_mobile_sdk/dt;->a:Ljava/util/ArrayList;

    .line 13713
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 13714
    invoke-virtual {v1, v4, v9}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 13721
    :cond_2dc
    :goto_2dc
    iget-object v1, v0, Lads_mobile_sdk/j43;->t:Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;

    if-nez v1, :cond_2e4

    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v7

    :cond_2e4
    iget-object v1, v1, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;->adSizeArray:Ljava/util/ArrayList;

    invoke-static {v1}, Lkotlin/collections/CollectionsKt___CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/AdSizeBundle;

    if-eqz v1, :cond_312

    .line 13722
    iget-object v4, v0, Lads_mobile_sdk/j43;->v:Lcom/google/gson/JsonObject;

    .line 13724
    new-instance v9, Lcom/google/gson/JsonObject;

    invoke-direct {v9}, Lcom/google/gson/JsonObject;-><init>()V

    .line 13725
    iget v10, v1, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/AdSizeBundle;->width:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const-string v11, "width"

    invoke-virtual {v9, v11, v10}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 13726
    iget v1, v1, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/AdSizeBundle;->height:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v10, "height"

    invoke-virtual {v9, v10, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 13727
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 13728
    const-string v1, "p_sz"

    invoke-virtual {v4, v1, v9}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    .line 13737
    :cond_312
    iget-object v1, v0, Lads_mobile_sdk/j43;->v:Lcom/google/gson/JsonObject;

    .line 13738
    sget-object v4, Lads_mobile_sdk/dt;->md:Lads_mobile_sdk/dt;

    .line 13739
    iget-object v4, v4, Lads_mobile_sdk/dt;->a:Ljava/util/ArrayList;

    .line 13740
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 13741
    iget-object v9, v0, Lads_mobile_sdk/j43;->t:Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;

    if-nez v9, :cond_326

    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v9, v7

    :cond_326
    iget v9, v9, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;->screenWidth:I

    iget-object v10, v0, Lads_mobile_sdk/j43;->t:Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;

    if-nez v10, :cond_330

    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v10, v7

    :cond_330
    iget v10, v10, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;->screenHeight:I

    if-le v9, v10, :cond_337

    const-string v9, "l"

    goto :goto_339

    :cond_337
    const-string v9, "p"

    .line 13742
    :goto_339
    invoke-virtual {v1, v4, v9}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 13747
    iget-object v1, v0, Lads_mobile_sdk/j43;->v:Lcom/google/gson/JsonObject;

    .line 13748
    sget-object v4, Lads_mobile_sdk/dt;->Li:Lads_mobile_sdk/dt;

    .line 13749
    iget-object v4, v4, Lads_mobile_sdk/dt;->a:Ljava/util/ArrayList;

    .line 13750
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 13751
    iget-object v9, v0, Lads_mobile_sdk/j43;->t:Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;

    if-nez v9, :cond_350

    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v9, v7

    :cond_350
    iget v9, v9, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;->screenWidthDip:I

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    .line 13752
    invoke-virtual {v1, v4, v9}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 13756
    iget-object v1, v0, Lads_mobile_sdk/j43;->v:Lcom/google/gson/JsonObject;

    .line 13757
    sget-object v4, Lads_mobile_sdk/dt;->Ki:Lads_mobile_sdk/dt;

    .line 13758
    iget-object v4, v4, Lads_mobile_sdk/dt;->a:Ljava/util/ArrayList;

    .line 13759
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 13760
    iget-object v6, v0, Lads_mobile_sdk/j43;->t:Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;

    if-nez v6, :cond_36d

    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_36e

    :cond_36d
    move-object v7, v6

    :goto_36e
    iget v6, v7, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;->screenHeightDip:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    .line 13761
    invoke-virtual {v1, v4, v6}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 13762
    iput-object v0, v2, Lads_mobile_sdk/f43;->a:Lads_mobile_sdk/j43;

    iput v5, v2, Lads_mobile_sdk/f43;->d:I

    invoke-virtual {v0, v2}, Lads_mobile_sdk/j43;->b(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v3, :cond_382

    return-object v3

    :cond_382
    move-object v2, v0

    .line 13763
    :goto_383
    iget-object v1, v2, Lads_mobile_sdk/j43;->v:Lcom/google/gson/JsonObject;

    .line 13764
    iget-object v3, v2, Lads_mobile_sdk/j43;->f:Lads_mobile_sdk/j40;

    invoke-virtual {v3}, Lads_mobile_sdk/j40;->a()Ljava/lang/String;

    move-result-object v3

    const-string v4, "c"

    invoke-virtual {v1, v4, v3}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 13765
    invoke-virtual {v2}, Lads_mobile_sdk/j43;->e()V

    .line 13766
    invoke-virtual {v2}, Lads_mobile_sdk/j43;->c()V

    .line 13767
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v1
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 15

    .line 15146
    iget-object v0, p0, Lads_mobile_sdk/j43;->t:Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;

    const-string v1, "signals"

    const/4 v2, 0x0

    if-nez v0, :cond_b

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_b
    iget-object v0, v0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;->googleExtrasBundle:Landroid/os/Bundle;

    if-eqz v0, :cond_18

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_16

    goto :goto_18

    :cond_16
    :goto_16
    move-object v3, v0

    goto :goto_2a

    .line 15147
    :cond_18
    :goto_18
    iget-object v0, p0, Lads_mobile_sdk/j43;->t:Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;

    if-nez v0, :cond_20

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_20
    iget-object v0, v0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;->googleExtrasBundle:Landroid/os/Bundle;

    if-eqz v0, :cond_29

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_16

    :cond_29
    move-object v3, v2

    :goto_2a
    if-eqz v3, :cond_62

    const/16 v10, 0x3e

    const/4 v11, 0x0

    .line 15148
    const-string v4, "|"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v3 .. v11}, Lkotlin/collections/CollectionsKt___CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_62

    .line 15149
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "="

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 15150
    new-instance p2, Lkotlin/text/Regex;

    iget-object v0, p0, Lads_mobile_sdk/j43;->a:Lads_mobile_sdk/ex0;

    invoke-virtual {v0}, Lads_mobile_sdk/ex0;->N0()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Lkotlin/text/Regex;->matches(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_62

    return-object p1

    :cond_62
    return-object v2
.end method

.method public final a(Ljava/lang/String;Ljava/util/Set;)Lkotlin/Pair;
    .registers 12

    .line 455
    iget-object v0, p0, Lads_mobile_sdk/j43;->j:Ljava/lang/String;

    .line 1313
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 1314
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz p2, :cond_13

    .line 1315
    new-instance v2, Landroid/net/Uri$Builder;

    invoke-direct {v2}, Landroid/net/Uri$Builder;-><init>()V

    goto :goto_14

    :cond_13
    move-object v2, v1

    .line 1327
    :goto_14
    iget-object v3, p0, Lads_mobile_sdk/j43;->p:Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1e
    :goto_1e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_a3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1328
    iget-object v7, p0, Lads_mobile_sdk/j43;->o:Ljava/util/LinkedHashSet;

    invoke-interface {v7}, Ljava/util/Set;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_47

    iget-object v7, p0, Lads_mobile_sdk/j43;->o:Ljava/util/LinkedHashSet;

    invoke-interface {v7, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1e

    .line 1329
    :cond_47
    iget-object v7, p0, Lads_mobile_sdk/j43;->n:Ljava/util/LinkedHashSet;

    invoke-interface {v7, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_64

    if-eqz v2, :cond_5c

    if-eqz p2, :cond_5a

    .line 1330
    invoke-interface {p2, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-ne v7, v5, :cond_5a

    goto :goto_5c

    :cond_5a
    move-object v5, v2

    goto :goto_5d

    :cond_5c
    :goto_5c
    move-object v5, v0

    .line 1335
    :goto_5d
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v5, v6, v4}, Lads_mobile_sdk/c43;->a(Landroid/net/Uri$Builder;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1e

    .line 1336
    :cond_64
    iget-object v7, p0, Lads_mobile_sdk/j43;->n:Ljava/util/LinkedHashSet;

    invoke-interface {v7, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1e

    invoke-static {}, Lads_mobile_sdk/au;->a()Lads_mobile_sdk/bu;

    move-result-object v7

    sget-object v8, Lads_mobile_sdk/bu;->c:Lads_mobile_sdk/bu;

    if-ne v7, v8, :cond_1e

    .line 1338
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "l"

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    if-eqz v2, :cond_9a

    if-eqz p2, :cond_98

    .line 1339
    invoke-interface {p2, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-ne v7, v5, :cond_98

    goto :goto_9a

    :cond_98
    move-object v5, v2

    goto :goto_9b

    :cond_9a
    :goto_9a
    move-object v5, v0

    .line 1344
    :goto_9b
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v5, v6, v4}, Lads_mobile_sdk/c43;->a(Landroid/net/Uri$Builder;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1e

    :cond_a3
    if-eqz p1, :cond_c5

    .line 1345
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_c5

    .line 1346
    iget-object v3, p0, Lads_mobile_sdk/j43;->a:Lads_mobile_sdk/ex0;

    invoke-virtual {v3}, Lads_mobile_sdk/ex0;->t()Ljava/lang/String;

    move-result-object v3

    if-eqz v2, :cond_be

    if-eqz p2, :cond_bc

    .line 1347
    invoke-interface {p2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-ne p2, v5, :cond_bc

    goto :goto_be

    :cond_bc
    move-object p2, v2

    goto :goto_bf

    :cond_be
    :goto_be
    move-object p2, v0

    .line 1352
    :goto_bf
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {p2, v3, p1}, Lads_mobile_sdk/c43;->a(Landroid/net/Uri$Builder;Ljava/lang/String;Ljava/lang/String;)V

    .line 1353
    :cond_c5
    new-instance p1, Lkotlin/Pair;

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p2

    if-eqz v2, :cond_d7

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_d7

    invoke-virtual {v0}, Landroid/net/Uri;->getEncodedQuery()Ljava/lang/String;

    move-result-object v1

    :cond_d7
    invoke-direct {p1, p2, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1
.end method

.method public final a(Lads_mobile_sdk/ej2;Lads_mobile_sdk/ia1;)V
    .registers 8

    .line 15698
    iget-object v0, p0, Lads_mobile_sdk/j43;->u:Lcom/google/gson/JsonObject;

    const/4 v1, 0x0

    if-nez v0, :cond_b

    const-string v0, "signalJson"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_b
    invoke-virtual {p2}, Lads_mobile_sdk/ia1;->G()Lads_mobile_sdk/yh1$f;

    move-result-object v2

    const-string v3, "getPathList(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v2}, Lads_mobile_sdk/c43;->a(Lcom/google/gson/JsonObject;Lads_mobile_sdk/yh1$f;)Lcom/google/gson/JsonElement;

    move-result-object v0

    if-nez v0, :cond_1c

    goto/16 :goto_86

    .line 15701
    :cond_1c
    invoke-virtual {p2}, Lads_mobile_sdk/ia1;->I()Lads_mobile_sdk/lj3;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    if-eqz v2, :cond_48

    const/4 v4, 0x1

    if-eq v2, v4, :cond_43

    const/4 v4, 0x2

    if-eq v2, v4, :cond_3e

    const/4 v4, 0x3

    if-eq v2, v4, :cond_39

    const/4 v0, 0x4

    if-ne v2, v0, :cond_33

    goto :goto_48

    .line 15706
    :cond_33
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    :cond_39
    invoke-static {v0, p2}, Lads_mobile_sdk/c43;->b(Lcom/google/gson/JsonElement;Lads_mobile_sdk/ia1;)Ljava/lang/String;

    move-result-object v0

    goto :goto_49

    .line 15707
    :cond_3e
    invoke-static {v0, p2}, Lads_mobile_sdk/c43;->a(Lcom/google/gson/JsonElement;Lads_mobile_sdk/ia1;)Ljava/lang/String;

    move-result-object v0

    goto :goto_49

    .line 15708
    :cond_43
    invoke-static {v0, p2}, Lads_mobile_sdk/c43;->c(Lcom/google/gson/JsonElement;Lads_mobile_sdk/ia1;)Ljava/lang/String;

    move-result-object v0

    goto :goto_49

    :cond_48
    :goto_48
    move-object v0, v1

    :goto_49
    if-nez v0, :cond_4c

    goto :goto_86

    .line 15713
    :cond_4c
    invoke-virtual {p2}, Lads_mobile_sdk/ia1;->L()Z

    move-result v2

    if-eqz v2, :cond_76

    invoke-virtual {p2}, Lads_mobile_sdk/ia1;->x()Ljava/lang/String;

    move-result-object v2

    const-string v4, "getCaptureGroup(...)"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_76

    .line 15714
    sget-object v2, Lads_mobile_sdk/o21;->f:Lads_mobile_sdk/m21;

    invoke-virtual {p2}, Lads_mobile_sdk/ia1;->x()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2, v0}, Lads_mobile_sdk/m21;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_73

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move-object v0, v2

    :cond_73
    if-nez v1, :cond_76

    goto :goto_86

    .line 15719
    :cond_76
    invoke-virtual {p2}, Lads_mobile_sdk/ia1;->M()Z

    move-result v1

    if-eqz v1, :cond_87

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p2}, Lads_mobile_sdk/ia1;->D()I

    move-result v2

    if-le v1, v2, :cond_87

    :goto_86
    return-void

    .line 15723
    :cond_87
    invoke-virtual {p2}, Lads_mobile_sdk/ia1;->J()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_93

    .line 15724
    invoke-static {v1}, Lkotlin/text/StringsKt__StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_a1

    .line 15725
    :cond_93
    invoke-virtual {p2}, Lads_mobile_sdk/ia1;->G()Lads_mobile_sdk/yh1$f;

    move-result-object p2

    invoke-static {p2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2}, Lkotlin/collections/CollectionsKt___CollectionsKt;->lastOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p2

    move-object v1, p2

    check-cast v1, Ljava/lang/String;

    :cond_a1
    if-eqz v1, :cond_b7

    .line 15727
    invoke-static {v1}, Lkotlin/text/StringsKt__StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_aa

    goto :goto_b7

    .line 15734
    :cond_aa
    invoke-virtual {p1}, Lads_mobile_sdk/ej2;->I()Ljava/lang/String;

    move-result-object p1

    const-string p2, "getRuleLabel(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v1, v0, p1}, Lads_mobile_sdk/j43;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 15735
    :cond_b7
    :goto_b7
    invoke-virtual {p1}, Lads_mobile_sdk/ej2;->I()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Rule "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " attempted to include a signal with no URL key or path."

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 15736
    iget-object p2, p0, Lads_mobile_sdk/j43;->c:Lads_mobile_sdk/ur3;

    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    check-cast p2, Lads_mobile_sdk/as3;

    invoke-virtual {p2, p1, v0}, Lads_mobile_sdk/as3;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final a(Lads_mobile_sdk/yp2;)V
    .registers 6

    .line 14374
    invoke-virtual {p1}, Lads_mobile_sdk/yp2;->x()Lads_mobile_sdk/yh1$f;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_8
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5e

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lads_mobile_sdk/vp2;

    .line 14375
    invoke-virtual {v0}, Lads_mobile_sdk/vp2;->x()Z

    move-result v1

    if-eqz v1, :cond_29

    invoke-virtual {v0}, Lads_mobile_sdk/vp2;->w()Lads_mobile_sdk/zt1;

    move-result-object v1

    const-string v2, "getPattern(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lads_mobile_sdk/j43;->a(Lads_mobile_sdk/zt1;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 14376
    :cond_29
    invoke-virtual {v0}, Lads_mobile_sdk/vp2;->v()Ljava/util/Map;

    move-result-object v0

    const-string v1, "getIncludeSignalsMap(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lads_mobile_sdk/ne3;

    .line 14377
    iget-object v3, p0, Lads_mobile_sdk/j43;->w:Ljava/util/LinkedHashMap;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v3, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3a

    :cond_5e
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 19235
    invoke-static {p1}, Lkotlin/text/StringsKt__StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 19236
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Rule "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " attempted to set a blank URL parameter."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 19237
    iget-object p2, p0, Lads_mobile_sdk/j43;->c:Lads_mobile_sdk/ur3;

    new-instance p3, Ljava/lang/Exception;

    invoke-direct {p3, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    check-cast p2, Lads_mobile_sdk/as3;

    invoke-virtual {p2, p1, p3}, Lads_mobile_sdk/as3;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    .line 19238
    :cond_29
    iget-object v0, p0, Lads_mobile_sdk/j43;->p:Ljava/util/LinkedHashMap;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5c

    .line 19240
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "URL parameter "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " was attempted to be overwritten by rule "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "."

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 19241
    iget-object p2, p0, Lads_mobile_sdk/j43;->c:Lads_mobile_sdk/ur3;

    new-instance p3, Ljava/lang/Exception;

    invoke-direct {p3, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    check-cast p2, Lads_mobile_sdk/as3;

    invoke-virtual {p2, p1, p3}, Lads_mobile_sdk/as3;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    .line 19242
    :cond_5c
    iget-object p3, p0, Lads_mobile_sdk/j43;->q:Ljava/util/Map;

    const/4 v0, 0x0

    const-string v1, "concatenatedSignalsRules"

    if-nez p3, :cond_67

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p3, v0

    :cond_67
    invoke-interface {p3, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_a0

    .line 19243
    iget-object p3, p0, Lads_mobile_sdk/j43;->q:Ljava/util/Map;

    if-nez p3, :cond_75

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_76

    :cond_75
    move-object v0, p3

    :goto_76
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p3, Ljava/lang/String;

    .line 19244
    iget-object v0, p0, Lads_mobile_sdk/j43;->r:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/StringBuilder;

    if-nez v0, :cond_8e

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 19246
    :cond_8e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_97

    .line 19247
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19249
    :cond_97
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19251
    iget-object p2, p0, Lads_mobile_sdk/j43;->r:Ljava/util/LinkedHashMap;

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 19253
    :cond_a0
    iget-object p3, p0, Lads_mobile_sdk/j43;->p:Ljava/util/LinkedHashMap;

    invoke-interface {p3, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final a(ILjava/lang/String;)Z
    .registers 9

    .line 15738
    iget-object v0, p0, Lads_mobile_sdk/j43;->j:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    if-lt v0, p1, :cond_b

    return v1

    :cond_b
    if-eqz p2, :cond_29

    .line 15744
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_14

    goto :goto_29

    .line 15745
    :cond_14
    iget-object v2, p0, Lads_mobile_sdk/j43;->a:Lads_mobile_sdk/ex0;

    invoke-virtual {v2}, Lads_mobile_sdk/ex0;->t()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    add-int/2addr p2, v2

    add-int/lit8 p2, p2, 0x2

    add-int/2addr v0, p2

    if-lt v0, p1, :cond_29

    return v1

    .line 15750
    :cond_29
    :goto_29
    iget-object p2, p0, Lads_mobile_sdk/j43;->p:Ljava/util/LinkedHashMap;

    invoke-virtual {p2}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_33
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_92

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 15751
    iget-object v4, p0, Lads_mobile_sdk/j43;->o:Ljava/util/LinkedHashSet;

    invoke-interface {v4}, Ljava/util/Set;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_5b

    iget-object v4, p0, Lads_mobile_sdk/j43;->o:Ljava/util/LinkedHashSet;

    invoke-interface {v4, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_33

    .line 15752
    :cond_5b
    iget-object v4, p0, Lads_mobile_sdk/j43;->n:Ljava/util/LinkedHashSet;

    invoke-interface {v4, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_77

    .line 15753
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_8f

    .line 15754
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    :goto_71
    add-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x2

    add-int/2addr v2, v0

    move v0, v2

    goto :goto_8f

    .line 15755
    :cond_77
    sget-object v4, Lads_mobile_sdk/au;->a:Lads_mobile_sdk/bu;

    .line 15756
    sget-object v5, Lads_mobile_sdk/bu;->c:Lads_mobile_sdk/bu;

    if-ne v4, v5, :cond_8f

    .line 15757
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v3, v1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    goto :goto_71

    :cond_8f
    :goto_8f
    if-lt v0, p1, :cond_33

    return v1

    :cond_92
    const/4 p1, 0x0

    return p1
.end method

.method public final a(Lads_mobile_sdk/zt1;)Z
    .registers 4

    .line 16659
    invoke-virtual {p1}, Lads_mobile_sdk/zt1;->v()Lads_mobile_sdk/yh1$f;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_37

    .line 16660
    invoke-virtual {p1}, Lads_mobile_sdk/zt1;->v()Lads_mobile_sdk/yh1$f;

    move-result-object p1

    const-string v0, "getAndNodesList(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_1d

    .line 17374
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1d

    goto/16 :goto_a3

    .line 17375
    :cond_1d
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_21
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lads_mobile_sdk/zt1;

    .line 17376
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lads_mobile_sdk/j43;->a(Lads_mobile_sdk/zt1;)Z

    move-result v0

    if-nez v0, :cond_21

    goto :goto_83

    .line 17377
    :cond_37
    invoke-virtual {p1}, Lads_mobile_sdk/zt1;->z()Lads_mobile_sdk/yh1$f;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_6d

    .line 17378
    invoke-virtual {p1}, Lads_mobile_sdk/zt1;->z()Lads_mobile_sdk/yh1$f;

    move-result-object p1

    const-string v0, "getOrNodesList(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_53

    .line 18093
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_53

    goto :goto_83

    .line 18094
    :cond_53
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_57
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_83

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lads_mobile_sdk/zt1;

    .line 18095
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lads_mobile_sdk/j43;->a(Lads_mobile_sdk/zt1;)Z

    move-result v0

    if-eqz v0, :cond_57

    goto :goto_a3

    .line 18096
    :cond_6d
    invoke-virtual {p1}, Lads_mobile_sdk/zt1;->B()Z

    move-result v0

    if-eqz v0, :cond_85

    .line 18097
    invoke-virtual {p1}, Lads_mobile_sdk/zt1;->y()Lads_mobile_sdk/zt1;

    move-result-object p1

    const-string v0, "getNotNode(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lads_mobile_sdk/j43;->a(Lads_mobile_sdk/zt1;)Z

    move-result p1

    if-nez p1, :cond_83

    goto :goto_a3

    :cond_83
    :goto_83
    const/4 p1, 0x0

    return p1

    .line 18098
    :cond_85
    invoke-virtual {p1}, Lads_mobile_sdk/zt1;->A()Z

    move-result v0

    if-eqz v0, :cond_a3

    .line 18099
    iget-object v0, p0, Lads_mobile_sdk/j43;->u:Lcom/google/gson/JsonObject;

    if-nez v0, :cond_95

    const-string v0, "signalJson"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_95
    invoke-virtual {p1}, Lads_mobile_sdk/zt1;->x()Lads_mobile_sdk/qu1;

    move-result-object p1

    const-string v1, "getMatchNode(...)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18100
    invoke-static {v0, p1}, Lads_mobile_sdk/c43;->a(Lcom/google/gson/JsonObject;Lads_mobile_sdk/qu1;)Z

    move-result p1

    return p1

    :cond_a3
    :goto_a3
    const/4 p1, 0x1

    return p1
.end method

.method public final b(Lads_mobile_sdk/ej2;)Lads_mobile_sdk/v01;
    .registers 5

    .line 1308
    invoke-virtual {p1}, Lads_mobile_sdk/ej2;->O()Z

    move-result v0

    const-string v1, "null cannot be cast to non-null type com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Success<T of com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Companion.returnIfError>"

    if-eqz v0, :cond_43

    invoke-virtual {p1}, Lads_mobile_sdk/ej2;->H()Lads_mobile_sdk/zt1;

    move-result-object v0

    const-string v2, "getPattern(...)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lads_mobile_sdk/j43;->a(Lads_mobile_sdk/zt1;)Z

    move-result v0

    if-eqz v0, :cond_18

    goto :goto_43

    .line 1319
    :cond_18
    invoke-virtual {p1}, Lads_mobile_sdk/ej2;->C()Lads_mobile_sdk/yh1$f;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_20
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7e

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lads_mobile_sdk/ej2;

    .line 1320
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lads_mobile_sdk/j43;->b(Lads_mobile_sdk/ej2;)Lads_mobile_sdk/v01;

    move-result-object v0

    .line 2108
    instance-of v2, v0, Lads_mobile_sdk/i01;

    if-eqz v2, :cond_3a

    check-cast v0, Lads_mobile_sdk/i01;

    return-object v0

    .line 2109
    :cond_3a
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lads_mobile_sdk/q01;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_20

    .line 2110
    :cond_43
    :goto_43
    invoke-virtual {p0, p1}, Lads_mobile_sdk/j43;->a(Lads_mobile_sdk/ej2;)Lads_mobile_sdk/v01;

    move-result-object v0

    .line 2905
    instance-of v2, v0, Lads_mobile_sdk/i01;

    if-eqz v2, :cond_4e

    check-cast v0, Lads_mobile_sdk/i01;

    return-object v0

    .line 2906
    :cond_4e
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lads_mobile_sdk/q01;

    .line 2907
    invoke-virtual {p1}, Lads_mobile_sdk/ej2;->y()Lads_mobile_sdk/yh1$f;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_5b
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7e

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lads_mobile_sdk/ej2;

    .line 2908
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lads_mobile_sdk/j43;->b(Lads_mobile_sdk/ej2;)Lads_mobile_sdk/v01;

    move-result-object v0

    .line 3700
    instance-of v2, v0, Lads_mobile_sdk/i01;

    if-eqz v2, :cond_75

    check-cast v0, Lads_mobile_sdk/i01;

    return-object v0

    .line 3701
    :cond_75
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lads_mobile_sdk/q01;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_5b

    .line 3702
    :cond_7e
    new-instance p1, Lads_mobile_sdk/q01;

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-direct {p1, v0}, Lads_mobile_sdk/q01;-><init>(Ljava/lang/Object;)V

    return-object p1
.end method

.method public final b(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 8

    .line 13
    instance-of v0, p1, Lads_mobile_sdk/g43;

    if-eqz v0, :cond_13

    move-object v0, p1

    check-cast v0, Lads_mobile_sdk/g43;

    iget v1, v0, Lads_mobile_sdk/g43;->g:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/g43;->g:I

    goto :goto_18

    :cond_13
    new-instance v0, Lads_mobile_sdk/g43;

    invoke-direct {v0, p0, p1}, Lads_mobile_sdk/g43;-><init>(Lads_mobile_sdk/j43;Lkotlin/coroutines/Continuation;)V

    :goto_18
    iget-object p1, v0, Lads_mobile_sdk/g43;->e:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 850
    iget v2, v0, Lads_mobile_sdk/g43;->g:I

    const/4 v3, 0x1

    if-eqz v2, :cond_39

    if-ne v2, v3, :cond_31

    iget-object v1, v0, Lads_mobile_sdk/g43;->d:Ljava/lang/String;

    iget-object v2, v0, Lads_mobile_sdk/g43;->c:Lcom/google/gson/JsonObject;

    iget-object v3, v0, Lads_mobile_sdk/g43;->b:Lcom/google/gson/JsonObject;

    iget-object v0, v0, Lads_mobile_sdk/g43;->a:Lcom/google/gson/JsonObject;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_5f

    :cond_31
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_39
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 851
    iget-object v2, p0, Lads_mobile_sdk/j43;->v:Lcom/google/gson/JsonObject;

    .line 853
    new-instance p1, Lcom/google/gson/JsonObject;

    invoke-direct {p1}, Lcom/google/gson/JsonObject;-><init>()V

    .line 854
    iget-object v4, p0, Lads_mobile_sdk/j43;->b:Lads_mobile_sdk/g30;

    iput-object p1, v0, Lads_mobile_sdk/g43;->a:Lcom/google/gson/JsonObject;

    iput-object p1, v0, Lads_mobile_sdk/g43;->b:Lcom/google/gson/JsonObject;

    iput-object v2, v0, Lads_mobile_sdk/g43;->c:Lcom/google/gson/JsonObject;

    const-string v5, "sdk_core"

    iput-object v5, v0, Lads_mobile_sdk/g43;->d:Ljava/lang/String;

    iput v3, v0, Lads_mobile_sdk/g43;->g:I

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 855
    invoke-static {v4, v0}, Lads_mobile_sdk/g30;->h(Lads_mobile_sdk/g30;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_5b

    return-object v1

    :cond_5b
    move-object v3, p1

    move-object v1, v5

    move-object p1, v0

    move-object v0, v3

    .line 856
    :goto_5f
    check-cast p1, Ljava/util/Map;

    if-nez p1, :cond_67

    invoke-static {}, Lkotlin/collections/MapsKt__MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object p1

    :cond_67
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_6f
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 857
    invoke-virtual {v3, v5, v4}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6f

    .line 859
    :cond_8b
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 860
    invoke-virtual {v2, v1, v0}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    return-object p1
.end method

.method public final b()Ljava/lang/String;
    .registers 5

    .line 2
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    .line 3
    iget-object v1, p0, Lads_mobile_sdk/j43;->n:Ljava/util/LinkedHashSet;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_b
    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_25

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 4
    iget-object v3, p0, Lads_mobile_sdk/j43;->p:Ljava/util/LinkedHashMap;

    invoke-virtual {v3, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-eqz v3, :cond_b

    .line 5
    invoke-static {v0, v2, v3}, Lads_mobile_sdk/c43;->a(Landroid/net/Uri$Builder;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b

    .line 8
    :cond_25
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getQuery()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_31

    .line 9
    const-string v0, ""

    .line 10
    :cond_31
    iget-object v1, p0, Lads_mobile_sdk/j43;->d:Lads_mobile_sdk/at;

    invoke-virtual {v1, v0}, Lads_mobile_sdk/at;->a(Ljava/lang/String;)Lads_mobile_sdk/v01;

    move-result-object v0

    instance-of v1, v0, Lads_mobile_sdk/q01;

    const/4 v2, 0x0

    if-eqz v1, :cond_3f

    check-cast v0, Lads_mobile_sdk/q01;

    goto :goto_40

    :cond_3f
    move-object v0, v2

    :goto_40
    if-eqz v0, :cond_47

    .line 11
    iget-object v0, v0, Lads_mobile_sdk/q01;->b:Ljava/lang/Object;

    .line 12
    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_47
    return-object v2
.end method

.method public final c()V
    .registers 5

    .line 687
    iget v0, p0, Lads_mobile_sdk/j43;->h:I

    iget-object v1, p0, Lads_mobile_sdk/j43;->i:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lads_mobile_sdk/j43;->a:Lads_mobile_sdk/ex0;

    invoke-virtual {v2}, Lads_mobile_sdk/ex0;->v()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ".android."

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "."

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 688
    iget-object v1, p0, Lads_mobile_sdk/j43;->v:Lcom/google/gson/JsonObject;

    const-string v2, "a_url"

    invoke-virtual {v1, v2, v0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final d()V
    .registers 6

    .line 633
    iget-object v0, p0, Lads_mobile_sdk/j43;->w:Ljava/util/LinkedHashMap;

    sget-object v1, Lads_mobile_sdk/dt;->Md:Lads_mobile_sdk/dt;

    invoke-virtual {v1}, Lads_mobile_sdk/dt;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lads_mobile_sdk/ne3;

    const/4 v1, 0x0

    if-eqz v0, :cond_16

    invoke-virtual {v0}, Lads_mobile_sdk/ne3;->v()Z

    move-result v0

    goto :goto_17

    :cond_16
    move v0, v1

    .line 635
    :goto_17
    iget-object v2, p0, Lads_mobile_sdk/j43;->w:Ljava/util/LinkedHashMap;

    sget-object v3, Lads_mobile_sdk/dt;->nk:Lads_mobile_sdk/dt;

    invoke-virtual {v3}, Lads_mobile_sdk/dt;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lads_mobile_sdk/ne3;

    if-eqz v2, :cond_2c

    invoke-virtual {v2}, Lads_mobile_sdk/ne3;->v()Z

    move-result v2

    goto :goto_2d

    :cond_2c
    move v2, v1

    .line 638
    :goto_2d
    iget-object v3, p0, Lads_mobile_sdk/j43;->t:Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;

    if-nez v3, :cond_37

    const-string v3, "signals"

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v3, 0x0

    :cond_37
    iget-object v3, v3, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;->sharedPreferenceSignals:Landroid/os/Bundle;

    const-string v4, "IABTCF_CmpSdkID"

    invoke-virtual {v3, v4, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    const/16 v4, 0x12c

    if-ne v3, v4, :cond_45

    const/4 v3, 0x1

    goto :goto_46

    :cond_45
    move v3, v1

    :goto_46
    if-eqz v2, :cond_49

    const/4 v1, 0x2

    :cond_49
    if-eqz v0, :cond_4d

    or-int/lit8 v1, v1, 0x8

    :cond_4d
    if-eqz v3, :cond_51

    or-int/lit16 v1, v1, 0x80

    .line 653
    :cond_51
    iget-object v0, p0, Lads_mobile_sdk/j43;->v:Lcom/google/gson/JsonObject;

    .line 654
    sget-object v2, Lads_mobile_sdk/dt;->E8:Lads_mobile_sdk/dt;

    invoke-virtual {v2}, Lads_mobile_sdk/dt;->e()Ljava/lang/String;

    move-result-object v2

    .line 655
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "0.0.0.0.0.0.0."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 656
    invoke-virtual {v0, v2, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final e()V
    .registers 13

    const/4 v0, 0x1

    .line 660
    iget-object v1, p0, Lads_mobile_sdk/j43;->t:Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;

    const/4 v2, 0x0

    const-string v3, "signals"

    if-nez v1, :cond_c

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v2

    :cond_c
    iget-object v1, v1, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;->numberOfAdsRequested:Ljava/lang/Integer;

    if-eqz v1, :cond_9f

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-gt v1, v0, :cond_18

    goto/16 :goto_9f

    .line 665
    :cond_18
    iget-object v4, p0, Lads_mobile_sdk/j43;->t:Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;

    if-nez v4, :cond_20

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v4, v2

    :cond_20
    iget-object v4, v4, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;->isIconAdRequest:Ljava/lang/Boolean;

    if-eqz v4, :cond_35

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_35

    .line 666
    iget-object v4, p0, Lads_mobile_sdk/j43;->a:Lads_mobile_sdk/ex0;

    invoke-virtual {v4}, Lads_mobile_sdk/ex0;->e0()I

    move-result v4

    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_3a

    :cond_35
    const/4 v4, 0x5

    .line 668
    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 671
    :goto_3a
    iget-object v4, p0, Lads_mobile_sdk/j43;->t:Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;

    if-nez v4, :cond_42

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_43

    :cond_42
    move-object v2, v4

    :goto_43
    iget-object v2, v2, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;->adUnitId:Ljava/lang/String;

    if-nez v2, :cond_49

    const-string v2, ""

    .line 672
    :cond_49
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_50

    goto :goto_9f

    .line 677
    :cond_50
    iget-object v3, p0, Lads_mobile_sdk/j43;->w:Ljava/util/LinkedHashMap;

    const-string v4, "sra_regex"

    invoke-virtual {v3, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lads_mobile_sdk/ne3;

    if-eqz v3, :cond_6c

    invoke-virtual {v3}, Lads_mobile_sdk/ne3;->z()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_6c

    .line 678
    sget-object v4, Lads_mobile_sdk/o21;->f:Lads_mobile_sdk/m21;

    invoke-static {v3, v2}, Lads_mobile_sdk/m21;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_6b

    goto :goto_6c

    :cond_6b
    move-object v2, v3

    .line 681
    :cond_6c
    :goto_6c
    new-array v3, v1, [Ljava/lang/String;

    const/4 v4, 0x0

    :goto_6f
    if-ge v4, v1, :cond_86

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "slotname="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    add-int/2addr v4, v0

    goto :goto_6f

    .line 682
    :cond_86
    iget-object v0, p0, Lads_mobile_sdk/j43;->v:Lcom/google/gson/JsonObject;

    sget-object v1, Lads_mobile_sdk/dt;->Rj:Lads_mobile_sdk/dt;

    invoke-virtual {v1}, Lads_mobile_sdk/dt;->e()Ljava/lang/String;

    move-result-object v1

    const/16 v10, 0x3e

    const/4 v11, 0x0

    const-string v4, ","

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v3 .. v11}, Lkotlin/collections/ArraysKt___ArraysKt;->joinToString$default([Ljava/lang/Object;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9f
    :goto_9f
    return-void
.end method

.method public final f()V
    .registers 9

    .line 424
    :try_start_0
    iget-object v0, p0, Lads_mobile_sdk/j43;->t:Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;
    :try_end_2
    .catchall {:try_start_0 .. :try_end_2} :catchall_b5

    const-string v1, "signals"

    const/4 v2, 0x0

    if-nez v0, :cond_b

    :try_start_7
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    .line 425
    :cond_b
    iget-object v0, v0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;->googleExtrasBundle:Landroid/os/Bundle;

    if-nez v0, :cond_14

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 426
    :cond_14
    iget-object v3, p0, Lads_mobile_sdk/j43;->s:Lcom/google/gson/Gson;

    iget-object v4, p0, Lads_mobile_sdk/j43;->t:Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;

    if-nez v4, :cond_1e

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v4, v2

    .line 427
    :cond_1e
    iget-object v4, v4, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;->inspectorExtras:Ljava/lang/String;

    if-nez v4, :cond_24

    const-string v4, "{}"

    .line 428
    :cond_24
    const-class v5, Lcom/google/gson/JsonObject;

    invoke-virtual {v3, v4, v5}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/gson/JsonObject;

    .line 430
    const-string v4, "global_extras"

    .line 431
    invoke-static {v3, v4, v2}, Lads_mobile_sdk/ds1;->a(Lcom/google/gson/JsonObject;Ljava/lang/String;Lcom/google/gson/JsonObject;)Lcom/google/gson/JsonObject;

    move-result-object v4
    :try_end_32
    .catchall {:try_start_7 .. :try_end_32} :catchall_b5

    const-string v5, "asMap(...)"

    if-eqz v4, :cond_65

    .line 432
    :try_start_36
    invoke-virtual {v4}, Lcom/google/gson/JsonObject;->asMap()Ljava/util/Map;

    move-result-object v4

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_45
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_65

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/gson/JsonElement;

    .line 433
    invoke-virtual {v6}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v7, v6}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_45

    .line 437
    :cond_65
    sget-object v4, Lads_mobile_sdk/ds1;->a:Lads_mobile_sdk/ds1;

    iget-object v4, p0, Lads_mobile_sdk/j43;->t:Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;

    if-nez v4, :cond_6f

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v4, v2

    .line 438
    :cond_6f
    iget-object v4, v4, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;->adUnitId:Ljava/lang/String;

    if-nez v4, :cond_75

    const-string v4, ""

    .line 439
    :cond_75
    invoke-static {v3, v4, v2}, Lads_mobile_sdk/ds1;->a(Lcom/google/gson/JsonObject;Ljava/lang/String;Lcom/google/gson/JsonObject;)Lcom/google/gson/JsonObject;

    move-result-object v3

    if-eqz v3, :cond_aa

    .line 440
    invoke-virtual {v3}, Lcom/google/gson/JsonObject;->asMap()Ljava/util/Map;

    move-result-object v3

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_8a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_aa

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/gson/JsonElement;

    .line 441
    invoke-virtual {v4}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v5, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8a

    .line 445
    :cond_aa
    iget-object v3, p0, Lads_mobile_sdk/j43;->t:Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;

    if-nez v3, :cond_b2

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_b3

    :cond_b2
    move-object v2, v3

    .line 446
    :goto_b3
    iput-object v0, v2, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;->googleExtrasBundle:Landroid/os/Bundle;
    :try_end_b5
    .catchall {:try_start_36 .. :try_end_b5} :catchall_b5

    :catchall_b5
    return-void
.end method

.method public final g()V
    .registers 15

    .line 1279
    invoke-static {}, Lads_mobile_sdk/xt;->w()Lads_mobile_sdk/gt;

    move-result-object v0

    const-string v1, "newBuilder(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lads_mobile_sdk/bq3;->a(Lads_mobile_sdk/gt;)Lads_mobile_sdk/cq3;

    move-result-object v0

    .line 1280
    new-instance v2, Ljava/util/LinkedHashSet;

    invoke-direct {v2}, Ljava/util/LinkedHashSet;-><init>()V

    .line 1281
    iget-object v3, p0, Lads_mobile_sdk/j43;->t:Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;

    const/4 v4, 0x0

    const-string v5, "signals"

    if-nez v3, :cond_1d

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v3, v4

    :cond_1d
    invoke-virtual {v3}, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;->a()Ljava/util/List;

    move-result-object v3

    if-nez v3, :cond_27

    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v3

    :cond_27
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    const/4 v7, 0x1

    if-eqz v6, :cond_109

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lads_mobile_sdk/m83;

    .line 1282
    invoke-virtual {v0}, Lads_mobile_sdk/cq3;->b()Lads_mobile_sdk/lo0;

    move-result-object v8

    .line 1705
    invoke-static {}, Lads_mobile_sdk/wt;->v()Lads_mobile_sdk/rt;

    move-result-object v9

    invoke-static {v9, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v9}, Lads_mobile_sdk/dq3;->a(Lads_mobile_sdk/rt;)Lads_mobile_sdk/eq3;

    move-result-object v9

    .line 1706
    iget-object v10, v6, Lads_mobile_sdk/m83;->a:Ljava/lang/String;

    const-string v11, ""

    if-nez v10, :cond_4e

    move-object v10, v11

    :cond_4e
    invoke-virtual {v9, v10}, Lads_mobile_sdk/eq3;->a(Ljava/lang/String;)V

    .line 1707
    invoke-virtual {v9}, Lads_mobile_sdk/eq3;->b()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v2, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1709
    iget-object v10, v6, Lads_mobile_sdk/m83;->c:Ljava/lang/String;

    invoke-static {v10}, Lads_mobile_sdk/c43;->a(Ljava/lang/String;)Lads_mobile_sdk/vt;

    move-result-object v10

    invoke-virtual {v9, v10}, Lads_mobile_sdk/eq3;->b(Lads_mobile_sdk/vt;)V

    .line 1710
    iget-object v10, v6, Lads_mobile_sdk/m83;->b:Ljava/lang/String;

    invoke-static {v10}, Lads_mobile_sdk/c43;->a(Ljava/lang/String;)Lads_mobile_sdk/vt;

    move-result-object v10

    invoke-virtual {v9, v10}, Lads_mobile_sdk/eq3;->a(Lads_mobile_sdk/vt;)V

    .line 1716
    invoke-virtual {v9, v7}, Lads_mobile_sdk/eq3;->a(I)V

    .line 1717
    iget-object v7, v6, Lads_mobile_sdk/m83;->d:Ljava/lang/String;

    if-eqz v7, :cond_81

    invoke-static {v7}, Lkotlin/text/StringsKt__StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_78

    goto :goto_81

    .line 1718
    :cond_78
    iget-object v7, v6, Lads_mobile_sdk/m83;->d:Ljava/lang/String;

    if-nez v7, :cond_7d

    goto :goto_7e

    :cond_7d
    move-object v11, v7

    :goto_7e
    invoke-virtual {v9, v11}, Lads_mobile_sdk/eq3;->b(Ljava/lang/String;)V

    .line 1720
    :cond_81
    :goto_81
    iget-object v7, v6, Lads_mobile_sdk/m83;->g:Ljava/lang/Long;

    if-eqz v7, :cond_8a

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    goto :goto_8c

    :cond_8a
    const-wide/16 v10, 0x0

    :goto_8c
    invoke-virtual {v9, v10, v11}, Lads_mobile_sdk/eq3;->a(J)V

    .line 1723
    iget-object v7, v6, Lads_mobile_sdk/m83;->e:Ljava/lang/String;

    if-nez v7, :cond_9d

    .line 1724
    iget-object v7, v6, Lads_mobile_sdk/m83;->f:Ljava/lang/Integer;

    if-eqz v7, :cond_100

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-eqz v7, :cond_100

    .line 2130
    :cond_9d
    invoke-static {}, Lads_mobile_sdk/tt;->v()Lads_mobile_sdk/st;

    move-result-object v7

    invoke-static {v7, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v7}, Lads_mobile_sdk/fq3;->a(Lads_mobile_sdk/st;)Lads_mobile_sdk/gq3;

    move-result-object v7

    .line 2131
    iget-object v10, v6, Lads_mobile_sdk/m83;->f:Ljava/lang/Integer;

    .line 2132
    sget-object v11, Lads_mobile_sdk/jt;->c:Lads_mobile_sdk/jt;

    invoke-virtual {v11}, Lads_mobile_sdk/jt;->getNumber()I

    move-result v12

    if-nez v10, :cond_b3

    goto :goto_ba

    :cond_b3
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v13

    if-ne v13, v12, :cond_ba

    goto :goto_dc

    .line 2133
    :cond_ba
    :goto_ba
    sget-object v11, Lads_mobile_sdk/jt;->d:Lads_mobile_sdk/jt;

    invoke-virtual {v11}, Lads_mobile_sdk/jt;->getNumber()I

    move-result v12

    if-nez v10, :cond_c3

    goto :goto_ca

    :cond_c3
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v13

    if-ne v13, v12, :cond_ca

    goto :goto_dc

    .line 2134
    :cond_ca
    :goto_ca
    sget-object v11, Lads_mobile_sdk/jt;->e:Lads_mobile_sdk/jt;

    invoke-virtual {v11}, Lads_mobile_sdk/jt;->getNumber()I

    move-result v12

    if-nez v10, :cond_d3

    goto :goto_da

    :cond_d3
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    if-ne v10, v12, :cond_da

    goto :goto_dc

    .line 2135
    :cond_da
    :goto_da
    sget-object v11, Lads_mobile_sdk/jt;->f:Lads_mobile_sdk/jt;

    .line 2136
    :goto_dc
    invoke-virtual {v7, v11}, Lads_mobile_sdk/gq3;->a(Lads_mobile_sdk/jt;)V

    .line 2144
    iget-object v10, v6, Lads_mobile_sdk/m83;->e:Ljava/lang/String;

    if-nez v10, :cond_f6

    .line 2145
    iget-object v6, v6, Lads_mobile_sdk/m83;->f:Ljava/lang/Integer;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "An undefined error occurred. Error code = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 2146
    :cond_f6
    invoke-virtual {v7, v10}, Lads_mobile_sdk/gq3;->a(Ljava/lang/String;)V

    .line 2542
    invoke-virtual {v7}, Lads_mobile_sdk/gq3;->a()Lads_mobile_sdk/tt;

    move-result-object v6

    .line 2543
    invoke-virtual {v9, v6}, Lads_mobile_sdk/eq3;->a(Lads_mobile_sdk/tt;)V

    .line 2945
    :cond_100
    invoke-virtual {v9}, Lads_mobile_sdk/eq3;->a()Lads_mobile_sdk/wt;

    move-result-object v6

    .line 2949
    invoke-virtual {v0, v8, v6}, Lads_mobile_sdk/cq3;->a(Lads_mobile_sdk/lo0;Lads_mobile_sdk/wt;)V

    goto/16 :goto_2b

    .line 2950
    :cond_109
    iget-object v3, p0, Lads_mobile_sdk/j43;->t:Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;

    if-nez v3, :cond_111

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v3, v4

    :cond_111
    iget-object v3, v3, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;->adapterVersionData:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_11b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_16d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/AdapterVersionData;

    .line 2951
    invoke-interface {v2, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_13a

    goto :goto_11b

    .line 2954
    :cond_13a
    invoke-interface {v2, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2955
    invoke-virtual {v0}, Lads_mobile_sdk/cq3;->b()Lads_mobile_sdk/lo0;

    move-result-object v9

    .line 3341
    invoke-static {}, Lads_mobile_sdk/wt;->v()Lads_mobile_sdk/rt;

    move-result-object v10

    invoke-static {v10, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v10}, Lads_mobile_sdk/dq3;->a(Lads_mobile_sdk/rt;)Lads_mobile_sdk/eq3;

    move-result-object v10

    .line 3342
    invoke-virtual {v10, v8}, Lads_mobile_sdk/eq3;->a(Ljava/lang/String;)V

    const/4 v8, 0x0

    .line 3343
    invoke-virtual {v10, v8}, Lads_mobile_sdk/eq3;->a(I)V

    .line 3345
    iget-object v8, v6, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/AdapterVersionData;->sdkVersion:Ljava/lang/String;

    invoke-static {v8}, Lads_mobile_sdk/c43;->a(Ljava/lang/String;)Lads_mobile_sdk/vt;

    move-result-object v8

    invoke-virtual {v10, v8}, Lads_mobile_sdk/eq3;->b(Lads_mobile_sdk/vt;)V

    .line 3346
    iget-object v6, v6, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/AdapterVersionData;->adapterVersion:Ljava/lang/String;

    invoke-static {v6}, Lads_mobile_sdk/c43;->a(Ljava/lang/String;)Lads_mobile_sdk/vt;

    move-result-object v6

    invoke-virtual {v10, v6}, Lads_mobile_sdk/eq3;->a(Lads_mobile_sdk/vt;)V

    .line 3727
    invoke-virtual {v10}, Lads_mobile_sdk/eq3;->a()Lads_mobile_sdk/wt;

    move-result-object v6

    .line 3729
    invoke-virtual {v0, v9, v6}, Lads_mobile_sdk/cq3;->a(Lads_mobile_sdk/lo0;Lads_mobile_sdk/wt;)V

    goto :goto_11b

    .line 3730
    :cond_16d
    iget-object v2, p0, Lads_mobile_sdk/j43;->t:Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;

    if-nez v2, :cond_175

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v2, v4

    :cond_175
    iget-object v2, v2, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;->googleExtrasBundle:Landroid/os/Bundle;

    if-nez v2, :cond_17e

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 3731
    :cond_17e
    const-string v3, "a3p_cs"

    invoke-virtual {v2, v3}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3732
    iget-object v3, p0, Lads_mobile_sdk/j43;->t:Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;

    if-nez v3, :cond_18c

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v3, v4

    :cond_18c
    iget-object v3, v3, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;->packageName:Ljava/lang/String;

    if-eqz v2, :cond_1c8

    .line 3733
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_197

    goto :goto_1c8

    :cond_197
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_19e

    goto :goto_1c8

    .line 3734
    :cond_19e
    invoke-virtual {v0}, Lads_mobile_sdk/cq3;->b()Lads_mobile_sdk/lo0;

    move-result-object v3

    .line 4112
    invoke-static {}, Lads_mobile_sdk/wt;->v()Lads_mobile_sdk/rt;

    move-result-object v6

    invoke-static {v6, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v6}, Lads_mobile_sdk/dq3;->a(Lads_mobile_sdk/rt;)Lads_mobile_sdk/eq3;

    move-result-object v1

    .line 4113
    iget-object v6, p0, Lads_mobile_sdk/j43;->t:Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;

    if-nez v6, :cond_1b5

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_1b6

    :cond_1b5
    move-object v4, v6

    :goto_1b6
    iget-object v4, v4, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v4}, Lads_mobile_sdk/eq3;->a(Ljava/lang/String;)V

    .line 4114
    invoke-virtual {v1, v2}, Lads_mobile_sdk/eq3;->b(Ljava/lang/String;)V

    .line 4115
    invoke-virtual {v1, v7}, Lads_mobile_sdk/eq3;->a(I)V

    .line 4490
    invoke-virtual {v1}, Lads_mobile_sdk/eq3;->a()Lads_mobile_sdk/wt;

    move-result-object v1

    .line 4492
    invoke-virtual {v0, v3, v1}, Lads_mobile_sdk/cq3;->a(Lads_mobile_sdk/lo0;Lads_mobile_sdk/wt;)V

    .line 4493
    :cond_1c8
    :goto_1c8
    invoke-virtual {v0}, Lads_mobile_sdk/cq3;->a()Lads_mobile_sdk/xt;

    move-result-object v0

    .line 4494
    invoke-virtual {v0}, Lads_mobile_sdk/xt;->v()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1fe

    .line 4497
    invoke-virtual {v0}, Lads_mobile_sdk/f;->c()[B

    move-result-object v0

    const/16 v1, 0xa

    invoke-static {v0, v1}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v0

    const-string v1, "encode(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/String;

    sget-object v1, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v2, v0, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    const/4 v6, 0x4

    const/4 v7, 0x0

    .line 4498
    const-string v3, "="

    const-string v4, "."

    const/4 v5, 0x0

    invoke-static/range {v2 .. v7}, Lkotlin/text/StringsKt__StringsJVMKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 4499
    const-string v1, "a3p"

    const-string v2, "third_party_params"

    invoke-virtual {p0, v1, v0, v2}, Lads_mobile_sdk/j43;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1fe
    return-void
.end method
