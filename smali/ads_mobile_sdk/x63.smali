###### Class ads_mobile_sdk.x63 (ads_mobile_sdk.x63)
.class public final Lads_mobile_sdk/x63;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/rf;


# instance fields
.field public final a:Lads_mobile_sdk/j53;

.field public final b:Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;

.field public final c:Lads_mobile_sdk/l43;

.field public final d:Landroid/content/Context;

.field public final e:Lads_mobile_sdk/f0;

.field public final f:Lads_mobile_sdk/hm0;

.field public final g:Lads_mobile_sdk/cw2;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/j53;Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;Lads_mobile_sdk/l43;Landroid/content/Context;Lads_mobile_sdk/f0;Lads_mobile_sdk/hm0;Lads_mobile_sdk/dw2;)V
    .registers 9

    .line 1
    const-string v0, "requestType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "baseRequest"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "requestConfigurationWrapper"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "activityTracker"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "delegatingThirdPartyEventEmitter"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rewardedAdComponentProvider"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p1, p0, Lads_mobile_sdk/x63;->a:Lads_mobile_sdk/j53;

    .line 7
    iput-object p2, p0, Lads_mobile_sdk/x63;->b:Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;

    .line 8
    iput-object p3, p0, Lads_mobile_sdk/x63;->c:Lads_mobile_sdk/l43;

    .line 9
    iput-object p4, p0, Lads_mobile_sdk/x63;->d:Landroid/content/Context;

    .line 10
    iput-object p5, p0, Lads_mobile_sdk/x63;->e:Lads_mobile_sdk/f0;

    .line 11
    iput-object p6, p0, Lads_mobile_sdk/x63;->f:Lads_mobile_sdk/hm0;

    .line 12
    iput-object p7, p0, Lads_mobile_sdk/x63;->g:Lads_mobile_sdk/cw2;

    return-void
.end method

.method public static final a(Lads_mobile_sdk/qv1;Lads_mobile_sdk/x63;Landroid/content/Context;)V
    .registers 5

    .line 220
    const-string v0, "$adapter"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "showContext"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 294
    instance-of v0, p2, Landroid/app/Activity;

    const/4 v1, 0x0

    if-eqz v0, :cond_18

    move-object v0, p2

    check-cast v0, Landroid/app/Activity;

    goto :goto_19

    :cond_18
    move-object v0, v1

    :goto_19
    if-eqz v0, :cond_1d

    move-object p2, v0

    goto :goto_26

    :cond_1d
    iget-object p1, p1, Lads_mobile_sdk/x63;->e:Lads_mobile_sdk/f0;

    invoke-virtual {p1}, Lads_mobile_sdk/f0;->g()Landroid/app/Activity;

    move-result-object p1

    if-eqz p1, :cond_26

    move-object p2, p1

    .line 295
    :cond_26
    :goto_26
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 296
    const-string p1, "context"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 297
    iget-object p0, p0, Lads_mobile_sdk/qv1;->e:Lcom/google/android/gms/ads/mediation/MediationRewardedAd;

    if-eqz p0, :cond_34

    move-object v1, p0

    goto :goto_39

    :cond_34
    const-string p0, "rewardedAd"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 298
    :goto_39
    invoke-interface {v1, p2}, Lcom/google/android/gms/ads/mediation/MediationRewardedAd;->showAd(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public final a(Lads_mobile_sdk/ec3;Lads_mobile_sdk/i2;Lads_mobile_sdk/qv1;)Lads_mobile_sdk/hq3;
    .registers 5

    .line 145
    const-string v0, "transaction"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "config"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "adapter"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 217
    iget-object p1, p0, Lads_mobile_sdk/x63;->g:Lads_mobile_sdk/cw2;

    invoke-interface {p1}, Lads_mobile_sdk/cw2;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lads_mobile_sdk/hq3;

    new-instance p2, Lads_mobile_sdk/x63$$ExternalSyntheticLambda0;

    invoke-direct {p2, p3, p0}, Lads_mobile_sdk/x63$$ExternalSyntheticLambda0;-><init>(Lads_mobile_sdk/qv1;Lads_mobile_sdk/x63;)V

    check-cast p1, Lads_mobile_sdk/kj0;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 219
    iput-object p2, p1, Lads_mobile_sdk/kj0;->p:Lads_mobile_sdk/np3;

    return-object p1
.end method

.method public final bridge synthetic a(Lads_mobile_sdk/ec3;Lads_mobile_sdk/i2;Ljava/lang/Object;)Lads_mobile_sdk/w1;
    .registers 4

    .line 144
    check-cast p3, Lads_mobile_sdk/qv1;

    invoke-virtual {p0, p1, p2, p3}, Lads_mobile_sdk/x63;->a(Lads_mobile_sdk/ec3;Lads_mobile_sdk/i2;Lads_mobile_sdk/qv1;)Lads_mobile_sdk/hq3;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lads_mobile_sdk/ec3;Lads_mobile_sdk/i2;Lads_mobile_sdk/jf;Lads_mobile_sdk/do3;)V
    .registers 30

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p4

    .line 2
    move-object/from16 v3, p3

    check-cast v3, Lads_mobile_sdk/qv1;

    .line 3
    const-string v4, "transaction"

    move-object/from16 v5, p1

    invoke-static {v5, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "config"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "adapter"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "listener"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    iget-object v5, v0, Lads_mobile_sdk/x63;->a:Lads_mobile_sdk/j53;

    sget-object v6, Lads_mobile_sdk/j53;->k:Lads_mobile_sdk/j53;

    const-string v7, "setRewardedAd"

    const-string v8, "mediationAdLoadListener"

    const-string v9, "serverParameterData"

    const-string v10, "requestConfiguration"

    const-string v11, "baseRequest"

    const-string v12, "context"

    const-string v13, "delegatingThirdPartyEventEmitter"

    if-ne v5, v6, :cond_9e

    .line 51
    iget-object v15, v0, Lads_mobile_sdk/x63;->d:Landroid/content/Context;

    .line 52
    iget-object v5, v0, Lads_mobile_sdk/x63;->b:Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;

    .line 53
    iget-object v6, v0, Lads_mobile_sdk/x63;->c:Lads_mobile_sdk/l43;

    invoke-virtual {v6}, Lads_mobile_sdk/l43;->a()Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration;

    move-result-object v6

    .line 54
    iget-object v1, v1, Lads_mobile_sdk/i2;->c:Lcom/google/gson/JsonObject;

    .line 56
    iget-object v14, v0, Lads_mobile_sdk/x63;->f:Lads_mobile_sdk/hm0;

    .line 57
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 58
    invoke-static {v15, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v5, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v6, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v14, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    iget-object v8, v3, Lads_mobile_sdk/tc1;->a:Lcom/google/android/gms/ads/mediation/Adapter;

    move-object v9, v14

    .line 60
    new-instance v14, Lcom/google/android/gms/ads/mediation/MediationRewardedAdConfiguration;

    .line 63
    invoke-static {v1}, Lads_mobile_sdk/hw1;->a(Lcom/google/gson/JsonObject;)Landroid/os/Bundle;

    move-result-object v17

    .line 64
    iget-object v10, v3, Lads_mobile_sdk/tc1;->a:Lcom/google/android/gms/ads/mediation/Adapter;

    .line 65
    invoke-static {v5, v10}, Lads_mobile_sdk/hw1;->a(Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;Lcom/google/android/gms/ads/mediation/MediationExtrasReceiver;)Landroid/os/Bundle;

    move-result-object v18

    .line 66
    invoke-virtual {v6, v15}, Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration;->isTestDevice(Landroid/content/Context;)Z

    move-result v19

    .line 68
    invoke-virtual {v6}, Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration;->getTagForChildDirectedTreatment()Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration$TagForChildDirectedTreatment;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration$TagForChildDirectedTreatment;->getValue()I

    move-result v21

    .line 69
    invoke-virtual {v6}, Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration;->getTagForUnderAgeOfConsent()Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration$TagForUnderAgeOfConsent;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration$TagForUnderAgeOfConsent;->getValue()I

    move-result v22

    .line 70
    invoke-static {v1, v6}, Lads_mobile_sdk/hw1;->a(Lcom/google/gson/JsonObject;Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration;)Ljava/lang/String;

    move-result-object v23

    const/16 v20, 0x0

    .line 71
    const-string v24, ""

    const-string v16, ""

    invoke-direct/range {v14 .. v24}, Lcom/google/android/gms/ads/mediation/MediationRewardedAdConfiguration;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;ZLandroid/location/Location;IILjava/lang/String;Ljava/lang/String;)V

    .line 84
    new-instance v1, Lads_mobile_sdk/pv1;

    invoke-direct {v1, v3}, Lads_mobile_sdk/pv1;-><init>(Lads_mobile_sdk/qv1;)V

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v9, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    new-instance v3, Lads_mobile_sdk/ew1;

    invoke-direct {v3, v9, v2, v1}, Lads_mobile_sdk/ew1;-><init>(Lads_mobile_sdk/hm0;Lads_mobile_sdk/do3;Lkotlin/jvm/functions/Function1;)V

    .line 86
    invoke-virtual {v8, v14, v3}, Lcom/google/android/gms/ads/mediation/Adapter;->loadRewardedInterstitialAd(Lcom/google/android/gms/ads/mediation/MediationRewardedAdConfiguration;Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;)V

    return-void

    .line 87
    :cond_9e
    iget-object v5, v0, Lads_mobile_sdk/x63;->e:Lads_mobile_sdk/f0;

    invoke-virtual {v5}, Lads_mobile_sdk/f0;->g()Landroid/app/Activity;

    move-result-object v5

    if-eqz v5, :cond_a8

    :goto_a6
    move-object v15, v5

    goto :goto_ab

    :cond_a8
    iget-object v5, v0, Lads_mobile_sdk/x63;->d:Landroid/content/Context;

    goto :goto_a6

    .line 88
    :goto_ab
    iget-object v5, v0, Lads_mobile_sdk/x63;->b:Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;

    .line 89
    iget-object v6, v0, Lads_mobile_sdk/x63;->c:Lads_mobile_sdk/l43;

    invoke-virtual {v6}, Lads_mobile_sdk/l43;->a()Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration;

    move-result-object v6

    .line 90
    iget-object v1, v1, Lads_mobile_sdk/i2;->c:Lcom/google/gson/JsonObject;

    .line 92
    iget-object v14, v0, Lads_mobile_sdk/x63;->f:Lads_mobile_sdk/hm0;

    .line 93
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 94
    invoke-static {v15, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v5, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v6, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v14, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 95
    iget-object v8, v3, Lads_mobile_sdk/tc1;->a:Lcom/google/android/gms/ads/mediation/Adapter;

    move-object v9, v14

    .line 96
    new-instance v14, Lcom/google/android/gms/ads/mediation/MediationRewardedAdConfiguration;

    .line 99
    invoke-static {v1}, Lads_mobile_sdk/hw1;->a(Lcom/google/gson/JsonObject;)Landroid/os/Bundle;

    move-result-object v17

    .line 100
    iget-object v10, v3, Lads_mobile_sdk/tc1;->a:Lcom/google/android/gms/ads/mediation/Adapter;

    .line 101
    invoke-static {v5, v10}, Lads_mobile_sdk/hw1;->a(Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;Lcom/google/android/gms/ads/mediation/MediationExtrasReceiver;)Landroid/os/Bundle;

    move-result-object v18

    .line 102
    invoke-virtual {v6, v15}, Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration;->isTestDevice(Landroid/content/Context;)Z

    move-result v19

    .line 104
    invoke-virtual {v6}, Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration;->getTagForChildDirectedTreatment()Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration$TagForChildDirectedTreatment;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration$TagForChildDirectedTreatment;->getValue()I

    move-result v21

    .line 105
    invoke-virtual {v6}, Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration;->getTagForUnderAgeOfConsent()Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration$TagForUnderAgeOfConsent;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration$TagForUnderAgeOfConsent;->getValue()I

    move-result v22

    .line 106
    invoke-static {v1, v6}, Lads_mobile_sdk/hw1;->a(Lcom/google/gson/JsonObject;Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration;)Ljava/lang/String;

    move-result-object v23

    const/16 v20, 0x0

    .line 107
    const-string v24, ""

    const-string v16, ""

    invoke-direct/range {v14 .. v24}, Lcom/google/android/gms/ads/mediation/MediationRewardedAdConfiguration;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;ZLandroid/location/Location;IILjava/lang/String;Ljava/lang/String;)V

    .line 120
    new-instance v1, Lads_mobile_sdk/ov1;

    invoke-direct {v1, v3}, Lads_mobile_sdk/ov1;-><init>(Lads_mobile_sdk/qv1;)V

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v9, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 121
    new-instance v3, Lads_mobile_sdk/ew1;

    invoke-direct {v3, v9, v2, v1}, Lads_mobile_sdk/ew1;-><init>(Lads_mobile_sdk/hm0;Lads_mobile_sdk/do3;Lkotlin/jvm/functions/Function1;)V

    .line 122
    invoke-virtual {v8, v14, v3}, Lcom/google/android/gms/ads/mediation/Adapter;->loadRewardedAd(Lcom/google/android/gms/ads/mediation/MediationRewardedAdConfiguration;Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;)V

    return-void
.end method

###### Class ads_mobile_sdk.x63$$ExternalSyntheticLambda0 (ads_mobile_sdk.x63$$ExternalSyntheticLambda0)
.class public final synthetic Lads_mobile_sdk/x63$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lads_mobile_sdk/np3;


# instance fields
.field public final synthetic f$0:Lads_mobile_sdk/qv1;

.field public final synthetic f$1:Lads_mobile_sdk/x63;


# direct methods
.method public synthetic constructor <init>(Lads_mobile_sdk/qv1;Lads_mobile_sdk/x63;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lads_mobile_sdk/x63$$ExternalSyntheticLambda0;->f$0:Lads_mobile_sdk/qv1;

    iput-object p2, p0, Lads_mobile_sdk/x63$$ExternalSyntheticLambda0;->f$1:Lads_mobile_sdk/x63;

    return-void
.end method


# virtual methods
.method public final showAd(Landroid/content/Context;)V
    .registers 4

    .line 0
    iget-object v0, p0, Lads_mobile_sdk/x63$$ExternalSyntheticLambda0;->f$0:Lads_mobile_sdk/qv1;

    iget-object v1, p0, Lads_mobile_sdk/x63$$ExternalSyntheticLambda0;->f$1:Lads_mobile_sdk/x63;

    invoke-static {v0, v1, p1}, Lads_mobile_sdk/x63;->a(Lads_mobile_sdk/qv1;Lads_mobile_sdk/x63;Landroid/content/Context;)V

    return-void
.end method
