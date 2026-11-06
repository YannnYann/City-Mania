###### Class io.bidmachine.iab.vast.VastViewListener (io.bidmachine.iab.vast.VastViewListener)
.class public interface abstract Lio/bidmachine/iab/vast/VastViewListener;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract onClick(Lio/bidmachine/iab/vast/activity/VastView;Lio/bidmachine/iab/vast/VastRequest;Lio/bidmachine/iab/utils/IabClickCallback;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "vastView",
            "vastRequest",
            "clickCallback",
            "url"
        }
    .end annotation
.end method

.method public abstract onComplete(Lio/bidmachine/iab/vast/activity/VastView;Lio/bidmachine/iab/vast/VastRequest;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "vastView",
            "vastRequest"
        }
    .end annotation
.end method

.method public abstract onFinish(Lio/bidmachine/iab/vast/activity/VastView;Lio/bidmachine/iab/vast/VastRequest;Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "vastView",
            "vastRequest",
            "isPlayingFinished"
        }
    .end annotation
.end method

.method public abstract onOrientationRequested(Lio/bidmachine/iab/vast/activity/VastView;Lio/bidmachine/iab/vast/VastRequest;I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "vastView",
            "vastRequest",
            "orientation"
        }
    .end annotation
.end method

.method public abstract onShowFailed(Lio/bidmachine/iab/vast/activity/VastView;Lio/bidmachine/iab/vast/VastRequest;Lio/bidmachine/iab/IabError;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "vastView",
            "vastRequest",
            "iabError"
        }
    .end annotation
.end method

.method public abstract onShown(Lio/bidmachine/iab/vast/activity/VastView;Lio/bidmachine/iab/vast/VastRequest;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "vastView",
            "vastRequest"
        }
    .end annotation
.end method
