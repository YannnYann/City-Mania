###### Class io.bidmachine.unified.UnifiedAd (io.bidmachine.unified.UnifiedAd)
.class public abstract Lio/bidmachine/unified/UnifiedAd;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<UnifiedAdCallbackType::",
        "Lio/bidmachine/unified/UnifiedAdCallback;",
        "UnifiedAdRequestParamsType::",
        "Lio/bidmachine/unified/UnifiedAdRequestParams;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCustomParams()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 0
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract load(Lio/bidmachine/ContextProvider;Lio/bidmachine/unified/UnifiedAdCallback;Lio/bidmachine/unified/UnifiedAdRequestParams;Lio/bidmachine/unified/UnifiedMediationParams;Lio/bidmachine/NetworkAdUnit;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/ContextProvider;",
            "TUnifiedAdCallbackType;TUnifiedAdRequestParamsType;",
            "Lio/bidmachine/unified/UnifiedMediationParams;",
            "Lio/bidmachine/NetworkAdUnit;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation
.end method

.method public onClicked()V
    .registers 1

    .line 0
    return-void
.end method

.method public onDestroy()V
    .registers 1

    .line 0
    return-void
.end method

.method public onExpired()V
    .registers 1

    .line 0
    return-void
.end method

.method public onShowFailed()V
    .registers 1

    .line 0
    return-void
.end method

.method public onShown()V
    .registers 1

    .line 0
    return-void
.end method

.method public onViewabilityChanged(Z)V
    .registers 2

    .line 0
    return-void
.end method
