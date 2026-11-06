###### Class io.bidmachine.rendering.ad.AdListener (io.bidmachine.rendering.ad.AdListener)
.class public interface abstract Lio/bidmachine/rendering/ad/AdListener;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Ad:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract onAdAppeared(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TAd;)V"
        }
    .end annotation
.end method

.method public abstract onAdClicked(Ljava/lang/Object;Lio/bidmachine/util/SystemComponent;Lio/bidmachine/rendering/model/ClickData;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TAd;",
            "Lio/bidmachine/util/SystemComponent;",
            "Lio/bidmachine/rendering/model/ClickData;",
            ")V"
        }
    .end annotation
.end method

.method public abstract onAdDisappeared(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TAd;)V"
        }
    .end annotation
.end method

.method public abstract onAdExpired(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TAd;)V"
        }
    .end annotation
.end method

.method public abstract onAdFailToLoad(Ljava/lang/Object;Lio/bidmachine/util/Error;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TAd;",
            "Lio/bidmachine/util/Error;",
            ")V"
        }
    .end annotation
.end method

.method public abstract onAdFailToShow(Ljava/lang/Object;Lio/bidmachine/util/Error;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TAd;",
            "Lio/bidmachine/util/Error;",
            ")V"
        }
    .end annotation
.end method

.method public abstract onAdFinished(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TAd;)V"
        }
    .end annotation
.end method

.method public abstract onAdLoaded(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TAd;)V"
        }
    .end annotation
.end method

.method public abstract onAdShown(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TAd;)V"
        }
    .end annotation
.end method

.method public abstract onBrokenCreativeEvent(Ljava/lang/Object;Lio/bidmachine/rendering/model/BrokenCreativeEvent;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TAd;",
            "Lio/bidmachine/rendering/model/BrokenCreativeEvent;",
            ")V"
        }
    .end annotation
.end method

.method public abstract onOpenPrivacySheet(Ljava/lang/Object;Lio/bidmachine/rendering/model/PrivacySheetParams;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TAd;",
            "Lio/bidmachine/rendering/model/PrivacySheetParams;",
            ")V"
        }
    .end annotation
.end method

.method public abstract onViewabilityEvent(Ljava/lang/Object;Lio/bidmachine/util/viewabilitytracker/model/ActionEvent;Lio/bidmachine/util/Error;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TAd;",
            "Lio/bidmachine/util/viewabilitytracker/model/ActionEvent;",
            "Lio/bidmachine/util/Error;",
            ")V"
        }
    .end annotation
.end method
