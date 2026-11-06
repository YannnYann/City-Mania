###### Class io.bidmachine.ads.networks.gam_dynamic.versions.v23_0_0.c (io.bidmachine.ads.networks.gam_dynamic.versions.v23_0_0.c)
.class public Lio/bidmachine/ads/networks/gam_dynamic/versions/v23_0_0/c;
.super Lio/bidmachine/ads/networks/gam_dynamic/InternalInterstitialAd;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/ads/networks/gam_dynamic/versions/v23_0_0/c$b;
    }
.end annotation


# instance fields
.field public a:Lcom/google/android/gms/ads/admanager/AdManagerInterstitialAd;


# direct methods
.method public constructor <init>(Lio/bidmachine/ads/networks/gam_dynamic/NetworkParams;Lio/bidmachine/ads/networks/gam_dynamic/TaskExecutor;Lio/bidmachine/AdsFormat;Lio/bidmachine/protobuf/Waterfall$Configuration$AdUnit;Lio/bidmachine/ads/networks/gam_dynamic/InternalAdListener;)V
    .registers 6

    .line 1
    invoke-direct/range {p0 .. p5}, Lio/bidmachine/ads/networks/gam_dynamic/InternalInterstitialAd;-><init>(Lio/bidmachine/ads/networks/gam_dynamic/NetworkParams;Lio/bidmachine/ads/networks/gam_dynamic/TaskExecutor;Lio/bidmachine/AdsFormat;Lio/bidmachine/protobuf/Waterfall$Configuration$AdUnit;Lio/bidmachine/ads/networks/gam_dynamic/InternalAdListener;)V

    return-void
.end method


# virtual methods
.method public destroyAd()V
    .registers 3

    .line 1
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam_dynamic/versions/v23_0_0/c;->a:Lcom/google/android/gms/ads/admanager/AdManagerInterstitialAd;

    if-eqz v0, :cond_f

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/admanager/AdManagerInterstitialAd;->setFullScreenContentCallback(Lcom/google/android/gms/ads/FullScreenContentCallback;)V

    .line 3
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam_dynamic/versions/v23_0_0/c;->a:Lcom/google/android/gms/ads/admanager/AdManagerInterstitialAd;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/admanager/AdManagerInterstitialAd;->setOnPaidEventListener(Lcom/google/android/gms/ads/OnPaidEventListener;)V

    .line 4
    iput-object v1, p0, Lio/bidmachine/ads/networks/gam_dynamic/versions/v23_0_0/c;->a:Lcom/google/android/gms/ads/admanager/AdManagerInterstitialAd;

    :cond_f
    return-void
.end method

.method public loadAd(Landroid/content/Context;Lio/bidmachine/ads/networks/gam_dynamic/InternalLoadListener;)V
    .registers 6

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;->getAdUnitId()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;->getAdUnit()Lio/bidmachine/protobuf/Waterfall$Configuration$AdUnit;

    move-result-object v1

    invoke-static {v1}, Lio/bidmachine/ads/networks/gam_dynamic/versions/v23_0_0/e;->a(Lio/bidmachine/protobuf/Waterfall$Configuration$AdUnit;)Lcom/google/android/gms/ads/admanager/AdManagerAdRequest;

    move-result-object v1

    new-instance v2, Lio/bidmachine/ads/networks/gam_dynamic/versions/v23_0_0/c$b;

    invoke-direct {v2, p0, p2}, Lio/bidmachine/ads/networks/gam_dynamic/versions/v23_0_0/c$b;-><init>(Lio/bidmachine/ads/networks/gam_dynamic/versions/v23_0_0/c;Lio/bidmachine/ads/networks/gam_dynamic/InternalLoadListener;)V

    .line 3
    invoke-static {p1, v0, v1, v2}, Lcom/google/android/gms/ads/admanager/AdManagerInterstitialAd;->load(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/ads/admanager/AdManagerAdRequest;Lcom/google/android/gms/ads/admanager/AdManagerInterstitialAdLoadCallback;)V

    return-void
.end method

.method public showAd(Landroid/app/Activity;Lio/bidmachine/ads/networks/gam_dynamic/InternalFullscreenAdPresentListener;)V
    .registers 5

    .line 1
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam_dynamic/versions/v23_0_0/c;->a:Lcom/google/android/gms/ads/admanager/AdManagerInterstitialAd;

    if-eqz v0, :cond_12

    .line 2
    new-instance v1, Lio/bidmachine/ads/networks/gam_dynamic/versions/v23_0_0/b;

    invoke-direct {v1, p2}, Lio/bidmachine/ads/networks/gam_dynamic/versions/v23_0_0/b;-><init>(Lio/bidmachine/ads/networks/gam_dynamic/InternalFullscreenAdPresentListener;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/admanager/AdManagerInterstitialAd;->setFullScreenContentCallback(Lcom/google/android/gms/ads/FullScreenContentCallback;)V

    .line 3
    iget-object p2, p0, Lio/bidmachine/ads/networks/gam_dynamic/versions/v23_0_0/c;->a:Lcom/google/android/gms/ads/admanager/AdManagerInterstitialAd;

    invoke-virtual {p2, p1}, Lcom/google/android/gms/ads/admanager/AdManagerInterstitialAd;->show(Landroid/app/Activity;)V

    return-void

    .line 5
    :cond_12
    const-string p1, "Internal GAM interstitial object is null or not loaded"

    invoke-static {p1}, Lio/bidmachine/utils/BMError;->internal(Ljava/lang/String;)Lio/bidmachine/utils/BMError;

    move-result-object p1

    invoke-interface {p2, p1}, Lio/bidmachine/ads/networks/gam_dynamic/InternalAdPresentListener;->onAdShowFailed(Lio/bidmachine/utils/BMError;)V

    return-void
.end method

###### Class io.bidmachine.ads.networks.gam_dynamic.versions.v23_0_0.c.b (io.bidmachine.ads.networks.gam_dynamic.versions.v23_0_0.c$b)
.class public final Lio/bidmachine/ads/networks/gam_dynamic/versions/v23_0_0/c$b;
.super Lcom/google/android/gms/ads/admanager/AdManagerInterstitialAdLoadCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/ads/networks/gam_dynamic/versions/v23_0_0/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final a:Lio/bidmachine/ads/networks/gam_dynamic/versions/v23_0_0/c;

.field public final b:Lio/bidmachine/ads/networks/gam_dynamic/InternalLoadListener;


# direct methods
.method public constructor <init>(Lio/bidmachine/ads/networks/gam_dynamic/versions/v23_0_0/c;Lio/bidmachine/ads/networks/gam_dynamic/InternalLoadListener;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/ads/admanager/AdManagerInterstitialAdLoadCallback;-><init>()V

    .line 2
    iput-object p1, p0, Lio/bidmachine/ads/networks/gam_dynamic/versions/v23_0_0/c$b;->a:Lio/bidmachine/ads/networks/gam_dynamic/versions/v23_0_0/c;

    .line 3
    iput-object p2, p0, Lio/bidmachine/ads/networks/gam_dynamic/versions/v23_0_0/c$b;->b:Lio/bidmachine/ads/networks/gam_dynamic/InternalLoadListener;

    return-void
.end method
