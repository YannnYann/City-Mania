###### Class io.bidmachine.unified.UnifiedAdCallback (io.bidmachine.unified.UnifiedAdCallback)
.class public interface abstract Lio/bidmachine/unified/UnifiedAdCallback;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static synthetic onAdClicked$default(Lio/bidmachine/unified/UnifiedAdCallback;Lio/bidmachine/util/SystemComponent;Lio/bidmachine/rendering/model/ClickData;ILjava/lang/Object;)V
    .registers 6

    if-nez p4, :cond_11

    and-int/lit8 p4, p3, 0x1

    const/4 v0, 0x0

    if-eqz p4, :cond_8

    move-object p1, v0

    :cond_8
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_d

    move-object p2, v0

    .line 1
    :cond_d
    invoke-interface {p0, p1, p2}, Lio/bidmachine/unified/UnifiedAdCallback;->onAdClicked(Lio/bidmachine/util/SystemComponent;Lio/bidmachine/rendering/model/ClickData;)V

    return-void

    :cond_11
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: onAdClicked"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public onAdClicked()V
    .registers 2

    const/4 v0, 0x0

    .line 1
    invoke-interface {p0, v0, v0}, Lio/bidmachine/unified/UnifiedAdCallback;->onAdClicked(Lio/bidmachine/util/SystemComponent;Lio/bidmachine/rendering/model/ClickData;)V

    return-void
.end method

.method public abstract onAdClicked(Lio/bidmachine/util/SystemComponent;Lio/bidmachine/rendering/model/ClickData;)V
.end method

.method public abstract onAdExpired()V
.end method

.method public abstract onAdLoadFailed(Lio/bidmachine/utils/BMError;)V
.end method

.method public abstract onAdShowFailed(Lio/bidmachine/utils/BMError;)V
.end method

.method public abstract onAdShown()V
.end method

.method public abstract onAdViewabilityEvent(Lio/bidmachine/util/viewabilitytracker/model/ActionEvent;Lio/bidmachine/utils/BMError;)V
.end method

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

.method public abstract onEngagedClick(Ljava/util/Map;)V
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

.method public abstract setVisibilitySource(Lio/bidmachine/core/VisibilitySource;)V
.end method
