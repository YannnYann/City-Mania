###### Class ads_mobile_sdk.em2 (ads_mobile_sdk.em2)
.class public final Lads_mobile_sdk/em2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# static fields
.field public static final a:Lads_mobile_sdk/em2;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lads_mobile_sdk/em2;

    invoke-direct {v0}, Lads_mobile_sdk/em2;-><init>()V

    sput-object v0, Lads_mobile_sdk/em2;->a:Lads_mobile_sdk/em2;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 26

    .line 928
    move-object/from16 v0, p1

    check-cast v0, Lads_mobile_sdk/o1;

    .line 929
    const-string v1, "manifest"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1858
    invoke-virtual {v0}, Lads_mobile_sdk/o1;->A()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    .line 1937
    instance-of v2, v1, Ljava/util/Collection;

    if-eqz v2, :cond_1d

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1d

    goto/16 :goto_206

    .line 1938
    :cond_1d
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_21
    :goto_21
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_206

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lads_mobile_sdk/rx0;

    .line 1939
    invoke-virtual {v2}, Lads_mobile_sdk/rx0;->v()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    .line 2019
    instance-of v3, v2, Ljava/util/Collection;

    if-eqz v3, :cond_40

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_40

    goto :goto_21

    .line 2020
    :cond_40
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_44
    :goto_44
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_21

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lads_mobile_sdk/j9;

    .line 2021
    invoke-virtual {v3}, Lads_mobile_sdk/j9;->y()Ljava/util/List;

    move-result-object v3

    const-string v4, "getResponsesList(...)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2102
    instance-of v5, v3, Ljava/util/Collection;

    if-eqz v5, :cond_64

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_64

    goto :goto_44

    .line 2103
    :cond_64
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_68
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_44

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lads_mobile_sdk/d9;

    .line 2104
    invoke-virtual {v5}, Lads_mobile_sdk/d9;->y()Lads_mobile_sdk/b9;

    move-result-object v5

    sget-object v6, Lads_mobile_sdk/b9;->c:Lads_mobile_sdk/b9;

    if-eq v5, v6, :cond_68

    .line 2190
    invoke-virtual {v0}, Lads_mobile_sdk/vz0;->u()Lads_mobile_sdk/vz0$a;

    move-result-object v0

    const-string v1, "toBuilder(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lads_mobile_sdk/n1;

    .line 2191
    const-string v2, "builder"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2192
    new-instance v3, Lads_mobile_sdk/no0;

    .line 2193
    invoke-virtual {v0}, Lads_mobile_sdk/n1;->i()Ljava/util/Map;

    move-result-object v5

    const-string v6, "getPoolsMap(...)"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2194
    invoke-direct {v3, v5}, Lads_mobile_sdk/no0;-><init>(Ljava/util/Map;)V

    .line 2195
    invoke-virtual {v3}, Lads_mobile_sdk/no0;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-static {v3}, Lkotlin/collections/CollectionsKt___CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_a6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const-string v7, "build(...)"

    if-eqz v5, :cond_1fc

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 2196
    new-instance v8, Lads_mobile_sdk/no0;

    .line 2197
    invoke-virtual {v0}, Lads_mobile_sdk/n1;->i()Ljava/util/Map;

    move-result-object v9

    invoke-static {v9, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2198
    invoke-direct {v8, v9}, Lads_mobile_sdk/no0;-><init>(Ljava/util/Map;)V

    .line 2199
    invoke-virtual {v8, v5}, Lads_mobile_sdk/no0;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lads_mobile_sdk/rx0;

    if-nez v8, :cond_c9

    goto :goto_a6

    .line 2200
    :cond_c9
    new-instance v9, Lads_mobile_sdk/no0;

    .line 2201
    invoke-virtual {v0}, Lads_mobile_sdk/n1;->i()Ljava/util/Map;

    move-result-object v10

    invoke-static {v10, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2202
    invoke-direct {v9, v10}, Lads_mobile_sdk/no0;-><init>(Ljava/util/Map;)V

    .line 2203
    invoke-virtual {v8}, Lads_mobile_sdk/vz0;->u()Lads_mobile_sdk/vz0$a;

    move-result-object v8

    invoke-static {v8, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v8, Lads_mobile_sdk/qx0;

    .line 2204
    invoke-static {v8, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2205
    new-instance v10, Lads_mobile_sdk/no0;

    .line 2206
    invoke-virtual {v8}, Lads_mobile_sdk/qx0;->i()Ljava/util/Map;

    move-result-object v11

    const-string v12, "getAdResponseListsMap(...)"

    invoke-static {v11, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2207
    invoke-direct {v10, v11}, Lads_mobile_sdk/no0;-><init>(Ljava/util/Map;)V

    .line 2208
    invoke-virtual {v10}, Lads_mobile_sdk/no0;->keySet()Ljava/util/Set;

    move-result-object v10

    invoke-static {v10}, Lkotlin/collections/CollectionsKt___CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_fb
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    const-string v13, "key"

    const-string v14, "<this>"

    const-string v15, "value"

    if-eqz v11, :cond_1d8

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    move-object/from16 p1, v3

    .line 2209
    new-instance v3, Lads_mobile_sdk/no0;

    move-object/from16 v16, v6

    .line 2210
    invoke-virtual {v8}, Lads_mobile_sdk/qx0;->i()Ljava/util/Map;

    move-result-object v6

    invoke-static {v6, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2211
    invoke-direct {v3, v6}, Lads_mobile_sdk/no0;-><init>(Ljava/util/Map;)V

    .line 2212
    invoke-virtual {v3, v11}, Lads_mobile_sdk/no0;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lads_mobile_sdk/j9;

    if-nez v3, :cond_12a

    move-object/from16 v3, p1

    move-object/from16 v6, v16

    goto :goto_fb

    .line 2213
    :cond_12a
    new-instance v6, Lads_mobile_sdk/no0;

    move-object/from16 v17, v3

    .line 2214
    invoke-virtual {v8}, Lads_mobile_sdk/qx0;->i()Ljava/util/Map;

    move-result-object v3

    invoke-static {v3, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2215
    invoke-direct {v6, v3}, Lads_mobile_sdk/no0;-><init>(Ljava/util/Map;)V

    .line 2216
    invoke-virtual/range {v17 .. v17}, Lads_mobile_sdk/vz0;->u()Lads_mobile_sdk/vz0$a;

    move-result-object v3

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Lads_mobile_sdk/i9;

    .line 2217
    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v17, v10

    .line 2218
    new-instance v10, Lads_mobile_sdk/lo0;

    move-object/from16 v18, v12

    .line 2219
    invoke-virtual {v3}, Lads_mobile_sdk/i9;->i()Ljava/util/List;

    move-result-object v12

    invoke-static {v12, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2220
    invoke-direct {v10, v12}, Lads_mobile_sdk/lo0;-><init>(Ljava/util/List;)V

    .line 2221
    invoke-virtual {v10}, Lads_mobile_sdk/lo0;->iterator()Ljava/util/Iterator;

    move-result-object v10

    const/4 v12, 0x0

    :goto_159
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_1b3

    add-int/lit8 v19, v12, 0x1

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lads_mobile_sdk/d9;

    move-object/from16 v21, v10

    .line 2223
    invoke-virtual/range {v20 .. v20}, Lads_mobile_sdk/d9;->y()Lads_mobile_sdk/b9;

    move-result-object v10

    move-object/from16 v22, v0

    sget-object v0, Lads_mobile_sdk/b9;->c:Lads_mobile_sdk/b9;

    if-eq v10, v0, :cond_1a8

    .line 2224
    new-instance v10, Lads_mobile_sdk/lo0;

    move-object/from16 v23, v5

    .line 2225
    invoke-virtual {v3}, Lads_mobile_sdk/i9;->i()Ljava/util/List;

    move-result-object v5

    invoke-static {v5, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2226
    invoke-direct {v10, v5}, Lads_mobile_sdk/lo0;-><init>(Ljava/util/List;)V

    .line 2227
    invoke-virtual/range {v20 .. v20}, Lads_mobile_sdk/vz0;->u()Lads_mobile_sdk/vz0$a;

    move-result-object v5

    invoke-static {v5, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v5, Lads_mobile_sdk/c9;

    .line 2228
    invoke-static {v5, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2229
    invoke-static {v0, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2346
    invoke-virtual {v5, v0}, Lads_mobile_sdk/c9;->a(Lads_mobile_sdk/b9;)V

    .line 2347
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 2348
    invoke-virtual {v5}, Lads_mobile_sdk/vz0$a;->b()Lads_mobile_sdk/vz0;

    move-result-object v0

    invoke-static {v0, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lads_mobile_sdk/d9;

    .line 2349
    invoke-static {v10, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2446
    invoke-virtual {v3, v12, v0}, Lads_mobile_sdk/i9;->a(ILads_mobile_sdk/d9;)V

    goto :goto_1aa

    :cond_1a8
    move-object/from16 v23, v5

    :goto_1aa
    move/from16 v12, v19

    move-object/from16 v10, v21

    move-object/from16 v0, v22

    move-object/from16 v5, v23

    goto :goto_159

    :cond_1b3
    move-object/from16 v22, v0

    move-object/from16 v23, v5

    .line 2447
    invoke-virtual {v3}, Lads_mobile_sdk/vz0$a;->b()Lads_mobile_sdk/vz0;

    move-result-object v0

    invoke-static {v0, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lads_mobile_sdk/j9;

    .line 2448
    invoke-static {v6, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v11, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2506
    invoke-virtual {v8, v11, v0}, Lads_mobile_sdk/qx0;->a(Ljava/lang/String;Lads_mobile_sdk/j9;)V

    move-object/from16 v3, p1

    move-object/from16 v6, v16

    move-object/from16 v10, v17

    move-object/from16 v12, v18

    move-object/from16 v0, v22

    goto/16 :goto_fb

    :cond_1d8
    move-object/from16 v22, v0

    move-object/from16 p1, v3

    move-object/from16 v23, v5

    move-object/from16 v16, v6

    .line 2507
    invoke-virtual {v8}, Lads_mobile_sdk/vz0$a;->b()Lads_mobile_sdk/vz0;

    move-result-object v0

    invoke-static {v0, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lads_mobile_sdk/rx0;

    .line 2508
    invoke-static {v9, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v5, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v3, v22

    .line 2566
    invoke-virtual {v3, v5, v0}, Lads_mobile_sdk/n1;->a(Ljava/lang/String;Lads_mobile_sdk/rx0;)V

    move-object v0, v3

    move-object/from16 v3, p1

    goto/16 :goto_a6

    :cond_1fc
    move-object v3, v0

    .line 2567
    invoke-virtual {v3}, Lads_mobile_sdk/vz0$a;->b()Lads_mobile_sdk/vz0;

    move-result-object v0

    invoke-static {v0, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lads_mobile_sdk/o1;

    :cond_206
    :goto_206
    return-object v0
.end method
