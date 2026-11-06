###### Class com.ironsource.adapters.admob.banner.AdMobNativeBannerViewBinder (com.ironsource.adapters.admob.banner.AdMobNativeBannerViewBinder)
.class public Lcom/ironsource/adapters/admob/banner/AdMobNativeBannerViewBinder;
.super Ljava/lang/Object;
.source "AdMobNativeBannerViewBinder.java"


# instance fields
.field private mAdView:Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdView;

.field private mMediaView:Lcom/google/android/libraries/ads/mobile/sdk/nativead/MediaView;

.field private mNativeAd:Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAd;

.field private mTemplateType:Lcom/ironsource/adapters/admob/banner/NativeTemplateType;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private populateAdvertiserView()V
    .registers 3

    .line 68
    iget-object v0, p0, Lcom/ironsource/adapters/admob/banner/AdMobNativeBannerViewBinder;->mAdView:Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdView;

    sget v1, Lcom/ironsource/adapters/admob/R$id;->ad_advertiser:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_2c

    .line 70
    iget-object v1, p0, Lcom/ironsource/adapters/admob/banner/AdMobNativeBannerViewBinder;->mNativeAd:Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAd;

    invoke-interface {v1}, Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAd;->getAdvertiser()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_27

    .line 71
    iget-object v1, p0, Lcom/ironsource/adapters/admob/banner/AdMobNativeBannerViewBinder;->mAdView:Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdView;

    invoke-virtual {v1, v0}, Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdView;->setAdvertiserView(Landroid/view/View;)V

    .line 72
    iget-object v1, p0, Lcom/ironsource/adapters/admob/banner/AdMobNativeBannerViewBinder;->mNativeAd:Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAd;

    invoke-interface {v1}, Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAd;->getAdvertiser()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v1, 0x0

    .line 73
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_27
    const/16 v1, 0x8

    .line 75
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_2c
    return-void
.end method

.method private populateBodyView()V
    .registers 3

    .line 83
    iget-object v0, p0, Lcom/ironsource/adapters/admob/banner/AdMobNativeBannerViewBinder;->mAdView:Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdView;

    sget v1, Lcom/ironsource/adapters/admob/R$id;->ad_body:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_2c

    .line 85
    iget-object v1, p0, Lcom/ironsource/adapters/admob/banner/AdMobNativeBannerViewBinder;->mNativeAd:Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAd;

    invoke-interface {v1}, Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAd;->getBody()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_27

    .line 86
    iget-object v1, p0, Lcom/ironsource/adapters/admob/banner/AdMobNativeBannerViewBinder;->mAdView:Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdView;

    invoke-virtual {v1, v0}, Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdView;->setBodyView(Landroid/view/View;)V

    .line 87
    iget-object v1, p0, Lcom/ironsource/adapters/admob/banner/AdMobNativeBannerViewBinder;->mNativeAd:Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAd;

    invoke-interface {v1}, Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAd;->getBody()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v1, 0x0

    .line 88
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_27
    const/16 v1, 0x8

    .line 90
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_2c
    return-void
.end method

.method private populateCallToActionView()V
    .registers 3

    .line 112
    iget-object v0, p0, Lcom/ironsource/adapters/admob/banner/AdMobNativeBannerViewBinder;->mAdView:Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdView;

    sget v1, Lcom/ironsource/adapters/admob/R$id;->ad_call_to_action:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    if-eqz v0, :cond_35

    .line 114
    iget-object v1, p0, Lcom/ironsource/adapters/admob/banner/AdMobNativeBannerViewBinder;->mNativeAd:Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAd;

    invoke-interface {v1}, Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAd;->getCallToAction()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_30

    iget-object v1, p0, Lcom/ironsource/adapters/admob/banner/AdMobNativeBannerViewBinder;->mTemplateType:Lcom/ironsource/adapters/admob/banner/NativeTemplateType;

    invoke-virtual {v1}, Lcom/ironsource/adapters/admob/banner/NativeTemplateType;->shouldHideCallToAction()Z

    move-result v1

    if-eqz v1, :cond_1d

    goto :goto_30

    .line 117
    :cond_1d
    iget-object v1, p0, Lcom/ironsource/adapters/admob/banner/AdMobNativeBannerViewBinder;->mAdView:Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdView;

    invoke-virtual {v1, v0}, Lcom/google/android/libraries/ads/mobile/sdk/common/BaseAdAssetViewContainer;->setCallToActionView(Landroid/view/View;)V

    .line 118
    iget-object v1, p0, Lcom/ironsource/adapters/admob/banner/AdMobNativeBannerViewBinder;->mNativeAd:Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAd;

    invoke-interface {v1}, Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAd;->getCallToAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v1, 0x0

    .line 119
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_30
    :goto_30
    const/16 v1, 0x8

    .line 115
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_35
    return-void
.end method

.method private populateHeadlineView()V
    .registers 3

    .line 54
    iget-object v0, p0, Lcom/ironsource/adapters/admob/banner/AdMobNativeBannerViewBinder;->mAdView:Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdView;

    sget v1, Lcom/ironsource/adapters/admob/R$id;->ad_headline:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_2c

    .line 56
    iget-object v1, p0, Lcom/ironsource/adapters/admob/banner/AdMobNativeBannerViewBinder;->mNativeAd:Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAd;

    invoke-interface {v1}, Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAd;->getHeadline()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_27

    .line 57
    iget-object v1, p0, Lcom/ironsource/adapters/admob/banner/AdMobNativeBannerViewBinder;->mAdView:Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdView;

    invoke-virtual {v1, v0}, Lcom/google/android/libraries/ads/mobile/sdk/common/BaseAdAssetViewContainer;->setHeadlineView(Landroid/view/View;)V

    .line 58
    iget-object v1, p0, Lcom/ironsource/adapters/admob/banner/AdMobNativeBannerViewBinder;->mNativeAd:Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAd;

    invoke-interface {v1}, Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAd;->getHeadline()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v1, 0x0

    .line 59
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_27
    const/16 v1, 0x8

    .line 61
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_2c
    return-void
.end method

.method private populateIconView()V
    .registers 3

    .line 41
    iget-object v0, p0, Lcom/ironsource/adapters/admob/banner/AdMobNativeBannerViewBinder;->mAdView:Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdView;

    sget v1, Lcom/ironsource/adapters/admob/R$id;->ad_app_icon:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_48

    .line 43
    iget-object v1, p0, Lcom/ironsource/adapters/admob/banner/AdMobNativeBannerViewBinder;->mAdView:Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdView;

    invoke-virtual {v1, v0}, Lcom/google/android/libraries/ads/mobile/sdk/common/BaseAdAssetViewContainer;->setIconView(Landroid/view/View;)V

    .line 44
    iget-object v1, p0, Lcom/ironsource/adapters/admob/banner/AdMobNativeBannerViewBinder;->mNativeAd:Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAd;

    invoke-interface {v1}, Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAd;->getIcon()Lcom/google/android/libraries/ads/mobile/sdk/common/Image;

    move-result-object v1

    if-eqz v1, :cond_3d

    iget-object v1, p0, Lcom/ironsource/adapters/admob/banner/AdMobNativeBannerViewBinder;->mNativeAd:Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAd;

    invoke-interface {v1}, Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAd;->getIcon()Lcom/google/android/libraries/ads/mobile/sdk/common/Image;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/libraries/ads/mobile/sdk/common/Image;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_3d

    .line 45
    iget-object v1, p0, Lcom/ironsource/adapters/admob/banner/AdMobNativeBannerViewBinder;->mNativeAd:Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAd;

    invoke-interface {v1}, Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAd;->getIcon()Lcom/google/android/libraries/ads/mobile/sdk/common/Image;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/libraries/ads/mobile/sdk/common/Image;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 46
    iget-object v0, p0, Lcom/ironsource/adapters/admob/banner/AdMobNativeBannerViewBinder;->mAdView:Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdView;

    invoke-virtual {v0}, Lcom/google/android/libraries/ads/mobile/sdk/common/BaseAdAssetViewContainer;->getIconView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 48
    :cond_3d
    iget-object v0, p0, Lcom/ironsource/adapters/admob/banner/AdMobNativeBannerViewBinder;->mAdView:Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdView;

    invoke-virtual {v0}, Lcom/google/android/libraries/ads/mobile/sdk/common/BaseAdAssetViewContainer;->getIconView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_48
    return-void
.end method

.method private populateMediaView()V
    .registers 6

    .line 97
    iget-object v0, p0, Lcom/ironsource/adapters/admob/banner/AdMobNativeBannerViewBinder;->mAdView:Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdView;

    sget v1, Lcom/ironsource/adapters/admob/R$id;->ad_media:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/ads/mobile/sdk/nativead/MediaView;

    if-eqz v0, :cond_44

    .line 99
    iget-object v1, p0, Lcom/ironsource/adapters/admob/banner/AdMobNativeBannerViewBinder;->mNativeAd:Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAd;

    invoke-interface {v1}, Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAd;->getMediaContent()Lcom/google/android/libraries/ads/mobile/sdk/nativead/MediaContent;

    move-result-object v1

    const/16 v2, 0x8

    if-eqz v1, :cond_41

    .line 100
    iget-object v1, p0, Lcom/ironsource/adapters/admob/banner/AdMobNativeBannerViewBinder;->mNativeAd:Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAd;

    invoke-interface {v1}, Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAd;->getMediaContent()Lcom/google/android/libraries/ads/mobile/sdk/nativead/MediaContent;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/libraries/ads/mobile/sdk/nativead/MediaContent;->getHasVideoContent()Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_2d

    iget-object v1, p0, Lcom/ironsource/adapters/admob/banner/AdMobNativeBannerViewBinder;->mTemplateType:Lcom/ironsource/adapters/admob/banner/NativeTemplateType;

    invoke-virtual {v1}, Lcom/ironsource/adapters/admob/banner/NativeTemplateType;->shouldHideVideoContent()Z

    move-result v1

    if-eqz v1, :cond_2d

    const/4 v1, 0x1

    goto :goto_2e

    :cond_2d
    move v1, v3

    .line 101
    :goto_2e
    iput-object v0, p0, Lcom/ironsource/adapters/admob/banner/AdMobNativeBannerViewBinder;->mMediaView:Lcom/google/android/libraries/ads/mobile/sdk/nativead/MediaView;

    .line 102
    iget-object v4, p0, Lcom/ironsource/adapters/admob/banner/AdMobNativeBannerViewBinder;->mNativeAd:Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAd;

    invoke-interface {v4}, Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAd;->getMediaContent()Lcom/google/android/libraries/ads/mobile/sdk/nativead/MediaContent;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/google/android/libraries/ads/mobile/sdk/nativead/MediaView;->setMediaContent(Lcom/google/android/libraries/ads/mobile/sdk/nativead/MediaContent;)V

    if-eqz v1, :cond_3c

    goto :goto_3d

    :cond_3c
    move v2, v3

    .line 103
    :goto_3d
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 105
    :cond_41
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_44
    return-void
.end method

.method private populateView()V
    .registers 1

    .line 31
    invoke-direct {p0}, Lcom/ironsource/adapters/admob/banner/AdMobNativeBannerViewBinder;->populateIconView()V

    .line 32
    invoke-direct {p0}, Lcom/ironsource/adapters/admob/banner/AdMobNativeBannerViewBinder;->populateHeadlineView()V

    .line 33
    invoke-direct {p0}, Lcom/ironsource/adapters/admob/banner/AdMobNativeBannerViewBinder;->populateAdvertiserView()V

    .line 34
    invoke-direct {p0}, Lcom/ironsource/adapters/admob/banner/AdMobNativeBannerViewBinder;->populateBodyView()V

    .line 35
    invoke-direct {p0}, Lcom/ironsource/adapters/admob/banner/AdMobNativeBannerViewBinder;->populateMediaView()V

    .line 36
    invoke-direct {p0}, Lcom/ironsource/adapters/admob/banner/AdMobNativeBannerViewBinder;->populateCallToActionView()V

    return-void
.end method


# virtual methods
.method public bindView(Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAd;Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdView;Lcom/ironsource/adapters/admob/banner/NativeTemplateType;)V
    .registers 4

    .line 23
    iput-object p2, p0, Lcom/ironsource/adapters/admob/banner/AdMobNativeBannerViewBinder;->mAdView:Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdView;

    .line 24
    iput-object p1, p0, Lcom/ironsource/adapters/admob/banner/AdMobNativeBannerViewBinder;->mNativeAd:Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAd;

    .line 25
    iput-object p3, p0, Lcom/ironsource/adapters/admob/banner/AdMobNativeBannerViewBinder;->mTemplateType:Lcom/ironsource/adapters/admob/banner/NativeTemplateType;

    .line 26
    invoke-direct {p0}, Lcom/ironsource/adapters/admob/banner/AdMobNativeBannerViewBinder;->populateView()V

    .line 27
    iget-object p2, p0, Lcom/ironsource/adapters/admob/banner/AdMobNativeBannerViewBinder;->mAdView:Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdView;

    iget-object p3, p0, Lcom/ironsource/adapters/admob/banner/AdMobNativeBannerViewBinder;->mMediaView:Lcom/google/android/libraries/ads/mobile/sdk/nativead/MediaView;

    invoke-virtual {p2, p1, p3}, Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdView;->registerNativeAd(Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAd;Lcom/google/android/libraries/ads/mobile/sdk/nativead/MediaView;)V

    return-void
.end method
