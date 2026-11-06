###### Class io.bidmachine.ads.networks.gam_dynamic.WaterfallNetworkRequest (io.bidmachine.ads.networks.gam_dynamic.WaterfallNetworkRequest)
.class public Lio/bidmachine/ads/networks/gam_dynamic/WaterfallNetworkRequest;
.super Lio/bidmachine/core/NetworkRequest;
.source "WaterfallNetworkRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/ads/networks/gam_dynamic/WaterfallNetworkRequest$RequestBinder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/bidmachine/core/NetworkRequest<",
        "Lio/bidmachine/protobuf/Waterfall$Result;",
        "Lio/bidmachine/protobuf/Waterfall$Configuration;",
        "Lio/bidmachine/utils/BMError;",
        ">;"
    }
.end annotation


# instance fields
.field public final timeOut:I

.field public final url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lio/bidmachine/protobuf/Waterfall$Result;I)V
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "url",
            "requestData",
            "timeOut"
        }
    .end annotation

    .line 24
    sget-object v0, Lio/bidmachine/core/NetworkRequest$Method;->Post:Lio/bidmachine/core/NetworkRequest$Method;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p2}, Lio/bidmachine/core/NetworkRequest;-><init>(Lio/bidmachine/core/NetworkRequest$Method;Ljava/lang/String;Ljava/lang/Object;)V

    .line 26
    iput-object p1, p0, Lio/bidmachine/ads/networks/gam_dynamic/WaterfallNetworkRequest;->url:Ljava/lang/String;

    .line 27
    iput p3, p0, Lio/bidmachine/ads/networks/gam_dynamic/WaterfallNetworkRequest;->timeOut:I

    .line 29
    new-instance p1, Lio/bidmachine/ads/networks/gam_dynamic/WaterfallNetworkRequest$RequestBinder;

    invoke-direct {p1, v1}, Lio/bidmachine/ads/networks/gam_dynamic/WaterfallNetworkRequest$RequestBinder;-><init>(Lio/bidmachine/ads/networks/gam_dynamic/WaterfallNetworkRequest$1;)V

    invoke-virtual {p0, p1}, Lio/bidmachine/core/NetworkRequest;->setDataBinder(Lio/bidmachine/core/NetworkRequest$RequestDataBinder;)V

    return-void
.end method


# virtual methods
.method public getBaseUrl()Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 34
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam_dynamic/WaterfallNetworkRequest;->url:Ljava/lang/String;

    return-object v0
.end method

.method public obtainError(Ljava/net/URLConnection;I)Lio/bidmachine/utils/BMError;
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "urlConnection",
            "responseCode"
        }
    .end annotation

    const/16 p1, 0xc8

    if-lt p2, p1, :cond_b

    const/16 p1, 0x12c

    if-ge p2, p1, :cond_b

    .line 50
    sget-object p1, Lio/bidmachine/utils/BMError;->BMServerNoFill:Lio/bidmachine/utils/BMError;

    return-object p1

    :cond_b
    const/16 p1, 0x190

    const/16 v0, 0x1f4

    if-lt p2, p1, :cond_16

    if-ge p2, v0, :cond_16

    .line 54
    sget-object p1, Lio/bidmachine/utils/BMError;->Request:Lio/bidmachine/utils/BMError;

    goto :goto_25

    :cond_16
    if-lt p2, v0, :cond_1f

    const/16 p1, 0x258

    if-ge p2, p1, :cond_1f

    .line 56
    sget-object p1, Lio/bidmachine/utils/BMError;->Server:Lio/bidmachine/utils/BMError;

    goto :goto_25

    .line 58
    :cond_1f
    const-string p1, "Unknown server error"

    invoke-static {p1}, Lio/bidmachine/utils/BMError;->internal(Ljava/lang/String;)Lio/bidmachine/utils/BMError;

    move-result-object p1

    .line 60
    :goto_25
    new-instance v0, Lio/bidmachine/utils/BMError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Server returned "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " code"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, p2, v1}, Lio/bidmachine/utils/BMError;-><init>(Lio/bidmachine/utils/BMError;ILjava/lang/String;)V

    return-object v0
.end method

.method public obtainError(Ljava/net/URLConnection;Ljava/lang/Throwable;)Lio/bidmachine/utils/BMError;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "urlConnection",
            "t"
        }
    .end annotation

    .line 68
    instance-of p1, p2, Ljava/net/UnknownHostException;

    if-eqz p1, :cond_7

    .line 69
    sget-object p1, Lio/bidmachine/utils/BMError;->NoConnection:Lio/bidmachine/utils/BMError;

    return-object p1

    .line 70
    :cond_7
    instance-of p1, p2, Ljava/net/SocketTimeoutException;

    if-nez p1, :cond_17

    instance-of p1, p2, Lorg/apache/http/conn/ConnectTimeoutException;

    if-eqz p1, :cond_10

    goto :goto_17

    .line 73
    :cond_10
    const-string p1, "Unknown api request error"

    invoke-static {p1, p2}, Lio/bidmachine/utils/BMError;->throwable(Ljava/lang/String;Ljava/lang/Throwable;)Lio/bidmachine/utils/BMError;

    move-result-object p1

    return-object p1

    .line 71
    :cond_17
    :goto_17
    sget-object p1, Lio/bidmachine/utils/BMError;->TimeoutError:Lio/bidmachine/utils/BMError;

    return-object p1
.end method

.method public bridge synthetic obtainError(Ljava/net/URLConnection;I)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "urlConnection",
            "responseCode"
        }
    .end annotation

    .line 17
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/ads/networks/gam_dynamic/WaterfallNetworkRequest;->obtainError(Ljava/net/URLConnection;I)Lio/bidmachine/utils/BMError;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic obtainError(Ljava/net/URLConnection;Ljava/lang/Throwable;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "urlConnection",
            "t"
        }
    .end annotation

    .line 17
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/ads/networks/gam_dynamic/WaterfallNetworkRequest;->obtainError(Ljava/net/URLConnection;Ljava/lang/Throwable;)Lio/bidmachine/utils/BMError;

    move-result-object p1

    return-object p1
.end method

.method public prepareRequestParams(Ljava/net/URLConnection;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "urlConnection"
        }
    .end annotation

    .line 39
    invoke-super {p0, p1}, Lio/bidmachine/core/NetworkRequest;->prepareRequestParams(Ljava/net/URLConnection;)V

    .line 41
    iget v0, p0, Lio/bidmachine/ads/networks/gam_dynamic/WaterfallNetworkRequest;->timeOut:I

    invoke-virtual {p1, v0}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 42
    iget v0, p0, Lio/bidmachine/ads/networks/gam_dynamic/WaterfallNetworkRequest;->timeOut:I

    invoke-virtual {p1, v0}, Ljava/net/URLConnection;->setReadTimeout(I)V

    return-void
.end method

###### Class io.bidmachine.ads.networks.gam_dynamic.WaterfallNetworkRequest.AnonymousClass1 (io.bidmachine.ads.networks.gam_dynamic.WaterfallNetworkRequest$1)
.class public synthetic Lio/bidmachine/ads/networks/gam_dynamic/WaterfallNetworkRequest$1;
.super Ljava/lang/Object;
.source "WaterfallNetworkRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/ads/networks/gam_dynamic/WaterfallNetworkRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation

###### Class io.bidmachine.ads.networks.gam_dynamic.WaterfallNetworkRequest.RequestBinder (io.bidmachine.ads.networks.gam_dynamic.WaterfallNetworkRequest$RequestBinder)
.class public Lio/bidmachine/ads/networks/gam_dynamic/WaterfallNetworkRequest$RequestBinder;
.super Lio/bidmachine/core/NetworkRequest$RequestDataBinder;
.source "WaterfallNetworkRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/ads/networks/gam_dynamic/WaterfallNetworkRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RequestBinder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/bidmachine/core/NetworkRequest$RequestDataBinder<",
        "Lio/bidmachine/protobuf/Waterfall$Result;",
        "Lio/bidmachine/protobuf/Waterfall$Configuration;",
        "Lio/bidmachine/utils/BMError;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 82
    invoke-direct {p0}, Lio/bidmachine/core/NetworkRequest$RequestDataBinder;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lio/bidmachine/ads/networks/gam_dynamic/WaterfallNetworkRequest$1;)V
    .registers 2

    .line 82
    invoke-direct {p0}, Lio/bidmachine/ads/networks/gam_dynamic/WaterfallNetworkRequest$RequestBinder;-><init>()V

    return-void
.end method


# virtual methods
.method public createSuccessResult(Lio/bidmachine/core/NetworkRequest;Ljava/net/URLConnection;[B)Lio/bidmachine/protobuf/Waterfall$Configuration;
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "networkRequest",
            "urlConnection",
            "resultData"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/core/NetworkRequest<",
            "Lio/bidmachine/protobuf/Waterfall$Result;",
            "Lio/bidmachine/protobuf/Waterfall$Configuration;",
            "Lio/bidmachine/utils/BMError;",
            ">;",
            "Ljava/net/URLConnection;",
            "[B)",
            "Lio/bidmachine/protobuf/Waterfall$Configuration;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 111
    invoke-static {p3}, Lio/bidmachine/protobuf/Waterfall;->parseFrom([B)Lio/bidmachine/protobuf/Waterfall;

    move-result-object p1

    invoke-virtual {p1}, Lio/bidmachine/protobuf/Waterfall;->getResponse()Lio/bidmachine/protobuf/Waterfall$Configuration;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic createSuccessResult(Lio/bidmachine/core/NetworkRequest;Ljava/net/URLConnection;[B)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x1000
        }
        names = {
            "networkRequest",
            "urlConnection",
            "resultData"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 82
    invoke-virtual {p0, p1, p2, p3}, Lio/bidmachine/ads/networks/gam_dynamic/WaterfallNetworkRequest$RequestBinder;->createSuccessResult(Lio/bidmachine/core/NetworkRequest;Ljava/net/URLConnection;[B)Lio/bidmachine/protobuf/Waterfall$Configuration;

    move-result-object p1

    return-object p1
.end method

.method public obtainData(Lio/bidmachine/core/NetworkRequest;Ljava/net/URLConnection;Lio/bidmachine/protobuf/Waterfall$Result;)[B
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "networkRequest",
            "urlConnection",
            "waterfallResult"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/core/NetworkRequest<",
            "Lio/bidmachine/protobuf/Waterfall$Result;",
            "Lio/bidmachine/protobuf/Waterfall$Configuration;",
            "Lio/bidmachine/utils/BMError;",
            ">;",
            "Ljava/net/URLConnection;",
            "Lio/bidmachine/protobuf/Waterfall$Result;",
            ")[B"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 101
    invoke-static {}, Lio/bidmachine/protobuf/Waterfall;->newBuilder()Lio/bidmachine/protobuf/Waterfall$Builder;

    move-result-object p1

    .line 102
    invoke-virtual {p1, p3}, Lio/bidmachine/protobuf/Waterfall$Builder;->setRequest(Lio/bidmachine/protobuf/Waterfall$Result;)Lio/bidmachine/protobuf/Waterfall$Builder;

    move-result-object p1

    .line 103
    invoke-virtual {p1}, Lio/bidmachine/protobuf/Waterfall$Builder;->build()Lio/bidmachine/protobuf/Waterfall;

    move-result-object p1

    .line 104
    invoke-virtual {p1}, Lcom/explorestack/protobuf/AbstractMessageLite;->toByteArray()[B

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic obtainData(Lio/bidmachine/core/NetworkRequest;Ljava/net/URLConnection;Ljava/lang/Object;)[B
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x1000
        }
        names = {
            "networkRequest",
            "urlConnection",
            "waterfallResult"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 82
    check-cast p3, Lio/bidmachine/protobuf/Waterfall$Result;

    invoke-virtual {p0, p1, p2, p3}, Lio/bidmachine/ads/networks/gam_dynamic/WaterfallNetworkRequest$RequestBinder;->obtainData(Lio/bidmachine/core/NetworkRequest;Ljava/net/URLConnection;Lio/bidmachine/protobuf/Waterfall$Result;)[B

    move-result-object p1

    return-object p1
.end method

.method public prepareHeaders(Lio/bidmachine/core/NetworkRequest;Ljava/net/URLConnection;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "networkRequest",
            "urlConnection"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/core/NetworkRequest<",
            "Lio/bidmachine/protobuf/Waterfall$Result;",
            "Lio/bidmachine/protobuf/Waterfall$Configuration;",
            "Lio/bidmachine/utils/BMError;",
            ">;",
            "Ljava/net/URLConnection;",
            ")V"
        }
    .end annotation

    .line 92
    const-string p1, "Content-Type"

    const-string v0, "application/x-protobuf"

    invoke-virtual {p2, p1, v0}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
