###### Class ads_mobile_sdk.d42 (ads_mobile_sdk.d42)
.class public final Lads_mobile_sdk/d42;
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
    iput-object p1, p0, Lads_mobile_sdk/d42;->a:Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;

    .line 7
    iput-object p2, p0, Lads_mobile_sdk/d42;->b:Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeRequest;

    .line 8
    iput-object p3, p0, Lads_mobile_sdk/d42;->c:Lads_mobile_sdk/l43;

    .line 9
    iput-object p4, p0, Lads_mobile_sdk/d42;->d:Landroid/content/Context;

    .line 10
    iput-object p5, p0, Lads_mobile_sdk/d42;->e:Lads_mobile_sdk/f0;

    .line 11
    iput-object p6, p0, Lads_mobile_sdk/d42;->f:Lads_mobile_sdk/hm0;

    .line 12
    iput-object p7, p0, Lads_mobile_sdk/d42;->g:Lads_mobile_sdk/cw2;

    return-void
.end method


# virtual methods
.method public final a(Lads_mobile_sdk/ec3;Lads_mobile_sdk/i2;Ljava/lang/Object;)Lads_mobile_sdk/w1;
    .registers 6

    .line 167
    check-cast p3, Lads_mobile_sdk/qv1;

    .line 168
    const-string v0, "transaction"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "config"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "adapter"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 229
    iget-object p1, p0, Lads_mobile_sdk/d42;->g:Lads_mobile_sdk/cw2;

    .line 230
    invoke-interface {p1}, Lads_mobile_sdk/cw2;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lads_mobile_sdk/pp3;

    .line 231
    iget-object p2, p3, Lads_mobile_sdk/qv1;->c:Lads_mobile_sdk/p12;

    const/4 v0, 0x0

    const-string v1, "nativeAdMapper"

    if-eqz p2, :cond_21

    goto :goto_25

    .line 232
    :cond_21
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p2, v0

    .line 233
    :goto_25
    check-cast p1, Lads_mobile_sdk/ij0;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 234
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 235
    iput-object p2, p1, Lads_mobile_sdk/ij0;->p:Lads_mobile_sdk/p12;

    .line 236
    iget-object p2, p3, Lads_mobile_sdk/qv1;->c:Lads_mobile_sdk/p12;

    if-eqz p2, :cond_35

    move-object v0, p2

    goto :goto_38

    :cond_35
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 237
    :goto_38
    iget-object p2, p0, Lads_mobile_sdk/d42;->b:Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeRequest;

    invoke-interface {p2}, Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeRequest;->getAdChoicesPlacement()Lcom/google/android/libraries/ads/mobile/sdk/common/AdChoicesPlacement;

    move-result-object p2

    invoke-static {v0, p2}, Lads_mobile_sdk/r02;->a(Lads_mobile_sdk/p12;Lcom/google/android/libraries/ads/mobile/sdk/common/AdChoicesPlacement;)Lads_mobile_sdk/s02;

    move-result-object p2

    .line 238
    iput-object p2, p1, Lads_mobile_sdk/ij0;->q:Lads_mobile_sdk/s02;

    return-object p1
.end method

.method public final a(Lads_mobile_sdk/ec3;Lads_mobile_sdk/i2;Lads_mobile_sdk/jf;Lads_mobile_sdk/do3;)V
    .registers 28

    move-object/from16 v1, p0

    move-object/from16 v0, p2

    move-object/from16 v2, p4

    .line 2
    move-object/from16 v3, p3

    check-cast v3, Lads_mobile_sdk/qv1;

    .line 3
    const-string v4, "transaction"

    move-object/from16 v5, p1

    invoke-static {v5, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "config"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "adapter"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "listener"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    iget-object v5, v1, Lads_mobile_sdk/d42;->e:Lads_mobile_sdk/f0;

    invoke-virtual {v5}, Lads_mobile_sdk/f0;->g()Landroid/app/Activity;

    move-result-object v5

    if-eqz v5, :cond_2a

    :goto_28
    move-object v7, v5

    goto :goto_2d

    :cond_2a
    iget-object v5, v1, Lads_mobile_sdk/d42;->d:Landroid/content/Context;

    goto :goto_28

    .line 50
    :goto_2d
    iget-object v5, v1, Lads_mobile_sdk/d42;->a:Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;

    .line 51
    iget-object v6, v1, Lads_mobile_sdk/d42;->b:Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeRequest;

    .line 52
    iget-object v8, v1, Lads_mobile_sdk/d42;->c:Lads_mobile_sdk/l43;

    invoke-virtual {v8}, Lads_mobile_sdk/l43;->a()Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration;

    move-result-object v8

    .line 53
    iget-object v9, v0, Lads_mobile_sdk/i2;->c:Lcom/google/gson/JsonObject;

    .line 55
    iget-object v10, v1, Lads_mobile_sdk/d42;->f:Lads_mobile_sdk/hm0;

    .line 56
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 57
    const-string v0, "context"

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "baseRequest"

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nativeRequest"

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "requestConfiguration"

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adapterData"

    invoke-static {v9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mediationAdLoadListener"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v11, "delegatingThirdPartyEventEmitter"

    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    :try_start_61
    iget-object v0, v3, Lads_mobile_sdk/tc1;->a:Lcom/google/android/gms/ads/mediation/Adapter;
    :try_end_63
    .catch Ljava/lang/IllegalStateException; {:try_start_61 .. :try_end_63} :catch_101

    move-object v12, v6

    .line 59
    :try_start_64
    new-instance v6, Lcom/google/android/gms/ads/mediation/MediationNativeAdConfiguration;

    .line 61
    const-string v13, ""

    .line 62
    invoke-static {v9}, Lads_mobile_sdk/hw1;->a(Lcom/google/gson/JsonObject;)Landroid/os/Bundle;

    move-result-object v14

    .line 63
    iget-object v15, v3, Lads_mobile_sdk/tc1;->a:Lcom/google/android/gms/ads/mediation/Adapter;

    .line 64
    invoke-static {v5, v15}, Lads_mobile_sdk/hw1;->a(Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;Lcom/google/android/gms/ads/mediation/MediationExtrasReceiver;)Landroid/os/Bundle;

    move-result-object v15
    :try_end_72
    .catch Ljava/lang/IllegalStateException; {:try_start_64 .. :try_end_72} :catch_f5

    move-object/from16 v16, v11

    .line 65
    :try_start_74
    invoke-virtual {v8, v7}, Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration;->isTestDevice(Landroid/content/Context;)Z

    move-result v11

    .line 67
    invoke-virtual {v8}, Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration;->getTagForChildDirectedTreatment()Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration$TagForChildDirectedTreatment;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration$TagForChildDirectedTreatment;->getValue()I

    move-result v17

    .line 68
    invoke-virtual {v8}, Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration;->getTagForUnderAgeOfConsent()Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration$TagForUnderAgeOfConsent;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration$TagForUnderAgeOfConsent;->getValue()I

    move-result v18
    :try_end_88
    .catch Ljava/lang/IllegalStateException; {:try_start_74 .. :try_end_88} :catch_e8

    move-object/from16 v19, v10

    move-object v10, v15

    .line 69
    :try_start_8b
    invoke-static {v9, v8}, Lads_mobile_sdk/hw1;->a(Lcom/google/gson/JsonObject;Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration;)Ljava/lang/String;

    move-result-object v15
    :try_end_8f
    .catch Ljava/lang/IllegalStateException; {:try_start_8b .. :try_end_8f} :catch_da

    move-object/from16 v20, v16

    .line 70
    :try_start_91
    const-string v16, ""
    :try_end_93
    .catch Ljava/lang/IllegalStateException; {:try_start_91 .. :try_end_93} :catch_d4

    move-object/from16 v21, v8

    move-object v8, v13

    move/from16 v13, v17

    .line 71
    :try_start_98
    invoke-static {v12}, Lads_mobile_sdk/hw1;->a(Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeRequest;)Lcom/google/android/gms/ads/nativead/NativeAdOptions;

    move-result-object v17
    :try_end_9c
    .catch Ljava/lang/IllegalStateException; {:try_start_98 .. :try_end_9c} :catch_c8

    move-object/from16 v22, v12

    const/4 v12, 0x0

    move-object/from16 p1, v9

    move-object v9, v14

    move/from16 v14, v18

    move-object/from16 v1, v19

    move-object/from16 v18, v5

    move-object/from16 v5, v20

    .line 72
    :try_start_aa
    invoke-direct/range {v6 .. v17}, Lcom/google/android/gms/ads/mediation/MediationNativeAdConfiguration;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;ZLandroid/location/Location;IILjava/lang/String;Ljava/lang/String;Lcom/google/android/gms/ads/nativead/NativeAdOptions;)V

    .line 86
    new-instance v8, Lads_mobile_sdk/mv1;

    invoke-direct {v8, v3}, Lads_mobile_sdk/mv1;-><init>(Lads_mobile_sdk/qv1;)V

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v9, "setNativeAdMapper"

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 87
    new-instance v9, Lads_mobile_sdk/cw1;

    invoke-direct {v9, v1, v2, v8}, Lads_mobile_sdk/cw1;-><init>(Lads_mobile_sdk/hm0;Lads_mobile_sdk/do3;Lkotlin/jvm/functions/Function1;)V

    .line 88
    invoke-virtual {v0, v6, v9}, Lcom/google/android/gms/ads/mediation/Adapter;->loadNativeAdMapper(Lcom/google/android/gms/ads/mediation/MediationNativeAdConfiguration;Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;)V
    :try_end_c5
    .catch Ljava/lang/IllegalStateException; {:try_start_aa .. :try_end_c5} :catch_c6

    return-void

    :catch_c6
    move-exception v0

    goto :goto_10c

    :catch_c8
    move-exception v0

    move-object/from16 v18, v5

    :goto_cb
    move-object/from16 p1, v9

    move-object/from16 v22, v12

    move-object/from16 v1, v19

    move-object/from16 v5, v20

    goto :goto_10c

    :catch_d4
    move-exception v0

    move-object/from16 v18, v5

    move-object/from16 v21, v8

    goto :goto_cb

    :catch_da
    move-exception v0

    move-object/from16 v18, v5

    move-object/from16 v21, v8

    move-object/from16 p1, v9

    move-object/from16 v22, v12

    move-object/from16 v5, v16

    move-object/from16 v1, v19

    goto :goto_10c

    :catch_e8
    move-exception v0

    move-object/from16 v18, v5

    move-object/from16 v21, v8

    move-object/from16 p1, v9

    move-object v1, v10

    move-object/from16 v22, v12

    move-object/from16 v5, v16

    goto :goto_10c

    :catch_f5
    move-exception v0

    move-object/from16 v18, v5

    move-object/from16 v21, v8

    move-object/from16 p1, v9

    move-object v1, v10

    move-object v5, v11

    move-object/from16 v22, v12

    goto :goto_10c

    :catch_101
    move-exception v0

    move-object/from16 v18, v5

    move-object/from16 v22, v6

    move-object/from16 v21, v8

    move-object/from16 p1, v9

    move-object v1, v10

    move-object v5, v11

    .line 114
    :goto_10c
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x2

    const/4 v9, 0x0

    const-string v10, "Method is not found"

    const/4 v11, 0x0

    invoke-static {v6, v10, v11, v8, v9}, Lkotlin/text/StringsKt__StringsJVMKt;->equals$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_16c

    .line 115
    iget-object v0, v3, Lads_mobile_sdk/tc1;->a:Lcom/google/android/gms/ads/mediation/Adapter;

    .line 116
    new-instance v6, Lcom/google/android/gms/ads/mediation/MediationNativeAdConfiguration;

    .line 119
    invoke-static/range {p1 .. p1}, Lads_mobile_sdk/hw1;->a(Lcom/google/gson/JsonObject;)Landroid/os/Bundle;

    move-result-object v9

    .line 120
    iget-object v8, v3, Lads_mobile_sdk/tc1;->a:Lcom/google/android/gms/ads/mediation/Adapter;

    move-object/from16 v10, v18

    .line 121
    invoke-static {v10, v8}, Lads_mobile_sdk/hw1;->a(Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;Lcom/google/android/gms/ads/mediation/MediationExtrasReceiver;)Landroid/os/Bundle;

    move-result-object v10

    move-object/from16 v8, v21

    .line 122
    invoke-virtual {v8, v7}, Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration;->isTestDevice(Landroid/content/Context;)Z

    move-result v11

    .line 124
    invoke-virtual {v8}, Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration;->getTagForChildDirectedTreatment()Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration$TagForChildDirectedTreatment;

    move-result-object v12

    invoke-virtual {v12}, Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration$TagForChildDirectedTreatment;->getValue()I

    move-result v13

    .line 125
    invoke-virtual {v8}, Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration;->getTagForUnderAgeOfConsent()Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration$TagForUnderAgeOfConsent;

    move-result-object v12

    invoke-virtual {v12}, Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration$TagForUnderAgeOfConsent;->getValue()I

    move-result v14

    move-object/from16 v12, p1

    .line 126
    invoke-static {v12, v8}, Lads_mobile_sdk/hw1;->a(Lcom/google/gson/JsonObject;Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration;)Ljava/lang/String;

    move-result-object v15

    .line 128
    invoke-static/range {v22 .. v22}, Lads_mobile_sdk/hw1;->a(Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeRequest;)Lcom/google/android/gms/ads/nativead/NativeAdOptions;

    move-result-object v17

    const/4 v12, 0x0

    .line 129
    const-string v16, ""

    const-string v8, ""

    invoke-direct/range {v6 .. v17}, Lcom/google/android/gms/ads/mediation/MediationNativeAdConfiguration;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;ZLandroid/location/Location;IILjava/lang/String;Ljava/lang/String;Lcom/google/android/gms/ads/nativead/NativeAdOptions;)V

    .line 143
    new-instance v7, Lads_mobile_sdk/nv1;

    invoke-direct {v7, v3}, Lads_mobile_sdk/nv1;-><init>(Lads_mobile_sdk/qv1;)V

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "setUnifiedNativeAdMapper"

    invoke-static {v7, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 144
    new-instance v3, Lads_mobile_sdk/gw1;

    invoke-direct {v3, v1, v2, v7}, Lads_mobile_sdk/gw1;-><init>(Lads_mobile_sdk/hm0;Lads_mobile_sdk/do3;Lkotlin/jvm/functions/Function1;)V

    .line 145
    invoke-virtual {v0, v6, v3}, Lcom/google/android/gms/ads/mediation/Adapter;->loadNativeAd(Lcom/google/android/gms/ads/mediation/MediationNativeAdConfiguration;Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;)V

    return-void

    .line 146
    :cond_16c
    throw v0
.end method
