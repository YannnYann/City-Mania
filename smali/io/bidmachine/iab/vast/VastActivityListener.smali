###### Class io.bidmachine.iab.vast.VastActivityListener (io.bidmachine.iab.vast.VastActivityListener)
.class public interface abstract Lio/bidmachine/iab/vast/VastActivityListener;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract onVastClick(Lio/bidmachine/iab/vast/activity/VastActivity;Lio/bidmachine/iab/vast/VastRequest;Lio/bidmachine/iab/utils/IabClickCallback;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "vastActivity",
            "vastRequest",
            "clickCallback",
            "url"
        }
    .end annotation
.end method

.method public abstract onVastComplete(Lio/bidmachine/iab/vast/activity/VastActivity;Lio/bidmachine/iab/vast/VastRequest;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "vastActivity",
            "vastRequest"
        }
    .end annotation
.end method

.method public abstract onVastDismiss(Lio/bidmachine/iab/vast/activity/VastActivity;Lio/bidmachine/iab/vast/VastRequest;Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "vastActivity",
            "vastRequest",
            "finished"
        }
    .end annotation
.end method

.method public abstract onVastShowFailed(Lio/bidmachine/iab/vast/VastRequest;Lio/bidmachine/iab/IabError;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "vastRequest",
            "iabError"
        }
    .end annotation
.end method

.method public abstract onVastShown(Lio/bidmachine/iab/vast/activity/VastActivity;Lio/bidmachine/iab/vast/VastRequest;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "vastActivity",
            "vastRequest"
        }
    .end annotation
.end method
