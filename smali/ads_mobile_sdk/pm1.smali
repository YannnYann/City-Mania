###### Class ads_mobile_sdk.pm1 (ads_mobile_sdk.pm1)
.class public final Lads_mobile_sdk/pm1;
.super Lads_mobile_sdk/ei1;
.source "SourceFile"


# static fields
.field public static final b:Lads_mobile_sdk/nm1;


# instance fields
.field public final a:Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdLoaderCallback;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lads_mobile_sdk/nm1;

    .line 2
    invoke-direct {v0}, Lads_mobile_sdk/nm1;-><init>()V

    .line 3
    sput-object v0, Lads_mobile_sdk/pm1;->b:Lads_mobile_sdk/nm1;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdLoaderCallback;)V
    .registers 3

    .line 1
    const-string v0, "loadCallback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    invoke-direct {p0}, Lads_mobile_sdk/ei1;-><init>()V

    .line 25
    iput-object p1, p0, Lads_mobile_sdk/pm1;->a:Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdLoaderCallback;

    return-void
.end method


# virtual methods
.method public final a(Lads_mobile_sdk/xz1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 8

    .line 68
    instance-of v0, p2, Lads_mobile_sdk/om1;

    if-eqz v0, :cond_13

    move-object v0, p2

    check-cast v0, Lads_mobile_sdk/om1;

    iget v1, v0, Lads_mobile_sdk/om1;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/om1;->d:I

    goto :goto_18

    :cond_13
    new-instance v0, Lads_mobile_sdk/om1;

    invoke-direct {v0, p0, p2}, Lads_mobile_sdk/om1;-><init>(Lads_mobile_sdk/pm1;Lkotlin/coroutines/Continuation;)V

    :goto_18
    iget-object p2, v0, Lads_mobile_sdk/om1;->b:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 93
    iget v2, v0, Lads_mobile_sdk/om1;->d:I

    const/4 v3, 0x1

    if-eqz v2, :cond_34

    if-ne v2, v3, :cond_2c

    iget-object p1, v0, Lads_mobile_sdk/om1;->a:Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdLoaderCallback;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_c9

    :cond_2c
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_34
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 95
    instance-of p2, p1, Lads_mobile_sdk/wz1;

    if-eqz p2, :cond_af

    .line 96
    check-cast p1, Lads_mobile_sdk/wz1;

    .line 97
    iget-object p1, p1, Lads_mobile_sdk/wz1;->a:Lcom/google/android/libraries/ads/mobile/sdk/internal/nativead/InternalNativeAd;

    .line 98
    const-string p2, "ad"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 99
    invoke-virtual {p1}, Lcom/google/android/libraries/ads/mobile/sdk/internal/nativead/InternalNativeAd;->q()Lads_mobile_sdk/s02;

    move-result-object p2

    iget-object p2, p2, Lads_mobile_sdk/s02;->b:Lads_mobile_sdk/q02;

    if-nez p2, :cond_4e

    const/4 p2, -0x1

    goto :goto_56

    :cond_4e
    sget-object v0, Lads_mobile_sdk/lm1;->a:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p2, v0, p2

    :goto_56
    const/4 v0, 0x0

    const-string v1, "Invalid native ad response."

    if-eq p2, v3, :cond_77

    const/4 v2, 0x2

    if-eq p2, v2, :cond_6b

    .line 105
    new-instance p1, Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdLoadResult$Failure;

    .line 106
    new-instance p2, Lcom/google/android/libraries/ads/mobile/sdk/common/LoadAdError;

    sget-object v2, Lcom/google/android/libraries/ads/mobile/sdk/common/LoadAdError$ErrorCode;->INTERNAL_ERROR:Lcom/google/android/libraries/ads/mobile/sdk/common/LoadAdError$ErrorCode;

    .line 107
    invoke-direct {p2, v2, v1, v0}, Lcom/google/android/libraries/ads/mobile/sdk/common/LoadAdError;-><init>(Lcom/google/android/libraries/ads/mobile/sdk/common/LoadAdError$ErrorCode;Ljava/lang/String;Lcom/google/android/libraries/ads/mobile/sdk/common/ResponseInfo;)V

    .line 108
    invoke-direct {p1, p2}, Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdLoadResult$Failure;-><init>(Lcom/google/android/libraries/ads/mobile/sdk/common/LoadAdError;)V

    goto :goto_82

    .line 109
    :cond_6b
    new-instance p2, Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdLoadResult$CustomNativeAdSuccess;

    new-instance v2, Lads_mobile_sdk/nc0;

    invoke-direct {v2, p1}, Lads_mobile_sdk/nc0;-><init>(Lcom/google/android/libraries/ads/mobile/sdk/internal/nativead/InternalNativeAd;)V

    invoke-direct {p2, v2}, Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdLoadResult$CustomNativeAdSuccess;-><init>(Lcom/google/android/libraries/ads/mobile/sdk/nativead/CustomNativeAd;)V

    :goto_75
    move-object p1, p2

    goto :goto_82

    .line 110
    :cond_77
    new-instance p2, Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdLoadResult$NativeAdSuccess;

    new-instance v2, Lads_mobile_sdk/l12;

    invoke-direct {v2, p1}, Lads_mobile_sdk/l12;-><init>(Lcom/google/android/libraries/ads/mobile/sdk/internal/nativead/InternalNativeAd;)V

    invoke-direct {p2, v2}, Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdLoadResult$NativeAdSuccess;-><init>(Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAd;)V

    goto :goto_75

    .line 111
    :goto_82
    instance-of p2, p1, Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdLoadResult$NativeAdSuccess;

    if-eqz p2, :cond_92

    iget-object p2, p0, Lads_mobile_sdk/pm1;->a:Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdLoaderCallback;

    check-cast p1, Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdLoadResult$NativeAdSuccess;

    invoke-virtual {p1}, Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdLoadResult$NativeAdSuccess;->getAd()Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAd;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdLoaderCallback;->onNativeAdLoaded(Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAd;)V

    goto :goto_d2

    .line 112
    :cond_92
    instance-of p2, p1, Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdLoadResult$CustomNativeAdSuccess;

    if-eqz p2, :cond_a2

    iget-object p2, p0, Lads_mobile_sdk/pm1;->a:Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdLoaderCallback;

    check-cast p1, Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdLoadResult$CustomNativeAdSuccess;

    invoke-virtual {p1}, Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdLoadResult$CustomNativeAdSuccess;->getAd()Lcom/google/android/libraries/ads/mobile/sdk/nativead/CustomNativeAd;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdLoaderCallback;->onCustomNativeAdLoaded(Lcom/google/android/libraries/ads/mobile/sdk/nativead/CustomNativeAd;)V

    goto :goto_d2

    .line 114
    :cond_a2
    iget-object p1, p0, Lads_mobile_sdk/pm1;->a:Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdLoaderCallback;

    .line 115
    new-instance p2, Lcom/google/android/libraries/ads/mobile/sdk/common/LoadAdError;

    sget-object v2, Lcom/google/android/libraries/ads/mobile/sdk/common/LoadAdError$ErrorCode;->INTERNAL_ERROR:Lcom/google/android/libraries/ads/mobile/sdk/common/LoadAdError$ErrorCode;

    .line 116
    invoke-direct {p2, v2, v1, v0}, Lcom/google/android/libraries/ads/mobile/sdk/common/LoadAdError;-><init>(Lcom/google/android/libraries/ads/mobile/sdk/common/LoadAdError$ErrorCode;Ljava/lang/String;Lcom/google/android/libraries/ads/mobile/sdk/common/ResponseInfo;)V

    .line 117
    invoke-interface {p1, p2}, Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdLoaderCallback;->onAdFailedToLoad(Lcom/google/android/libraries/ads/mobile/sdk/common/LoadAdError;)V

    goto :goto_d2

    .line 122
    :cond_af
    instance-of p2, p1, Lads_mobile_sdk/vz1;

    if-eqz p2, :cond_d2

    .line 123
    iget-object p2, p0, Lads_mobile_sdk/pm1;->a:Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdLoaderCallback;

    sget-object v2, Lads_mobile_sdk/pm1;->b:Lads_mobile_sdk/nm1;

    check-cast p1, Lads_mobile_sdk/vz1;

    .line 124
    iget-object p1, p1, Lads_mobile_sdk/vz1;->a:Lads_mobile_sdk/ck1;

    .line 125
    iput-object p2, v0, Lads_mobile_sdk/om1;->a:Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdLoaderCallback;

    iput v3, v0, Lads_mobile_sdk/om1;->d:I

    invoke-virtual {v2, p1, v0}, Lads_mobile_sdk/nm1;->a(Lads_mobile_sdk/ck1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_c6

    return-object v1

    :cond_c6
    move-object v4, p2

    move-object p2, p1

    move-object p1, v4

    .line 126
    :goto_c9
    check-cast p2, Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdLoadResult$BannerAdSuccess;

    invoke-virtual {p2}, Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdLoadResult$BannerAdSuccess;->getAd()Lcom/google/android/libraries/ads/mobile/sdk/banner/BannerAd;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdLoaderCallback;->onBannerAdLoaded(Lcom/google/android/libraries/ads/mobile/sdk/banner/BannerAd;)V

    .line 128
    :cond_d2
    :goto_d2
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final bridge synthetic a(Lads_mobile_sdk/zh1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 3

    .line 67
    check-cast p1, Lads_mobile_sdk/xz1;

    invoke-virtual {p0, p1, p2}, Lads_mobile_sdk/pm1;->a(Lads_mobile_sdk/xz1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final a()V
    .registers 2

    .line 176
    iget-object v0, p0, Lads_mobile_sdk/pm1;->a:Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdLoaderCallback;

    invoke-interface {v0}, Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdLoaderCallback;->onAdLoadingCompleted()V

    return-void
.end method

.method public final a(Lcom/google/android/libraries/ads/mobile/sdk/common/LoadAdError;)V
    .registers 3

    .line 1
    const-string v0, "error"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    iget-object v0, p0, Lads_mobile_sdk/pm1;->a:Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdLoaderCallback;

    invoke-interface {v0, p1}, Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdLoaderCallback;->onAdFailedToLoad(Lcom/google/android/libraries/ads/mobile/sdk/common/LoadAdError;)V

    return-void
.end method

###### Class com.google.android.libraries.ads.mobile.sdk.nativead.NativeAdLoadResult$CustomNativeAdSuccess (com.google.android.libraries.ads.mobile.sdk.nativead.NativeAdLoadResult$CustomNativeAdSuccess)
.class public final Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdLoadResult$CustomNativeAdSuccess;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/google/android/libraries/ads/mobile/sdk/nativead/CustomNativeAd;


# direct methods
.method public constructor <init>(Lcom/google/android/libraries/ads/mobile/sdk/nativead/CustomNativeAd;)V
    .registers 3

    const-string v0, "ad"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdLoadResult$CustomNativeAdSuccess;->a:Lcom/google/android/libraries/ads/mobile/sdk/nativead/CustomNativeAd;

    return-void
.end method


# virtual methods
.method public final getAd()Lcom/google/android/libraries/ads/mobile/sdk/nativead/CustomNativeAd;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdLoadResult$CustomNativeAdSuccess;->a:Lcom/google/android/libraries/ads/mobile/sdk/nativead/CustomNativeAd;

    return-object v0
.end method

###### Class com.google.android.libraries.ads.mobile.sdk.nativead.NativeAdLoadResult$Failure (com.google.android.libraries.ads.mobile.sdk.nativead.NativeAdLoadResult$Failure)
.class public final Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdLoadResult$Failure;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/google/android/libraries/ads/mobile/sdk/common/LoadAdError;


# direct methods
.method public constructor <init>(Lcom/google/android/libraries/ads/mobile/sdk/common/LoadAdError;)V
    .registers 3

    const-string v0, "error"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdLoadResult$Failure;->a:Lcom/google/android/libraries/ads/mobile/sdk/common/LoadAdError;

    return-void
.end method

###### Class com.google.android.libraries.ads.mobile.sdk.nativead.NativeAdLoadResult$NativeAdSuccess (com.google.android.libraries.ads.mobile.sdk.nativead.NativeAdLoadResult$NativeAdSuccess)
.class public final Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdLoadResult$NativeAdSuccess;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAd;


# direct methods
.method public constructor <init>(Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAd;)V
    .registers 3

    const-string v0, "ad"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdLoadResult$NativeAdSuccess;->a:Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAd;

    return-void
.end method


# virtual methods
.method public final getAd()Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAd;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdLoadResult$NativeAdSuccess;->a:Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAd;

    return-object v0
.end method
