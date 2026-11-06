###### Class io.bidmachine.ads.networks.gam.GAMBaseAdListener (io.bidmachine.ads.networks.gam.GAMBaseAdListener)
.class public abstract Lio/bidmachine/ads/networks/gam/GAMBaseAdListener;
.super Ljava/lang/Object;
.source "GAMBaseAdListener.java"

# interfaces
.implements Lio/bidmachine/ads/networks/gam/InternalGAMAdLoadListener;
.implements Lio/bidmachine/ads/networks/gam/InternalGAMAdPresentListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<GAMAdType:",
        "Lio/bidmachine/ads/networks/gam/InternalGAMAd;",
        "UnifiedAdCallbackType::",
        "Lio/bidmachine/unified/UnifiedAdCallback;",
        ">",
        "Ljava/lang/Object;",
        "Lio/bidmachine/ads/networks/gam/InternalGAMAdLoadListener<",
        "TGAMAdType;>;",
        "Lio/bidmachine/ads/networks/gam/InternalGAMAdPresentListener;"
    }
.end annotation


# instance fields
.field public final callback:Lio/bidmachine/unified/UnifiedAdCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TUnifiedAdCallbackType;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/bidmachine/unified/UnifiedAdCallback;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callback"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TUnifiedAdCallbackType;)V"
        }
    .end annotation

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lio/bidmachine/ads/networks/gam/GAMBaseAdListener;->callback:Lio/bidmachine/unified/UnifiedAdCallback;

    return-void
.end method


# virtual methods
.method public getCallback()Lio/bidmachine/unified/UnifiedAdCallback;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TUnifiedAdCallbackType;"
        }
    .end annotation

    .line 20
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam/GAMBaseAdListener;->callback:Lio/bidmachine/unified/UnifiedAdCallback;

    return-object v0
.end method

.method public onAdExpired()V
    .registers 2

    .line 45
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam/GAMBaseAdListener;->callback:Lio/bidmachine/unified/UnifiedAdCallback;

    invoke-interface {v0}, Lio/bidmachine/unified/UnifiedAdCallback;->onAdExpired()V

    return-void
.end method

.method public onAdLoadFailed(Lio/bidmachine/utils/BMError;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bmError"
        }
    .end annotation

    .line 25
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam/GAMBaseAdListener;->callback:Lio/bidmachine/unified/UnifiedAdCallback;

    invoke-interface {v0, p1}, Lio/bidmachine/unified/UnifiedAdCallback;->onAdLoadFailed(Lio/bidmachine/utils/BMError;)V

    return-void
.end method

.method public onAdShowFailed(Lio/bidmachine/utils/BMError;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bmError"
        }
    .end annotation

    .line 35
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam/GAMBaseAdListener;->callback:Lio/bidmachine/unified/UnifiedAdCallback;

    invoke-interface {v0, p1}, Lio/bidmachine/unified/UnifiedAdCallback;->onAdShowFailed(Lio/bidmachine/utils/BMError;)V

    return-void
.end method
