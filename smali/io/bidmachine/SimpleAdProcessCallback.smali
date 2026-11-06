###### Class io.bidmachine.SimpleAdProcessCallback (io.bidmachine.SimpleAdProcessCallback)
.class public Lio/bidmachine/SimpleAdProcessCallback;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/bidmachine/AdProcessCallback;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBrokenCreativeEvent(Ljava/util/Map;)V
    .registers 2
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
    return-void
.end method

.method public onNetworkViewabilityEvent(Lio/bidmachine/util/viewabilitytracker/model/ActionEvent;Lio/bidmachine/utils/BMError;)V
    .registers 3

    .line 0
    const-string p2, "actionEvent"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onVisibilityTrackerViewabilityEvent(Lio/bidmachine/util/viewabilitytracker/model/ActionEvent;Lio/bidmachine/utils/BMError;)V
    .registers 3

    .line 0
    const-string p2, "actionEvent"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public processClickVerified(Lio/bidmachine/util/SystemComponent;Lio/bidmachine/rendering/model/ClickData;)V
    .registers 3

    .line 0
    return-void
.end method

.method public processClicked(Lio/bidmachine/util/SystemComponent;Lio/bidmachine/rendering/model/ClickData;)V
    .registers 3

    .line 0
    return-void
.end method

.method public processClosed()V
    .registers 1

    .line 0
    return-void
.end method

.method public processDestroy()V
    .registers 1

    .line 0
    return-void
.end method

.method public processExpired()V
    .registers 1

    .line 0
    return-void
.end method

.method public processFillAd()V
    .registers 1

    .line 0
    return-void
.end method

.method public processFinished()V
    .registers 1

    .line 0
    return-void
.end method

.method public processLoadFail(Lio/bidmachine/utils/BMError;)V
    .registers 3

    .line 0
    const-string v0, "bmError"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public processLoadSuccess()V
    .registers 1

    .line 0
    return-void
.end method

.method public processShowFail(Lio/bidmachine/utils/BMError;)V
    .registers 3

    .line 0
    const-string v0, "bmError"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public processShown()V
    .registers 1

    .line 0
    return-void
.end method

.method public processVisibilityTrackerShown()V
    .registers 1

    .line 0
    return-void
.end method

.method public setVisibilitySource(Lio/bidmachine/core/VisibilitySource;)V
    .registers 3

    .line 0
    const-string v0, "visibilitySource"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
