###### Class ads_mobile_sdk.yl2 (ads_mobile_sdk.yl2)
.class public final Lads_mobile_sdk/yl2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Lads_mobile_sdk/om2;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/om2;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lads_mobile_sdk/yl2;->a:Lads_mobile_sdk/om2;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 21

    move-object/from16 v0, p0

    .line 894
    move-object/from16 v1, p1

    check-cast v1, Lads_mobile_sdk/o1;

    .line 895
    const-string v2, "manifest"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1789
    iget-object v2, v0, Lads_mobile_sdk/yl2;->a:Lads_mobile_sdk/om2;

    .line 1790
    iget-object v2, v2, Lads_mobile_sdk/om2;->b:Lads_mobile_sdk/j53;

    .line 1791
    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    .line 1792
    invoke-virtual {v1}, Lads_mobile_sdk/o1;->A()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lads_mobile_sdk/rx0;

    if-nez v3, :cond_20

    goto :goto_30

    .line 1794
    :cond_20
    invoke-virtual {v3}, Lads_mobile_sdk/rx0;->v()Ljava/util/Map;

    move-result-object v4

    iget-object v5, v0, Lads_mobile_sdk/yl2;->a:Lads_mobile_sdk/om2;

    .line 1795
    iget-object v5, v5, Lads_mobile_sdk/om2;->c:Ljava/lang/String;

    .line 1796
    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lads_mobile_sdk/j9;

    if-nez v4, :cond_31

    :goto_30
    return-object v1

    .line 1798
    :cond_31
    iget-object v5, v0, Lads_mobile_sdk/yl2;->a:Lads_mobile_sdk/om2;

    .line 1907
    invoke-virtual {v1}, Lads_mobile_sdk/vz0;->u()Lads_mobile_sdk/vz0$a;

    move-result-object v1

    const-string v6, "toBuilder(...)"

    invoke-static {v1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lads_mobile_sdk/n1;

    .line 1908
    const-string v7, "builder"

    invoke-static {v1, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1909
    new-instance v8, Lads_mobile_sdk/no0;

    .line 1910
    invoke-virtual {v1}, Lads_mobile_sdk/n1;->i()Ljava/util/Map;

    move-result-object v9

    const-string v10, "getPoolsMap(...)"

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1911
    invoke-direct {v8, v9}, Lads_mobile_sdk/no0;-><init>(Ljava/util/Map;)V

    .line 1912
    invoke-virtual {v3}, Lads_mobile_sdk/vz0;->u()Lads_mobile_sdk/vz0$a;

    move-result-object v3

    invoke-static {v3, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Lads_mobile_sdk/qx0;

    .line 1913
    invoke-static {v3, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1914
    new-instance v9, Lads_mobile_sdk/no0;

    .line 1915
    invoke-virtual {v3}, Lads_mobile_sdk/qx0;->i()Ljava/util/Map;

    move-result-object v10

    const-string v11, "getAdResponseListsMap(...)"

    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1916
    invoke-direct {v9, v10}, Lads_mobile_sdk/no0;-><init>(Ljava/util/Map;)V

    .line 1917
    iget-object v10, v5, Lads_mobile_sdk/om2;->c:Ljava/lang/String;

    .line 1918
    invoke-virtual {v4}, Lads_mobile_sdk/vz0;->u()Lads_mobile_sdk/vz0$a;

    move-result-object v4

    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Lads_mobile_sdk/i9;

    .line 1919
    invoke-static {v4, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1920
    new-instance v11, Lads_mobile_sdk/lo0;

    .line 1921
    invoke-virtual {v4}, Lads_mobile_sdk/i9;->i()Ljava/util/List;

    move-result-object v12

    const-string v13, "getResponsesList(...)"

    invoke-static {v12, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1922
    invoke-direct {v11, v12}, Lads_mobile_sdk/lo0;-><init>(Ljava/util/List;)V

    .line 1923
    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    const/4 v12, 0x0

    :goto_8c
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    const-string v15, "<this>"

    const-string v0, "build(...)"

    move-object/from16 p1, v11

    const-string v11, "value"

    if-eqz v14, :cond_103

    invoke-interface/range {p1 .. p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    add-int/lit8 v16, v12, 0x1

    if-gez v12, :cond_a5

    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->throwIndexOverflow()V

    :cond_a5
    check-cast v14, Lads_mobile_sdk/d9;

    move-object/from16 v17, v14

    .line 1924
    invoke-virtual/range {v17 .. v17}, Lads_mobile_sdk/d9;->x()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v18, v1

    .line 1925
    iget-object v1, v5, Lads_mobile_sdk/om2;->a:Ljava/lang/String;

    .line 1926
    invoke-static {v14, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f6

    .line 1927
    invoke-virtual/range {v17 .. v17}, Lads_mobile_sdk/d9;->y()Lads_mobile_sdk/b9;

    move-result-object v1

    sget-object v14, Lads_mobile_sdk/b9;->d:Lads_mobile_sdk/b9;

    if-ne v1, v14, :cond_f6

    .line 1928
    new-instance v1, Lads_mobile_sdk/lo0;

    .line 1929
    invoke-virtual {v4}, Lads_mobile_sdk/i9;->i()Ljava/util/List;

    move-result-object v14

    invoke-static {v14, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1930
    invoke-direct {v1, v14}, Lads_mobile_sdk/lo0;-><init>(Ljava/util/List;)V

    .line 1931
    invoke-virtual/range {v17 .. v17}, Lads_mobile_sdk/vz0;->u()Lads_mobile_sdk/vz0$a;

    move-result-object v14

    invoke-static {v14, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v14, Lads_mobile_sdk/c9;

    .line 1932
    invoke-static {v14, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v17, v5

    .line 1933
    sget-object v5, Lads_mobile_sdk/b9;->c:Lads_mobile_sdk/b9;

    .line 1934
    invoke-static {v5, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2051
    invoke-virtual {v14, v5}, Lads_mobile_sdk/c9;->a(Lads_mobile_sdk/b9;)V

    .line 2052
    sget-object v5, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 2053
    invoke-virtual {v14}, Lads_mobile_sdk/vz0$a;->b()Lads_mobile_sdk/vz0;

    move-result-object v5

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v5, Lads_mobile_sdk/d9;

    .line 2054
    invoke-static {v1, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v5, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2151
    invoke-virtual {v4, v12, v5}, Lads_mobile_sdk/i9;->a(ILads_mobile_sdk/d9;)V

    goto :goto_f8

    :cond_f6
    move-object/from16 v17, v5

    :goto_f8
    move-object/from16 v0, p0

    move-object/from16 v11, p1

    move/from16 v12, v16

    move-object/from16 v5, v17

    move-object/from16 v1, v18

    goto :goto_8c

    :cond_103
    move-object/from16 v18, v1

    .line 2152
    invoke-virtual {v4}, Lads_mobile_sdk/vz0$a;->b()Lads_mobile_sdk/vz0;

    move-result-object v1

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lads_mobile_sdk/j9;

    .line 2153
    invoke-static {v9, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "key"

    invoke-static {v10, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2211
    invoke-virtual {v3, v10, v1}, Lads_mobile_sdk/qx0;->a(Ljava/lang/String;Lads_mobile_sdk/j9;)V

    .line 2212
    invoke-virtual {v3}, Lads_mobile_sdk/vz0$a;->b()Lads_mobile_sdk/vz0;

    move-result-object v1

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lads_mobile_sdk/rx0;

    .line 2213
    invoke-static {v8, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v3, v18

    .line 2271
    invoke-virtual {v3, v2, v1}, Lads_mobile_sdk/n1;->a(Ljava/lang/String;Lads_mobile_sdk/rx0;)V

    .line 2272
    invoke-virtual {v3}, Lads_mobile_sdk/vz0$a;->b()Lads_mobile_sdk/vz0;

    move-result-object v1

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lads_mobile_sdk/o1;

    return-object v1
.end method
