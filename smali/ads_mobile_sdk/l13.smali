###### Class ads_mobile_sdk.l13 (ads_mobile_sdk.l13)
.class public abstract Lads_mobile_sdk/l13;
.super Lads_mobile_sdk/n2;
.source "SourceFile"


# instance fields
.field public l:Ljava/lang/String;

.field public final m:Lads_mobile_sdk/m13;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/ks3;Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;Lads_mobile_sdk/j53;JILads_mobile_sdk/i2;Lads_mobile_sdk/zy;Lads_mobile_sdk/ec3;Ljava/lang/String;Lads_mobile_sdk/eo2;)V
    .registers 13

    .line 1
    const-string v0, "traceMetaSet"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "baseRequest"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "requestType"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adConfiguration"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "commonConfiguration"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "serverTransaction"

    invoke-static {p9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "renderId"

    invoke-static {p10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "placementIdWrapper"

    invoke-static {p11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    invoke-direct/range {p0 .. p11}, Lads_mobile_sdk/n2;-><init>(Lads_mobile_sdk/ks3;Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;Lads_mobile_sdk/j53;JILads_mobile_sdk/i2;Lads_mobile_sdk/zy;Lads_mobile_sdk/ec3;Ljava/lang/String;Lads_mobile_sdk/eo2;)V

    move-object p1, p0

    .line 56
    new-instance p2, Lads_mobile_sdk/m13;

    invoke-direct {p2}, Lads_mobile_sdk/m13;-><init>()V

    iput-object p2, p1, Lads_mobile_sdk/l13;->m:Lads_mobile_sdk/m13;

    return-void
.end method


# virtual methods
.method public final a(Landroid/os/Bundle;Ljava/util/Map;)Lcom/google/android/libraries/ads/mobile/sdk/common/AdRequest;
    .registers 6

    .line 1
    const-string v0, "googleExtrasBundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adSourceExtrasBundle"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    new-instance v0, Lcom/google/android/libraries/ads/mobile/sdk/common/b;

    .line 70
    iget-object v1, p0, Lads_mobile_sdk/l13;->l:Ljava/lang/String;

    if-eqz v1, :cond_11

    goto :goto_17

    :cond_11
    const-string v1, "innerAdUnitId"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 71
    :goto_17
    iget-object v2, p0, Lads_mobile_sdk/n2;->b:Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;

    .line 72
    invoke-direct {v0, v1, p1, p2, v2}, Lcom/google/android/libraries/ads/mobile/sdk/common/b;-><init>(Ljava/lang/String;Landroid/os/Bundle;Ljava/util/Map;Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;)V

    .line 78
    invoke-virtual {v0}, Lcom/google/android/libraries/ads/mobile/sdk/common/b;->a()Lcom/google/android/libraries/ads/mobile/sdk/common/AdRequest;

    move-result-object p1

    return-object p1
.end method

.method public final b()Z
    .registers 4

    .line 61
    sget-object v0, Lads_mobile_sdk/ds1;->a:Lads_mobile_sdk/ds1;

    .line 62
    iget-object v0, p0, Lads_mobile_sdk/n2;->f:Lads_mobile_sdk/i2;

    .line 63
    iget-object v0, v0, Lads_mobile_sdk/i2;->c:Lcom/google/gson/JsonObject;

    const-string v1, "pubid"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lads_mobile_sdk/ds1;->a(Lcom/google/gson/JsonObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_16

    const/4 v0, 0x1

    return v0

    :cond_16
    const/4 v0, 0x0

    return v0
.end method

.method public final g()Landroid/os/Bundle;
    .registers 4

    .line 1
    new-instance v0, Lcom/google/android/gms/ads/mediation/admob/AdMobAdapter;

    invoke-direct {v0}, Lcom/google/android/gms/ads/mediation/admob/AdMobAdapter;-><init>()V

    .line 2
    iget-object v1, p0, Lads_mobile_sdk/n2;->b:Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;

    .line 3
    const-class v2, Lcom/google/android/gms/ads/mediation/admob/AdMobAdapter;

    invoke-virtual {v1, v2}, Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;->getAdSourceExtrasBundle(Ljava/lang/Class;)Landroid/os/Bundle;

    move-result-object v1

    .line 4
    sget-object v2, Lads_mobile_sdk/ds1;->a:Lads_mobile_sdk/ds1;

    .line 5
    iget-object v2, p0, Lads_mobile_sdk/n2;->f:Lads_mobile_sdk/i2;

    .line 6
    iget-object v2, v2, Lads_mobile_sdk/i2;->c:Lcom/google/gson/JsonObject;

    invoke-static {v2}, Lads_mobile_sdk/ds1;->b(Lcom/google/gson/JsonObject;)Landroid/os/Bundle;

    move-result-object v2

    .line 7
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/ads/mediation/admob/AdMobAdapter;->buildExtrasBundle(Landroid/os/Bundle;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public final h()V
    .registers 21

    move-object/from16 v0, p0

    .line 97
    iget-object v1, v0, Lads_mobile_sdk/l13;->m:Lads_mobile_sdk/m13;

    .line 98
    iget-object v2, v0, Lads_mobile_sdk/l13;->l:Ljava/lang/String;

    if-eqz v2, :cond_a

    :goto_8
    move-object v4, v2

    goto :goto_11

    :cond_a
    const-string v2, "innerAdUnitId"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v2, 0x0

    goto :goto_8

    .line 99
    :goto_11
    iget-object v2, v0, Lads_mobile_sdk/n2;->f:Lads_mobile_sdk/i2;

    .line 100
    iget-object v5, v2, Lads_mobile_sdk/i2;->h:Ljava/lang/String;

    .line 101
    iget-object v2, v2, Lads_mobile_sdk/i2;->v:Ljava/util/List;

    .line 132
    new-instance v6, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v2, v3}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v7

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 133
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_26
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    const-string v8, "toString(...)"

    if-eqz v7, :cond_3f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .line 134
    check-cast v7, Landroid/net/Uri;

    .line 135
    invoke-virtual {v7}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 168
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_26

    .line 169
    :cond_3f
    iget-object v2, v0, Lads_mobile_sdk/n2;->f:Lads_mobile_sdk/i2;

    .line 170
    iget-object v2, v2, Lads_mobile_sdk/i2;->I:Ljava/util/List;

    .line 204
    new-instance v7, Ljava/util/ArrayList;

    invoke-static {v2, v3}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v9

    invoke-direct {v7, v9}, Ljava/util/ArrayList;-><init>(I)V

    .line 205
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_50
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_67

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    .line 206
    check-cast v9, Landroid/net/Uri;

    .line 207
    invoke-virtual {v9}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 243
    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_50

    .line 244
    :cond_67
    iget-object v2, v0, Lads_mobile_sdk/n2;->f:Lads_mobile_sdk/i2;

    .line 245
    iget-object v2, v2, Lads_mobile_sdk/i2;->R:Ljava/util/List;

    .line 282
    new-instance v9, Ljava/util/ArrayList;

    invoke-static {v2, v3}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v10

    invoke-direct {v9, v10}, Ljava/util/ArrayList;-><init>(I)V

    .line 283
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_78
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_8f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    .line 284
    check-cast v10, Landroid/net/Uri;

    .line 285
    invoke-virtual {v10}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 324
    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_78

    .line 325
    :cond_8f
    iget-object v2, v0, Lads_mobile_sdk/n2;->f:Lads_mobile_sdk/i2;

    .line 326
    iget-object v2, v2, Lads_mobile_sdk/i2;->D:Ljava/util/List;

    move-object v10, v9

    .line 366
    new-instance v9, Ljava/util/ArrayList;

    invoke-static {v2, v3}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v11

    invoke-direct {v9, v11}, Ljava/util/ArrayList;-><init>(I)V

    .line 367
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_a1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_b8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    .line 368
    check-cast v11, Landroid/net/Uri;

    .line 369
    invoke-virtual {v11}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 411
    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_a1

    .line 412
    :cond_b8
    iget-object v2, v0, Lads_mobile_sdk/n2;->f:Lads_mobile_sdk/i2;

    .line 413
    iget-object v2, v2, Lads_mobile_sdk/i2;->k0:Ljava/util/List;

    move-object v11, v10

    .line 456
    new-instance v10, Ljava/util/ArrayList;

    invoke-static {v2, v3}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v12

    invoke-direct {v10, v12}, Ljava/util/ArrayList;-><init>(I)V

    .line 457
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_ca
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_e1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    .line 458
    check-cast v12, Landroid/net/Uri;

    .line 459
    invoke-virtual {v12}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 504
    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_ca

    .line 505
    :cond_e1
    iget-object v2, v0, Lads_mobile_sdk/n2;->f:Lads_mobile_sdk/i2;

    .line 506
    iget-object v2, v2, Lads_mobile_sdk/i2;->g0:Ljava/util/List;

    move-object v12, v11

    .line 552
    new-instance v11, Ljava/util/ArrayList;

    invoke-static {v2, v3}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v13

    invoke-direct {v11, v13}, Ljava/util/ArrayList;-><init>(I)V

    .line 553
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_f3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_10a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    .line 554
    check-cast v13, Landroid/net/Uri;

    .line 555
    invoke-virtual {v13}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 603
    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_f3

    .line 604
    :cond_10a
    iget-object v2, v0, Lads_mobile_sdk/n2;->f:Lads_mobile_sdk/i2;

    .line 605
    iget-object v2, v2, Lads_mobile_sdk/i2;->j0:Ljava/util/List;

    move-object v13, v12

    .line 654
    new-instance v12, Ljava/util/ArrayList;

    invoke-static {v2, v3}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v14

    invoke-direct {v12, v14}, Ljava/util/ArrayList;-><init>(I)V

    .line 655
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_11c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_133

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    .line 656
    check-cast v14, Landroid/net/Uri;

    .line 657
    invoke-virtual {v14}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 708
    invoke-virtual {v12, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_11c

    .line 709
    :cond_133
    iget-object v2, v0, Lads_mobile_sdk/n2;->f:Lads_mobile_sdk/i2;

    move-object v14, v8

    move-object v8, v13

    .line 710
    iget-boolean v13, v2, Lads_mobile_sdk/i2;->M:Z

    move-object v15, v14

    .line 711
    iget-object v14, v2, Lads_mobile_sdk/i2;->Z:Lcom/google/gson/JsonObject;

    .line 712
    iget-object v3, v2, Lads_mobile_sdk/i2;->a0:Lcom/google/gson/JsonArray;

    .line 713
    iget-boolean v2, v2, Lads_mobile_sdk/i2;->p0:Z

    move-object/from16 v17, v3

    .line 714
    new-instance v3, Lcom/google/android/libraries/ads/mobile/sdk/internal/common/ParentAdConfig;

    const/16 v18, 0xa

    .line 715
    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v16

    move-object/from16 v19, v15

    move v15, v2

    move/from16 v2, v18

    .line 716
    invoke-direct/range {v3 .. v17}, Lcom/google/android/libraries/ads/mobile/sdk/internal/common/ParentAdConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;ZLcom/google/gson/JsonObject;ZLjava/util/List;Lcom/google/gson/JsonArray;)V

    .line 717
    iget-object v4, v0, Lads_mobile_sdk/n2;->f:Lads_mobile_sdk/i2;

    .line 718
    iget-object v4, v4, Lads_mobile_sdk/i2;->l0:Lcom/google/android/libraries/ads/mobile/sdk/rewarded/RewardItem;

    if-eqz v4, :cond_17e

    .line 720
    invoke-interface {v4}, Lcom/google/android/libraries/ads/mobile/sdk/rewarded/RewardItem;->getAmount()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "rb_amount"

    invoke-static {v6, v5}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v5

    invoke-interface {v4}, Lcom/google/android/libraries/ads/mobile/sdk/rewarded/RewardItem;->getType()Ljava/lang/String;

    move-result-object v4

    const-string v6, "rb_type"

    invoke-static {v6, v4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v4

    filled-new-array {v5, v4}, [Lkotlin/Pair;

    move-result-object v4

    invoke-static {v4}, Landroidx/core/os/BundleKt;->bundleOf([Lkotlin/Pair;)Landroid/os/Bundle;

    move-result-object v4

    invoke-static {v4}, Lkotlin/collections/CollectionsKt__CollectionsJVMKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    .line 721
    iput-object v4, v3, Lcom/google/android/libraries/ads/mobile/sdk/internal/common/ParentAdConfig;->rewardsBundles:Ljava/util/List;

    .line 722
    :cond_17e
    iput-object v3, v1, Lads_mobile_sdk/m13;->a:Lcom/google/android/libraries/ads/mobile/sdk/internal/common/ParentAdConfig;

    .line 723
    iget-object v1, v0, Lads_mobile_sdk/l13;->m:Lads_mobile_sdk/m13;

    .line 724
    iget-object v3, v0, Lads_mobile_sdk/n2;->g:Lads_mobile_sdk/zy;

    .line 725
    iget-object v3, v3, Lads_mobile_sdk/zy;->m:Ljava/util/List;

    .line 763
    new-instance v5, Ljava/util/ArrayList;

    invoke-static {v3, v2}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v5, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 764
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_193
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1ac

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 765
    check-cast v3, Landroid/net/Uri;

    .line 766
    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v15, v19

    invoke-static {v3, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 806
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_193

    .line 807
    :cond_1ac
    iget-object v2, v0, Lads_mobile_sdk/n2;->g:Lads_mobile_sdk/zy;

    .line 808
    iget-wide v2, v2, Lads_mobile_sdk/zy;->n:J

    .line 809
    invoke-static {v2, v3}, Lkotlin/time/Duration;->getInWholeSeconds-impl(J)J

    move-result-wide v6

    .line 810
    iget-object v2, v0, Lads_mobile_sdk/n2;->g:Lads_mobile_sdk/zy;

    .line 811
    iget-object v8, v2, Lads_mobile_sdk/zy;->h:Ljava/lang/String;

    .line 812
    iget-object v9, v2, Lads_mobile_sdk/zy;->q:Lcom/google/gson/JsonObject;

    .line 813
    new-instance v4, Lcom/google/android/libraries/ads/mobile/sdk/internal/common/ParentCommonConfig;

    invoke-direct/range {v4 .. v9}, Lcom/google/android/libraries/ads/mobile/sdk/internal/common/ParentCommonConfig;-><init>(Ljava/util/ArrayList;JLjava/lang/String;Lcom/google/gson/JsonObject;)V

    .line 814
    iput-object v4, v1, Lads_mobile_sdk/m13;->b:Lcom/google/android/libraries/ads/mobile/sdk/internal/common/ParentCommonConfig;

    return-void
.end method
