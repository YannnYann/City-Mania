###### Class io.bidmachine.util.network.ProtoRequestProcessor (io.bidmachine.util.network.ProtoRequestProcessor)
.class public interface abstract Lio/bidmachine/util/network/ProtoRequestProcessor;
.super Ljava/lang/Object;
.source "ProtoRequestProcessor.kt"

# interfaces
.implements Lio/bidmachine/util/network/RequestProcessor;


# virtual methods
.method public setupConnection(Ljava/net/URLConnection;)V
    .registers 4

    const-string v0, "urlConnection"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    const-string v0, "Content-Type"

    const-string v1, "application/x-protobuf"

    invoke-virtual {p1, v0, v1}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
