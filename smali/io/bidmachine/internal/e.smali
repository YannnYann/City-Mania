###### Class io.bidmachine.internal.AbstractC4221e (io.bidmachine.internal.e)
.class public abstract Lio/bidmachine/internal/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/bidmachine/unified/UnifiedAdCallback;


# instance fields
.field public final a:Lio/bidmachine/AdProcessCallback;


# direct methods
.method public constructor <init>(Lio/bidmachine/AdProcessCallback;)V
    .registers 3

    const-string v0, "adProcessCallback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/internal/e;->a:Lio/bidmachine/AdProcessCallback;

    return-void
.end method


# virtual methods
.method public final a()Lio/bidmachine/AdProcessCallback;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/internal/e;->a:Lio/bidmachine/AdProcessCallback;

    return-object v0
.end method

.method public onAdClicked(Lio/bidmachine/util/SystemComponent;Lio/bidmachine/rendering/model/ClickData;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lio/bidmachine/internal/e;->a:Lio/bidmachine/AdProcessCallback;

    invoke-interface {v0, p1, p2}, Lio/bidmachine/AdProcessCallback;->processClicked(Lio/bidmachine/util/SystemComponent;Lio/bidmachine/rendering/model/ClickData;)V

    return-void
.end method

.method public onAdExpired()V
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/internal/e;->a:Lio/bidmachine/AdProcessCallback;

    invoke-interface {v0}, Lio/bidmachine/AdProcessCallback;->processExpired()V

    return-void
.end method

.method public onAdLoadFailed(Lio/bidmachine/utils/BMError;)V
    .registers 3

    const-string v0, "error"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lio/bidmachine/internal/e;->a:Lio/bidmachine/AdProcessCallback;

    invoke-interface {v0, p1}, Lio/bidmachine/AdProcessCallback;->processLoadFail(Lio/bidmachine/utils/BMError;)V

    return-void
.end method

.method public onAdShowFailed(Lio/bidmachine/utils/BMError;)V
    .registers 3

    const-string v0, "error"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lio/bidmachine/internal/e;->a:Lio/bidmachine/AdProcessCallback;

    invoke-interface {v0, p1}, Lio/bidmachine/AdProcessCallback;->processShowFail(Lio/bidmachine/utils/BMError;)V

    return-void
.end method

.method public onAdShown()V
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/internal/e;->a:Lio/bidmachine/AdProcessCallback;

    invoke-interface {v0}, Lio/bidmachine/AdProcessCallback;->processShown()V

    return-void
.end method

.method public onAdViewabilityEvent(Lio/bidmachine/util/viewabilitytracker/model/ActionEvent;Lio/bidmachine/utils/BMError;)V
    .registers 4

    const-string v0, "actionEvent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lio/bidmachine/internal/e;->a:Lio/bidmachine/AdProcessCallback;

    invoke-interface {v0, p1, p2}, Lio/bidmachine/AdProcessCallback;->onNetworkViewabilityEvent(Lio/bidmachine/util/viewabilitytracker/model/ActionEvent;Lio/bidmachine/utils/BMError;)V

    return-void
.end method

.method public onBrokenCreativeEvent(Ljava/util/Map;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lio/bidmachine/internal/e;->a:Lio/bidmachine/AdProcessCallback;

    invoke-interface {v0, p1}, Lio/bidmachine/AdProcessCallback;->onBrokenCreativeEvent(Ljava/util/Map;)V

    return-void
.end method

.method public onEngagedClick(Ljava/util/Map;)V
    .registers 3

    const-string v0, "params"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lio/bidmachine/internal/e;->a:Lio/bidmachine/AdProcessCallback;

    invoke-interface {v0, p1}, Lio/bidmachine/AdProcessCallback;->onEngagedClick(Ljava/util/Map;)V

    return-void
.end method

.method public setVisibilitySource(Lio/bidmachine/core/VisibilitySource;)V
    .registers 3

    const-string v0, "visibilitySource"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lio/bidmachine/internal/e;->a:Lio/bidmachine/AdProcessCallback;

    invoke-interface {v0, p1}, Lio/bidmachine/AdProcessCallback;->setVisibilitySource(Lio/bidmachine/core/VisibilitySource;)V

    return-void
.end method
