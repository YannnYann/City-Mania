###### Class io.bidmachine.util.network.ByteResponseProcessor (io.bidmachine.util.network.ByteResponseProcessor)
.class public final Lio/bidmachine/util/network/ByteResponseProcessor;
.super Ljava/lang/Object;
.source "ByteResponseProcessor.kt"

# interfaces
.implements Lio/bidmachine/util/network/ResponseProcessor;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/bidmachine/util/network/ResponseProcessor<",
        "[B>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic process(Ljava/net/URLConnection;)Ljava/lang/Object;
    .registers 2

    .line 5
    invoke-virtual {p0, p1}, Lio/bidmachine/util/network/ByteResponseProcessor;->process(Ljava/net/URLConnection;)[B

    move-result-object p1

    return-object p1
.end method

.method public process(Ljava/net/URLConnection;)[B
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const-string v0, "urlConnection"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-static {p1}, Lio/bidmachine/util/network/NetworkUtilsKt;->readBytes(Ljava/net/URLConnection;)[B

    move-result-object p1

    return-object p1
.end method
