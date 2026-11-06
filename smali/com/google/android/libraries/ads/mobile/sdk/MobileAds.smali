###### Class com.google.android.libraries.ads.mobile.sdk.MobileAds (com.google.android.libraries.ads.mobile.sdk.MobileAds)
.class public final Lcom/google/android/libraries/ads/mobile/sdk/MobileAds;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/libraries/ads/mobile/sdk/MobileAds$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/google/android/libraries/ads/mobile/sdk/MobileAds$Companion;

.field public static final a:Ljava/lang/Object;

.field public static volatile b:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/google/android/libraries/ads/mobile/sdk/MobileAds$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/libraries/ads/mobile/sdk/MobileAds$Companion;-><init>(I)V

    sput-object v0, Lcom/google/android/libraries/ads/mobile/sdk/MobileAds;->Companion:Lcom/google/android/libraries/ads/mobile/sdk/MobileAds$Companion;

    .line 1
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/libraries/ads/mobile/sdk/MobileAds;->a:Ljava/lang/Object;

    return-void
.end method

.method public static final synthetic a()Ljava/lang/Object;
    .registers 1

    .line 1
    sget-object v0, Lcom/google/android/libraries/ads/mobile/sdk/MobileAds;->a:Ljava/lang/Object;

    return-object v0
.end method

.method public static final synthetic a(Z)V
    .registers 1

    .line 2
    sput-boolean p0, Lcom/google/android/libraries/ads/mobile/sdk/MobileAds;->b:Z

    return-void
.end method

.method public static final generateSignal(Lcom/google/android/libraries/ads/mobile/sdk/signal/SignalRequest;Lcom/google/android/libraries/ads/mobile/sdk/signal/SignalGenerationCallback;)V
    .registers 3

    .line 0
    sget-object v0, Lcom/google/android/libraries/ads/mobile/sdk/MobileAds;->Companion:Lcom/google/android/libraries/ads/mobile/sdk/MobileAds$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/android/libraries/ads/mobile/sdk/MobileAds$Companion;->generateSignal(Lcom/google/android/libraries/ads/mobile/sdk/signal/SignalRequest;Lcom/google/android/libraries/ads/mobile/sdk/signal/SignalGenerationCallback;)V

    return-void
.end method

.method public static final getVersion()Lcom/google/android/libraries/ads/mobile/sdk/common/VersionInfo;
    .registers 1

    .line 0
    sget-object v0, Lcom/google/android/libraries/ads/mobile/sdk/MobileAds;->Companion:Lcom/google/android/libraries/ads/mobile/sdk/MobileAds$Companion;

    invoke-virtual {v0}, Lcom/google/android/libraries/ads/mobile/sdk/MobileAds$Companion;->getVersion()Lcom/google/android/libraries/ads/mobile/sdk/common/VersionInfo;

    move-result-object v0

    return-object v0
.end method

.method public static final initialize(Landroid/content/Context;Lcom/google/android/libraries/ads/mobile/sdk/initialization/InitializationConfig;)V
    .registers 3

    .line 1
    sget-object v0, Lcom/google/android/libraries/ads/mobile/sdk/MobileAds;->Companion:Lcom/google/android/libraries/ads/mobile/sdk/MobileAds$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/android/libraries/ads/mobile/sdk/MobileAds$Companion;->initialize(Landroid/content/Context;Lcom/google/android/libraries/ads/mobile/sdk/initialization/InitializationConfig;)V

    return-void
.end method

.method public static final initialize(Landroid/content/Context;Lcom/google/android/libraries/ads/mobile/sdk/initialization/InitializationConfig;Lcom/google/android/libraries/ads/mobile/sdk/initialization/OnAdapterInitializationCompleteListener;)V
    .registers 4

    .line 2
    sget-object v0, Lcom/google/android/libraries/ads/mobile/sdk/MobileAds;->Companion:Lcom/google/android/libraries/ads/mobile/sdk/MobileAds$Companion;

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/android/libraries/ads/mobile/sdk/MobileAds$Companion;->initialize(Landroid/content/Context;Lcom/google/android/libraries/ads/mobile/sdk/initialization/InitializationConfig;Lcom/google/android/libraries/ads/mobile/sdk/initialization/OnAdapterInitializationCompleteListener;)V

    return-void
.end method

.method public static final setRequestConfiguration(Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration;)V
    .registers 2

    .line 0
    sget-object v0, Lcom/google/android/libraries/ads/mobile/sdk/MobileAds;->Companion:Lcom/google/android/libraries/ads/mobile/sdk/MobileAds$Companion;

    invoke-virtual {v0, p0}, Lcom/google/android/libraries/ads/mobile/sdk/MobileAds$Companion;->setRequestConfiguration(Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration;)V

    return-void
.end method

###### Class com.google.android.libraries.ads.mobile.sdk.MobileAds.Companion (com.google.android.libraries.ads.mobile.sdk.MobileAds$Companion)
.class public final Lcom/google/android/libraries/ads/mobile/sdk/MobileAds$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/libraries/ads/mobile/sdk/MobileAds;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/libraries/ads/mobile/sdk/MobileAds$Companion;-><init>()V

    return-void
.end method

.method public static a(Lcom/google/android/libraries/ads/mobile/sdk/signal/SignalRequest;)Lads_mobile_sdk/eh3;
    .registers 5

    .line 2
    instance-of v0, p0, Lcom/google/android/libraries/ads/mobile/sdk/banner/BannerSignalRequest;

    if-eqz v0, :cond_20

    .line 3
    sget-object v0, Lads_mobile_sdk/a01;->a:Lads_mobile_sdk/zz0;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lads_mobile_sdk/zz0;->a()Lads_mobile_sdk/a01;

    move-result-object v0

    check-cast v0, Lads_mobile_sdk/vf0;

    .line 4
    new-instance v1, Lads_mobile_sdk/ee0;

    .line 5
    iget-object v0, v0, Lads_mobile_sdk/vf0;->c:Lads_mobile_sdk/vf0;

    .line 6
    invoke-direct {v1, v0}, Lads_mobile_sdk/ee0;-><init>(Lads_mobile_sdk/vf0;)V

    .line 7
    move-object v0, p0

    check-cast v0, Lcom/google/android/libraries/ads/mobile/sdk/banner/BannerRequest;

    .line 8
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    iput-object v0, v1, Lads_mobile_sdk/ee0;->f:Lcom/google/android/libraries/ads/mobile/sdk/banner/BannerRequest;

    goto/16 :goto_c4

    .line 10
    :cond_20
    instance-of v0, p0, Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeSignalRequest;

    if-eqz v0, :cond_40

    .line 11
    sget-object v0, Lads_mobile_sdk/a01;->a:Lads_mobile_sdk/zz0;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lads_mobile_sdk/zz0;->a()Lads_mobile_sdk/a01;

    move-result-object v0

    check-cast v0, Lads_mobile_sdk/vf0;

    .line 12
    new-instance v1, Lads_mobile_sdk/qh0;

    .line 13
    iget-object v0, v0, Lads_mobile_sdk/vf0;->c:Lads_mobile_sdk/vf0;

    .line 14
    invoke-direct {v1, v0}, Lads_mobile_sdk/qh0;-><init>(Lads_mobile_sdk/vf0;)V

    .line 15
    move-object v0, p0

    check-cast v0, Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeRequest;

    .line 16
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    iput-object v0, v1, Lads_mobile_sdk/qh0;->f:Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeRequest;

    goto/16 :goto_c4

    .line 18
    :cond_40
    instance-of v0, p0, Lcom/google/android/libraries/ads/mobile/sdk/iconad/IconSignalRequest;

    if-eqz v0, :cond_93

    .line 19
    sget-object v0, Lads_mobile_sdk/a01;->a:Lads_mobile_sdk/zz0;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lads_mobile_sdk/zz0;->a()Lads_mobile_sdk/a01;

    move-result-object v0

    .line 20
    check-cast v0, Lads_mobile_sdk/vf0;

    .line 21
    new-instance v1, Lads_mobile_sdk/ag0;

    .line 22
    iget-object v0, v0, Lads_mobile_sdk/vf0;->c:Lads_mobile_sdk/vf0;

    .line 23
    invoke-direct {v1, v0}, Lads_mobile_sdk/ag0;-><init>(Lads_mobile_sdk/vf0;)V

    .line 24
    move-object v0, p0

    check-cast v0, Lcom/google/android/libraries/ads/mobile/sdk/iconad/IconRequest;

    .line 25
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    iput-object v0, v1, Lads_mobile_sdk/ag0;->g:Lcom/google/android/libraries/ads/mobile/sdk/iconad/IconRequest;

    .line 27
    move-object v0, p0

    check-cast v0, Lcom/google/android/libraries/ads/mobile/sdk/iconad/IconSignalRequest;

    .line 28
    const-string v2, "<this>"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    new-instance v2, Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeSignalRequest$Builder;

    invoke-virtual {v0}, Lcom/google/android/libraries/ads/mobile/sdk/signal/SignalRequest;->getSignalType()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeSignalRequest$Builder;-><init>(Ljava/lang/String;)V

    .line 42
    sget-object v3, Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAd$NativeAdType;->NATIVE:Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAd$NativeAdType;

    invoke-static {v3}, Lkotlin/collections/CollectionsKt__CollectionsJVMKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeSignalRequest$Builder;->setNativeAdTypes(Ljava/util/List;)Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeSignalRequest$Builder;

    move-result-object v2

    .line 44
    invoke-virtual {v0}, Lcom/google/android/libraries/ads/mobile/sdk/iconad/IconSignalRequest;->isImageLoadingDisabled()Z

    move-result v3

    if-eqz v3, :cond_82

    .line 45
    invoke-virtual {v2}, Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeSignalRequest$Builder;->disableImageDownloading()Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeSignalRequest$Builder;

    .line 47
    :cond_82
    invoke-virtual {v0}, Lcom/google/android/libraries/ads/mobile/sdk/iconad/IconSignalRequest;->getAdChoicesPlacement()Lcom/google/android/libraries/ads/mobile/sdk/common/AdChoicesPlacement;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeSignalRequest$Builder;->setAdChoicesPlacement(Lcom/google/android/libraries/ads/mobile/sdk/common/AdChoicesPlacement;)Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeSignalRequest$Builder;

    .line 49
    invoke-virtual {v2}, Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeSignalRequest$Builder;->build()Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeSignalRequest;

    move-result-object v0

    .line 50
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 51
    iput-object v0, v1, Lads_mobile_sdk/ag0;->f:Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeRequest;

    goto :goto_c4

    .line 52
    :cond_93
    instance-of v0, p0, Lcom/google/android/libraries/ads/mobile/sdk/swipeableinterstitial/SwipeableInterstitialSignalRequest;

    if-eqz v0, :cond_b2

    .line 53
    sget-object v0, Lads_mobile_sdk/a01;->a:Lads_mobile_sdk/zz0;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lads_mobile_sdk/zz0;->a()Lads_mobile_sdk/a01;

    move-result-object v0

    .line 54
    check-cast v0, Lads_mobile_sdk/vf0;

    .line 55
    new-instance v1, Lads_mobile_sdk/aj0;

    .line 56
    iget-object v0, v0, Lads_mobile_sdk/vf0;->c:Lads_mobile_sdk/vf0;

    .line 57
    invoke-direct {v1, v0}, Lads_mobile_sdk/aj0;-><init>(Lads_mobile_sdk/vf0;)V

    .line 58
    move-object v0, p0

    check-cast v0, Lcom/google/android/libraries/ads/mobile/sdk/swipeableinterstitial/SwipeableInterstitialRequest;

    .line 59
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 60
    iput-object v0, v1, Lads_mobile_sdk/aj0;->f:Lcom/google/android/libraries/ads/mobile/sdk/swipeableinterstitial/SwipeableInterstitialRequest;

    goto :goto_c4

    .line 61
    :cond_b2
    sget-object v0, Lads_mobile_sdk/a01;->a:Lads_mobile_sdk/zz0;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lads_mobile_sdk/zz0;->a()Lads_mobile_sdk/a01;

    move-result-object v0

    check-cast v0, Lads_mobile_sdk/vf0;

    .line 62
    new-instance v1, Lads_mobile_sdk/ui0;

    .line 63
    iget-object v0, v0, Lads_mobile_sdk/vf0;->c:Lads_mobile_sdk/vf0;

    .line 64
    invoke-direct {v1, v0}, Lads_mobile_sdk/ui0;-><init>(Lads_mobile_sdk/vf0;)V

    .line 65
    :goto_c4
    invoke-interface {v1, p0}, Lads_mobile_sdk/rf3;->a(Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;)Lads_mobile_sdk/rf3;

    move-result-object v0

    .line 66
    invoke-interface {v0, p0}, Lads_mobile_sdk/rf3;->a(Lcom/google/android/libraries/ads/mobile/sdk/signal/SignalRequest;)Lads_mobile_sdk/rf3;

    move-result-object p0

    .line 67
    invoke-interface {p0}, Lads_mobile_sdk/rf3;->c()Lads_mobile_sdk/rf3;

    move-result-object p0

    .line 68
    invoke-interface {p0}, Lads_mobile_sdk/rf3;->b()Lads_mobile_sdk/rf3;

    move-result-object p0

    .line 69
    invoke-interface {p0}, Lads_mobile_sdk/rf3;->a()Lads_mobile_sdk/sf3;

    move-result-object p0

    .line 70
    invoke-interface {p0}, Lads_mobile_sdk/sf3;->a()Lads_mobile_sdk/eh3;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final generateSignal(Lcom/google/android/libraries/ads/mobile/sdk/signal/SignalRequest;Lcom/google/android/libraries/ads/mobile/sdk/signal/SignalGenerationCallback;)V
    .registers 7

    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "callback"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    sget-object v1, Lads_mobile_sdk/a01;->a:Lads_mobile_sdk/zz0;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lads_mobile_sdk/zz0;->a()Lads_mobile_sdk/a01;

    move-result-object v1

    check-cast v1, Lads_mobile_sdk/vf0;

    .line 42
    iget-object v1, v1, Lads_mobile_sdk/vf0;->q3:Lads_mobile_sdk/dw2;

    .line 43
    invoke-interface {v1}, Lads_mobile_sdk/cw2;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lads_mobile_sdk/cm1;

    .line 44
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    instance-of v0, p1, Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeSignalRequest;

    const/4 v1, 0x0

    if-nez v0, :cond_30

    .line 46
    new-instance v0, Lads_mobile_sdk/q01;

    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-direct {v0, v2}, Lads_mobile_sdk/q01;-><init>(Ljava/lang/Object;)V

    goto :goto_51

    .line 48
    :cond_30
    move-object v0, p1

    check-cast v0, Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeSignalRequest;

    invoke-virtual {v0}, Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeSignalRequest;->getNativeAdTypes()Ljava/util/List;

    move-result-object v2

    .line 49
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_45

    .line 50
    new-instance v0, Lads_mobile_sdk/q01;

    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-direct {v0, v2}, Lads_mobile_sdk/q01;-><init>(Ljava/lang/Object;)V

    goto :goto_51

    .line 51
    :cond_45
    invoke-virtual {v0}, Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeSignalRequest;->getCustomFormatIds()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0}, Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeSignalRequest;->getAdSize()Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;

    move-result-object v0

    .line 52
    invoke-static {v2, v3, v0, v1}, Lads_mobile_sdk/jl1;->a(Ljava/util/List;Ljava/util/List;Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;Ljava/lang/Integer;)Lads_mobile_sdk/v01;

    move-result-object v0

    .line 53
    :goto_51
    instance-of v2, v0, Lads_mobile_sdk/i01;

    if-eqz v2, :cond_66

    .line 55
    new-instance p1, Lcom/google/android/libraries/ads/mobile/sdk/signal/SignalError;

    .line 56
    sget-object v1, Lcom/google/android/libraries/ads/mobile/sdk/signal/SignalError$ErrorCode;->INVALID_REQUEST:Lcom/google/android/libraries/ads/mobile/sdk/signal/SignalError$ErrorCode;

    .line 57
    check-cast v0, Lads_mobile_sdk/i01;

    invoke-static {v0}, Lads_mobile_sdk/h01;->a(Lads_mobile_sdk/i01;)Ljava/lang/String;

    move-result-object v0

    .line 58
    invoke-direct {p1, v1, v0}, Lcom/google/android/libraries/ads/mobile/sdk/signal/SignalError;-><init>(Lcom/google/android/libraries/ads/mobile/sdk/signal/SignalError$ErrorCode;Ljava/lang/String;)V

    .line 59
    invoke-interface {p2, p1}, Lcom/google/android/libraries/ads/mobile/sdk/signal/SignalGenerationCallback;->onFailure(Lcom/google/android/libraries/ads/mobile/sdk/signal/SignalError;)V

    return-void

    .line 68
    :cond_66
    invoke-static {}, Lads_mobile_sdk/zz0;->a()Lads_mobile_sdk/a01;

    move-result-object v0

    .line 69
    invoke-static {p1}, Lcom/google/android/libraries/ads/mobile/sdk/MobileAds$Companion;->a(Lcom/google/android/libraries/ads/mobile/sdk/signal/SignalRequest;)Lads_mobile_sdk/eh3;

    move-result-object p1

    .line 70
    check-cast v0, Lads_mobile_sdk/vf0;

    .line 71
    iget-object v0, v0, Lads_mobile_sdk/vf0;->q3:Lads_mobile_sdk/dw2;

    .line 72
    invoke-interface {v0}, Lads_mobile_sdk/cw2;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lads_mobile_sdk/cm1;

    .line 73
    new-instance v2, Lcom/google/android/libraries/ads/mobile/sdk/b;

    invoke-direct {v2, p1, p2, v1}, Lcom/google/android/libraries/ads/mobile/sdk/b;-><init>(Lads_mobile_sdk/eh3;Lcom/google/android/libraries/ads/mobile/sdk/signal/SignalGenerationCallback;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {v0, v2}, Lads_mobile_sdk/cm1;->a(Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public final getRequestConfiguration()Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration;
    .registers 2

    .line 1
    sget-object v0, Lads_mobile_sdk/a01;->a:Lads_mobile_sdk/zz0;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lads_mobile_sdk/zz0;->a()Lads_mobile_sdk/a01;

    move-result-object v0

    check-cast v0, Lads_mobile_sdk/vf0;

    .line 2
    iget-object v0, v0, Lads_mobile_sdk/vf0;->J0:Lads_mobile_sdk/dw2;

    .line 3
    invoke-interface {v0}, Lads_mobile_sdk/cw2;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lads_mobile_sdk/l43;

    .line 4
    invoke-virtual {v0}, Lads_mobile_sdk/l43;->a()Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration;

    move-result-object v0

    return-object v0
.end method

.method public final getVersion()Lcom/google/android/libraries/ads/mobile/sdk/common/VersionInfo;
    .registers 5

    .line 1
    new-instance v0, Lcom/google/android/libraries/ads/mobile/sdk/common/VersionInfo;

    .line 2
    sget-object v1, Lads_mobile_sdk/au;->a:Lads_mobile_sdk/bu;

    const/4 v1, 0x5

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 3
    invoke-direct {v0, v3, v1, v2}, Lcom/google/android/libraries/ads/mobile/sdk/common/VersionInfo;-><init>(III)V

    return-object v0
.end method

.method public final initialize(Landroid/content/Context;Lcom/google/android/libraries/ads/mobile/sdk/initialization/InitializationConfig;)V
    .registers 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "initializationConfig"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/libraries/ads/mobile/sdk/MobileAds$Companion;->initialize(Landroid/content/Context;Lcom/google/android/libraries/ads/mobile/sdk/initialization/InitializationConfig;Lcom/google/android/libraries/ads/mobile/sdk/initialization/OnAdapterInitializationCompleteListener;)V

    return-void
.end method

.method public final initialize(Landroid/content/Context;Lcom/google/android/libraries/ads/mobile/sdk/initialization/InitializationConfig;Lcom/google/android/libraries/ads/mobile/sdk/initialization/OnAdapterInitializationCompleteListener;)V
    .registers 6

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "initializationConfig"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    sget-object v0, Lads_mobile_sdk/a01;->a:Lads_mobile_sdk/zz0;

    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x1

    invoke-static {p1, p2, v0}, Lads_mobile_sdk/zz0;->a(Landroid/content/Context;Lcom/google/android/libraries/ads/mobile/sdk/initialization/InitializationConfig;Z)Lads_mobile_sdk/a01;

    move-result-object p1

    .line 9
    check-cast p1, Lads_mobile_sdk/vf0;

    .line 10
    iget-object v1, p1, Lads_mobile_sdk/vf0;->J0:Lads_mobile_sdk/dw2;

    invoke-interface {v1}, Lads_mobile_sdk/cw2;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lads_mobile_sdk/l43;

    .line 11
    invoke-virtual {p2}, Lcom/google/android/libraries/ads/mobile/sdk/initialization/InitializationConfig;->getRequestConfiguration()Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration;

    move-result-object p2

    .line 12
    invoke-virtual {v1, p2}, Lads_mobile_sdk/l43;->a(Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration;)V

    .line 13
    iget-object p1, p1, Lads_mobile_sdk/vf0;->q3:Lads_mobile_sdk/dw2;

    invoke-interface {p1}, Lads_mobile_sdk/cw2;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lads_mobile_sdk/cm1;

    .line 14
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    new-instance p2, Lads_mobile_sdk/ul1;

    const/4 v1, 0x0

    invoke-direct {p2, p1, p3, v1}, Lads_mobile_sdk/ul1;-><init>(Lads_mobile_sdk/cm1;Lcom/google/android/libraries/ads/mobile/sdk/initialization/OnAdapterInitializationCompleteListener;Lkotlin/coroutines/Continuation;)V

    invoke-static {v1, p2, v0, v1}, Lkotlinx/coroutines/BuildersKt;->runBlocking$default(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Ljava/lang/Object;

    .line 16
    invoke-static {}, Lcom/google/android/libraries/ads/mobile/sdk/MobileAds;->a()Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    :try_start_3e
    invoke-static {v0}, Lcom/google/android/libraries/ads/mobile/sdk/MobileAds;->a(Z)V

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_43
    .catchall {:try_start_3e .. :try_end_43} :catchall_45

    monitor-exit p1

    return-void

    :catchall_45
    move-exception p2

    monitor-exit p1

    throw p2
.end method

.method public final setRequestConfiguration(Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration;)V
    .registers 3

    const-string v0, "requestConfiguration"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lads_mobile_sdk/a01;->a:Lads_mobile_sdk/zz0;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lads_mobile_sdk/zz0;->a()Lads_mobile_sdk/a01;

    move-result-object v0

    check-cast v0, Lads_mobile_sdk/vf0;

    .line 2
    iget-object v0, v0, Lads_mobile_sdk/vf0;->J0:Lads_mobile_sdk/dw2;

    .line 3
    invoke-interface {v0}, Lads_mobile_sdk/cw2;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lads_mobile_sdk/l43;

    .line 4
    invoke-virtual {v0, p1}, Lads_mobile_sdk/l43;->a(Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration;)V

    return-void
.end method
