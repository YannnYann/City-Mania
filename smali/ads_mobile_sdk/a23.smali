###### Class ads_mobile_sdk.a23 (ads_mobile_sdk.a23)
.class public final Lads_mobile_sdk/a23;
.super Lads_mobile_sdk/l13;
.source "SourceFile"


# instance fields
.field public final n:Lads_mobile_sdk/i82;

.field public final o:Z

.field public final p:Lads_mobile_sdk/md1;

.field public final q:Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeRequest;

.field public final r:I

.field public final s:Z

.field public final t:Lads_mobile_sdk/gj1;

.field public final u:Lads_mobile_sdk/pb;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/i82;Lads_mobile_sdk/ks3;Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;Lads_mobile_sdk/j53;JILads_mobile_sdk/i2;Lads_mobile_sdk/zy;Lads_mobile_sdk/ec3;Ljava/lang/String;ZLads_mobile_sdk/md1;Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeRequest;IZLads_mobile_sdk/gj1;Lads_mobile_sdk/pb;Lads_mobile_sdk/eo2;)V
    .registers 36

    move-object/from16 v12, p1

    move-object/from16 v13, p13

    move-object/from16 v14, p14

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

    const-string v1, "inspectorAdLifecycleMonitor"

    invoke-static {v13, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "nativeRequest"

    invoke-static {v14, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "refreshUpdateListener"

    invoke-static {v15, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "adSourceResponseInfoCollector"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "placementIdWrapper"

    move-object/from16 v11, p19

    invoke-static {v11, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v0, p0

    move/from16 v6, p7

    move-object v1, v2

    move-object v2, v3

    move-object v3, v4

    move-wide/from16 v4, p5

    .line 57
    invoke-direct/range {v0 .. v11}, Lads_mobile_sdk/l13;-><init>(Lads_mobile_sdk/ks3;Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;Lads_mobile_sdk/j53;JILads_mobile_sdk/i2;Lads_mobile_sdk/zy;Lads_mobile_sdk/ec3;Ljava/lang/String;Lads_mobile_sdk/eo2;)V

    .line 58
    iput-object v12, v0, Lads_mobile_sdk/a23;->n:Lads_mobile_sdk/i82;

    move/from16 v1, p12

    .line 68
    iput-boolean v1, v0, Lads_mobile_sdk/a23;->o:Z

    .line 69
    iput-object v13, v0, Lads_mobile_sdk/a23;->p:Lads_mobile_sdk/md1;

    .line 70
    iput-object v14, v0, Lads_mobile_sdk/a23;->q:Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeRequest;

    move/from16 v1, p15

    .line 71
    iput v1, v0, Lads_mobile_sdk/a23;->r:I

    move/from16 v1, p16

    .line 72
    iput-boolean v1, v0, Lads_mobile_sdk/a23;->s:Z

    .line 73
    iput-object v15, v0, Lads_mobile_sdk/a23;->t:Lads_mobile_sdk/gj1;

    move-object/from16 v1, p18

    .line 74
    iput-object v1, v0, Lads_mobile_sdk/a23;->u:Lads_mobile_sdk/pb;

    return-void
.end method


# virtual methods
.method public final a(ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 42

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 1
    instance-of v2, v1, Lads_mobile_sdk/z13;

    if-eqz v2, :cond_17

    move-object v2, v1

    check-cast v2, Lads_mobile_sdk/z13;

    iget v3, v2, Lads_mobile_sdk/z13;->c:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_17

    sub-int/2addr v3, v4

    iput v3, v2, Lads_mobile_sdk/z13;->c:I

    goto :goto_1c

    :cond_17
    new-instance v2, Lads_mobile_sdk/z13;

    invoke-direct {v2, v0, v1}, Lads_mobile_sdk/z13;-><init>(Lads_mobile_sdk/a23;Lkotlin/coroutines/Continuation;)V

    :goto_1c
    iget-object v1, v2, Lads_mobile_sdk/z13;->a:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v3

    .line 69
    iget v4, v2, Lads_mobile_sdk/z13;->c:I

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eqz v4, :cond_3e

    if-eq v4, v6, :cond_39

    if-ne v4, v5, :cond_31

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_1e1

    :cond_31
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_39
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_1d5

    :cond_3e
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 70
    sget-object v1, Lads_mobile_sdk/ds1;->a:Lads_mobile_sdk/ds1;

    .line 71
    iget-object v1, v0, Lads_mobile_sdk/n2;->f:Lads_mobile_sdk/i2;

    .line 72
    iget-object v1, v1, Lads_mobile_sdk/i2;->c:Lcom/google/gson/JsonObject;

    const-string v4, "pubid"

    invoke-static {v1, v4}, Lads_mobile_sdk/ds1;->a(Lcom/google/gson/JsonObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 73
    const-string v4, "<set-?>"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 126
    iput-object v1, v0, Lads_mobile_sdk/l13;->l:Ljava/lang/String;

    .line 127
    invoke-virtual {v0}, Lads_mobile_sdk/l13;->h()V

    .line 129
    invoke-virtual {v0}, Lads_mobile_sdk/l13;->g()Landroid/os/Bundle;

    move-result-object v12

    .line 130
    const-string v1, "googleExtrasBundle"

    invoke-static {v12, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 131
    iget-object v4, v0, Lads_mobile_sdk/n2;->b:Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;

    .line 132
    invoke-virtual {v4}, Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;->getAdSourceExtrasBundles()Ljava/util/Map;

    move-result-object v4

    invoke-static {v4}, Lkotlin/collections/MapsKt__MapsKt;->toMutableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v15

    .line 133
    const-string v4, "com.google.ads.mediation.admob.AdMobAdapter"

    invoke-interface {v15, v4, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    iget-object v4, v0, Lads_mobile_sdk/a23;->n:Lads_mobile_sdk/i82;

    .line 136
    invoke-virtual {v0, v12, v15}, Lads_mobile_sdk/l13;->a(Landroid/os/Bundle;Ljava/util/Map;)Lcom/google/android/libraries/ads/mobile/sdk/common/AdRequest;

    move-result-object v7

    .line 137
    iget-object v8, v0, Lads_mobile_sdk/n2;->c:Lads_mobile_sdk/j53;

    .line 138
    iget-object v9, v0, Lads_mobile_sdk/n2;->a:Lads_mobile_sdk/ks3;

    .line 139
    iget-boolean v10, v0, Lads_mobile_sdk/a23;->o:Z

    .line 140
    iget-object v11, v0, Lads_mobile_sdk/l13;->m:Lads_mobile_sdk/m13;

    .line 141
    iget-object v13, v0, Lads_mobile_sdk/a23;->p:Lads_mobile_sdk/md1;

    .line 142
    iget-object v14, v0, Lads_mobile_sdk/l13;->l:Ljava/lang/String;

    if-eqz v14, :cond_84

    goto :goto_8a

    :cond_84
    const-string v14, "innerAdUnitId"

    invoke-static {v14}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v14, 0x0

    .line 143
    :goto_8a
    iget-object v5, v0, Lads_mobile_sdk/n2;->b:Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;

    .line 144
    iget-object v6, v0, Lads_mobile_sdk/a23;->q:Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeRequest;

    move-object/from16 v35, v4

    .line 145
    const-string v4, "adUnitId"

    invoke-static {v14, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v12, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "adSourceExtrasBundles"

    invoke-static {v15, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "baseRequest"

    invoke-static {v5, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "nativeRequest"

    invoke-static {v6, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v1, v7

    .line 146
    new-instance v7, Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdRequest;

    move-object v4, v9

    .line 148
    invoke-virtual {v5}, Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;->getCategoryExclusions()Ljava/util/Set;

    move-result-object v9

    move/from16 v16, v10

    .line 149
    invoke-virtual {v5}, Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;->getContentUrl()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v17, v11

    .line 150
    invoke-virtual {v5}, Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;->getCustomTargeting()Ljava/util/Map;

    move-result-object v11

    move-object/from16 v18, v13

    .line 152
    invoke-virtual {v5}, Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;->getKeywords()Ljava/util/Set;

    move-result-object v13

    move-object/from16 v19, v8

    move-object v8, v14

    .line 153
    invoke-virtual {v5}, Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;->getNeighboringContentUrls()Ljava/util/Set;

    move-result-object v14

    move/from16 v20, v16

    .line 155
    invoke-virtual {v5}, Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;->getPublisherProvidedId()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v21, v17

    .line 156
    invoke-virtual {v5}, Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;->getRequestAgent()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v23, v18

    move-object/from16 v22, v19

    .line 157
    invoke-virtual {v5}, Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;->getPlacementId()J

    move-result-wide v18

    move/from16 v24, v20

    .line 158
    invoke-interface {v6}, Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeRequest;->getNativeAdTypes()Ljava/util/List;

    move-result-object v20

    move-object/from16 v25, v21

    .line 159
    invoke-interface {v6}, Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeRequest;->getCustomFormatIds()Ljava/util/List;

    move-result-object v21

    move-object/from16 v26, v22

    .line 160
    invoke-interface {v6}, Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeRequest;->isImageLoadingDisabled()Z

    move-result v22

    move-object/from16 v27, v23

    .line 161
    invoke-interface {v6}, Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeRequest;->getMediaAspectRatio()Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAd$NativeMediaAspectRatio;

    move-result-object v23

    move/from16 v28, v24

    .line 162
    invoke-interface {v6}, Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeRequest;->getAdChoicesPlacement()Lcom/google/android/libraries/ads/mobile/sdk/common/AdChoicesPlacement;

    move-result-object v24

    move-object/from16 v29, v25

    .line 163
    invoke-interface {v6}, Lcom/google/android/libraries/ads/mobile/sdk/banner/BannerRequest;->getVideoOptions()Lcom/google/android/libraries/ads/mobile/sdk/common/VideoOptions;

    move-result-object v25

    move-object/from16 v30, v26

    .line 164
    invoke-interface {v6}, Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeRequest;->getCustomClickGestureDirection()Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAd$SwipeGestureDirection;

    move-result-object v26

    move-object/from16 v31, v27

    .line 165
    invoke-interface {v6}, Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeRequest;->getCustomClickGestureAllowTaps()Z

    move-result v27

    move/from16 v32, v28

    .line 166
    invoke-interface {v6}, Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeRequest;->getCustomMuteThisAdRequested()Z

    move-result v28

    move-object/from16 v33, v29

    .line 167
    invoke-interface {v6}, Lcom/google/android/libraries/ads/mobile/sdk/banner/BannerRequest;->getAdSize()Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;

    move-result-object v29

    move-object/from16 v34, v30

    .line 168
    invoke-interface {v6}, Lcom/google/android/libraries/ads/mobile/sdk/banner/BannerRequest;->getAdSizes()Ljava/util/List;

    move-result-object v30

    .line 169
    invoke-interface {v6}, Lcom/google/android/libraries/ads/mobile/sdk/banner/BannerRequest;->getManualImpressionRequested()Z

    move-result v6

    .line 170
    invoke-virtual {v5}, Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;->getSkipUninitializedAdapters()Z

    move-result v5

    move-object/from16 v36, v33

    const/16 v33, 0x0

    move-object/from16 v37, v34

    const/16 v34, 0x0

    move-object/from16 v38, v36

    move-object/from16 v36, v3

    move-object/from16 v3, v38

    move-object/from16 v38, v31

    move/from16 v31, v6

    move/from16 v6, v32

    move/from16 v32, v5

    move-object v5, v4

    move-object/from16 v4, v37

    .line 171
    invoke-direct/range {v7 .. v34}, Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdRequest;-><init>(Ljava/lang/String;Ljava/util/Set;Ljava/lang/String;Ljava/util/Map;Landroid/os/Bundle;Ljava/util/Set;Ljava/util/Set;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;JLjava/util/List;Ljava/util/List;ZLcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAd$NativeMediaAspectRatio;Lcom/google/android/libraries/ads/mobile/sdk/common/AdChoicesPlacement;Lcom/google/android/libraries/ads/mobile/sdk/common/VideoOptions;Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAd$SwipeGestureDirection;ZZLcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;Ljava/util/List;ZZZI)V

    .line 172
    iget v8, v0, Lads_mobile_sdk/a23;->r:I

    .line 173
    iget-boolean v9, v0, Lads_mobile_sdk/a23;->s:Z

    .line 174
    iget-object v10, v0, Lads_mobile_sdk/a23;->t:Lads_mobile_sdk/gj1;

    .line 175
    iget-object v11, v0, Lads_mobile_sdk/a23;->u:Lads_mobile_sdk/pb;

    const/4 v12, 0x1

    .line 176
    iput v12, v2, Lads_mobile_sdk/z13;->c:I

    move-object/from16 v12, v35

    check-cast v12, Lads_mobile_sdk/j82;

    .line 177
    iget-object v12, v12, Lads_mobile_sdk/j82;->a:Lads_mobile_sdk/cw2;

    .line 178
    invoke-interface {v12}, Lads_mobile_sdk/cw2;->get()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lads_mobile_sdk/sm1;

    .line 179
    check-cast v12, Lads_mobile_sdk/ug0;

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 180
    iput-object v1, v12, Lads_mobile_sdk/ug0;->c:Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;

    .line 181
    invoke-virtual {v12, v4}, Lads_mobile_sdk/ug0;->a(Lads_mobile_sdk/j53;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lads_mobile_sdk/sm1;

    .line 182
    iget-object v4, v5, Lads_mobile_sdk/ks3;->a:Lads_mobile_sdk/n03;

    check-cast v1, Lads_mobile_sdk/ug0;

    invoke-virtual {v1, v4}, Lads_mobile_sdk/ug0;->a(Lads_mobile_sdk/n03;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lads_mobile_sdk/sm1;

    .line 183
    iget-object v4, v5, Lads_mobile_sdk/ks3;->b:Lads_mobile_sdk/tn1;

    check-cast v1, Lads_mobile_sdk/ug0;

    invoke-virtual {v1, v4}, Lads_mobile_sdk/ug0;->a(Lads_mobile_sdk/tn1;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lads_mobile_sdk/sm1;

    .line 184
    check-cast v1, Lads_mobile_sdk/ug0;

    invoke-virtual {v1, v6}, Lads_mobile_sdk/ug0;->a(Z)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lads_mobile_sdk/sm1;

    .line 185
    check-cast v1, Lads_mobile_sdk/ug0;

    invoke-virtual {v1, v3}, Lads_mobile_sdk/ug0;->a(Lads_mobile_sdk/m13;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lads_mobile_sdk/sm1;

    .line 186
    check-cast v1, Lads_mobile_sdk/ug0;

    const/4 v12, 0x1

    invoke-virtual {v1, v12}, Lads_mobile_sdk/ug0;->b(Z)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lads_mobile_sdk/sm1;

    .line 187
    check-cast v1, Lads_mobile_sdk/ug0;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lads_mobile_sdk/ug0;->c(Z)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lads_mobile_sdk/sm1;

    .line 188
    check-cast v1, Lads_mobile_sdk/ug0;

    move-object/from16 v3, v38

    invoke-virtual {v1, v3}, Lads_mobile_sdk/ug0;->a(Lads_mobile_sdk/md1;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lads_mobile_sdk/sm1;

    .line 189
    check-cast v1, Lads_mobile_sdk/ug0;

    .line 190
    iput-object v7, v1, Lads_mobile_sdk/ug0;->m:Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeRequest;

    .line 191
    invoke-virtual {v1, v8}, Lads_mobile_sdk/ug0;->a(I)Lads_mobile_sdk/ug0;

    move-result-object v1

    .line 192
    invoke-virtual {v1, v9}, Lads_mobile_sdk/ug0;->d(Z)Lads_mobile_sdk/ug0;

    move-result-object v1

    .line 193
    invoke-virtual {v1, v10}, Lads_mobile_sdk/ug0;->a(Lads_mobile_sdk/gj1;)Lads_mobile_sdk/ug0;

    move-result-object v1

    .line 194
    invoke-virtual {v1, v11}, Lads_mobile_sdk/ug0;->a(Lads_mobile_sdk/pb;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lads_mobile_sdk/sm1;

    .line 195
    check-cast v1, Lads_mobile_sdk/ug0;

    invoke-virtual {v1}, Lads_mobile_sdk/ug0;->a()Lads_mobile_sdk/vg0;

    move-result-object v1

    .line 196
    iget-object v1, v1, Lads_mobile_sdk/vg0;->K0:Lads_mobile_sdk/dw2;

    invoke-interface {v1}, Lads_mobile_sdk/cw2;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lads_mobile_sdk/mi1;

    .line 197
    check-cast v1, Lads_mobile_sdk/si1;

    invoke-virtual {v1, v2}, Lads_mobile_sdk/si1;->a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v3, v36

    if-ne v1, v3, :cond_1d5

    goto :goto_1e0

    .line 198
    :cond_1d5
    :goto_1d5
    check-cast v1, Lkotlinx/coroutines/flow/Flow;

    const/4 v4, 0x2

    .line 221
    iput v4, v2, Lads_mobile_sdk/z13;->c:I

    invoke-static {v1, v2}, Lkotlinx/coroutines/flow/FlowKt;->first(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v3, :cond_1e1

    :goto_1e0
    return-object v3

    .line 222
    :cond_1e1
    :goto_1e1
    check-cast v1, Lkotlin/Pair;

    invoke-virtual {v1}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lads_mobile_sdk/v01;

    .line 225
    instance-of v2, v1, Lads_mobile_sdk/q01;

    if-eqz v2, :cond_200

    new-instance v2, Lads_mobile_sdk/q01;

    new-instance v3, Lads_mobile_sdk/q01;

    check-cast v1, Lads_mobile_sdk/q01;

    .line 226
    iget-object v1, v1, Lads_mobile_sdk/q01;->b:Ljava/lang/Object;

    .line 227
    invoke-direct {v3, v1}, Lads_mobile_sdk/q01;-><init>(Ljava/lang/Object;)V

    invoke-static {v3}, Lkotlinx/coroutines/flow/FlowKt;->flowOf(Ljava/lang/Object;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v1

    invoke-direct {v2, v1}, Lads_mobile_sdk/q01;-><init>(Ljava/lang/Object;)V

    return-object v2

    .line 228
    :cond_200
    instance-of v2, v1, Lads_mobile_sdk/i01;

    if-eqz v2, :cond_205

    return-object v1

    :cond_205
    new-instance v1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v1
.end method
