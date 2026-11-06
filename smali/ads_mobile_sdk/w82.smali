###### Class ads_mobile_sdk.w82 (ads_mobile_sdk.w82)
.class public final Lads_mobile_sdk/w82;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/rf;


# instance fields
.field public final a:Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;

.field public final b:Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeRequest;

.field public final c:Lads_mobile_sdk/l43;

.field public final d:Landroid/content/Context;

.field public final e:Lads_mobile_sdk/f0;

.field public final f:Lads_mobile_sdk/hm0;

.field public final g:Lads_mobile_sdk/cw2;


# direct methods
.method public constructor <init>(Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeRequest;Lads_mobile_sdk/l43;Landroid/content/Context;Lads_mobile_sdk/f0;Lads_mobile_sdk/hm0;Lads_mobile_sdk/dw2;)V
    .registers 9

    .line 1
    const-string v0, "baseRequest"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nativeRequest"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "requestConfigurationWrapper"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "activityTracker"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "delegatingThirdPartyEventEmitter"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nativeAdComponentProvider"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p1, p0, Lads_mobile_sdk/w82;->a:Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;

    .line 7
    iput-object p2, p0, Lads_mobile_sdk/w82;->b:Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeRequest;

    .line 8
    iput-object p3, p0, Lads_mobile_sdk/w82;->c:Lads_mobile_sdk/l43;

    .line 9
    iput-object p4, p0, Lads_mobile_sdk/w82;->d:Landroid/content/Context;

    .line 10
    iput-object p5, p0, Lads_mobile_sdk/w82;->e:Lads_mobile_sdk/f0;

    .line 11
    iput-object p6, p0, Lads_mobile_sdk/w82;->f:Lads_mobile_sdk/hm0;

    .line 12
    iput-object p7, p0, Lads_mobile_sdk/w82;->g:Lads_mobile_sdk/cw2;

    return-void
.end method


# virtual methods
.method public final a(Lads_mobile_sdk/ec3;Lads_mobile_sdk/i2;Ljava/lang/Object;)Lads_mobile_sdk/w1;
    .registers 6

    .line 379
    check-cast p3, Lads_mobile_sdk/u83;

    .line 380
    const-string v0, "transaction"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "config"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "adapter"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 441
    iget-object p1, p0, Lads_mobile_sdk/w82;->g:Lads_mobile_sdk/cw2;

    .line 442
    invoke-interface {p1}, Lads_mobile_sdk/cw2;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lads_mobile_sdk/pp3;

    .line 443
    iget-object p2, p3, Lads_mobile_sdk/u83;->d:Lads_mobile_sdk/p12;

    const/4 v0, 0x0

    const-string v1, "nativeAdMapper"

    if-eqz p2, :cond_21

    goto :goto_25

    .line 444
    :cond_21
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p2, v0

    .line 445
    :goto_25
    check-cast p1, Lads_mobile_sdk/ij0;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 446
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 447
    iput-object p2, p1, Lads_mobile_sdk/ij0;->p:Lads_mobile_sdk/p12;

    .line 448
    iget-object p2, p3, Lads_mobile_sdk/u83;->d:Lads_mobile_sdk/p12;

    if-eqz p2, :cond_35

    move-object v0, p2

    goto :goto_38

    :cond_35
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 449
    :goto_38
    iget-object p2, p0, Lads_mobile_sdk/w82;->b:Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeRequest;

    invoke-interface {p2}, Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeRequest;->getAdChoicesPlacement()Lcom/google/android/libraries/ads/mobile/sdk/common/AdChoicesPlacement;

    move-result-object p2

    invoke-static {v0, p2}, Lads_mobile_sdk/r02;->a(Lads_mobile_sdk/p12;Lcom/google/android/libraries/ads/mobile/sdk/common/AdChoicesPlacement;)Lads_mobile_sdk/s02;

    move-result-object p2

    .line 450
    iput-object p2, p1, Lads_mobile_sdk/ij0;->q:Lads_mobile_sdk/s02;

    return-object p1
.end method

.method public final a(Lads_mobile_sdk/ec3;Lads_mobile_sdk/i2;Lads_mobile_sdk/jf;Lads_mobile_sdk/do3;)V
    .registers 27

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    .line 2
    move-object/from16 v4, p3

    check-cast v4, Lads_mobile_sdk/u83;

    .line 3
    const-string v0, "transaction"

    move-object/from16 v5, p1

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "config"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "adapter"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "listener"

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    iget-object v6, v1, Lads_mobile_sdk/w82;->e:Lads_mobile_sdk/f0;

    invoke-virtual {v6}, Lads_mobile_sdk/f0;->g()Landroid/app/Activity;

    move-result-object v6

    if-eqz v6, :cond_2a

    :goto_28
    move-object v8, v6

    goto :goto_2d

    :cond_2a
    iget-object v6, v1, Lads_mobile_sdk/w82;->d:Landroid/content/Context;

    goto :goto_28

    .line 50
    :goto_2d
    iget-object v6, v1, Lads_mobile_sdk/w82;->a:Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;

    .line 51
    iget-object v7, v1, Lads_mobile_sdk/w82;->b:Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeRequest;

    .line 52
    iget-object v9, v1, Lads_mobile_sdk/w82;->c:Lads_mobile_sdk/l43;

    invoke-virtual {v9}, Lads_mobile_sdk/l43;->a()Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration;

    move-result-object v9

    .line 55
    iget-object v10, v1, Lads_mobile_sdk/w82;->f:Lads_mobile_sdk/hm0;

    .line 56
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 57
    const-string v11, "context"

    invoke-static {v8, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v11, "baseRequest"

    invoke-static {v6, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v11, "nativeRequest"

    invoke-static {v7, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v11, "requestConfiguration"

    invoke-static {v9, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mediationAdLoadListener"

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v11, "delegatingThirdPartyEventEmitter"

    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 265
    :try_start_5d
    iget-object v0, v4, Lads_mobile_sdk/u83;->b:Lcom/google/android/gms/ads/mediation/rtb/RtbAdapter;
    :try_end_5f
    .catch Ljava/lang/IllegalStateException; {:try_start_5d .. :try_end_5f} :catch_f3

    move-object v12, v7

    .line 266
    :try_start_60
    new-instance v7, Lcom/google/android/gms/ads/mediation/MediationNativeAdConfiguration;

    .line 268
    iget-object v13, v2, Lads_mobile_sdk/i2;->r:Ljava/lang/String;

    .line 269
    iget-object v14, v2, Lads_mobile_sdk/i2;->c:Lcom/google/gson/JsonObject;

    invoke-static {v14}, Lads_mobile_sdk/hw1;->a(Lcom/google/gson/JsonObject;)Landroid/os/Bundle;

    move-result-object v14

    .line 270
    iget-object v15, v4, Lads_mobile_sdk/tc1;->a:Lcom/google/android/gms/ads/mediation/Adapter;

    .line 271
    invoke-static {v6, v15}, Lads_mobile_sdk/hw1;->a(Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;Lcom/google/android/gms/ads/mediation/MediationExtrasReceiver;)Landroid/os/Bundle;

    move-result-object v15
    :try_end_70
    .catch Ljava/lang/IllegalStateException; {:try_start_60 .. :try_end_70} :catch_e9

    move-object/from16 v16, v12

    .line 272
    :try_start_72
    invoke-virtual {v9, v8}, Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration;->isTestDevice(Landroid/content/Context;)Z

    move-result v12

    .line 274
    invoke-virtual {v9}, Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration;->getTagForChildDirectedTreatment()Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration$TagForChildDirectedTreatment;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration$TagForChildDirectedTreatment;->getValue()I

    move-result v17

    .line 275
    invoke-virtual {v9}, Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration;->getTagForUnderAgeOfConsent()Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration$TagForUnderAgeOfConsent;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration$TagForUnderAgeOfConsent;->getValue()I

    move-result v18

    .line 276
    iget-object v1, v2, Lads_mobile_sdk/i2;->c:Lcom/google/gson/JsonObject;

    invoke-static {v1, v9}, Lads_mobile_sdk/hw1;->a(Lcom/google/gson/JsonObject;Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration;)Ljava/lang/String;

    move-result-object v1
    :try_end_8c
    .catch Ljava/lang/IllegalStateException; {:try_start_72 .. :try_end_8c} :catch_df

    move-object/from16 v19, v10

    move-object v10, v14

    move/from16 v14, v17

    .line 277
    :try_start_91
    const-string v17, ""
    :try_end_93
    .catch Ljava/lang/IllegalStateException; {:try_start_91 .. :try_end_93} :catch_d4

    move-object/from16 v20, v11

    move-object v11, v15

    move/from16 v15, v18

    .line 278
    :try_start_98
    invoke-static/range {v16 .. v16}, Lads_mobile_sdk/hw1;->a(Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeRequest;)Lcom/google/android/gms/ads/nativead/NativeAdOptions;

    move-result-object v18
    :try_end_9c
    .catch Ljava/lang/IllegalStateException; {:try_start_98 .. :try_end_9c} :catch_c8

    move-object/from16 v21, v9

    move-object v9, v13

    const/4 v13, 0x0

    move-object/from16 p1, v16

    move-object/from16 v16, v1

    move-object/from16 v1, v19

    move-object/from16 v19, v6

    move-object/from16 v6, v20

    .line 279
    :try_start_aa
    invoke-direct/range {v7 .. v18}, Lcom/google/android/gms/ads/mediation/MediationNativeAdConfiguration;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;ZLandroid/location/Location;IILjava/lang/String;Ljava/lang/String;Lcom/google/android/gms/ads/nativead/NativeAdOptions;)V

    .line 293
    new-instance v9, Lads_mobile_sdk/q83;

    invoke-direct {v9, v4}, Lads_mobile_sdk/q83;-><init>(Lads_mobile_sdk/u83;)V

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v10, "setNativeAdMapper"

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 294
    new-instance v10, Lads_mobile_sdk/cw1;

    invoke-direct {v10, v1, v3, v9}, Lads_mobile_sdk/cw1;-><init>(Lads_mobile_sdk/hm0;Lads_mobile_sdk/do3;Lkotlin/jvm/functions/Function1;)V

    .line 295
    invoke-virtual {v0, v7, v10}, Lcom/google/android/gms/ads/mediation/rtb/RtbAdapter;->loadRtbNativeAdMapper(Lcom/google/android/gms/ads/mediation/MediationNativeAdConfiguration;Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;)V
    :try_end_c5
    .catch Ljava/lang/IllegalStateException; {:try_start_aa .. :try_end_c5} :catch_c6

    return-void

    :catch_c6
    move-exception v0

    goto :goto_fc

    :catch_c8
    move-exception v0

    move-object/from16 v21, v9

    move-object/from16 p1, v16

    move-object/from16 v1, v19

    move-object/from16 v19, v6

    move-object/from16 v6, v20

    goto :goto_fc

    :catch_d4
    move-exception v0

    move-object/from16 v21, v9

    move-object/from16 p1, v16

    move-object/from16 v1, v19

    move-object/from16 v19, v6

    :goto_dd
    move-object v6, v11

    goto :goto_fc

    :catch_df
    move-exception v0

    move-object/from16 v19, v6

    move-object/from16 v21, v9

    move-object v1, v10

    move-object v6, v11

    move-object/from16 p1, v16

    goto :goto_fc

    :catch_e9
    move-exception v0

    move-object/from16 v19, v6

    move-object/from16 v21, v9

    move-object v1, v10

    move-object v6, v11

    move-object/from16 p1, v12

    goto :goto_fc

    :catch_f3
    move-exception v0

    move-object/from16 v19, v6

    move-object/from16 p1, v7

    move-object/from16 v21, v9

    move-object v1, v10

    goto :goto_dd

    .line 321
    :goto_fc
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v7

    const/4 v9, 0x2

    const/4 v10, 0x0

    const-string v11, "Method is not found"

    const/4 v12, 0x0

    invoke-static {v7, v11, v12, v9, v10}, Lkotlin/text/StringsKt__StringsJVMKt;->equals$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_15f

    .line 327
    iget-object v0, v4, Lads_mobile_sdk/u83;->b:Lcom/google/android/gms/ads/mediation/rtb/RtbAdapter;

    .line 328
    new-instance v7, Lcom/google/android/gms/ads/mediation/MediationNativeAdConfiguration;

    .line 330
    iget-object v9, v2, Lads_mobile_sdk/i2;->r:Ljava/lang/String;

    .line 331
    iget-object v10, v2, Lads_mobile_sdk/i2;->c:Lcom/google/gson/JsonObject;

    invoke-static {v10}, Lads_mobile_sdk/hw1;->a(Lcom/google/gson/JsonObject;)Landroid/os/Bundle;

    move-result-object v10

    .line 332
    iget-object v11, v4, Lads_mobile_sdk/tc1;->a:Lcom/google/android/gms/ads/mediation/Adapter;

    move-object/from16 v12, v19

    .line 333
    invoke-static {v12, v11}, Lads_mobile_sdk/hw1;->a(Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;Lcom/google/android/gms/ads/mediation/MediationExtrasReceiver;)Landroid/os/Bundle;

    move-result-object v11

    move-object/from16 v12, v21

    .line 334
    invoke-virtual {v12, v8}, Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration;->isTestDevice(Landroid/content/Context;)Z

    move-result v13

    .line 336
    invoke-virtual {v12}, Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration;->getTagForChildDirectedTreatment()Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration$TagForChildDirectedTreatment;

    move-result-object v14

    invoke-virtual {v14}, Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration$TagForChildDirectedTreatment;->getValue()I

    move-result v14

    .line 337
    invoke-virtual {v12}, Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration;->getTagForUnderAgeOfConsent()Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration$TagForUnderAgeOfConsent;

    move-result-object v15

    invoke-virtual {v15}, Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration$TagForUnderAgeOfConsent;->getValue()I

    move-result v15

    .line 338
    iget-object v2, v2, Lads_mobile_sdk/i2;->c:Lcom/google/gson/JsonObject;

    invoke-static {v2, v12}, Lads_mobile_sdk/hw1;->a(Lcom/google/gson/JsonObject;Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration;)Ljava/lang/String;

    move-result-object v16

    .line 340
    invoke-static/range {p1 .. p1}, Lads_mobile_sdk/hw1;->a(Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeRequest;)Lcom/google/android/gms/ads/nativead/NativeAdOptions;

    move-result-object v18

    move v12, v13

    const/4 v13, 0x0

    .line 341
    const-string v17, ""

    invoke-direct/range {v7 .. v18}, Lcom/google/android/gms/ads/mediation/MediationNativeAdConfiguration;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;ZLandroid/location/Location;IILjava/lang/String;Ljava/lang/String;Lcom/google/android/gms/ads/nativead/NativeAdOptions;)V

    .line 355
    new-instance v2, Lads_mobile_sdk/r83;

    invoke-direct {v2, v4}, Lads_mobile_sdk/r83;-><init>(Lads_mobile_sdk/u83;)V

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "setUnifiedNativeAdMapper"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 356
    new-instance v4, Lads_mobile_sdk/gw1;

    invoke-direct {v4, v1, v3, v2}, Lads_mobile_sdk/gw1;-><init>(Lads_mobile_sdk/hm0;Lads_mobile_sdk/do3;Lkotlin/jvm/functions/Function1;)V

    .line 357
    invoke-virtual {v0, v7, v4}, Lcom/google/android/gms/ads/mediation/rtb/RtbAdapter;->loadRtbNativeAd(Lcom/google/android/gms/ads/mediation/MediationNativeAdConfiguration;Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;)V

    return-void

    .line 358
    :cond_15f
    throw v0
.end method
