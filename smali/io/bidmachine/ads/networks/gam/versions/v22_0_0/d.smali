###### Class io.bidmachine.ads.networks.gam.versions.v22_0_0.d (io.bidmachine.ads.networks.gam.versions.v22_0_0.d)
.class public Lio/bidmachine/ads/networks/gam/versions/v22_0_0/d;
.super Lio/bidmachine/ads/networks/gam/InternalGAMInterstitialAd;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/ads/networks/gam/versions/v22_0_0/d$a;
    }
.end annotation


# instance fields
.field public a:Lcom/google/android/gms/ads/admanager/AdManagerInterstitialAd;


# direct methods
.method public constructor <init>(Lio/bidmachine/ads/networks/gam/GAMLoader;Lio/bidmachine/AdsFormat;Lio/bidmachine/ads/networks/gam/GAMUnitData;)V
    .registers 4

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lio/bidmachine/ads/networks/gam/InternalGAMInterstitialAd;-><init>(Lio/bidmachine/ads/networks/gam/GAMLoader;Lio/bidmachine/AdsFormat;Lio/bidmachine/ads/networks/gam/GAMUnitData;)V

    return-void
.end method


# virtual methods
.method public destroyAd()V
    .registers 3

    .line 1
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam/versions/v22_0_0/d;->a:Lcom/google/android/gms/ads/admanager/AdManagerInterstitialAd;

    if-eqz v0, :cond_a

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/admanager/AdManagerInterstitialAd;->setFullScreenContentCallback(Lcom/google/android/gms/ads/FullScreenContentCallback;)V

    .line 3
    iput-object v1, p0, Lio/bidmachine/ads/networks/gam/versions/v22_0_0/d;->a:Lcom/google/android/gms/ads/admanager/AdManagerInterstitialAd;

    :cond_a
    return-void
.end method

.method public loadAd(Landroid/content/Context;Lio/bidmachine/ads/networks/gam/InternalLoadListener;)V
    .registers 6

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/ads/networks/gam/InternalGAMAd;->getAdUnitId()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Lio/bidmachine/ads/networks/gam/InternalGAMAd;->getGamLoader()Lio/bidmachine/ads/networks/gam/GAMLoader;

    move-result-object v1

    invoke-virtual {p0}, Lio/bidmachine/ads/networks/gam/InternalGAMAd;->getGamUnitData()Lio/bidmachine/ads/networks/gam/GAMUnitData;

    move-result-object v2

    invoke-static {v1, v2}, Lio/bidmachine/ads/networks/gam/versions/v22_0_0/a;->a(Lio/bidmachine/ads/networks/gam/GAMLoader;Lio/bidmachine/ads/networks/gam/GAMUnitData;)Lcom/google/android/gms/ads/admanager/AdManagerAdRequest;

    move-result-object v1

    new-instance v2, Lio/bidmachine/ads/networks/gam/versions/v22_0_0/d$a;

    invoke-direct {v2, p0, p2}, Lio/bidmachine/ads/networks/gam/versions/v22_0_0/d$a;-><init>(Lio/bidmachine/ads/networks/gam/versions/v22_0_0/d;Lio/bidmachine/ads/networks/gam/InternalLoadListener;)V

    .line 3
    invoke-static {p1, v0, v1, v2}, Lcom/google/android/gms/ads/admanager/AdManagerInterstitialAd;->load(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/ads/admanager/AdManagerAdRequest;Lcom/google/android/gms/ads/admanager/AdManagerInterstitialAdLoadCallback;)V

    return-void
.end method

.method public showAd(Landroid/app/Activity;Lio/bidmachine/ads/networks/gam/InternalGAMFullscreenAdPresentListener;)V
    .registers 5

    .line 1
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam/versions/v22_0_0/d;->a:Lcom/google/android/gms/ads/admanager/AdManagerInterstitialAd;

    if-eqz v0, :cond_12

    .line 2
    new-instance v1, Lio/bidmachine/ads/networks/gam/versions/v22_0_0/b;

    invoke-direct {v1, p2}, Lio/bidmachine/ads/networks/gam/versions/v22_0_0/b;-><init>(Lio/bidmachine/ads/networks/gam/InternalGAMFullscreenAdPresentListener;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/admanager/AdManagerInterstitialAd;->setFullScreenContentCallback(Lcom/google/android/gms/ads/FullScreenContentCallback;)V

    .line 3
    iget-object p2, p0, Lio/bidmachine/ads/networks/gam/versions/v22_0_0/d;->a:Lcom/google/android/gms/ads/admanager/AdManagerInterstitialAd;

    invoke-virtual {p2, p1}, Lcom/google/android/gms/ads/admanager/AdManagerInterstitialAd;->show(Landroid/app/Activity;)V

    return-void

    .line 5
    :cond_12
    const-string p1, "InternalGAM interstitial object is null or not loaded"

    invoke-static {p1}, Lio/bidmachine/utils/BMError;->internal(Ljava/lang/String;)Lio/bidmachine/utils/BMError;

    move-result-object p1

    invoke-interface {p2, p1}, Lio/bidmachine/ads/networks/gam/InternalGAMAdPresentListener;->onAdShowFailed(Lio/bidmachine/utils/BMError;)V

    return-void
.end method

###### Class io.bidmachine.ads.networks.gam.versions.v22_0_0.d.a (io.bidmachine.ads.networks.gam.versions.v22_0_0.d$a)
.class public final Lio/bidmachine/ads/networks/gam/versions/v22_0_0/d$a;
.super Lcom/google/android/gms/ads/admanager/AdManagerInterstitialAdLoadCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/ads/networks/gam/versions/v22_0_0/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:Lio/bidmachine/ads/networks/gam/versions/v22_0_0/d;

.field public final b:Lio/bidmachine/ads/networks/gam/InternalLoadListener;


# direct methods
.method public constructor <init>(Lio/bidmachine/ads/networks/gam/versions/v22_0_0/d;Lio/bidmachine/ads/networks/gam/InternalLoadListener;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/ads/admanager/AdManagerInterstitialAdLoadCallback;-><init>()V

    .line 2
    iput-object p1, p0, Lio/bidmachine/ads/networks/gam/versions/v22_0_0/d$a;->a:Lio/bidmachine/ads/networks/gam/versions/v22_0_0/d;

    .line 3
    iput-object p2, p0, Lio/bidmachine/ads/networks/gam/versions/v22_0_0/d$a;->b:Lio/bidmachine/ads/networks/gam/InternalLoadListener;

    return-void
.end method
