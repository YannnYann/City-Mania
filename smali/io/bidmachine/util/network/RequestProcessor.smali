###### Class io.bidmachine.util.network.RequestProcessor (io.bidmachine.util.network.RequestProcessor)
.class public interface abstract Lio/bidmachine/util/network/RequestProcessor;
.super Ljava/lang/Object;
.source "RequestProcessor.kt"


# virtual methods
.method public getBody()[B
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 0
    const/4 v0, 0x0

    return-object v0
.end method

.method public setupConnection(Ljava/net/URLConnection;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 0
    const-string v0, "urlConnection"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
