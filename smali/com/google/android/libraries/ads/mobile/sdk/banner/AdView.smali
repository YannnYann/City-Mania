###### Class com.google.android.libraries.ads.mobile.sdk.banner.AdView (com.google.android.libraries.ads.mobile.sdk.banner.AdView)
.class public final Lcom/google/android/libraries/ads/mobile/sdk/banner/AdView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# instance fields
.field public a:Lcom/google/android/libraries/ads/mobile/sdk/banner/BannerAd;

.field public b:Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;

.field public c:Lkotlinx/coroutines/channels/Channel;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic a(Lcom/google/android/libraries/ads/mobile/sdk/banner/AdView;Lcom/google/android/libraries/ads/mobile/sdk/banner/BannerAd;)V
    .registers 4

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_b

    check-cast v0, Landroid/app/Activity;

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    invoke-virtual {p0, p1, v0}, Lcom/google/android/libraries/ads/mobile/sdk/banner/AdView;->a(Lcom/google/android/libraries/ads/mobile/sdk/banner/BannerAd;Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 9

    .line 28
    iget-object v0, p0, Lcom/google/android/libraries/ads/mobile/sdk/banner/AdView;->c:Lkotlinx/coroutines/channels/Channel;

    if-eqz v0, :cond_25

    .line 29
    sget-object v1, Lads_mobile_sdk/a01;->a:Lads_mobile_sdk/zz0;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lads_mobile_sdk/zz0;->a()Lads_mobile_sdk/a01;

    move-result-object v1

    check-cast v1, Lads_mobile_sdk/vf0;

    .line 30
    iget-object v1, v1, Lads_mobile_sdk/vf0;->u:Lads_mobile_sdk/ol0;

    .line 31
    invoke-virtual {v1}, Lads_mobile_sdk/ol0;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lkotlinx/coroutines/CoroutineScope;

    .line 32
    new-instance v5, Lads_mobile_sdk/cd;

    const/4 v1, 0x0

    invoke-direct {v5, v0, v1}, Lads_mobile_sdk/cd;-><init>(Lkotlinx/coroutines/channels/Channel;Lkotlin/coroutines/Continuation;)V

    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    :cond_25
    return-void
.end method

.method public final a(Lcom/google/android/libraries/ads/mobile/sdk/banner/BannerAd;Landroid/app/Activity;)V
    .registers 6

    .line 2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 3
    iput-object p1, p0, Lcom/google/android/libraries/ads/mobile/sdk/banner/AdView;->a:Lcom/google/android/libraries/ads/mobile/sdk/banner/BannerAd;

    .line 4
    invoke-interface {p1}, Lcom/google/android/libraries/ads/mobile/sdk/banner/BannerAd;->getAdSize()Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/libraries/ads/mobile/sdk/banner/AdView;->b:Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;

    .line 5
    invoke-virtual {p0}, Lcom/google/android/libraries/ads/mobile/sdk/banner/AdView;->b()V

    if-nez p2, :cond_15

    .line 11
    invoke-interface {p1}, Lcom/google/android/libraries/ads/mobile/sdk/banner/BannerAd;->getView()Landroid/view/View;

    move-result-object p2

    goto :goto_19

    .line 13
    :cond_15
    invoke-interface {p1, p2}, Lcom/google/android/libraries/ads/mobile/sdk/banner/BannerAd;->getView(Landroid/app/Activity;)Landroid/view/View;

    move-result-object p2

    .line 16
    :goto_19
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 17
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_49

    .line 18
    invoke-interface {p1}, Lcom/google/android/libraries/ads/mobile/sdk/common/Ad;->getResponseInfo()Lcom/google/android/libraries/ads/mobile/sdk/common/ResponseInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/libraries/ads/mobile/sdk/common/ResponseInfo;->getAdapterClassName()Ljava/lang/String;

    move-result-object p1

    .line 19
    sget-object v1, Lads_mobile_sdk/f01;->a:Lcom/google/common/base/Splitter;

    .line 20
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Banner view provided from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " already has a parent view. Removing its old parent."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 21
    invoke-static {p1}, Lads_mobile_sdk/f01;->c(Ljava/lang/String;)V

    .line 24
    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 27
    :cond_49
    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method public final b()V
    .registers 10

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/ads/mobile/sdk/banner/AdView;->b:Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;

    .line 2
    iget-object v1, p0, Lcom/google/android/libraries/ads/mobile/sdk/banner/AdView;->a:Lcom/google/android/libraries/ads/mobile/sdk/banner/BannerAd;

    const/4 v2, 0x0

    if-eqz v1, :cond_e

    .line 5
    invoke-virtual {p0, v2}, Landroid/view/View;->setMinimumHeight(I)V

    .line 6
    invoke-virtual {p0, v2}, Landroid/view/View;->setMinimumWidth(I)V

    goto :goto_74

    :cond_e
    if-nez v0, :cond_17

    .line 8
    invoke-virtual {p0, v2}, Landroid/view/View;->setMinimumHeight(I)V

    .line 9
    invoke-virtual {p0, v2}, Landroid/view/View;->setMinimumWidth(I)V

    goto :goto_74

    .line 11
    :cond_17
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "getContext(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;->getHeight()I

    move-result v3

    .line 12
    const-string v4, "<this>"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    int-to-float v3, v3

    .line 13
    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 117
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    const-string v5, "getDisplayMetrics(...)"

    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v6, 0x1

    .line 118
    invoke-static {v6, v3, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-double v7, v1

    invoke-static {v7, v8}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v7

    double-to-float v1, v7

    float-to-int v1, v1

    .line 119
    invoke-virtual {p0, v1}, Landroid/view/View;->setMinimumHeight(I)V

    .line 120
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;->getWidth()I

    move-result v0

    .line 121
    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    int-to-float v0, v0

    .line 122
    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 226
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 227
    invoke-static {v6, v0, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-float v0, v0

    float-to-int v0, v0

    .line 228
    invoke-virtual {p0, v0}, Landroid/view/View;->setMinimumWidth(I)V

    .line 230
    :goto_74
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public final destroy()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/ads/mobile/sdk/banner/AdView;->a:Lcom/google/android/libraries/ads/mobile/sdk/banner/BannerAd;

    .line 2
    invoke-virtual {p0}, Lcom/google/android/libraries/ads/mobile/sdk/banner/AdView;->unregisterBannerAd()Lcom/google/android/libraries/ads/mobile/sdk/banner/BannerAd;

    if-eqz v0, :cond_a

    .line 3
    invoke-interface {v0}, Lcom/google/android/libraries/ads/mobile/sdk/common/Ad;->destroy()V

    :cond_a
    return-void
.end method

.method public final getBannerAd()Lcom/google/android/libraries/ads/mobile/sdk/banner/BannerAd;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/ads/mobile/sdk/banner/AdView;->a:Lcom/google/android/libraries/ads/mobile/sdk/banner/BannerAd;

    return-object v0
.end method

.method public final loadAd(Lcom/google/android/libraries/ads/mobile/sdk/banner/BannerAdRequest;Lcom/google/android/libraries/ads/mobile/sdk/common/AdLoadCallback;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/libraries/ads/mobile/sdk/banner/BannerAdRequest;",
            "Lcom/google/android/libraries/ads/mobile/sdk/common/AdLoadCallback<",
            "Lcom/google/android/libraries/ads/mobile/sdk/banner/BannerAd;",
            ">;)V"
        }
    .end annotation

    const-string v0, "adRequest"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "adLoadCallback"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcom/google/android/libraries/ads/mobile/sdk/banner/AdView;->a()V

    .line 2
    new-instance v4, Lads_mobile_sdk/bd;

    invoke-direct {v4, p2, p0}, Lads_mobile_sdk/bd;-><init>(Lcom/google/android/libraries/ads/mobile/sdk/common/AdLoadCallback;Lcom/google/android/libraries/ads/mobile/sdk/banner/AdView;)V

    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    sget-object p2, Lads_mobile_sdk/a01;->a:Lads_mobile_sdk/zz0;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lads_mobile_sdk/zz0;->a()Lads_mobile_sdk/a01;

    move-result-object p2

    check-cast p2, Lads_mobile_sdk/vf0;

    .line 77
    iget-object p2, p2, Lads_mobile_sdk/vf0;->q3:Lads_mobile_sdk/dw2;

    .line 78
    invoke-interface {p2}, Lads_mobile_sdk/cw2;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lads_mobile_sdk/cm1;

    .line 79
    invoke-static {}, Lads_mobile_sdk/zz0;->a()Lads_mobile_sdk/a01;

    move-result-object v0

    .line 80
    check-cast v0, Lads_mobile_sdk/vf0;

    .line 81
    new-instance v1, Lads_mobile_sdk/xh0;

    .line 82
    iget-object v0, v0, Lads_mobile_sdk/vf0;->c:Lads_mobile_sdk/vf0;

    .line 83
    invoke-direct {v1, v0}, Lads_mobile_sdk/xh0;-><init>(Lads_mobile_sdk/vf0;)V

    .line 84
    sget-object v0, Lads_mobile_sdk/j53;->f:Lads_mobile_sdk/j53;

    .line 85
    iput-object v0, v1, Lads_mobile_sdk/xh0;->d:Lads_mobile_sdk/j53;

    .line 86
    invoke-virtual {v1, p1}, Lads_mobile_sdk/xh0;->a(Lcom/google/android/libraries/ads/mobile/sdk/common/AdRequest;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lads_mobile_sdk/bz2;

    .line 87
    invoke-interface {v0, p1}, Lads_mobile_sdk/f03;->a(Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lads_mobile_sdk/bz2;

    .line 88
    invoke-interface {v0, p1}, Lads_mobile_sdk/bz2;->a(Lcom/google/android/libraries/ads/mobile/sdk/banner/BannerRequest;)Lads_mobile_sdk/bz2;

    move-result-object v0

    .line 89
    invoke-interface {v0, p1}, Lads_mobile_sdk/bz2;->a(Lcom/google/android/libraries/ads/mobile/sdk/banner/BannerAdRequest;)Lads_mobile_sdk/bz2;

    move-result-object p1

    const/4 v0, 0x0

    .line 90
    invoke-interface {p1, v0}, Lads_mobile_sdk/f03;->b(Z)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lads_mobile_sdk/bz2;

    .line 91
    invoke-interface {p1, v0}, Lads_mobile_sdk/f03;->a(Z)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lads_mobile_sdk/bz2;

    .line 92
    invoke-interface {p1}, Lads_mobile_sdk/bz2;->a()Lads_mobile_sdk/cz2;

    move-result-object v3

    .line 93
    new-instance v2, Lads_mobile_sdk/qo;

    const/4 v7, 0x0

    const/4 v6, 0x1

    move-object v5, p0

    invoke-direct/range {v2 .. v7}, Lads_mobile_sdk/qo;-><init>(Lads_mobile_sdk/cz2;Lcom/google/android/libraries/ads/mobile/sdk/common/AdLoadCallback;Landroid/view/ViewGroup;ZLkotlin/coroutines/Continuation;)V

    invoke-virtual {p2, v2}, Lads_mobile_sdk/cm1;->a(Lkotlin/jvm/functions/Function1;)V

    .line 109
    invoke-interface {v3}, Lads_mobile_sdk/g03;->c()Lkotlinx/coroutines/channels/Channel;

    move-result-object p1

    .line 110
    iput-object p1, v5, Lcom/google/android/libraries/ads/mobile/sdk/banner/AdView;->c:Lkotlinx/coroutines/channels/Channel;

    return-void
.end method

.method public final loadFromAdResponse(Ljava/lang/String;Lcom/google/android/libraries/ads/mobile/sdk/common/AdLoadCallback;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/android/libraries/ads/mobile/sdk/common/AdLoadCallback<",
            "Lcom/google/android/libraries/ads/mobile/sdk/banner/BannerAd;",
            ">;)V"
        }
    .end annotation

    const-string v0, "adResponse"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adLoadCallback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcom/google/android/libraries/ads/mobile/sdk/banner/AdView;->a()V

    .line 2
    new-instance v0, Lads_mobile_sdk/bd;

    invoke-direct {v0, p2, p0}, Lads_mobile_sdk/bd;-><init>(Lcom/google/android/libraries/ads/mobile/sdk/common/AdLoadCallback;Lcom/google/android/libraries/ads/mobile/sdk/banner/AdView;)V

    .line 3
    invoke-static {p1, v0}, Lads_mobile_sdk/vo;->a(Ljava/lang/String;Lcom/google/android/libraries/ads/mobile/sdk/common/AdLoadCallback;)Lkotlinx/coroutines/channels/Channel;

    move-result-object p1

    .line 4
    iput-object p1, p0, Lcom/google/android/libraries/ads/mobile/sdk/banner/AdView;->c:Lkotlinx/coroutines/channels/Channel;

    return-void
.end method

.method public final unregisterBannerAd()Lcom/google/android/libraries/ads/mobile/sdk/banner/BannerAd;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/ads/mobile/sdk/banner/AdView;->a:Lcom/google/android/libraries/ads/mobile/sdk/banner/BannerAd;

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/google/android/libraries/ads/mobile/sdk/banner/AdView;->a:Lcom/google/android/libraries/ads/mobile/sdk/banner/BannerAd;

    .line 3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 4
    invoke-virtual {p0}, Lcom/google/android/libraries/ads/mobile/sdk/banner/AdView;->a()V

    .line 5
    invoke-virtual {p0}, Lcom/google/android/libraries/ads/mobile/sdk/banner/AdView;->b()V

    return-object v0
.end method
