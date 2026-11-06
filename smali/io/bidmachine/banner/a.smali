###### Class io.bidmachine.banner.a (io.bidmachine.banner.a)
.class public final Lio/bidmachine/banner/a;
.super Lio/bidmachine/ViewAd;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 1
    sget-object v0, Lio/bidmachine/AdsType;->Banner:Lio/bidmachine/AdsType;

    invoke-direct {p0, p1, v0}, Lio/bidmachine/ViewAd;-><init>(Landroid/content/Context;Lio/bidmachine/AdsType;)V

    return-void
.end method


# virtual methods
.method public a()Lio/bidmachine/BannerAdSize;
    .registers 4

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/BidMachineAd;->getLoadedAdObject()Lio/bidmachine/models/AdObject;

    move-result-object v0

    check-cast v0, Lio/bidmachine/ViewAdObject;

    if-eqz v0, :cond_2a

    .line 3
    invoke-virtual {v0}, Lio/bidmachine/ViewAdObject;->getWidth()I

    move-result v1

    .line 4
    invoke-virtual {v0}, Lio/bidmachine/ViewAdObject;->getHeight()I

    move-result v2

    .line 5
    invoke-virtual {v0}, Lio/bidmachine/AdObjectImpl;->getAdRequest()Lio/bidmachine/AdRequest;

    move-result-object v0

    check-cast v0, Lio/bidmachine/banner/BannerRequest;

    invoke-virtual {v0}, Lio/bidmachine/banner/BannerRequest;->getBannerAdSize()Lio/bidmachine/BannerAdSize;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/BannerAdSize;->isAdaptive()Z

    move-result v0

    if-eqz v0, :cond_25

    .line 6
    invoke-static {v1, v2}, Lio/bidmachine/BannerAdSize;->adaptive(II)Lio/bidmachine/BannerAdSize;

    move-result-object v0

    return-object v0

    .line 8
    :cond_25
    invoke-static {v1, v2}, Lio/bidmachine/BannerAdSize;->firstFixedOrNull(II)Lio/bidmachine/BannerAdSize;

    move-result-object v0

    return-object v0

    :cond_2a
    const/4 v0, 0x0

    return-object v0
.end method

.method public createAdObject(Lio/bidmachine/ContextProvider;Lio/bidmachine/banner/BannerRequest;Lio/bidmachine/NetworkAdapter;Lio/bidmachine/models/AdObjectParams;Lio/bidmachine/AdProcessCallback;)Lio/bidmachine/ViewAdObject;
    .registers 12

    .line 2
    invoke-virtual {p3}, Lio/bidmachine/NetworkAdapter;->createBanner()Lio/bidmachine/unified/UnifiedBannerAd;

    move-result-object v5

    if-nez v5, :cond_8

    const/4 p1, 0x0

    return-object p1

    .line 6
    :cond_8
    new-instance v0, Lio/bidmachine/ViewAdObject;

    move-object v1, p1

    move-object v3, p2

    move-object v4, p4

    move-object v2, p5

    invoke-direct/range {v0 .. v5}, Lio/bidmachine/ViewAdObject;-><init>(Lio/bidmachine/ContextProvider;Lio/bidmachine/AdProcessCallback;Lio/bidmachine/AdRequest;Lio/bidmachine/models/AdObjectParams;Lio/bidmachine/unified/UnifiedViewAd;)V

    .line 12
    invoke-virtual {v3}, Lio/bidmachine/banner/BannerRequest;->getBannerAdSize()Lio/bidmachine/BannerAdSize;

    move-result-object p1

    .line 13
    invoke-virtual {p1}, Lio/bidmachine/BannerAdSize;->isAdaptive()Z

    move-result p2

    if-eqz p2, :cond_2f

    .line 14
    sget-object p1, Lio/bidmachine/ViewAdObject$MeasureMode;->Match:Lio/bidmachine/ViewAdObject$MeasureMode;

    invoke-virtual {v0, p1}, Lio/bidmachine/ViewAdObject;->setWidthMeasureMode(Lio/bidmachine/ViewAdObject$MeasureMode;)V

    .line 15
    invoke-virtual {v4}, Lio/bidmachine/models/AdObjectParams;->getWidth()I

    move-result p1

    invoke-virtual {v0, p1}, Lio/bidmachine/ViewAdObject;->setWidth(I)V

    .line 16
    invoke-virtual {v4}, Lio/bidmachine/models/AdObjectParams;->getHeight()I

    move-result p1

    invoke-virtual {v0, p1}, Lio/bidmachine/ViewAdObject;->setHeight(I)V

    return-object v0

    .line 18
    :cond_2f
    invoke-virtual {p1}, Lio/bidmachine/BannerAdSize;->getWidth()I

    move-result p2

    invoke-virtual {v0, p2}, Lio/bidmachine/ViewAdObject;->setWidth(I)V

    .line 19
    invoke-virtual {p1}, Lio/bidmachine/BannerAdSize;->getHeight()I

    move-result p1

    invoke-virtual {v0, p1}, Lio/bidmachine/ViewAdObject;->setHeight(I)V

    return-object v0
.end method

.method public bridge synthetic createAdObject(Lio/bidmachine/ContextProvider;Lio/bidmachine/AdRequest;Lio/bidmachine/NetworkAdapter;Lio/bidmachine/models/AdObjectParams;Lio/bidmachine/AdProcessCallback;)Lio/bidmachine/models/AdObject;
    .registers 6

    .line 1
    check-cast p2, Lio/bidmachine/banner/BannerRequest;

    invoke-virtual/range {p0 .. p5}, Lio/bidmachine/banner/a;->createAdObject(Lio/bidmachine/ContextProvider;Lio/bidmachine/banner/BannerRequest;Lio/bidmachine/NetworkAdapter;Lio/bidmachine/models/AdObjectParams;Lio/bidmachine/AdProcessCallback;)Lio/bidmachine/ViewAdObject;

    move-result-object p1

    return-object p1
.end method
