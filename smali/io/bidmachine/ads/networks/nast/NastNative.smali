###### Class io.bidmachine.ads.networks.nast.NastNative (io.bidmachine.ads.networks.nast.NastNative)
.class public final Lio/bidmachine/ads/networks/nast/NastNative;
.super Lio/bidmachine/unified/UnifiedNativeAd;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lio/bidmachine/unified/UnifiedNativeAd;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic load(Lio/bidmachine/ContextProvider;Lio/bidmachine/unified/UnifiedAdCallback;Lio/bidmachine/unified/UnifiedAdRequestParams;Lio/bidmachine/unified/UnifiedMediationParams;Lio/bidmachine/NetworkAdUnit;)V
    .registers 6

    .line 1
    check-cast p2, Lio/bidmachine/unified/UnifiedNativeAdCallback;

    check-cast p3, Lio/bidmachine/unified/UnifiedNativeAdRequestParams;

    invoke-virtual/range {p0 .. p5}, Lio/bidmachine/ads/networks/nast/NastNative;->load(Lio/bidmachine/ContextProvider;Lio/bidmachine/unified/UnifiedNativeAdCallback;Lio/bidmachine/unified/UnifiedNativeAdRequestParams;Lio/bidmachine/unified/UnifiedMediationParams;Lio/bidmachine/NetworkAdUnit;)V

    return-void
.end method

.method public load(Lio/bidmachine/ContextProvider;Lio/bidmachine/unified/UnifiedNativeAdCallback;Lio/bidmachine/unified/UnifiedNativeAdRequestParams;Lio/bidmachine/unified/UnifiedMediationParams;Lio/bidmachine/NetworkAdUnit;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const-string v0, "contextProvider"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "callback"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "adRequestParams"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "unifiedMediationParams"

    invoke-static {p4, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "networkAdUnit"

    invoke-static {p5, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance p1, Lio/bidmachine/ads/networks/nast/NastParams;

    invoke-direct {p1, p4}, Lio/bidmachine/ads/networks/nast/NastParams;-><init>(Lio/bidmachine/unified/UnifiedMediationParams;)V

    .line 3
    invoke-virtual {p1, p3, p2}, Lio/bidmachine/ads/networks/nast/NastParams;->isValid(Lio/bidmachine/unified/UnifiedNativeAdRequestParams;Lio/bidmachine/unified/UnifiedAdCallback;)Z

    move-result p3

    if-nez p3, :cond_25

    return-void

    .line 7
    :cond_25
    sget-object p3, Lio/bidmachine/core/VisibilitySource;->BidMachine:Lio/bidmachine/core/VisibilitySource;

    invoke-interface {p2, p3}, Lio/bidmachine/unified/UnifiedAdCallback;->setVisibilitySource(Lio/bidmachine/core/VisibilitySource;)V

    .line 9
    new-instance p3, Lio/bidmachine/nativead/NativeNetworkAdapter;

    invoke-direct {p3}, Lio/bidmachine/nativead/NativeNetworkAdapter;-><init>()V

    .line 10
    invoke-virtual {p1}, Lio/bidmachine/ads/networks/nast/NastParams;->getTitle()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Lio/bidmachine/nativead/NativeNetworkAdapter;->setTitle(Ljava/lang/String;)Lio/bidmachine/nativead/NativeNetworkAdapter;

    move-result-object p3

    .line 11
    invoke-virtual {p1}, Lio/bidmachine/ads/networks/nast/NastParams;->getDescription()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Lio/bidmachine/nativead/NativeNetworkAdapter;->setDescription(Ljava/lang/String;)Lio/bidmachine/nativead/NativeNetworkAdapter;

    move-result-object p3

    .line 12
    invoke-virtual {p1}, Lio/bidmachine/ads/networks/nast/NastParams;->getCallToAction()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Lio/bidmachine/nativead/NativeNetworkAdapter;->setCallToAction(Ljava/lang/String;)Lio/bidmachine/nativead/NativeNetworkAdapter;

    move-result-object p3

    .line 13
    new-instance p4, Lio/bidmachine/ImageDataImpl;

    invoke-virtual {p1}, Lio/bidmachine/ads/networks/nast/NastParams;->getIconUrl()Ljava/lang/String;

    move-result-object p5

    invoke-direct {p4, p5}, Lio/bidmachine/ImageDataImpl;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p4}, Lio/bidmachine/nativead/NativeNetworkAdapter;->setIcon(Lio/bidmachine/ImageData;)Lio/bidmachine/nativead/NativeNetworkAdapter;

    move-result-object p3

    .line 14
    new-instance p4, Lio/bidmachine/ImageDataImpl;

    invoke-virtual {p1}, Lio/bidmachine/ads/networks/nast/NastParams;->getImageUrl()Ljava/lang/String;

    move-result-object p5

    invoke-direct {p4, p5}, Lio/bidmachine/ImageDataImpl;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p4}, Lio/bidmachine/nativead/NativeNetworkAdapter;->setMainImage(Lio/bidmachine/ImageData;)Lio/bidmachine/nativead/NativeNetworkAdapter;

    move-result-object p3

    .line 15
    invoke-virtual {p1}, Lio/bidmachine/ads/networks/nast/NastParams;->getVideoUrl()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Lio/bidmachine/nativead/NativeNetworkAdapter;->setVideoUrl(Ljava/lang/String;)Lio/bidmachine/nativead/NativeNetworkAdapter;

    move-result-object p3

    .line 16
    invoke-virtual {p1}, Lio/bidmachine/ads/networks/nast/NastParams;->getVideoAdm()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Lio/bidmachine/nativead/NativeNetworkAdapter;->setVideoAdm(Ljava/lang/String;)Lio/bidmachine/nativead/NativeNetworkAdapter;

    move-result-object p3

    .line 17
    invoke-virtual {p1}, Lio/bidmachine/ads/networks/nast/NastParams;->getVideoAdm()Ljava/lang/String;

    move-result-object p4

    const/4 p5, 0x0

    if-eqz p4, :cond_7e

    invoke-interface {p4}, Ljava/lang/CharSequence;->length()I

    move-result p4

    if-nez p4, :cond_8b

    :cond_7e
    invoke-virtual {p1}, Lio/bidmachine/ads/networks/nast/NastParams;->getVideoUrl()Ljava/lang/String;

    move-result-object p4

    if-eqz p4, :cond_8d

    invoke-interface {p4}, Ljava/lang/CharSequence;->length()I

    move-result p4

    if-nez p4, :cond_8b

    goto :goto_8d

    :cond_8b
    const/4 p4, 0x1

    goto :goto_8e

    :cond_8d
    :goto_8d
    move p4, p5

    :goto_8e
    invoke-virtual {p3, p4}, Lio/bidmachine/nativead/NativeNetworkAdapter;->setHasVideo(Z)Lio/bidmachine/nativead/NativeNetworkAdapter;

    move-result-object p3

    .line 18
    invoke-virtual {p1}, Lio/bidmachine/ads/networks/nast/NastParams;->getRating()Ljava/lang/Float;

    move-result-object p4

    invoke-virtual {p3, p4}, Lio/bidmachine/nativead/NativeNetworkAdapter;->setRating(Ljava/lang/Float;)Lio/bidmachine/nativead/NativeNetworkAdapter;

    move-result-object p3

    .line 19
    invoke-virtual {p1}, Lio/bidmachine/ads/networks/nast/NastParams;->getClickUrl()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Lio/bidmachine/nativead/NativeNetworkAdapter;->setClickUrl(Ljava/lang/String;)Lio/bidmachine/nativead/NativeNetworkAdapter;

    move-result-object p3

    .line 20
    invoke-virtual {p3, p5}, Lio/bidmachine/nativead/NativeNetworkAdapter;->setNetworkControlLoadingAssets(Z)Lio/bidmachine/nativead/NativeNetworkAdapter;

    move-result-object p3

    .line 21
    invoke-virtual {p1}, Lio/bidmachine/ads/networks/nast/NastParams;->getAdLabelData()Lio/bidmachine/LabelData;

    move-result-object p4

    invoke-virtual {p3, p4}, Lio/bidmachine/nativead/NativeNetworkAdapter;->setAdLabelData(Lio/bidmachine/LabelData;)Lio/bidmachine/nativead/NativeNetworkAdapter;

    move-result-object p3

    .line 22
    invoke-virtual {p1}, Lio/bidmachine/ads/networks/nast/NastParams;->getPrivacySheetData()Lio/bidmachine/PrivacySheetData;

    move-result-object p4

    invoke-virtual {p3, p4}, Lio/bidmachine/nativead/NativeNetworkAdapter;->setPrivacySheetData(Lio/bidmachine/PrivacySheetData;)Lio/bidmachine/nativead/NativeNetworkAdapter;

    move-result-object p3

    .line 23
    invoke-virtual {p1}, Lio/bidmachine/ads/networks/nast/NastParams;->getDisclaimerData()Lio/bidmachine/internal/k;

    move-result-object p1

    invoke-virtual {p3, p1}, Lio/bidmachine/nativead/NativeNetworkAdapter;->setDisclaimerData(Lio/bidmachine/internal/k;)Lio/bidmachine/nativead/NativeNetworkAdapter;

    move-result-object p1

    .line 24
    invoke-interface {p2, p1}, Lio/bidmachine/unified/UnifiedNativeAdCallback;->onAdLoaded(Lio/bidmachine/nativead/NativeNetworkAdapter;)V

    return-void
.end method
