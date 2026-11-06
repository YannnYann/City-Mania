###### Class io.bidmachine.ads.networks.gam_dynamic.InternalFullscreenAd (io.bidmachine.ads.networks.gam_dynamic.InternalFullscreenAd)
.class public abstract Lio/bidmachine/ads/networks/gam_dynamic/InternalFullscreenAd;
.super Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;
.source "InternalFullscreenAd.java"


# direct methods
.method public static synthetic $r8$lambda$AM1D99HishGXExMrczqKRilQHMg(Lio/bidmachine/ads/networks/gam_dynamic/InternalFullscreenAd;Landroid/app/Activity;Lio/bidmachine/ads/networks/gam_dynamic/InternalFullscreenAdPresentListener;)V
    .registers 4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    :try_start_3
    sget-object v0, Lio/bidmachine/ads/networks/gam_dynamic/InternalAd$Status;->Showing:Lio/bidmachine/ads/networks/gam_dynamic/InternalAd$Status;

    invoke-virtual {p0, v0}, Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;->setStatus(Lio/bidmachine/ads/networks/gam_dynamic/InternalAd$Status;)V

    .line 30
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/ads/networks/gam_dynamic/InternalFullscreenAd;->showAd(Landroid/app/Activity;Lio/bidmachine/ads/networks/gam_dynamic/InternalFullscreenAdPresentListener;)V
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_c

    return-void

    :catchall_c
    move-exception p0

    .line 32
    invoke-static {p0}, Lio/bidmachine/core/Logger;->w(Ljava/lang/Throwable;)V

    .line 33
    const-string p1, "Exception showing InternalAd object"

    invoke-static {p1, p0}, Lio/bidmachine/utils/BMError;->throwable(Ljava/lang/String;Ljava/lang/Throwable;)Lio/bidmachine/utils/BMError;

    move-result-object p0

    invoke-interface {p2, p0}, Lio/bidmachine/ads/networks/gam_dynamic/InternalAdPresentListener;->onAdShowFailed(Lio/bidmachine/utils/BMError;)V

    return-void
.end method

.method public constructor <init>(Lio/bidmachine/ads/networks/gam_dynamic/NetworkParams;Lio/bidmachine/ads/networks/gam_dynamic/TaskExecutor;Lio/bidmachine/AdsFormat;Lio/bidmachine/protobuf/Waterfall$Configuration$AdUnit;Lio/bidmachine/ads/networks/gam_dynamic/InternalAdListener;)V
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "networkParams",
            "taskExecutor",
            "adsFormat",
            "adUnit",
            "internalAdListener"
        }
    .end annotation

    .line 21
    invoke-direct/range {p0 .. p5}, Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;-><init>(Lio/bidmachine/ads/networks/gam_dynamic/NetworkParams;Lio/bidmachine/ads/networks/gam_dynamic/TaskExecutor;Lio/bidmachine/AdsFormat;Lio/bidmachine/protobuf/Waterfall$Configuration$AdUnit;Lio/bidmachine/ads/networks/gam_dynamic/InternalAdListener;)V

    return-void
.end method


# virtual methods
.method public final show(Landroid/app/Activity;Lio/bidmachine/ads/networks/gam_dynamic/InternalFullscreenAdPresentListener;)V
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

    .line 26
    new-instance v0, Lio/bidmachine/ads/networks/gam_dynamic/InternalFullscreenAd$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1, p2}, Lio/bidmachine/ads/networks/gam_dynamic/InternalFullscreenAd$$ExternalSyntheticLambda0;-><init>(Lio/bidmachine/ads/networks/gam_dynamic/InternalFullscreenAd;Landroid/app/Activity;Lio/bidmachine/ads/networks/gam_dynamic/InternalFullscreenAdPresentListener;)V

    invoke-static {v0}, Lio/bidmachine/core/Utils;->onUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public abstract showAd(Landroid/app/Activity;Lio/bidmachine/ads/networks/gam_dynamic/InternalFullscreenAdPresentListener;)V
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

###### Class io.bidmachine.ads.networks.gam_dynamic.InternalFullscreenAd$$ExternalSyntheticLambda0 (io.bidmachine.ads.networks.gam_dynamic.InternalFullscreenAd$$ExternalSyntheticLambda0)
.class public final synthetic Lio/bidmachine/ads/networks/gam_dynamic/InternalFullscreenAd$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/ads/networks/gam_dynamic/InternalFullscreenAd;

.field public final synthetic f$1:Landroid/app/Activity;

.field public final synthetic f$2:Lio/bidmachine/ads/networks/gam_dynamic/InternalFullscreenAdPresentListener;


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/ads/networks/gam_dynamic/InternalFullscreenAd;Landroid/app/Activity;Lio/bidmachine/ads/networks/gam_dynamic/InternalFullscreenAdPresentListener;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/ads/networks/gam_dynamic/InternalFullscreenAd$$ExternalSyntheticLambda0;->f$0:Lio/bidmachine/ads/networks/gam_dynamic/InternalFullscreenAd;

    iput-object p2, p0, Lio/bidmachine/ads/networks/gam_dynamic/InternalFullscreenAd$$ExternalSyntheticLambda0;->f$1:Landroid/app/Activity;

    iput-object p3, p0, Lio/bidmachine/ads/networks/gam_dynamic/InternalFullscreenAd$$ExternalSyntheticLambda0;->f$2:Lio/bidmachine/ads/networks/gam_dynamic/InternalFullscreenAdPresentListener;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .line 0
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam_dynamic/InternalFullscreenAd$$ExternalSyntheticLambda0;->f$0:Lio/bidmachine/ads/networks/gam_dynamic/InternalFullscreenAd;

    iget-object v1, p0, Lio/bidmachine/ads/networks/gam_dynamic/InternalFullscreenAd$$ExternalSyntheticLambda0;->f$1:Landroid/app/Activity;

    iget-object v2, p0, Lio/bidmachine/ads/networks/gam_dynamic/InternalFullscreenAd$$ExternalSyntheticLambda0;->f$2:Lio/bidmachine/ads/networks/gam_dynamic/InternalFullscreenAdPresentListener;

    invoke-static {v0, v1, v2}, Lio/bidmachine/ads/networks/gam_dynamic/InternalFullscreenAd;->$r8$lambda$AM1D99HishGXExMrczqKRilQHMg(Lio/bidmachine/ads/networks/gam_dynamic/InternalFullscreenAd;Landroid/app/Activity;Lio/bidmachine/ads/networks/gam_dynamic/InternalFullscreenAdPresentListener;)V

    return-void
.end method
