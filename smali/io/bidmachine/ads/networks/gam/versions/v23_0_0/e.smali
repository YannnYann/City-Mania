###### Class io.bidmachine.ads.networks.gam.versions.v23_0_0.e (io.bidmachine.ads.networks.gam.versions.v23_0_0.e)
.class public Lio/bidmachine/ads/networks/gam/versions/v23_0_0/e;
.super Lio/bidmachine/ads/networks/gam/InternalGAMRewardedAd;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/ads/networks/gam/versions/v23_0_0/e$b;,
        Lio/bidmachine/ads/networks/gam/versions/v23_0_0/e$c;
    }
.end annotation


# instance fields
.field public a:Lcom/google/android/gms/ads/rewarded/RewardedAd;


# direct methods
.method public constructor <init>(Lio/bidmachine/ads/networks/gam/GAMLoader;Lio/bidmachine/AdsFormat;Lio/bidmachine/ads/networks/gam/GAMUnitData;)V
    .registers 4

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lio/bidmachine/ads/networks/gam/InternalGAMRewardedAd;-><init>(Lio/bidmachine/ads/networks/gam/GAMLoader;Lio/bidmachine/AdsFormat;Lio/bidmachine/ads/networks/gam/GAMUnitData;)V

    return-void
.end method


# virtual methods
.method public destroyAd()V
    .registers 3

    .line 1
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam/versions/v23_0_0/e;->a:Lcom/google/android/gms/ads/rewarded/RewardedAd;

    if-eqz v0, :cond_a

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/rewarded/RewardedAd;->setFullScreenContentCallback(Lcom/google/android/gms/ads/FullScreenContentCallback;)V

    .line 3
    iput-object v1, p0, Lio/bidmachine/ads/networks/gam/versions/v23_0_0/e;->a:Lcom/google/android/gms/ads/rewarded/RewardedAd;

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

    invoke-static {v1, v2}, Lio/bidmachine/ads/networks/gam/versions/v23_0_0/a;->a(Lio/bidmachine/ads/networks/gam/GAMLoader;Lio/bidmachine/ads/networks/gam/GAMUnitData;)Lcom/google/android/gms/ads/admanager/AdManagerAdRequest;

    move-result-object v1

    new-instance v2, Lio/bidmachine/ads/networks/gam/versions/v23_0_0/e$b;

    invoke-direct {v2, p0, p2}, Lio/bidmachine/ads/networks/gam/versions/v23_0_0/e$b;-><init>(Lio/bidmachine/ads/networks/gam/versions/v23_0_0/e;Lio/bidmachine/ads/networks/gam/InternalLoadListener;)V

    .line 3
    invoke-static {p1, v0, v1, v2}, Lcom/google/android/gms/ads/rewarded/RewardedAd;->load(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/ads/admanager/AdManagerAdRequest;Lcom/google/android/gms/ads/rewarded/RewardedAdLoadCallback;)V

    return-void
.end method

.method public showAd(Landroid/app/Activity;Lio/bidmachine/ads/networks/gam/InternalGAMFullscreenAdPresentListener;)V
    .registers 5

    .line 1
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam/versions/v23_0_0/e;->a:Lcom/google/android/gms/ads/rewarded/RewardedAd;

    if-eqz v0, :cond_18

    .line 2
    new-instance v1, Lio/bidmachine/ads/networks/gam/versions/v23_0_0/b;

    invoke-direct {v1, p2}, Lio/bidmachine/ads/networks/gam/versions/v23_0_0/b;-><init>(Lio/bidmachine/ads/networks/gam/InternalGAMFullscreenAdPresentListener;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/rewarded/RewardedAd;->setFullScreenContentCallback(Lcom/google/android/gms/ads/FullScreenContentCallback;)V

    .line 3
    iget-object p2, p0, Lio/bidmachine/ads/networks/gam/versions/v23_0_0/e;->a:Lcom/google/android/gms/ads/rewarded/RewardedAd;

    new-instance v0, Lio/bidmachine/ads/networks/gam/versions/v23_0_0/e$c;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/bidmachine/ads/networks/gam/versions/v23_0_0/e$c;-><init>(Lio/bidmachine/ads/networks/gam/versions/v23_0_0/e$a;)V

    invoke-virtual {p2, p1, v0}, Lcom/google/android/gms/ads/rewarded/RewardedAd;->show(Landroid/app/Activity;Lcom/google/android/gms/ads/OnUserEarnedRewardListener;)V

    return-void

    .line 5
    :cond_18
    const-string p1, "InternalGAM rewarded object is null or not loaded"

    invoke-static {p1}, Lio/bidmachine/utils/BMError;->internal(Ljava/lang/String;)Lio/bidmachine/utils/BMError;

    move-result-object p1

    invoke-interface {p2, p1}, Lio/bidmachine/ads/networks/gam/InternalGAMAdPresentListener;->onAdShowFailed(Lio/bidmachine/utils/BMError;)V

    return-void
.end method

###### Class io.bidmachine.ads.networks.gam.versions.v23_0_0.e.a (io.bidmachine.ads.networks.gam.versions.v23_0_0.e$a)
.class public abstract synthetic Lio/bidmachine/ads/networks/gam/versions/v23_0_0/e$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/ads/networks/gam/versions/v23_0_0/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation

###### Class io.bidmachine.ads.networks.gam.versions.v23_0_0.e.b (io.bidmachine.ads.networks.gam.versions.v23_0_0.e$b)
.class public final Lio/bidmachine/ads/networks/gam/versions/v23_0_0/e$b;
.super Lcom/google/android/gms/ads/rewarded/RewardedAdLoadCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/ads/networks/gam/versions/v23_0_0/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final a:Lio/bidmachine/ads/networks/gam/versions/v23_0_0/e;

.field public final b:Lio/bidmachine/ads/networks/gam/InternalLoadListener;


# direct methods
.method public constructor <init>(Lio/bidmachine/ads/networks/gam/versions/v23_0_0/e;Lio/bidmachine/ads/networks/gam/InternalLoadListener;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/ads/rewarded/RewardedAdLoadCallback;-><init>()V

    .line 2
    iput-object p1, p0, Lio/bidmachine/ads/networks/gam/versions/v23_0_0/e$b;->a:Lio/bidmachine/ads/networks/gam/versions/v23_0_0/e;

    .line 3
    iput-object p2, p0, Lio/bidmachine/ads/networks/gam/versions/v23_0_0/e$b;->b:Lio/bidmachine/ads/networks/gam/InternalLoadListener;

    return-void
.end method

###### Class io.bidmachine.ads.networks.gam.versions.v23_0_0.e.c (io.bidmachine.ads.networks.gam.versions.v23_0_0.e$c)
.class public final Lio/bidmachine/ads/networks/gam/versions/v23_0_0/e$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/ads/OnUserEarnedRewardListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/ads/networks/gam/versions/v23_0_0/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lio/bidmachine/ads/networks/gam/versions/v23_0_0/e$a;)V
    .registers 2

    .line 2
    invoke-direct {p0}, Lio/bidmachine/ads/networks/gam/versions/v23_0_0/e$c;-><init>()V

    return-void
.end method
