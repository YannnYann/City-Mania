###### Class ads_mobile_sdk.u13 (ads_mobile_sdk.u13)
.class public final Lads_mobile_sdk/u13;
.super Lads_mobile_sdk/l13;
.source "SourceFile"


# instance fields
.field public final n:Lads_mobile_sdk/lp;

.field public final o:Z

.field public final p:Z

.field public final q:Lcom/google/android/libraries/ads/mobile/sdk/banner/BannerRequest;

.field public final r:Lads_mobile_sdk/g33;

.field public final s:Lads_mobile_sdk/md1;

.field public final t:Lads_mobile_sdk/pb;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/lp;Lads_mobile_sdk/ks3;Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;Lads_mobile_sdk/j53;JILads_mobile_sdk/i2;Lads_mobile_sdk/zy;Lads_mobile_sdk/ec3;Ljava/lang/String;ZZLcom/google/android/libraries/ads/mobile/sdk/banner/BannerRequest;Lads_mobile_sdk/g33;Lads_mobile_sdk/gj1;Lads_mobile_sdk/md1;Lads_mobile_sdk/pb;Lads_mobile_sdk/dw2;)V
    .registers 36

    move-object/from16 v12, p1

    move-object/from16 v13, p14

    move-object/from16 v14, p15

    move-object/from16 v15, p17

    move-object/from16 v0, p18

    .line 1
    const-string v1, "recursiveAdLoader"

    invoke-static {v12, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "traceMetaSet"

    move-object/from16 v2, p2

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "baseRequest"

    move-object/from16 v3, p3

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "requestType"

    move-object/from16 v4, p4

    invoke-static {v4, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "adConfiguration"

    move-object/from16 v7, p8

    invoke-static {v7, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "commonConfiguration"

    move-object/from16 v8, p9

    invoke-static {v8, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "serverTransaction"

    move-object/from16 v9, p10

    invoke-static {v9, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "renderId"

    move-object/from16 v10, p11

    invoke-static {v10, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "bannerRequest"

    invoke-static {v13, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "refreshListener"

    invoke-static {v14, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "refreshUpdateListener"

    move-object/from16 v5, p16

    invoke-static {v5, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "inspectorAdLifecycleMonitor"

    invoke-static {v15, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "adSourceResponseInfoCollector"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "placementIdWrapperProvider"

    move-object/from16 v5, p19

    invoke-static {v5, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-interface {v5}, Lads_mobile_sdk/cw2;->get()Ljava/lang/Object;

    move-result-object v1

    const-string v5, "get(...)"

    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v11, v1

    check-cast v11, Lads_mobile_sdk/eo2;

    move-object/from16 v0, p0

    move/from16 v6, p7

    move-object v1, v2

    move-object v2, v3

    move-object v3, v4

    move-wide/from16 v4, p5

    .line 3
    invoke-direct/range {v0 .. v11}, Lads_mobile_sdk/l13;-><init>(Lads_mobile_sdk/ks3;Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;Lads_mobile_sdk/j53;JILads_mobile_sdk/i2;Lads_mobile_sdk/zy;Lads_mobile_sdk/ec3;Ljava/lang/String;Lads_mobile_sdk/eo2;)V

    .line 4
    iput-object v12, v0, Lads_mobile_sdk/u13;->n:Lads_mobile_sdk/lp;

    move/from16 v1, p12

    .line 14
    iput-boolean v1, v0, Lads_mobile_sdk/u13;->o:Z

    move/from16 v1, p13

    .line 15
    iput-boolean v1, v0, Lads_mobile_sdk/u13;->p:Z

    .line 16
    iput-object v13, v0, Lads_mobile_sdk/u13;->q:Lcom/google/android/libraries/ads/mobile/sdk/banner/BannerRequest;

    .line 17
    iput-object v14, v0, Lads_mobile_sdk/u13;->r:Lads_mobile_sdk/g33;

    .line 19
    iput-object v15, v0, Lads_mobile_sdk/u13;->s:Lads_mobile_sdk/md1;

    move-object/from16 v1, p18

    .line 20
    iput-object v1, v0, Lads_mobile_sdk/u13;->t:Lads_mobile_sdk/pb;

    return-void
.end method


# virtual methods
.method public final a(ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 33

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 1
    instance-of v2, v1, Lads_mobile_sdk/s13;

    if-eqz v2, :cond_17

    move-object v2, v1

    check-cast v2, Lads_mobile_sdk/s13;

    iget v3, v2, Lads_mobile_sdk/s13;->c:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_17

    sub-int/2addr v3, v4

    iput v3, v2, Lads_mobile_sdk/s13;->c:I

    goto :goto_1c

    :cond_17
    new-instance v2, Lads_mobile_sdk/s13;

    invoke-direct {v2, v0, v1}, Lads_mobile_sdk/s13;-><init>(Lads_mobile_sdk/u13;Lkotlin/coroutines/Continuation;)V

    :goto_1c
    iget-object v1, v2, Lads_mobile_sdk/s13;->a:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v3

    .line 71
    iget v4, v2, Lads_mobile_sdk/s13;->c:I

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eqz v4, :cond_3e

    if-eq v4, v6, :cond_39

    if-ne v4, v5, :cond_31

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_1d7

    :cond_31
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_39
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_1cb

    :cond_3e
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 74
    sget-object v1, Lads_mobile_sdk/ds1;->a:Lads_mobile_sdk/ds1;

    .line 75
    iget-object v1, v0, Lads_mobile_sdk/n2;->f:Lads_mobile_sdk/i2;

    .line 76
    iget-object v1, v1, Lads_mobile_sdk/i2;->c:Lcom/google/gson/JsonObject;

    const-string v4, "pubid"

    invoke-static {v1, v4}, Lads_mobile_sdk/ds1;->a(Lcom/google/gson/JsonObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 77
    const-string v4, "<set-?>"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 130
    iput-object v1, v0, Lads_mobile_sdk/l13;->l:Ljava/lang/String;

    .line 131
    invoke-virtual {v0}, Lads_mobile_sdk/l13;->h()V

    .line 133
    invoke-virtual {v0}, Lads_mobile_sdk/l13;->g()Landroid/os/Bundle;

    move-result-object v12

    .line 134
    const-string v1, "googleExtrasBundle"

    invoke-static {v12, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 135
    iget-object v4, v0, Lads_mobile_sdk/n2;->b:Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;

    .line 136
    invoke-virtual {v4}, Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;->getAdSourceExtrasBundles()Ljava/util/Map;

    move-result-object v4

    invoke-static {v4}, Lkotlin/collections/MapsKt__MapsKt;->toMutableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v15

    .line 137
    const-string v4, "com.google.ads.mediation.admob.AdMobAdapter"

    invoke-interface {v15, v4, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    iget-object v4, v0, Lads_mobile_sdk/u13;->n:Lads_mobile_sdk/lp;

    .line 140
    invoke-virtual {v0, v12, v15}, Lads_mobile_sdk/l13;->a(Landroid/os/Bundle;Ljava/util/Map;)Lcom/google/android/libraries/ads/mobile/sdk/common/AdRequest;

    move-result-object v7

    .line 141
    iget-object v8, v0, Lads_mobile_sdk/n2;->c:Lads_mobile_sdk/j53;

    .line 142
    iget-object v9, v0, Lads_mobile_sdk/n2;->a:Lads_mobile_sdk/ks3;

    .line 143
    iget-boolean v10, v0, Lads_mobile_sdk/u13;->o:Z

    .line 144
    iget-boolean v11, v0, Lads_mobile_sdk/u13;->p:Z

    .line 145
    iget-object v13, v0, Lads_mobile_sdk/u13;->q:Lcom/google/android/libraries/ads/mobile/sdk/banner/BannerRequest;

    invoke-interface {v13}, Lcom/google/android/libraries/ads/mobile/sdk/banner/BannerRequest;->getAdSize()Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;

    move-result-object v13

    const/4 v14, 0x0

    if-nez v13, :cond_a3

    .line 146
    new-instance v13, Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;

    .line 147
    iget-object v5, v0, Lads_mobile_sdk/n2;->f:Lads_mobile_sdk/i2;

    .line 148
    iget-object v5, v5, Lads_mobile_sdk/i2;->g:Ljava/util/List;

    invoke-interface {v5, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lads_mobile_sdk/p2;

    iget v5, v5, Lads_mobile_sdk/p2;->a:I

    .line 149
    iget-object v6, v0, Lads_mobile_sdk/n2;->f:Lads_mobile_sdk/i2;

    .line 150
    iget-object v6, v6, Lads_mobile_sdk/i2;->g:Ljava/util/List;

    invoke-interface {v6, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lads_mobile_sdk/p2;

    iget v6, v6, Lads_mobile_sdk/p2;->b:I

    invoke-direct {v13, v5, v6}, Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;-><init>(II)V

    .line 151
    :cond_a3
    iget-object v5, v0, Lads_mobile_sdk/l13;->l:Ljava/lang/String;

    if-eqz v5, :cond_a8

    goto :goto_ae

    :cond_a8
    const-string v5, "innerAdUnitId"

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v5, 0x0

    .line 152
    :goto_ae
    iget-object v6, v0, Lads_mobile_sdk/n2;->b:Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;

    .line 153
    iget-object v14, v0, Lads_mobile_sdk/u13;->q:Lcom/google/android/libraries/ads/mobile/sdk/banner/BannerRequest;

    move-object/from16 v26, v4

    .line 154
    const-string v4, "adUnitId"

    invoke-static {v5, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v12, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "adSourceExtrasBundles"

    invoke-static {v15, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "adSize"

    invoke-static {v13, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "baseRequest"

    invoke-static {v6, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "bannerRequest"

    invoke-static {v14, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v1, v7

    .line 155
    new-instance v7, Lcom/google/android/libraries/ads/mobile/sdk/banner/BannerAdRequest;

    move-object v4, v9

    .line 157
    invoke-virtual {v6}, Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;->getCategoryExclusions()Ljava/util/Set;

    move-result-object v9

    move/from16 v17, v10

    .line 158
    invoke-virtual {v6}, Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;->getContentUrl()Ljava/lang/String;

    move-result-object v10

    move/from16 v18, v11

    .line 159
    invoke-virtual {v6}, Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;->getCustomTargeting()Ljava/util/Map;

    move-result-object v11

    move-object/from16 v20, v13

    .line 161
    invoke-virtual {v6}, Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;->getKeywords()Ljava/util/Set;

    move-result-object v13

    move-object/from16 v19, v14

    .line 162
    invoke-virtual {v6}, Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;->getNeighboringContentUrls()Ljava/util/Set;

    move-result-object v14

    const/16 v21, 0x0

    .line 164
    invoke-virtual {v6}, Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;->getPublisherProvidedId()Ljava/lang/String;

    move-result-object v16

    move/from16 v22, v17

    .line 165
    invoke-virtual {v6}, Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;->getRequestAgent()Ljava/lang/String;

    move-result-object v17

    move/from16 v23, v18

    move-object/from16 v24, v19

    .line 166
    invoke-virtual {v6}, Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;->getPlacementId()J

    move-result-wide v18

    move/from16 v25, v21

    .line 168
    invoke-static/range {v20 .. v20}, Lkotlin/collections/CollectionsKt__CollectionsJVMKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v21

    move/from16 v27, v22

    .line 169
    invoke-interface/range {v24 .. v24}, Lcom/google/android/libraries/ads/mobile/sdk/banner/BannerRequest;->getVideoOptions()Lcom/google/android/libraries/ads/mobile/sdk/common/VideoOptions;

    move-result-object v22

    .line 170
    invoke-interface/range {v24 .. v24}, Lcom/google/android/libraries/ads/mobile/sdk/banner/BannerRequest;->getManualImpressionRequested()Z

    move-result v24

    .line 171
    invoke-virtual {v6}, Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;->getSkipUninitializedAdapters()Z

    move-result v6

    move/from16 v28, v25

    const/16 v25, 0x0

    move/from16 v29, v28

    move-object/from16 v28, v3

    move/from16 v3, v29

    move-object/from16 v29, v5

    move-object v5, v4

    move-object v4, v8

    move-object/from16 v8, v29

    move/from16 v29, v24

    move/from16 v24, v6

    move/from16 v6, v27

    move/from16 v27, v23

    move/from16 v23, v29

    .line 172
    invoke-direct/range {v7 .. v25}, Lcom/google/android/libraries/ads/mobile/sdk/banner/BannerAdRequest;-><init>(Ljava/lang/String;Ljava/util/Set;Ljava/lang/String;Ljava/util/Map;Landroid/os/Bundle;Ljava/util/Set;Ljava/util/Set;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;JLcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;Ljava/util/List;Lcom/google/android/libraries/ads/mobile/sdk/common/VideoOptions;ZZI)V

    .line 173
    iget-object v8, v0, Lads_mobile_sdk/u13;->r:Lads_mobile_sdk/g33;

    .line 174
    new-instance v9, Lads_mobile_sdk/t13;

    invoke-direct {v9}, Lads_mobile_sdk/t13;-><init>()V

    .line 175
    iget-object v10, v0, Lads_mobile_sdk/l13;->m:Lads_mobile_sdk/m13;

    .line 176
    iget-object v11, v0, Lads_mobile_sdk/u13;->s:Lads_mobile_sdk/md1;

    .line 177
    iget-object v12, v0, Lads_mobile_sdk/u13;->t:Lads_mobile_sdk/pb;

    const/4 v13, 0x1

    .line 178
    iput v13, v2, Lads_mobile_sdk/s13;->c:I

    move-object/from16 v13, v26

    check-cast v13, Lads_mobile_sdk/mp;

    .line 179
    iget-object v13, v13, Lads_mobile_sdk/mp;->a:Lads_mobile_sdk/cw2;

    .line 180
    invoke-interface {v13}, Lads_mobile_sdk/cw2;->get()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lads_mobile_sdk/hk1;

    .line 181
    check-cast v13, Lads_mobile_sdk/ig0;

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 182
    iput-object v1, v13, Lads_mobile_sdk/ig0;->c:Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;

    .line 183
    invoke-virtual {v13, v4}, Lads_mobile_sdk/ig0;->a(Lads_mobile_sdk/j53;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lads_mobile_sdk/hk1;

    .line 184
    iget-object v4, v5, Lads_mobile_sdk/ks3;->a:Lads_mobile_sdk/n03;

    check-cast v1, Lads_mobile_sdk/ig0;

    invoke-virtual {v1, v4}, Lads_mobile_sdk/ig0;->a(Lads_mobile_sdk/n03;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lads_mobile_sdk/hk1;

    .line 185
    iget-object v4, v5, Lads_mobile_sdk/ks3;->b:Lads_mobile_sdk/tn1;

    check-cast v1, Lads_mobile_sdk/ig0;

    invoke-virtual {v1, v4}, Lads_mobile_sdk/ig0;->a(Lads_mobile_sdk/tn1;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lads_mobile_sdk/hk1;

    .line 186
    check-cast v1, Lads_mobile_sdk/ig0;

    invoke-virtual {v1, v6}, Lads_mobile_sdk/ig0;->a(Z)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lads_mobile_sdk/hk1;

    .line 187
    check-cast v1, Lads_mobile_sdk/ig0;

    .line 188
    iput-object v7, v1, Lads_mobile_sdk/ig0;->o:Lcom/google/android/libraries/ads/mobile/sdk/banner/BannerRequest;

    .line 189
    invoke-static/range {v27 .. v27}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iput-object v4, v1, Lads_mobile_sdk/ig0;->n:Ljava/lang/Boolean;

    .line 190
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 191
    iput-object v8, v1, Lads_mobile_sdk/ig0;->m:Lads_mobile_sdk/g33;

    .line 192
    iput-object v9, v1, Lads_mobile_sdk/ig0;->l:Lads_mobile_sdk/gj1;

    .line 193
    invoke-virtual {v1, v10}, Lads_mobile_sdk/ig0;->a(Lads_mobile_sdk/m13;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lads_mobile_sdk/hk1;

    .line 194
    check-cast v1, Lads_mobile_sdk/ig0;

    const/4 v13, 0x1

    invoke-virtual {v1, v13}, Lads_mobile_sdk/ig0;->b(Z)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lads_mobile_sdk/hk1;

    .line 195
    check-cast v1, Lads_mobile_sdk/ig0;

    invoke-virtual {v1, v11}, Lads_mobile_sdk/ig0;->a(Lads_mobile_sdk/md1;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lads_mobile_sdk/hk1;

    .line 196
    check-cast v1, Lads_mobile_sdk/ig0;

    invoke-virtual {v1, v12}, Lads_mobile_sdk/ig0;->a(Lads_mobile_sdk/pb;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lads_mobile_sdk/hk1;

    .line 197
    check-cast v1, Lads_mobile_sdk/ig0;

    invoke-virtual {v1, v3}, Lads_mobile_sdk/ig0;->c(Z)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lads_mobile_sdk/hk1;

    .line 198
    check-cast v1, Lads_mobile_sdk/ig0;

    invoke-virtual {v1}, Lads_mobile_sdk/ig0;->a()Lads_mobile_sdk/jg0;

    move-result-object v1

    .line 199
    iget-object v1, v1, Lads_mobile_sdk/jg0;->J0:Lads_mobile_sdk/dw2;

    invoke-interface {v1}, Lads_mobile_sdk/cw2;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lads_mobile_sdk/mi1;

    .line 200
    check-cast v1, Lads_mobile_sdk/si1;

    invoke-virtual {v1, v2}, Lads_mobile_sdk/si1;->a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v3, v28

    if-ne v1, v3, :cond_1cb

    goto :goto_1d6

    .line 201
    :cond_1cb
    :goto_1cb
    check-cast v1, Lkotlinx/coroutines/flow/Flow;

    const/4 v4, 0x2

    .line 226
    iput v4, v2, Lads_mobile_sdk/s13;->c:I

    invoke-static {v1, v2}, Lkotlinx/coroutines/flow/FlowKt;->first(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v3, :cond_1d7

    :goto_1d6
    return-object v3

    .line 227
    :cond_1d7
    :goto_1d7
    check-cast v1, Lkotlin/Pair;

    invoke-virtual {v1}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lads_mobile_sdk/v01;

    .line 230
    instance-of v2, v1, Lads_mobile_sdk/q01;

    if-eqz v2, :cond_1ed

    new-instance v2, Lads_mobile_sdk/q01;

    invoke-static {v1}, Lkotlinx/coroutines/flow/FlowKt;->flowOf(Ljava/lang/Object;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v1

    invoke-direct {v2, v1}, Lads_mobile_sdk/q01;-><init>(Ljava/lang/Object;)V

    return-object v2

    .line 231
    :cond_1ed
    instance-of v2, v1, Lads_mobile_sdk/i01;

    if-eqz v2, :cond_1f2

    return-object v1

    .line 232
    :cond_1f2
    new-instance v1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v1
.end method
