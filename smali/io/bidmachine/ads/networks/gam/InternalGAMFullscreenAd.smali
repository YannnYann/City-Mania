###### Class io.bidmachine.ads.networks.gam.InternalGAMFullscreenAd (io.bidmachine.ads.networks.gam.InternalGAMFullscreenAd)
.class public abstract Lio/bidmachine/ads/networks/gam/InternalGAMFullscreenAd;
.super Lio/bidmachine/ads/networks/gam/InternalGAMAd;
.source "InternalGAMFullscreenAd.java"


# direct methods
.method public static synthetic $r8$lambda$A_5cvkQNLS8XI24cvwd--BPCiXQ(Lio/bidmachine/ads/networks/gam/InternalGAMFullscreenAd;Landroid/app/Activity;Lio/bidmachine/ads/networks/gam/InternalGAMFullscreenAdPresentListener;)V
    .registers 4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    :try_start_3
    sget-object v0, Lio/bidmachine/ads/networks/gam/InternalGAMAd$Status;->Showing:Lio/bidmachine/ads/networks/gam/InternalGAMAd$Status;

    invoke-virtual {p0, v0}, Lio/bidmachine/ads/networks/gam/InternalGAMAd;->setStatus(Lio/bidmachine/ads/networks/gam/InternalGAMAd$Status;)V

    .line 27
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/ads/networks/gam/InternalGAMFullscreenAd;->showAd(Landroid/app/Activity;Lio/bidmachine/ads/networks/gam/InternalGAMFullscreenAdPresentListener;)V
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_c

    return-void

    :catchall_c
    move-exception p0

    .line 29
    invoke-static {p0}, Lio/bidmachine/core/Logger;->w(Ljava/lang/Throwable;)V

    .line 30
    const-string p1, "Exception showing InternalGAM object"

    invoke-static {p1, p0}, Lio/bidmachine/utils/BMError;->throwable(Ljava/lang/String;Ljava/lang/Throwable;)Lio/bidmachine/utils/BMError;

    move-result-object p0

    invoke-interface {p2, p0}, Lio/bidmachine/ads/networks/gam/InternalGAMAdPresentListener;->onAdShowFailed(Lio/bidmachine/utils/BMError;)V

    return-void
.end method

.method public constructor <init>(Lio/bidmachine/ads/networks/gam/GAMLoader;Lio/bidmachine/AdsFormat;Lio/bidmachine/ads/networks/gam/GAMUnitData;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "gamLoader",
            "adsFormat",
            "gamUnitData"
        }
    .end annotation

    .line 18
    invoke-direct {p0, p1, p2, p3}, Lio/bidmachine/ads/networks/gam/InternalGAMAd;-><init>(Lio/bidmachine/ads/networks/gam/GAMLoader;Lio/bidmachine/AdsFormat;Lio/bidmachine/ads/networks/gam/GAMUnitData;)V

    return-void
.end method


# virtual methods
.method public final show(Landroid/app/Activity;Lio/bidmachine/ads/networks/gam/InternalGAMFullscreenAdPresentListener;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "activity",
            "showListener"
        }
    .end annotation

    .line 23
    new-instance v0, Lio/bidmachine/ads/networks/gam/InternalGAMFullscreenAd$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1, p2}, Lio/bidmachine/ads/networks/gam/InternalGAMFullscreenAd$$ExternalSyntheticLambda0;-><init>(Lio/bidmachine/ads/networks/gam/InternalGAMFullscreenAd;Landroid/app/Activity;Lio/bidmachine/ads/networks/gam/InternalGAMFullscreenAdPresentListener;)V

    invoke-static {v0}, Lio/bidmachine/core/Utils;->onUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public abstract showAd(Landroid/app/Activity;Lio/bidmachine/ads/networks/gam/InternalGAMFullscreenAdPresentListener;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x10
        }
        names = {
            "activity",
            "showListener"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation
.end method

###### Class io.bidmachine.ads.networks.gam.InternalGAMFullscreenAd$$ExternalSyntheticLambda0 (io.bidmachine.ads.networks.gam.InternalGAMFullscreenAd$$ExternalSyntheticLambda0)
.class public final synthetic Lio/bidmachine/ads/networks/gam/InternalGAMFullscreenAd$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/ads/networks/gam/InternalGAMFullscreenAd;

.field public final synthetic f$1:Landroid/app/Activity;

.field public final synthetic f$2:Lio/bidmachine/ads/networks/gam/InternalGAMFullscreenAdPresentListener;


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/ads/networks/gam/InternalGAMFullscreenAd;Landroid/app/Activity;Lio/bidmachine/ads/networks/gam/InternalGAMFullscreenAdPresentListener;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/ads/networks/gam/InternalGAMFullscreenAd$$ExternalSyntheticLambda0;->f$0:Lio/bidmachine/ads/networks/gam/InternalGAMFullscreenAd;

    iput-object p2, p0, Lio/bidmachine/ads/networks/gam/InternalGAMFullscreenAd$$ExternalSyntheticLambda0;->f$1:Landroid/app/Activity;

    iput-object p3, p0, Lio/bidmachine/ads/networks/gam/InternalGAMFullscreenAd$$ExternalSyntheticLambda0;->f$2:Lio/bidmachine/ads/networks/gam/InternalGAMFullscreenAdPresentListener;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .line 0
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam/InternalGAMFullscreenAd$$ExternalSyntheticLambda0;->f$0:Lio/bidmachine/ads/networks/gam/InternalGAMFullscreenAd;

    iget-object v1, p0, Lio/bidmachine/ads/networks/gam/InternalGAMFullscreenAd$$ExternalSyntheticLambda0;->f$1:Landroid/app/Activity;

    iget-object v2, p0, Lio/bidmachine/ads/networks/gam/InternalGAMFullscreenAd$$ExternalSyntheticLambda0;->f$2:Lio/bidmachine/ads/networks/gam/InternalGAMFullscreenAdPresentListener;

    invoke-static {v0, v1, v2}, Lio/bidmachine/ads/networks/gam/InternalGAMFullscreenAd;->$r8$lambda$A_5cvkQNLS8XI24cvwd--BPCiXQ(Lio/bidmachine/ads/networks/gam/InternalGAMFullscreenAd;Landroid/app/Activity;Lio/bidmachine/ads/networks/gam/InternalGAMFullscreenAdPresentListener;)V

    return-void
.end method
