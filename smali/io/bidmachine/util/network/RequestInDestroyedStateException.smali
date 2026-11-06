###### Class io.bidmachine.util.network.RequestInDestroyedStateException (io.bidmachine.util.network.RequestInDestroyedStateException)
.class public final Lio/bidmachine/util/network/RequestInDestroyedStateException;
.super Ljava/lang/IllegalStateException;
.source "RequestInDestroyedStateException.kt"


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 3
    const-string v0, "Request has already been destroyed"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    return-void
.end method
