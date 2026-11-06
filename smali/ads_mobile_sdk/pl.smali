###### Class ads_mobile_sdk.pl (ads_mobile_sdk.pl)
.class public final Lads_mobile_sdk/pl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/rf;


# instance fields
.field public final a:Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;

.field public final b:Lads_mobile_sdk/l43;

.field public final c:Landroid/content/Context;

.field public final d:Lads_mobile_sdk/f0;

.field public final e:Lads_mobile_sdk/hm0;

.field public final f:Lads_mobile_sdk/cw2;


# direct methods
.method public constructor <init>(Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;Lads_mobile_sdk/l43;Landroid/content/Context;Lads_mobile_sdk/f0;Lads_mobile_sdk/hm0;Lads_mobile_sdk/dw2;)V
    .registers 8

    .line 1
    const-string v0, "adRequest"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "requestConfigurationWrapper"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "activityTracker"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "delegatingThirdPartyEventEmitter"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "appOpenAdComponentProvider"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p1, p0, Lads_mobile_sdk/pl;->a:Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;

    .line 7
    iput-object p2, p0, Lads_mobile_sdk/pl;->b:Lads_mobile_sdk/l43;

    .line 8
    iput-object p3, p0, Lads_mobile_sdk/pl;->c:Landroid/content/Context;

    .line 9
    iput-object p4, p0, Lads_mobile_sdk/pl;->d:Lads_mobile_sdk/f0;

    .line 10
    iput-object p5, p0, Lads_mobile_sdk/pl;->e:Lads_mobile_sdk/hm0;

    .line 11
    iput-object p6, p0, Lads_mobile_sdk/pl;->f:Lads_mobile_sdk/cw2;

    return-void
.end method

.method public static final a(Lads_mobile_sdk/u83;Lads_mobile_sdk/pl;Landroid/content/Context;)V
    .registers 5

    .line 441
    const-string v0, "$adapter"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "showContext"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 504
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
    iget-object p1, p1, Lads_mobile_sdk/pl;->d:Lads_mobile_sdk/f0;

    invoke-virtual {p1}, Lads_mobile_sdk/f0;->g()Landroid/app/Activity;

    move-result-object p1

    if-eqz p1, :cond_26

    move-object p2, p1

    .line 505
    :cond_26
    :goto_26
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 506
    const-string p1, "context"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 810
    monitor-enter p0

    .line 811
    :try_start_2f
    iget-object p1, p0, Lads_mobile_sdk/u83;->g:Lcom/google/android/gms/ads/mediation/MediationAppOpenAd;

    if-eqz p1, :cond_35

    move-object v1, p1

    goto :goto_3a

    :cond_35
    const-string p1, "appOpenAd"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 812
    :goto_3a
    invoke-interface {v1, p2}, Lcom/google/android/gms/ads/mediation/MediationAppOpenAd;->showAd(Landroid/content/Context;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_3f
    .catchall {:try_start_2f .. :try_end_3f} :catchall_41

    monitor-exit p0

    return-void

    :catchall_41
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public final a(Lads_mobile_sdk/ec3;Lads_mobile_sdk/i2;Lads_mobile_sdk/u83;)Lads_mobile_sdk/ko3;
    .registers 5

    .line 377
    const-string v0, "transaction"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "config"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "adapter"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 438
    iget-object p1, p0, Lads_mobile_sdk/pl;->f:Lads_mobile_sdk/cw2;

    invoke-interface {p1}, Lads_mobile_sdk/cw2;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lads_mobile_sdk/ko3;

    new-instance p2, Lads_mobile_sdk/pl$$ExternalSyntheticLambda0;

    invoke-direct {p2, p3, p0}, Lads_mobile_sdk/pl$$ExternalSyntheticLambda0;-><init>(Lads_mobile_sdk/u83;Lads_mobile_sdk/pl;)V

    check-cast p1, Lads_mobile_sdk/cj0;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 440
    iput-object p2, p1, Lads_mobile_sdk/cj0;->p:Lads_mobile_sdk/np3;

    return-object p1
.end method

.method public final bridge synthetic a(Lads_mobile_sdk/ec3;Lads_mobile_sdk/i2;Ljava/lang/Object;)Lads_mobile_sdk/w1;
    .registers 4

    .line 376
    check-cast p3, Lads_mobile_sdk/u83;

    invoke-virtual {p0, p1, p2, p3}, Lads_mobile_sdk/pl;->a(Lads_mobile_sdk/ec3;Lads_mobile_sdk/i2;Lads_mobile_sdk/u83;)Lads_mobile_sdk/ko3;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lads_mobile_sdk/ec3;Lads_mobile_sdk/i2;Lads_mobile_sdk/jf;Lads_mobile_sdk/do3;)V
    .registers 24

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

    .line 49
    iget-object v6, v0, Lads_mobile_sdk/pl;->d:Lads_mobile_sdk/f0;

    invoke-virtual {v6}, Lads_mobile_sdk/f0;->g()Landroid/app/Activity;

    move-result-object v6

    if-eqz v6, :cond_2a

    :goto_28
    move-object v8, v6

    goto :goto_2d

    :cond_2a
    iget-object v6, v0, Lads_mobile_sdk/pl;->c:Landroid/content/Context;

    goto :goto_28

    .line 50
    :goto_2d
    iget-object v6, v0, Lads_mobile_sdk/pl;->a:Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;

    .line 51
    iget-object v7, v0, Lads_mobile_sdk/pl;->b:Lads_mobile_sdk/l43;

    invoke-virtual {v7}, Lads_mobile_sdk/l43;->a()Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration;

    move-result-object v7

    .line 54
    iget-object v9, v0, Lads_mobile_sdk/pl;->e:Lads_mobile_sdk/hm0;

    .line 55
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 56
    const-string v10, "context"

    invoke-static {v8, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v10, "adRequest"

    invoke-static {v6, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v10, "requestConfiguration"

    invoke-static {v7, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "mediationAdLoadListener"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "delegatingThirdPartyEventEmitter"

    invoke-static {v9, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 328
    iget-object v10, v3, Lads_mobile_sdk/u83;->b:Lcom/google/android/gms/ads/mediation/rtb/RtbAdapter;

    .line 329
    new-instance v11, Lcom/google/android/gms/ads/mediation/MediationAppOpenAdConfiguration;

    move-object v12, v9

    .line 331
    iget-object v9, v1, Lads_mobile_sdk/i2;->r:Ljava/lang/String;

    .line 332
    iget-object v13, v1, Lads_mobile_sdk/i2;->c:Lcom/google/gson/JsonObject;

    invoke-static {v13}, Lads_mobile_sdk/hw1;->a(Lcom/google/gson/JsonObject;)Landroid/os/Bundle;

    move-result-object v13

    .line 333
    iget-object v14, v3, Lads_mobile_sdk/tc1;->a:Lcom/google/android/gms/ads/mediation/Adapter;

    .line 334
    invoke-static {v6, v14}, Lads_mobile_sdk/hw1;->a(Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;Lcom/google/android/gms/ads/mediation/MediationExtrasReceiver;)Landroid/os/Bundle;

    move-result-object v6

    move-object v14, v12

    .line 335
    invoke-virtual {v7, v8}, Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration;->isTestDevice(Landroid/content/Context;)Z

    move-result v12

    .line 337
    invoke-virtual {v7}, Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration;->getTagForChildDirectedTreatment()Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration$TagForChildDirectedTreatment;

    move-result-object v15

    invoke-virtual {v15}, Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration$TagForChildDirectedTreatment;->getValue()I

    move-result v15

    .line 338
    invoke-virtual {v7}, Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration;->getTagForUnderAgeOfConsent()Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration$TagForUnderAgeOfConsent;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration$TagForUnderAgeOfConsent;->getValue()I

    move-result v16

    .line 339
    iget-object v1, v1, Lads_mobile_sdk/i2;->c:Lcom/google/gson/JsonObject;

    invoke-static {v1, v7}, Lads_mobile_sdk/hw1;->a(Lcom/google/gson/JsonObject;Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration;)Ljava/lang/String;

    move-result-object v1

    move-object v7, v10

    move-object v10, v13

    const/4 v13, 0x0

    .line 340
    const-string v17, ""

    move/from16 v18, v16

    move-object/from16 v16, v1

    move-object v1, v14

    move v14, v15

    move/from16 v15, v18

    move-object/from16 v18, v11

    move-object v11, v6

    move-object v6, v7

    move-object/from16 v7, v18

    invoke-direct/range {v7 .. v17}, Lcom/google/android/gms/ads/mediation/MediationAppOpenAdConfiguration;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;ZLandroid/location/Location;IILjava/lang/String;Ljava/lang/String;)V

    .line 353
    new-instance v8, Lads_mobile_sdk/n83;

    invoke-direct {v8, v3}, Lads_mobile_sdk/n83;-><init>(Lads_mobile_sdk/u83;)V

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "setAppOpenAd"

    invoke-static {v8, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 354
    new-instance v3, Lads_mobile_sdk/wv1;

    invoke-direct {v3, v1, v2, v8}, Lads_mobile_sdk/wv1;-><init>(Lads_mobile_sdk/hm0;Lads_mobile_sdk/do3;Lkotlin/jvm/functions/Function1;)V

    .line 355
    invoke-virtual {v6, v7, v3}, Lcom/google/android/gms/ads/mediation/rtb/RtbAdapter;->loadRtbAppOpenAd(Lcom/google/android/gms/ads/mediation/MediationAppOpenAdConfiguration;Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;)V

    return-void
.end method

###### Class ads_mobile_sdk.pl$$ExternalSyntheticLambda0 (ads_mobile_sdk.pl$$ExternalSyntheticLambda0)
.class public final synthetic Lads_mobile_sdk/pl$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lads_mobile_sdk/np3;


# instance fields
.field public final synthetic f$0:Lads_mobile_sdk/u83;

.field public final synthetic f$1:Lads_mobile_sdk/pl;


# direct methods
.method public synthetic constructor <init>(Lads_mobile_sdk/u83;Lads_mobile_sdk/pl;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lads_mobile_sdk/pl$$ExternalSyntheticLambda0;->f$0:Lads_mobile_sdk/u83;

    iput-object p2, p0, Lads_mobile_sdk/pl$$ExternalSyntheticLambda0;->f$1:Lads_mobile_sdk/pl;

    return-void
.end method


# virtual methods
.method public final showAd(Landroid/content/Context;)V
    .registers 4

    .line 0
    iget-object v0, p0, Lads_mobile_sdk/pl$$ExternalSyntheticLambda0;->f$0:Lads_mobile_sdk/u83;

    iget-object v1, p0, Lads_mobile_sdk/pl$$ExternalSyntheticLambda0;->f$1:Lads_mobile_sdk/pl;

    invoke-static {v0, v1, p1}, Lads_mobile_sdk/pl;->a(Lads_mobile_sdk/u83;Lads_mobile_sdk/pl;Landroid/content/Context;)V

    return-void
.end method
