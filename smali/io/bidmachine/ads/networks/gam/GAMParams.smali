###### Class io.bidmachine.ads.networks.gam.GAMParams (io.bidmachine.ads.networks.gam.GAMParams)
.class public Lio/bidmachine/ads/networks/gam/GAMParams;
.super Lio/bidmachine/unified/UnifiedParams;
.source "GAMParams.java"


# instance fields
.field public final adUnitId:Ljava/lang/String;

.field public final price:Ljava/lang/String;

.field public final score:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lio/bidmachine/unified/UnifiedMediationParams;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mediationParams"
        }
    .end annotation

    .line 23
    invoke-direct {p0, p1}, Lio/bidmachine/unified/UnifiedParams;-><init>(Lio/bidmachine/unified/UnifiedMediationParams;)V

    .line 25
    const-string v0, "ad_unit_id"

    invoke-interface {p1, v0}, Lio/bidmachine/utils/data/DataRetriever;->getStringOrNull(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/ads/networks/gam/GAMParams;->adUnitId:Ljava/lang/String;

    .line 26
    const-string v0, "score"

    invoke-interface {p1, v0}, Lio/bidmachine/utils/data/DataRetriever;->getStringOrNull(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/ads/networks/gam/GAMParams;->score:Ljava/lang/String;

    .line 27
    const-string v0, "price"

    invoke-interface {p1, v0}, Lio/bidmachine/utils/data/DataRetriever;->getStringOrNull(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/ads/networks/gam/GAMParams;->price:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public isValid(Lio/bidmachine/unified/UnifiedAdCallback;)Z
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callback"
        }
    .end annotation

    .line 32
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam/GAMParams;->adUnitId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_13

    .line 33
    const-string v0, "ad_unit_id"

    invoke-static {v0}, Lio/bidmachine/utils/BMError;->notFound(Ljava/lang/String;)Lio/bidmachine/utils/BMError;

    move-result-object v0

    invoke-interface {p1, v0}, Lio/bidmachine/unified/UnifiedAdCallback;->onAdLoadFailed(Lio/bidmachine/utils/BMError;)V

    return v1

    .line 36
    :cond_13
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam/GAMParams;->score:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 37
    const-string v0, "score"

    invoke-static {v0}, Lio/bidmachine/utils/BMError;->notFound(Ljava/lang/String;)Lio/bidmachine/utils/BMError;

    move-result-object v0

    invoke-interface {p1, v0}, Lio/bidmachine/unified/UnifiedAdCallback;->onAdLoadFailed(Lio/bidmachine/utils/BMError;)V

    return v1

    .line 40
    :cond_25
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam/GAMParams;->price:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_37

    .line 41
    const-string v0, "price"

    invoke-static {v0}, Lio/bidmachine/utils/BMError;->notFound(Ljava/lang/String;)Lio/bidmachine/utils/BMError;

    move-result-object v0

    invoke-interface {p1, v0}, Lio/bidmachine/unified/UnifiedAdCallback;->onAdLoadFailed(Lio/bidmachine/utils/BMError;)V

    return v1

    :cond_37
    const/4 p1, 0x1

    return p1
.end method
