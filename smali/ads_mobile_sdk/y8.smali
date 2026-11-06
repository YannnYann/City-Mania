###### Class ads_mobile_sdk.y8 (ads_mobile_sdk.y8)
.class public final Lads_mobile_sdk/y8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/rh3;


# instance fields
.field public final a:Lads_mobile_sdk/tx;

.field public final b:Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;

.field public final c:Ljava/util/Optional;

.field public final d:Lads_mobile_sdk/l43;

.field public final e:Landroid/content/Context;

.field public final f:Lads_mobile_sdk/j53;

.field public final g:Z

.field public final h:Lads_mobile_sdk/ex0;

.field public final i:J

.field public final j:Z

.field public final k:Ljava/util/Optional;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/tx;Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;Ljava/util/Optional;Lads_mobile_sdk/l43;Landroid/content/Context;Lads_mobile_sdk/j53;ZLads_mobile_sdk/ex0;JZLjava/util/Optional;)V
    .registers 14

    .line 1
    const-string v0, "clock"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adRequest"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bannerRequest"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "requestConfigurationWrapper"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "requestType"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "flags"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "isPersistentCacheFillRequest"

    invoke-static {p12, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lads_mobile_sdk/y8;->a:Lads_mobile_sdk/tx;

    .line 37
    iput-object p2, p0, Lads_mobile_sdk/y8;->b:Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;

    .line 38
    iput-object p3, p0, Lads_mobile_sdk/y8;->c:Ljava/util/Optional;

    .line 39
    iput-object p4, p0, Lads_mobile_sdk/y8;->d:Lads_mobile_sdk/l43;

    .line 40
    iput-object p5, p0, Lads_mobile_sdk/y8;->e:Landroid/content/Context;

    .line 41
    iput-object p6, p0, Lads_mobile_sdk/y8;->f:Lads_mobile_sdk/j53;

    .line 42
    iput-boolean p7, p0, Lads_mobile_sdk/y8;->g:Z

    .line 43
    iput-object p8, p0, Lads_mobile_sdk/y8;->h:Lads_mobile_sdk/ex0;

    .line 44
    iput-wide p9, p0, Lads_mobile_sdk/y8;->i:J

    .line 45
    iput-boolean p11, p0, Lads_mobile_sdk/y8;->j:Z

    .line 46
    iput-object p12, p0, Lads_mobile_sdk/y8;->k:Ljava/util/Optional;

    return-void
.end method


# virtual methods
.method public final f()Lads_mobile_sdk/y11;
    .registers 2

    .line 1
    sget-object v0, Lads_mobile_sdk/y11;->f:Lads_mobile_sdk/y11;

    return-object v0
.end method

.method public final s(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 24

    move-object/from16 v0, p0

    .line 49
    iget-object v1, v0, Lads_mobile_sdk/y8;->d:Lads_mobile_sdk/l43;

    invoke-virtual {v1}, Lads_mobile_sdk/l43;->a()Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration;

    move-result-object v1

    .line 52
    sget-object v2, Lads_mobile_sdk/o21;->f:Lads_mobile_sdk/m21;

    .line 53
    invoke-static {}, Lads_mobile_sdk/jn0;->a()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_21

    .line 54
    iget-object v2, v0, Lads_mobile_sdk/y8;->b:Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;

    invoke-virtual {v2}, Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;->getGoogleExtrasBundle()Landroid/os/Bundle;

    move-result-object v2

    const-string v4, "_emulatorLiveAds"

    invoke-virtual {v2, v4, v3}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_21

    move v12, v3

    goto :goto_28

    .line 58
    :cond_21
    iget-object v2, v0, Lads_mobile_sdk/y8;->e:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration;->isTestDevice(Landroid/content/Context;)Z

    move-result v2

    move v12, v2

    .line 60
    :goto_28
    iget-object v2, v0, Lads_mobile_sdk/y8;->a:Lads_mobile_sdk/tx;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 61
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 62
    new-instance v2, Lads_mobile_sdk/q01;

    .line 63
    new-instance v4, Lads_mobile_sdk/x8;

    .line 64
    iget-object v5, v0, Lads_mobile_sdk/y8;->b:Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;

    .line 66
    invoke-virtual {v1}, Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration;->getTagForChildDirectedTreatment()Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration$TagForChildDirectedTreatment;

    move-result-object v8

    .line 67
    invoke-virtual {v1}, Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration;->getTagForUnderAgeOfConsent()Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration$TagForUnderAgeOfConsent;

    move-result-object v9

    .line 68
    invoke-virtual {v1}, Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration;->getAgeRestrictedTreatmentInternal()Lcom/google/android/libraries/ads/mobile/sdk/common/AgeRestrictedTreatment;

    move-result-object v10

    .line 69
    invoke-virtual {v1}, Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration;->getMaxAdContentRating()Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration$MaxAdContentRating;

    move-result-object v11

    .line 71
    iget-object v13, v0, Lads_mobile_sdk/y8;->f:Lads_mobile_sdk/j53;

    .line 73
    invoke-virtual {v1}, Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration;->getPublisherPrivacyPersonalizationState()Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration$PublisherPrivacyPersonalizationState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration$PublisherPrivacyPersonalizationState;->getValue()I

    move-result v14

    .line 74
    iget-object v1, v0, Lads_mobile_sdk/y8;->c:Ljava/util/Optional;

    invoke-static {v1}, Lkotlin/jvm/optionals/OptionalsKt;->getOrNull(Ljava/util/Optional;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/libraries/ads/mobile/sdk/banner/BannerRequest;

    if-eqz v1, :cond_61

    invoke-interface {v1}, Lcom/google/android/libraries/ads/mobile/sdk/banner/BannerRequest;->getManualImpressionRequested()Z

    move-result v1

    move v15, v1

    goto :goto_62

    :cond_61
    move v15, v3

    .line 75
    :goto_62
    iget-boolean v1, v0, Lads_mobile_sdk/y8;->g:Z

    .line 76
    iget-object v3, v0, Lads_mobile_sdk/y8;->h:Lads_mobile_sdk/ex0;

    move-object/from16 v17, v3

    move-object/from16 v16, v4

    .line 77
    iget-wide v3, v0, Lads_mobile_sdk/y8;->i:J

    sub-long v18, v6, v3

    .line 78
    iget-boolean v3, v0, Lads_mobile_sdk/y8;->j:Z

    .line 79
    iget-object v4, v0, Lads_mobile_sdk/y8;->k:Ljava/util/Optional;

    invoke-static {v4}, Lkotlin/jvm/optionals/OptionalsKt;->getOrNull(Ljava/util/Optional;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    if-eqz v4, :cond_87

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    move/from16 v21, v4

    :goto_80
    move/from16 v20, v3

    move-object/from16 v4, v16

    move/from16 v16, v1

    goto :goto_8a

    :cond_87
    const/16 v21, 0x0

    goto :goto_80

    .line 80
    :goto_8a
    invoke-direct/range {v4 .. v21}, Lads_mobile_sdk/x8;-><init>(Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;JLcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration$TagForChildDirectedTreatment;Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration$TagForUnderAgeOfConsent;Lcom/google/android/libraries/ads/mobile/sdk/common/AgeRestrictedTreatment;Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration$MaxAdContentRating;ZLads_mobile_sdk/j53;IZZLads_mobile_sdk/ex0;JZZ)V

    .line 81
    invoke-direct {v2, v4}, Lads_mobile_sdk/q01;-><init>(Ljava/lang/Object;)V

    return-object v2
.end method
