###### Class io.bidmachine.iab.vast.VastVideoLoadedListener (io.bidmachine.iab.vast.VastVideoLoadedListener)
.class public interface abstract Lio/bidmachine/iab/vast/VastVideoLoadedListener;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract onError(Lio/bidmachine/iab/vast/VastRequest;Lio/bidmachine/iab/IabError;)V
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

.method public abstract onSuccess(Lio/bidmachine/iab/vast/VastRequest;Lio/bidmachine/iab/vast/processor/VastAd;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "vastRequest",
            "vastAd"
        }
    .end annotation
.end method
