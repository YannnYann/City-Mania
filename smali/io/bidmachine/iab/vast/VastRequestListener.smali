###### Class io.bidmachine.iab.vast.VastRequestListener (io.bidmachine.iab.vast.VastRequestListener)
.class public interface abstract Lio/bidmachine/iab/vast/VastRequestListener;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract onVastLoadFailed(Lio/bidmachine/iab/vast/VastRequest;Lio/bidmachine/iab/IabError;)V
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

.method public abstract onVastLoaded(Lio/bidmachine/iab/vast/VastRequest;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "vastRequest"
        }
    .end annotation
.end method
