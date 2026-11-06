###### Class ads_mobile_sdk.cq (ads_mobile_sdk.cq)
.class public final Lads_mobile_sdk/cq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/rf;


# instance fields
.field public final a:Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;

.field public final b:Lcom/google/android/libraries/ads/mobile/sdk/banner/BannerRequest;

.field public final c:Lads_mobile_sdk/l43;

.field public final d:Landroid/content/Context;

.field public final e:Lads_mobile_sdk/f0;

.field public final f:Lads_mobile_sdk/hm0;

.field public final g:Lads_mobile_sdk/cw2;

.field public final h:Lads_mobile_sdk/g33;


# direct methods
.method public constructor <init>(Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;Lcom/google/android/libraries/ads/mobile/sdk/banner/BannerRequest;Lads_mobile_sdk/l43;Landroid/content/Context;Lads_mobile_sdk/f0;Lads_mobile_sdk/hm0;Lads_mobile_sdk/dw2;Lads_mobile_sdk/g33;)V
    .registers 10

    .line 1
    const-string v0, "baseRequest"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bannerRequest"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "requestConfigurationWrapper"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "activityTracker"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "delegatingThirdPartyEventEmitter"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bannerAdComponentProvider"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "refreshListener"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object p1, p0, Lads_mobile_sdk/cq;->a:Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;

    .line 8
    iput-object p2, p0, Lads_mobile_sdk/cq;->b:Lcom/google/android/libraries/ads/mobile/sdk/banner/BannerRequest;

    .line 9
    iput-object p3, p0, Lads_mobile_sdk/cq;->c:Lads_mobile_sdk/l43;

    .line 10
    iput-object p4, p0, Lads_mobile_sdk/cq;->d:Landroid/content/Context;

    .line 11
    iput-object p5, p0, Lads_mobile_sdk/cq;->e:Lads_mobile_sdk/f0;

    .line 12
    iput-object p6, p0, Lads_mobile_sdk/cq;->f:Lads_mobile_sdk/hm0;

    .line 13
    iput-object p7, p0, Lads_mobile_sdk/cq;->g:Lads_mobile_sdk/cw2;

    .line 14
    iput-object p8, p0, Lads_mobile_sdk/cq;->h:Lads_mobile_sdk/g33;

    return-void
.end method


# virtual methods
.method public final a(Lads_mobile_sdk/ec3;Lads_mobile_sdk/i2;Ljava/lang/Object;)Lads_mobile_sdk/w1;
    .registers 5

    .line 677
    check-cast p3, Lads_mobile_sdk/u83;

    .line 678
    const-string v0, "transaction"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "config"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "adapter"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 757
    iget-object p1, p0, Lads_mobile_sdk/cq;->g:Lads_mobile_sdk/cw2;

    invoke-interface {p1}, Lads_mobile_sdk/cw2;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lads_mobile_sdk/lo3;

    .line 758
    iget-object p2, p3, Lads_mobile_sdk/u83;->c:Landroid/view/View;

    if-eqz p2, :cond_1e

    goto :goto_24

    .line 759
    :cond_1e
    const-string p2, "view"

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p2, 0x0

    .line 760
    :goto_24
    check-cast p1, Lads_mobile_sdk/ej0;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 761
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 762
    iput-object p2, p1, Lads_mobile_sdk/ej0;->q:Landroid/view/View;

    .line 763
    iget-object p2, p0, Lads_mobile_sdk/cq;->h:Lads_mobile_sdk/g33;

    .line 764
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 765
    iput-object p2, p1, Lads_mobile_sdk/ej0;->p:Lads_mobile_sdk/g33;

    return-object p1
.end method

.method public final a(Lads_mobile_sdk/ec3;Lads_mobile_sdk/i2;Lads_mobile_sdk/jf;Lads_mobile_sdk/do3;)V
    .registers 30

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p4

    .line 2
    move-object/from16 v3, p3

    check-cast v3, Lads_mobile_sdk/u83;

    .line 3
    const-string v4, "transaction"

    move-object/from16 v5, p1

    invoke-static {v5, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "config"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "adapter"

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "listener"

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    iget-object v6, v0, Lads_mobile_sdk/cq;->b:Lcom/google/android/libraries/ads/mobile/sdk/banner/BannerRequest;

    invoke-interface {v6}, Lcom/google/android/libraries/ads/mobile/sdk/banner/BannerRequest;->getAdSize()Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;

    move-result-object v6

    if-nez v6, :cond_36

    .line 56
    new-instance v1, Lcom/google/android/gms/ads/AdError;

    const-string v3, "No AdSize available for banner mediation. This may happen when a server-to-server ad response triggers mediation but no AdSize was provided in the signal request."

    const-string v4, "com.google.android.libraries.ads.mobile.sdk"

    const/4 v5, 0x0

    invoke-direct {v1, v5, v3, v4}, Lcom/google/android/gms/ads/AdError;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 57
    invoke-virtual {v2, v1}, Lads_mobile_sdk/do3;->a(Lcom/google/android/gms/ads/AdError;)V

    return-void

    .line 70
    :cond_36
    iget-object v7, v0, Lads_mobile_sdk/cq;->e:Lads_mobile_sdk/f0;

    invoke-virtual {v7}, Lads_mobile_sdk/f0;->g()Landroid/app/Activity;

    move-result-object v7

    if-eqz v7, :cond_40

    :goto_3e
    move-object v9, v7

    goto :goto_43

    :cond_40
    iget-object v7, v0, Lads_mobile_sdk/cq;->d:Landroid/content/Context;

    goto :goto_3e

    .line 72
    :goto_43
    iget-object v7, v0, Lads_mobile_sdk/cq;->a:Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;

    .line 73
    iget-object v8, v0, Lads_mobile_sdk/cq;->c:Lads_mobile_sdk/l43;

    invoke-virtual {v8}, Lads_mobile_sdk/l43;->a()Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration;

    move-result-object v8

    .line 76
    iget-object v10, v0, Lads_mobile_sdk/cq;->f:Lads_mobile_sdk/hm0;

    .line 77
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 78
    const-string v11, "context"

    invoke-static {v9, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v11, "adSize"

    invoke-static {v6, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v11, "baseRequest"

    invoke-static {v7, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v11, "requestConfiguration"

    invoke-static {v8, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "mediationAdLoadListener"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "delegatingThirdPartyEventEmitter"

    invoke-static {v10, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 146
    iget-object v11, v3, Lads_mobile_sdk/u83;->b:Lcom/google/android/gms/ads/mediation/rtb/RtbAdapter;

    move-object v12, v10

    .line 149
    iget-object v10, v1, Lads_mobile_sdk/i2;->r:Ljava/lang/String;

    .line 150
    iget-object v13, v1, Lads_mobile_sdk/i2;->c:Lcom/google/gson/JsonObject;

    invoke-static {v13}, Lads_mobile_sdk/hw1;->a(Lcom/google/gson/JsonObject;)Landroid/os/Bundle;

    move-result-object v13

    .line 151
    iget-object v14, v3, Lads_mobile_sdk/tc1;->a:Lcom/google/android/gms/ads/mediation/Adapter;

    .line 152
    invoke-static {v7, v14}, Lads_mobile_sdk/hw1;->a(Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;Lcom/google/android/gms/ads/mediation/MediationExtrasReceiver;)Landroid/os/Bundle;

    move-result-object v7

    move-object v14, v11

    move-object v11, v13

    .line 153
    invoke-virtual {v8, v9}, Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration;->isTestDevice(Landroid/content/Context;)Z

    move-result v13

    .line 155
    invoke-virtual {v8}, Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration;->getTagForChildDirectedTreatment()Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration$TagForChildDirectedTreatment;

    move-result-object v15

    invoke-virtual {v15}, Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration$TagForChildDirectedTreatment;->getValue()I

    move-result v15

    .line 156
    invoke-virtual {v8}, Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration;->getTagForUnderAgeOfConsent()Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration$TagForUnderAgeOfConsent;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration$TagForUnderAgeOfConsent;->getValue()I

    move-result v16

    .line 157
    iget-object v1, v1, Lads_mobile_sdk/i2;->c:Lcom/google/gson/JsonObject;

    invoke-static {v1, v8}, Lads_mobile_sdk/hw1;->a(Lcom/google/gson/JsonObject;Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration;)Ljava/lang/String;

    move-result-object v17

    .line 161
    invoke-virtual {v6}, Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;->getWidth()I

    move-result v19

    .line 162
    invoke-virtual {v6}, Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;->getHeight()I

    move-result v20

    .line 163
    invoke-virtual {v6}, Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;->getFormatString()Ljava/lang/String;

    move-result-object v1

    .line 164
    invoke-virtual {v6}, Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;->isAnchoredAdaptiveBanner()Z

    move-result v22

    .line 165
    invoke-virtual {v6}, Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;->isInlineAdaptiveBanner()Z

    move-result v23

    .line 166
    invoke-virtual {v6}, Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;->getHeight()I

    move-result v24

    .line 167
    const-string v6, "formatString"

    invoke-static {v1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 516
    new-instance v18, Lcom/google/android/gms/ads/AdSize;

    move-object/from16 v21, v1

    invoke-direct/range {v18 .. v24}, Lcom/google/android/gms/ads/AdSize;-><init>(IILjava/lang/String;ZZI)V

    .line 517
    new-instance v8, Lcom/google/android/gms/ads/mediation/MediationBannerAdConfiguration;

    move-object v1, v14

    const/4 v14, 0x0

    const-string v19, ""

    move-object v6, v1

    move-object v1, v12

    move-object v12, v7

    invoke-direct/range {v8 .. v19}, Lcom/google/android/gms/ads/mediation/MediationBannerAdConfiguration;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;ZLandroid/location/Location;IILjava/lang/String;Lcom/google/android/gms/ads/AdSize;Ljava/lang/String;)V

    .line 539
    new-instance v7, Lads_mobile_sdk/o83;

    invoke-direct {v7, v3}, Lads_mobile_sdk/o83;-><init>(Lads_mobile_sdk/u83;)V

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "setAdView"

    invoke-static {v7, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 540
    new-instance v3, Lads_mobile_sdk/yv1;

    invoke-direct {v3, v1, v2, v7}, Lads_mobile_sdk/yv1;-><init>(Lads_mobile_sdk/hm0;Lads_mobile_sdk/do3;Lkotlin/jvm/functions/Function1;)V

    .line 541
    invoke-virtual {v6, v8, v3}, Lcom/google/android/gms/ads/mediation/rtb/RtbAdapter;->loadRtbBannerAd(Lcom/google/android/gms/ads/mediation/MediationBannerAdConfiguration;Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;)V

    return-void
.end method

.method public final a(Lads_mobile_sdk/x1;)V
    .registers 3

    .line 565
    check-cast p1, Lads_mobile_sdk/mo3;

    .line 566
    const-string v0, "adComponent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 650
    check-cast p1, Lads_mobile_sdk/fj0;

    .line 651
    iget-object p1, p1, Lads_mobile_sdk/fj0;->Q:Lads_mobile_sdk/dw2;

    .line 652
    invoke-interface {p1}, Lads_mobile_sdk/cw2;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lads_mobile_sdk/od;

    .line 653
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method
