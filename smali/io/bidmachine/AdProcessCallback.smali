###### Class io.bidmachine.AdProcessCallback (io.bidmachine.AdProcessCallback)
.class public interface abstract Lio/bidmachine/AdProcessCallback;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract onBrokenCreativeEvent(Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation
.end method

.method public onEngagedClick(Ljava/util/Map;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 0
    const-string v0, "params"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public abstract onNetworkViewabilityEvent(Lio/bidmachine/util/viewabilitytracker/model/ActionEvent;Lio/bidmachine/utils/BMError;)V
.end method

.method public abstract onVisibilityTrackerViewabilityEvent(Lio/bidmachine/util/viewabilitytracker/model/ActionEvent;Lio/bidmachine/utils/BMError;)V
.end method

.method public abstract processClickVerified(Lio/bidmachine/util/SystemComponent;Lio/bidmachine/rendering/model/ClickData;)V
.end method

.method public abstract processClicked(Lio/bidmachine/util/SystemComponent;Lio/bidmachine/rendering/model/ClickData;)V
.end method

.method public abstract processClosed()V
.end method

.method public abstract processDestroy()V
.end method

.method public abstract processExpired()V
.end method

.method public abstract processFillAd()V
.end method

.method public abstract processFinished()V
.end method

.method public abstract processLoadFail(Lio/bidmachine/utils/BMError;)V
.end method

.method public abstract processLoadSuccess()V
.end method

.method public abstract processShowFail(Lio/bidmachine/utils/BMError;)V
.end method

.method public abstract processShown()V
.end method

.method public abstract processVisibilityTrackerShown()V
.end method

.method public abstract setVisibilitySource(Lio/bidmachine/core/VisibilitySource;)V
.end method
