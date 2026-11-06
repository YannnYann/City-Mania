###### Class io.bidmachine.ads.networks.gam_dynamic.versions.v21_0_0.d (io.bidmachine.ads.networks.gam_dynamic.versions.v21_0_0.d)
.class public Lio/bidmachine/ads/networks/gam_dynamic/versions/v21_0_0/d;
.super Lio/bidmachine/ads/networks/gam_dynamic/InternalRewardedAd;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/ads/networks/gam_dynamic/versions/v21_0_0/d$b;,
        Lio/bidmachine/ads/networks/gam_dynamic/versions/v21_0_0/d$d;
    }
.end annotation


# instance fields
.field public a:Lcom/google/android/gms/ads/rewarded/RewardedAd;


# direct methods
.method public constructor <init>(Lio/bidmachine/ads/networks/gam_dynamic/NetworkParams;Lio/bidmachine/ads/networks/gam_dynamic/TaskExecutor;Lio/bidmachine/AdsFormat;Lio/bidmachine/protobuf/Waterfall$Configuration$AdUnit;Lio/bidmachine/ads/networks/gam_dynamic/InternalAdListener;)V
    .registers 6

    .line 1
    invoke-direct/range {p0 .. p5}, Lio/bidmachine/ads/networks/gam_dynamic/InternalRewardedAd;-><init>(Lio/bidmachine/ads/networks/gam_dynamic/NetworkParams;Lio/bidmachine/ads/networks/gam_dynamic/TaskExecutor;Lio/bidmachine/AdsFormat;Lio/bidmachine/protobuf/Waterfall$Configuration$AdUnit;Lio/bidmachine/ads/networks/gam_dynamic/InternalAdListener;)V

    return-void
.end method


# virtual methods
.method public destroyAd()V
    .registers 3

    .line 1
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam_dynamic/versions/v21_0_0/d;->a:Lcom/google/android/gms/ads/rewarded/RewardedAd;

    if-eqz v0, :cond_f

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/rewarded/RewardedAd;->setFullScreenContentCallback(Lcom/google/android/gms/ads/FullScreenContentCallback;)V

    .line 3
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam_dynamic/versions/v21_0_0/d;->a:Lcom/google/android/gms/ads/rewarded/RewardedAd;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/rewarded/RewardedAd;->setOnPaidEventListener(Lcom/google/android/gms/ads/OnPaidEventListener;)V

    .line 4
    iput-object v1, p0, Lio/bidmachine/ads/networks/gam_dynamic/versions/v21_0_0/d;->a:Lcom/google/android/gms/ads/rewarded/RewardedAd;

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

    invoke-static {v1}, Lio/bidmachine/ads/networks/gam_dynamic/versions/v21_0_0/e;->a(Lio/bidmachine/protobuf/Waterfall$Configuration$AdUnit;)Lcom/google/android/gms/ads/admanager/AdManagerAdRequest;

    move-result-object v1

    new-instance v2, Lio/bidmachine/ads/networks/gam_dynamic/versions/v21_0_0/d$b;

    invoke-direct {v2, p0, p2}, Lio/bidmachine/ads/networks/gam_dynamic/versions/v21_0_0/d$b;-><init>(Lio/bidmachine/ads/networks/gam_dynamic/versions/v21_0_0/d;Lio/bidmachine/ads/networks/gam_dynamic/InternalLoadListener;)V

    .line 3
    invoke-static {p1, v0, v1, v2}, Lcom/google/android/gms/ads/rewarded/RewardedAd;->load(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/ads/admanager/AdManagerAdRequest;Lcom/google/android/gms/ads/rewarded/RewardedAdLoadCallback;)V

    return-void
.end method

.method public showAd(Landroid/app/Activity;Lio/bidmachine/ads/networks/gam_dynamic/InternalFullscreenAdPresentListener;)V
    .registers 5

    .line 1
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam_dynamic/versions/v21_0_0/d;->a:Lcom/google/android/gms/ads/rewarded/RewardedAd;

    if-eqz v0, :cond_18

    .line 2
    new-instance v1, Lio/bidmachine/ads/networks/gam_dynamic/versions/v21_0_0/b;

    invoke-direct {v1, p2}, Lio/bidmachine/ads/networks/gam_dynamic/versions/v21_0_0/b;-><init>(Lio/bidmachine/ads/networks/gam_dynamic/InternalFullscreenAdPresentListener;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/rewarded/RewardedAd;->setFullScreenContentCallback(Lcom/google/android/gms/ads/FullScreenContentCallback;)V

    .line 3
    iget-object p2, p0, Lio/bidmachine/ads/networks/gam_dynamic/versions/v21_0_0/d;->a:Lcom/google/android/gms/ads/rewarded/RewardedAd;

    new-instance v0, Lio/bidmachine/ads/networks/gam_dynamic/versions/v21_0_0/d$d;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/bidmachine/ads/networks/gam_dynamic/versions/v21_0_0/d$d;-><init>(Lio/bidmachine/ads/networks/gam_dynamic/versions/v21_0_0/d$a;)V

    invoke-virtual {p2, p1, v0}, Lcom/google/android/gms/ads/rewarded/RewardedAd;->show(Landroid/app/Activity;Lcom/google/android/gms/ads/OnUserEarnedRewardListener;)V

    return-void

    .line 5
    :cond_18
    const-string p1, "Internal GAM rewarded object is null or not loaded"

    invoke-static {p1}, Lio/bidmachine/utils/BMError;->internal(Ljava/lang/String;)Lio/bidmachine/utils/BMError;

    move-result-object p1

    invoke-interface {p2, p1}, Lio/bidmachine/ads/networks/gam_dynamic/InternalAdPresentListener;->onAdShowFailed(Lio/bidmachine/utils/BMError;)V

    return-void
.end method

###### Class io.bidmachine.ads.networks.gam_dynamic.versions.v21_0_0.d.a (io.bidmachine.ads.networks.gam_dynamic.versions.v21_0_0.d$a)
.class public abstract synthetic Lio/bidmachine/ads/networks/gam_dynamic/versions/v21_0_0/d$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/ads/networks/gam_dynamic/versions/v21_0_0/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation

###### Class io.bidmachine.ads.networks.gam_dynamic.versions.v21_0_0.d.b (io.bidmachine.ads.networks.gam_dynamic.versions.v21_0_0.d$b)
.class public final Lio/bidmachine/ads/networks/gam_dynamic/versions/v21_0_0/d$b;
.super Lcom/google/android/gms/ads/rewarded/RewardedAdLoadCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/ads/networks/gam_dynamic/versions/v21_0_0/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final a:Lio/bidmachine/ads/networks/gam_dynamic/versions/v21_0_0/d;

.field public final b:Lio/bidmachine/ads/networks/gam_dynamic/InternalLoadListener;


# direct methods
.method public constructor <init>(Lio/bidmachine/ads/networks/gam_dynamic/versions/v21_0_0/d;Lio/bidmachine/ads/networks/gam_dynamic/InternalLoadListener;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/ads/rewarded/RewardedAdLoadCallback;-><init>()V

    .line 2
    iput-object p1, p0, Lio/bidmachine/ads/networks/gam_dynamic/versions/v21_0_0/d$b;->a:Lio/bidmachine/ads/networks/gam_dynamic/versions/v21_0_0/d;

    .line 3
    iput-object p2, p0, Lio/bidmachine/ads/networks/gam_dynamic/versions/v21_0_0/d$b;->b:Lio/bidmachine/ads/networks/gam_dynamic/InternalLoadListener;

    return-void
.end method

###### Class io.bidmachine.ads.networks.gam_dynamic.versions.v21_0_0.d.C1103d (io.bidmachine.ads.networks.gam_dynamic.versions.v21_0_0.d$d)
.class public final Lio/bidmachine/ads/networks/gam_dynamic/versions/v21_0_0/d$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/ads/OnUserEarnedRewardListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/ads/networks/gam_dynamic/versions/v21_0_0/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lio/bidmachine/ads/networks/gam_dynamic/versions/v21_0_0/d$a;)V
    .registers 2

    .line 2
    invoke-direct {p0}, Lio/bidmachine/ads/networks/gam_dynamic/versions/v21_0_0/d$d;-><init>()V

    return-void
.end method
