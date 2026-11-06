###### Class io.bidmachine.banner.BannerView (io.bidmachine.banner.BannerView)
.class public Lio/bidmachine/banner/BannerView;
.super Lio/bidmachine/AdView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/bidmachine/AdView<",
        "Lio/bidmachine/banner/BannerView;",
        "Lio/bidmachine/banner/a;",
        "Lio/bidmachine/banner/BannerRequest;",
        "Lio/bidmachine/ViewAdObject<",
        "Lio/bidmachine/banner/BannerRequest;",
        "Lio/bidmachine/unified/UnifiedBannerAd;",
        "Lio/bidmachine/unified/UnifiedBannerAdRequestParams;",
        ">;",
        "Lio/bidmachine/banner/BannerListener;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lio/bidmachine/AdView;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic createAd(Landroid/content/Context;)Lio/bidmachine/ViewAd;
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lio/bidmachine/banner/BannerView;->createAd(Landroid/content/Context;)Lio/bidmachine/banner/a;

    move-result-object p1

    return-object p1
.end method

.method public createAd(Landroid/content/Context;)Lio/bidmachine/banner/a;
    .registers 3

    .line 2
    new-instance v0, Lio/bidmachine/banner/a;

    invoke-direct {v0, p1}, Lio/bidmachine/banner/a;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public getAdSize()Lio/bidmachine/BannerAdSize;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/AdView;->getAd()Lio/bidmachine/ViewAd;

    move-result-object v0

    check-cast v0, Lio/bidmachine/banner/a;

    if-eqz v0, :cond_d

    .line 3
    invoke-virtual {v0}, Lio/bidmachine/banner/a;->a()Lio/bidmachine/BannerAdSize;

    move-result-object v0

    return-object v0

    :cond_d
    const/4 v0, 0x0

    return-object v0
.end method
